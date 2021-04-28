-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex Cash Eti T7 9.1 Protocol
local eurex_cash_eti_t7_v9_1 = Proto("Eurex.Cash.Eti.T7.v9.1.Lua", "Eurex Cash Eti T7 9.1")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex Cash Eti T7 9.1 Fields
eurex_cash_eti_t7_v9_1.fields.account = ProtoField.new("Account", "eurex.cash.eti.t7.v9.1.account", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.accrued_interes_amt = ProtoField.new("Accrued Interes Amt", "eurex.cash.eti.t7.v9.1.accruedinteresamt", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.affected_ord_grp_comp = ProtoField.new("Affected Ord Grp Comp", "eurex.cash.eti.t7.v9.1.affectedordgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.affected_order_id = ProtoField.new("Affected Order Id", "eurex.cash.eti.t7.v9.1.affectedorderid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.affected_order_request_id = ProtoField.new("Affected Order Request Id", "eurex.cash.eti.t7.v9.1.affectedorderrequestid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.affected_order_requests_grp_comp = ProtoField.new("Affected Order Requests Grp Comp", "eurex.cash.eti.t7.v9.1.affectedorderrequestsgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.affected_orig_cl_ord_id = ProtoField.new("Affected Orig Cl Ord Id", "eurex.cash.eti.t7.v9.1.affectedorigclordid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.alloc_id = ProtoField.new("Alloc Id", "eurex.cash.eti.t7.v9.1.allocid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.alloc_method = ProtoField.new("Alloc Method", "eurex.cash.eti.t7.v9.1.allocmethod", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.alloc_qty = ProtoField.new("Alloc Qty", "eurex.cash.eti.t7.v9.1.allocqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.appl_beg_msg_id = ProtoField.new("Appl Beg Msg Id", "eurex.cash.eti.t7.v9.1.applbegmsgid", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.appl_beg_seq_num = ProtoField.new("Appl Beg Seq Num", "eurex.cash.eti.t7.v9.1.applbegseqnum", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.appl_end_msg_id = ProtoField.new("Appl End Msg Id", "eurex.cash.eti.t7.v9.1.applendmsgid", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.appl_end_seq_num = ProtoField.new("Appl End Seq Num", "eurex.cash.eti.t7.v9.1.applendseqnum", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.appl_id = ProtoField.new("Appl Id", "eurex.cash.eti.t7.v9.1.applid", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.appl_id_status = ProtoField.new("Appl Id Status", "eurex.cash.eti.t7.v9.1.applidstatus", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.appl_msg_id = ProtoField.new("Appl Msg Id", "eurex.cash.eti.t7.v9.1.applmsgid", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.appl_resend_flag = ProtoField.new("Appl Resend Flag", "eurex.cash.eti.t7.v9.1.applresendflag", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.appl_seq_indicator = ProtoField.new("Appl Seq Indicator", "eurex.cash.eti.t7.v9.1.applseqindicator", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "eurex.cash.eti.t7.v9.1.applseqnum", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.appl_seq_status = ProtoField.new("Appl Seq Status", "eurex.cash.eti.t7.v9.1.applseqstatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.appl_seq_trade_date = ProtoField.new("Appl Seq Trade Date", "eurex.cash.eti.t7.v9.1.applseqtradedate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.appl_sub_id = ProtoField.new("Appl Sub Id", "eurex.cash.eti.t7.v9.1.applsubid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.appl_total_message_count = ProtoField.new("Appl Total Message Count", "eurex.cash.eti.t7.v9.1.appltotalmessagecount", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.appl_usage_orders = ProtoField.new("Appl Usage Orders", "eurex.cash.eti.t7.v9.1.applusageorders", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.appl_usage_quotes = ProtoField.new("Appl Usage Quotes", "eurex.cash.eti.t7.v9.1.applusagequotes", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.application_system_name = ProtoField.new("Application System Name", "eurex.cash.eti.t7.v9.1.applicationsystemname", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.application_system_vendor = ProtoField.new("Application System Vendor", "eurex.cash.eti.t7.v9.1.applicationsystemvendor", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.application_system_version = ProtoField.new("Application System Version", "eurex.cash.eti.t7.v9.1.applicationsystemversion", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.approve_tes_trade_request = ProtoField.new("Approve Tes Trade Request", "eurex.cash.eti.t7.v9.1.approvetestraderequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.auto_approval_rule_id = ProtoField.new("Auto Approval Rule Id", "eurex.cash.eti.t7.v9.1.autoapprovalruleid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.best_bid_px = ProtoField.new("Best Bid Px", "eurex.cash.eti.t7.v9.1.bestbidpx", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.best_bid_size = ProtoField.new("Best Bid Size", "eurex.cash.eti.t7.v9.1.bestbidsize", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.best_offer_px = ProtoField.new("Best Offer Px", "eurex.cash.eti.t7.v9.1.bestofferpx", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.best_offer_size = ProtoField.new("Best Offer Size", "eurex.cash.eti.t7.v9.1.bestoffersize", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.bid_px = ProtoField.new("Bid Px", "eurex.cash.eti.t7.v9.1.bidpx", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.bid_size = ProtoField.new("Bid Size", "eurex.cash.eti.t7.v9.1.bidsize", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.body_len = ProtoField.new("Body Len", "eurex.cash.eti.t7.v9.1.bodylen", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.broadcast_error_notification = ProtoField.new("Broadcast Error Notification", "eurex.cash.eti.t7.v9.1.broadcasterrornotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "eurex.cash.eti.t7.v9.1.clordid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.clearing_instruction = ProtoField.new("Clearing Instruction", "eurex.cash.eti.t7.v9.1.clearinginstruction", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.coupon_rate = ProtoField.new("Coupon Rate", "eurex.cash.eti.t7.v9.1.couponrate", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.cross_request = ProtoField.new("Cross Request", "eurex.cash.eti.t7.v9.1.crossrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.cross_request_response = ProtoField.new("Cross Request Response", "eurex.cash.eti.t7.v9.1.crossrequestresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.crossed_indicator = ProtoField.new("Crossed Indicator", "eurex.cash.eti.t7.v9.1.crossedindicator", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.cum_qty = ProtoField.new("Cum Qty", "eurex.cash.eti.t7.v9.1.cumqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.currency = ProtoField.new("Currency", "eurex.cash.eti.t7.v9.1.currency", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.cxl_qty = ProtoField.new("Cxl Qty", "eurex.cash.eti.t7.v9.1.cxlqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.cxl_size = ProtoField.new("Cxl Size", "eurex.cash.eti.t7.v9.1.cxlsize", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.default_cstm_appl_ver_id = ProtoField.new("Default Cstm Appl Ver Id", "eurex.cash.eti.t7.v9.1.defaultcstmapplverid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.default_cstm_appl_ver_sub_id = ProtoField.new("Default Cstm Appl Ver Sub Id", "eurex.cash.eti.t7.v9.1.defaultcstmapplversubid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_all_order_broadcast = ProtoField.new("Delete All Order Broadcast", "eurex.cash.eti.t7.v9.1.deleteallorderbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_all_order_nr_response = ProtoField.new("Delete All Order Nr Response", "eurex.cash.eti.t7.v9.1.deleteallordernrresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_all_order_quote_event_broadcast = ProtoField.new("Delete All Order Quote Event Broadcast", "eurex.cash.eti.t7.v9.1.deleteallorderquoteeventbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_all_order_request = ProtoField.new("Delete All Order Request", "eurex.cash.eti.t7.v9.1.deleteallorderrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_all_order_response = ProtoField.new("Delete All Order Response", "eurex.cash.eti.t7.v9.1.deleteallorderresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_all_quote_broadcast = ProtoField.new("Delete All Quote Broadcast", "eurex.cash.eti.t7.v9.1.deleteallquotebroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_all_quote_request = ProtoField.new("Delete All Quote Request", "eurex.cash.eti.t7.v9.1.deleteallquoterequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_all_quote_response = ProtoField.new("Delete All Quote Response", "eurex.cash.eti.t7.v9.1.deleteallquoteresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_order_broadcast = ProtoField.new("Delete Order Broadcast", "eurex.cash.eti.t7.v9.1.deleteorderbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_order_nr_response = ProtoField.new("Delete Order Nr Response", "eurex.cash.eti.t7.v9.1.deleteordernrresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_order_response = ProtoField.new("Delete Order Response", "eurex.cash.eti.t7.v9.1.deleteorderresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_order_single_request = ProtoField.new("Delete Order Single Request", "eurex.cash.eti.t7.v9.1.deleteordersinglerequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delete_reason = ProtoField.new("Delete Reason", "eurex.cash.eti.t7.v9.1.deletereason", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.delete_tes_trade_request = ProtoField.new("Delete Tes Trade Request", "eurex.cash.eti.t7.v9.1.deletetestraderequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.delivery_type = ProtoField.new("Delivery Type", "eurex.cash.eti.t7.v9.1.deliverytype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.display_high_qty = ProtoField.new("Display High Qty", "eurex.cash.eti.t7.v9.1.displayhighqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.display_low_qty = ProtoField.new("Display Low Qty", "eurex.cash.eti.t7.v9.1.displaylowqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.display_qty = ProtoField.new("Display Qty", "eurex.cash.eti.t7.v9.1.displayqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.enrichment_rule_id = ProtoField.new("Enrichment Rule Id", "eurex.cash.eti.t7.v9.1.enrichmentruleid", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.enrichment_rules_grp_comp = ProtoField.new("Enrichment Rules Grp Comp", "eurex.cash.eti.t7.v9.1.enrichmentrulesgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.enter_tes_trade_request = ProtoField.new("Enter Tes Trade Request", "eurex.cash.eti.t7.v9.1.entertestraderequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.event_date = ProtoField.new("Event Date", "eurex.cash.eti.t7.v9.1.eventdate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.event_px = ProtoField.new("Event Px", "eurex.cash.eti.t7.v9.1.eventpx", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.event_type = ProtoField.new("Event Type", "eurex.cash.eti.t7.v9.1.eventtype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.exec_id = ProtoField.new("Exec Id", "eurex.cash.eti.t7.v9.1.execid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.exec_inst = ProtoField.new("Exec Inst", "eurex.cash.eti.t7.v9.1.execinst", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "eurex.cash.eti.t7.v9.1.execrestatementreason", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.exec_type = ProtoField.new("Exec Type", "eurex.cash.eti.t7.v9.1.exectype", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.executing_trader = ProtoField.new("Executing Trader", "eurex.cash.eti.t7.v9.1.executingtrader", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.executing_trader_qualifier = ProtoField.new("Executing Trader Qualifier", "eurex.cash.eti.t7.v9.1.executingtraderqualifier", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.expire_date = ProtoField.new("Expire Date", "eurex.cash.eti.t7.v9.1.expiredate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.expire_time = ProtoField.new("Expire Time", "eurex.cash.eti.t7.v9.1.expiretime", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.extended_deletion_report = ProtoField.new("Extended Deletion Report", "eurex.cash.eti.t7.v9.1.extendeddeletionreport", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "eurex.cash.eti.t7.v9.1.fillexecid", ftypes.INT32)
eurex_cash_eti_t7_v9_1.fields.fill_liquidity_ind = ProtoField.new("Fill Liquidity Ind", "eurex.cash.eti.t7.v9.1.fillliquidityind", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.fill_match_id = ProtoField.new("Fill Match Id", "eurex.cash.eti.t7.v9.1.fillmatchid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.fill_px = ProtoField.new("Fill Px", "eurex.cash.eti.t7.v9.1.fillpx", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.fill_qty = ProtoField.new("Fill Qty", "eurex.cash.eti.t7.v9.1.fillqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.fills_grp_comp = ProtoField.new("Fills Grp Comp", "eurex.cash.eti.t7.v9.1.fillsgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.firm_negotiation_id = ProtoField.new("Firm Negotiation Id", "eurex.cash.eti.t7.v9.1.firmnegotiationid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.firm_trade_id = ProtoField.new("Firm Trade Id", "eurex.cash.eti.t7.v9.1.firmtradeid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.fix_cl_ord_id = ProtoField.new("Fix Cl Ord Id", "eurex.cash.eti.t7.v9.1.fixclordid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.fix_engine_name = ProtoField.new("Fix Engine Name", "eurex.cash.eti.t7.v9.1.fixenginename", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.fix_engine_vendor = ProtoField.new("Fix Engine Vendor", "eurex.cash.eti.t7.v9.1.fixenginevendor", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.fix_engine_version = ProtoField.new("Fix Engine Version", "eurex.cash.eti.t7.v9.1.fixengineversion", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.forced_logout_notification = ProtoField.new("Forced Logout Notification", "eurex.cash.eti.t7.v9.1.forcedlogoutnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.forced_user_logout_notification = ProtoField.new("Forced User Logout Notification", "eurex.cash.eti.t7.v9.1.forceduserlogoutnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.free_text_1 = ProtoField.new("Free Text 1", "eurex.cash.eti.t7.v9.1.freetext1", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.free_text_2 = ProtoField.new("Free Text 2", "eurex.cash.eti.t7.v9.1.freetext2", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.free_text_4 = ProtoField.new("Free Text 4", "eurex.cash.eti.t7.v9.1.freetext4", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.free_text_5 = ProtoField.new("Free Text 5", "eurex.cash.eti.t7.v9.1.freetext5", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.headline = ProtoField.new("Headline", "eurex.cash.eti.t7.v9.1.headline", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "eurex.cash.eti.t7.v9.1.heartbtint", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.heartbeat = ProtoField.new("Heartbeat", "eurex.cash.eti.t7.v9.1.heartbeat", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.heartbeat_notification = ProtoField.new("Heartbeat Notification", "eurex.cash.eti.t7.v9.1.heartbeatnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.imbalance_qty = ProtoField.new("Imbalance Qty", "eurex.cash.eti.t7.v9.1.imbalanceqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.individual_alloc_id = ProtoField.new("Individual Alloc Id", "eurex.cash.eti.t7.v9.1.individualallocid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.inquire_enrichment_rule_id_list_request = ProtoField.new("Inquire Enrichment Rule Id List Request", "eurex.cash.eti.t7.v9.1.inquireenrichmentruleidlistrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.inquire_enrichment_rule_id_list_response = ProtoField.new("Inquire Enrichment Rule Id List Response", "eurex.cash.eti.t7.v9.1.inquireenrichmentruleidlistresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.inquire_session_list_request = ProtoField.new("Inquire Session List Request", "eurex.cash.eti.t7.v9.1.inquiresessionlistrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.inquire_session_list_response = ProtoField.new("Inquire Session List Response", "eurex.cash.eti.t7.v9.1.inquiresessionlistresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.inquire_user_request = ProtoField.new("Inquire User Request", "eurex.cash.eti.t7.v9.1.inquireuserrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.inquire_user_response = ProtoField.new("Inquire User Response", "eurex.cash.eti.t7.v9.1.inquireuserresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.issuer_notification = ProtoField.new("Issuer Notification", "eurex.cash.eti.t7.v9.1.issuernotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.issuer_security_state_change_request = ProtoField.new("Issuer Security State Change Request", "eurex.cash.eti.t7.v9.1.issuersecuritystatechangerequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.issuer_security_state_change_response = ProtoField.new("Issuer Security State Change Response", "eurex.cash.eti.t7.v9.1.issuersecuritystatechangeresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.last_coupon_deviation_indicator = ProtoField.new("Last Coupon Deviation Indicator", "eurex.cash.eti.t7.v9.1.lastcoupondeviationindicator", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.last_entity_processed = ProtoField.new("Last Entity Processed", "eurex.cash.eti.t7.v9.1.lastentityprocessed", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.last_fragment = ProtoField.new("Last Fragment", "eurex.cash.eti.t7.v9.1.lastfragment", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.last_mkt = ProtoField.new("Last Mkt", "eurex.cash.eti.t7.v9.1.lastmkt", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.last_px = ProtoField.new("Last Px", "eurex.cash.eti.t7.v9.1.lastpx", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.last_qty = ProtoField.new("Last Qty", "eurex.cash.eti.t7.v9.1.lastqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.leaves_qty = ProtoField.new("Leaves Qty", "eurex.cash.eti.t7.v9.1.leavesqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.legal_notification_broadcast = ProtoField.new("Legal Notification Broadcast", "eurex.cash.eti.t7.v9.1.legalnotificationbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.list_update_action = ProtoField.new("List Update Action", "eurex.cash.eti.t7.v9.1.listupdateaction", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.logon_request = ProtoField.new("Logon Request", "eurex.cash.eti.t7.v9.1.logonrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.logon_response = ProtoField.new("Logon Response", "eurex.cash.eti.t7.v9.1.logonresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.logout_request = ProtoField.new("Logout Request", "eurex.cash.eti.t7.v9.1.logoutrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.logout_response = ProtoField.new("Logout Response", "eurex.cash.eti.t7.v9.1.logoutresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.market_id = ProtoField.new("Market Id", "eurex.cash.eti.t7.v9.1.marketid", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.cash.eti.t7.v9.1.marketsegmentid", ftypes.INT32)
eurex_cash_eti_t7_v9_1.fields.mass_action_reason = ProtoField.new("Mass Action Reason", "eurex.cash.eti.t7.v9.1.massactionreason", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "eurex.cash.eti.t7.v9.1.massactionreportid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.mass_action_type = ProtoField.new("Mass Action Type", "eurex.cash.eti.t7.v9.1.massactiontype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.mass_quote_request = ProtoField.new("Mass Quote Request", "eurex.cash.eti.t7.v9.1.massquoterequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.mass_quote_response = ProtoField.new("Mass Quote Response", "eurex.cash.eti.t7.v9.1.massquoteresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.match_date = ProtoField.new("Match Date", "eurex.cash.eti.t7.v9.1.matchdate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.match_inst_cross_id = ProtoField.new("Match Inst Cross Id", "eurex.cash.eti.t7.v9.1.matchinstcrossid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.match_sub_type = ProtoField.new("Match Sub Type", "eurex.cash.eti.t7.v9.1.matchsubtype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.match_type = ProtoField.new("Match Type", "eurex.cash.eti.t7.v9.1.matchtype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.matching_engine_status = ProtoField.new("Matching Engine Status", "eurex.cash.eti.t7.v9.1.matchingenginestatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.matching_engine_trade_date = ProtoField.new("Matching Engine Trade Date", "eurex.cash.eti.t7.v9.1.matchingenginetradedate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.md_book_type = ProtoField.new("Md Book Type", "eurex.cash.eti.t7.v9.1.mdbooktype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.md_sub_book_type = ProtoField.new("Md Sub Book Type", "eurex.cash.eti.t7.v9.1.mdsubbooktype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.message_event_source = ProtoField.new("Message Event Source", "eurex.cash.eti.t7.v9.1.messageeventsource", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.message_header_in_comp = ProtoField.new("Message Header In Comp", "eurex.cash.eti.t7.v9.1.messageheaderincomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.message_header_out_comp = ProtoField.new("Message Header Out Comp", "eurex.cash.eti.t7.v9.1.messageheaderoutcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.modify_order_nr_response = ProtoField.new("Modify Order Nr Response", "eurex.cash.eti.t7.v9.1.modifyordernrresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.modify_order_response = ProtoField.new("Modify Order Response", "eurex.cash.eti.t7.v9.1.modifyorderresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.modify_order_single_request = ProtoField.new("Modify Order Single Request", "eurex.cash.eti.t7.v9.1.modifyordersinglerequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.modify_order_single_short_request = ProtoField.new("Modify Order Single Short Request", "eurex.cash.eti.t7.v9.1.modifyordersingleshortrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.modify_tes_trade_request = ProtoField.new("Modify Tes Trade Request", "eurex.cash.eti.t7.v9.1.modifytestraderequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.cash.eti.t7.v9.1.msgseqnum", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.negotiation_id = ProtoField.new("Negotiation Id", "eurex.cash.eti.t7.v9.1.negotiationid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.negotiation_start_time = ProtoField.new("Negotiation Start Time", "eurex.cash.eti.t7.v9.1.negotiationstarttime", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.network_msg_id = ProtoField.new("Network Msg Id", "eurex.cash.eti.t7.v9.1.networkmsgid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.new_order_nr_response = ProtoField.new("New Order Nr Response", "eurex.cash.eti.t7.v9.1.newordernrresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.new_order_response = ProtoField.new("New Order Response", "eurex.cash.eti.t7.v9.1.neworderresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.new_order_single_request = ProtoField.new("New Order Single Request", "eurex.cash.eti.t7.v9.1.newordersinglerequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.new_order_single_short_request = ProtoField.new("New Order Single Short Request", "eurex.cash.eti.t7.v9.1.newordersingleshortrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.news_broadcast = ProtoField.new("News Broadcast", "eurex.cash.eti.t7.v9.1.newsbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.no_affected_order_requests = ProtoField.new("No Affected Order Requests", "eurex.cash.eti.t7.v9.1.noaffectedorderrequests", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.no_affected_orders = ProtoField.new("No Affected Orders", "eurex.cash.eti.t7.v9.1.noaffectedorders", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.no_enrichment_rules = ProtoField.new("No Enrichment Rules", "eurex.cash.eti.t7.v9.1.noenrichmentrules", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.no_events = ProtoField.new("No Events", "eurex.cash.eti.t7.v9.1.noevents", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.no_fills = ProtoField.new("No Fills", "eurex.cash.eti.t7.v9.1.nofills", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.no_not_affected_orders = ProtoField.new("No Not Affected Orders", "eurex.cash.eti.t7.v9.1.nonotaffectedorders", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.no_not_affected_securities = ProtoField.new("No Not Affected Securities", "eurex.cash.eti.t7.v9.1.nonotaffectedsecurities", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.no_order_book_items = ProtoField.new("No Order Book Items", "eurex.cash.eti.t7.v9.1.noorderbookitems", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.no_party_details = ProtoField.new("No Party Details", "eurex.cash.eti.t7.v9.1.nopartydetails", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.no_quote_entries = ProtoField.new("No Quote Entries", "eurex.cash.eti.t7.v9.1.noquoteentries", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.no_quote_events = ProtoField.new("No Quote Events", "eurex.cash.eti.t7.v9.1.noquoteevents", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.no_quote_side_entries = ProtoField.new("No Quote Side Entries", "eurex.cash.eti.t7.v9.1.noquotesideentries", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.no_sessions = ProtoField.new("No Sessions", "eurex.cash.eti.t7.v9.1.nosessions", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.no_side_allocs = ProtoField.new("No Side Allocs", "eurex.cash.eti.t7.v9.1.nosideallocs", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.no_target_party_i_ds = ProtoField.new("No Target Party I Ds", "eurex.cash.eti.t7.v9.1.notargetpartyids", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.not_aff_orig_cl_ord_id = ProtoField.new("Not Aff Orig Cl Ord Id", "eurex.cash.eti.t7.v9.1.notafforigclordid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.not_affected_order_id = ProtoField.new("Not Affected Order Id", "eurex.cash.eti.t7.v9.1.notaffectedorderid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.not_affected_orders_grp_comp = ProtoField.new("Not Affected Orders Grp Comp", "eurex.cash.eti.t7.v9.1.notaffectedordersgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.not_affected_securities_grp_comp = ProtoField.new("Not Affected Securities Grp Comp", "eurex.cash.eti.t7.v9.1.notaffectedsecuritiesgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.not_affected_security_id = ProtoField.new("Not Affected Security Id", "eurex.cash.eti.t7.v9.1.notaffectedsecurityid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.notif_header_comp = ProtoField.new("Notif Header Comp", "eurex.cash.eti.t7.v9.1.notifheadercomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.notification_in = ProtoField.new("Notification In", "eurex.cash.eti.t7.v9.1.notificationin", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.nr_response_header_me_comp = ProtoField.new("Nr Response Header Me Comp", "eurex.cash.eti.t7.v9.1.nrresponseheadermecomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.nrbc_header_comp = ProtoField.new("Nrbc Header Comp", "eurex.cash.eti.t7.v9.1.nrbcheadercomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.num_days_interest = ProtoField.new("Num Days Interest", "eurex.cash.eti.t7.v9.1.numdaysinterest", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.number_of_resp_disclosure_instruction = ProtoField.new("Number Of Resp Disclosure Instruction", "eurex.cash.eti.t7.v9.1.numberofrespdisclosureinstruction", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.number_of_respondents = ProtoField.new("Number Of Respondents", "eurex.cash.eti.t7.v9.1.numberofrespondents", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.offer_px = ProtoField.new("Offer Px", "eurex.cash.eti.t7.v9.1.offerpx", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.offer_size = ProtoField.new("Offer Size", "eurex.cash.eti.t7.v9.1.offersize", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.ord_status = ProtoField.new("Ord Status", "eurex.cash.eti.t7.v9.1.ordstatus", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.ord_type = ProtoField.new("Ord Type", "eurex.cash.eti.t7.v9.1.ordtype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.order_attribute_liquidity_provision = ProtoField.new("Order Attribute Liquidity Provision", "eurex.cash.eti.t7.v9.1.orderattributeliquidityprovision", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.order_book_item_grp_comp = ProtoField.new("Order Book Item Grp Comp", "eurex.cash.eti.t7.v9.1.orderbookitemgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.order_category = ProtoField.new("Order Category", "eurex.cash.eti.t7.v9.1.ordercategory", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.order_event_type = ProtoField.new("Order Event Type", "eurex.cash.eti.t7.v9.1.ordereventtype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.order_exec_notification = ProtoField.new("Order Exec Notification", "eurex.cash.eti.t7.v9.1.orderexecnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.order_exec_report_broadcast = ProtoField.new("Order Exec Report Broadcast", "eurex.cash.eti.t7.v9.1.orderexecreportbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.order_exec_response = ProtoField.new("Order Exec Response", "eurex.cash.eti.t7.v9.1.orderexecresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.order_id = ProtoField.new("Order Id", "eurex.cash.eti.t7.v9.1.orderid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.order_id_sfx = ProtoField.new("Order Id Sfx", "eurex.cash.eti.t7.v9.1.orderidsfx", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.order_origination = ProtoField.new("Order Origination", "eurex.cash.eti.t7.v9.1.orderorigination", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.order_qty = ProtoField.new("Order Qty", "eurex.cash.eti.t7.v9.1.orderqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.order_routing_indicator = ProtoField.new("Order Routing Indicator", "eurex.cash.eti.t7.v9.1.orderroutingindicator", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "eurex.cash.eti.t7.v9.1.origclordid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.orig_time = ProtoField.new("Orig Time", "eurex.cash.eti.t7.v9.1.origtime", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.orig_trade_id = ProtoField.new("Orig Trade Id", "eurex.cash.eti.t7.v9.1.origtradeid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.ownership_indicator = ProtoField.new("Ownership Indicator", "eurex.cash.eti.t7.v9.1.ownershipindicator", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.package_id = ProtoField.new("Package Id", "eurex.cash.eti.t7.v9.1.packageid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.packet = ProtoField.new("Packet", "eurex.cash.eti.t7.v9.1.packet", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.pad_1 = ProtoField.new("Pad 1", "eurex.cash.eti.t7.v9.1.pad1", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.pad_2 = ProtoField.new("Pad 2", "eurex.cash.eti.t7.v9.1.pad2", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.pad_3 = ProtoField.new("Pad 3", "eurex.cash.eti.t7.v9.1.pad3", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.pad_4 = ProtoField.new("Pad 4", "eurex.cash.eti.t7.v9.1.pad4", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.pad_5 = ProtoField.new("Pad 5", "eurex.cash.eti.t7.v9.1.pad5", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.pad_6 = ProtoField.new("Pad 6", "eurex.cash.eti.t7.v9.1.pad6", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.pad_7 = ProtoField.new("Pad 7", "eurex.cash.eti.t7.v9.1.pad7", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.partition_id = ProtoField.new("Partition Id", "eurex.cash.eti.t7.v9.1.partitionid", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.party_action_report = ProtoField.new("Party Action Report", "eurex.cash.eti.t7.v9.1.partyactionreport", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.party_action_type = ProtoField.new("Party Action Type", "eurex.cash.eti.t7.v9.1.partyactiontype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.party_detail_desk_id = ProtoField.new("Party Detail Desk Id", "eurex.cash.eti.t7.v9.1.partydetaildeskid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.party_detail_executing_trader = ProtoField.new("Party Detail Executing Trader", "eurex.cash.eti.t7.v9.1.partydetailexecutingtrader", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.party_detail_id_executing_trader = ProtoField.new("Party Detail Id Executing Trader", "eurex.cash.eti.t7.v9.1.partydetailidexecutingtrader", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.party_detail_id_executing_unit = ProtoField.new("Party Detail Id Executing Unit", "eurex.cash.eti.t7.v9.1.partydetailidexecutingunit", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.party_detail_role_qualifier = ProtoField.new("Party Detail Role Qualifier", "eurex.cash.eti.t7.v9.1.partydetailrolequalifier", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.party_detail_status = ProtoField.new("Party Detail Status", "eurex.cash.eti.t7.v9.1.partydetailstatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.party_details_grp_comp = ProtoField.new("Party Details Grp Comp", "eurex.cash.eti.t7.v9.1.partydetailsgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.party_entering_firm = ProtoField.new("Party Entering Firm", "eurex.cash.eti.t7.v9.1.partyenteringfirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.party_entering_trader = ProtoField.new("Party Entering Trader", "eurex.cash.eti.t7.v9.1.partyenteringtrader", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.party_entitlements_update_report = ProtoField.new("Party Entitlements Update Report", "eurex.cash.eti.t7.v9.1.partyentitlementsupdatereport", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.party_executing_firm = ProtoField.new("Party Executing Firm", "eurex.cash.eti.t7.v9.1.partyexecutingfirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.party_executing_trader = ProtoField.new("Party Executing Trader", "eurex.cash.eti.t7.v9.1.partyexecutingtrader", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.party_id_client_id = ProtoField.new("Party Id Client Id", "eurex.cash.eti.t7.v9.1.partyidclientid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.party_id_entering_firm = ProtoField.new("Party Id Entering Firm", "eurex.cash.eti.t7.v9.1.partyidenteringfirm", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.party_id_entering_trader = ProtoField.new("Party Id Entering Trader", "eurex.cash.eti.t7.v9.1.partyidenteringtrader", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.party_id_executing_trader = ProtoField.new("Party Id Executing Trader", "eurex.cash.eti.t7.v9.1.partyidexecutingtrader", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.party_id_executing_unit = ProtoField.new("Party Id Executing Unit", "eurex.cash.eti.t7.v9.1.partyidexecutingunit", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.party_id_investment_decision_maker = ProtoField.new("Party Id Investment Decision Maker", "eurex.cash.eti.t7.v9.1.partyidinvestmentdecisionmaker", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.party_id_investment_decision_maker_qualifier = ProtoField.new("Party Id Investment Decision Maker Qualifier", "eurex.cash.eti.t7.v9.1.partyidinvestmentdecisionmakerqualifier", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.party_id_session_id = ProtoField.new("Party Id Session Id", "eurex.cash.eti.t7.v9.1.partyidsessionid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.party_id_specialist_trader = ProtoField.new("Party Id Specialist Trader", "eurex.cash.eti.t7.v9.1.partyidspecialisttrader", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.party_specialist_firm = ProtoField.new("Party Specialist Firm", "eurex.cash.eti.t7.v9.1.partyspecialistfirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.party_specialist_trader = ProtoField.new("Party Specialist Trader", "eurex.cash.eti.t7.v9.1.partyspecialisttrader", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.password = ProtoField.new("Password", "eurex.cash.eti.t7.v9.1.password", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.peg_offset_value_abs = ProtoField.new("Peg Offset Value Abs", "eurex.cash.eti.t7.v9.1.pegoffsetvalueabs", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.peg_offset_value_pct = ProtoField.new("Peg Offset Value Pct", "eurex.cash.eti.t7.v9.1.pegoffsetvaluepct", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.ping_request = ProtoField.new("Ping Request", "eurex.cash.eti.t7.v9.1.pingrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.ping_response = ProtoField.new("Ping Response", "eurex.cash.eti.t7.v9.1.pingresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.potential_exec_volume = ProtoField.new("Potential Exec Volume", "eurex.cash.eti.t7.v9.1.potentialexecvolume", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.price = ProtoField.new("Price", "eurex.cash.eti.t7.v9.1.price", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.price_validity_check_type = ProtoField.new("Price Validity Check Type", "eurex.cash.eti.t7.v9.1.pricevaliditychecktype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quote_activation_notification = ProtoField.new("Quote Activation Notification", "eurex.cash.eti.t7.v9.1.quoteactivationnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.quote_activation_request = ProtoField.new("Quote Activation Request", "eurex.cash.eti.t7.v9.1.quoteactivationrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.quote_activation_response = ProtoField.new("Quote Activation Response", "eurex.cash.eti.t7.v9.1.quoteactivationresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.quote_cancel_type = ProtoField.new("Quote Cancel Type", "eurex.cash.eti.t7.v9.1.quotecanceltype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quote_entry_ack_grp_comp = ProtoField.new("Quote Entry Ack Grp Comp", "eurex.cash.eti.t7.v9.1.quoteentryackgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.quote_entry_grp_comp = ProtoField.new("Quote Entry Grp Comp", "eurex.cash.eti.t7.v9.1.quoteentrygrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.quote_entry_reject_reason = ProtoField.new("Quote Entry Reject Reason", "eurex.cash.eti.t7.v9.1.quoteentryrejectreason", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.quote_entry_status = ProtoField.new("Quote Entry Status", "eurex.cash.eti.t7.v9.1.quoteentrystatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quote_event_exec_id = ProtoField.new("Quote Event Exec Id", "eurex.cash.eti.t7.v9.1.quoteeventexecid", ftypes.INT32)
eurex_cash_eti_t7_v9_1.fields.quote_event_grp_comp = ProtoField.new("Quote Event Grp Comp", "eurex.cash.eti.t7.v9.1.quoteeventgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.quote_event_liquidity_ind = ProtoField.new("Quote Event Liquidity Ind", "eurex.cash.eti.t7.v9.1.quoteeventliquidityind", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quote_event_match_id = ProtoField.new("Quote Event Match Id", "eurex.cash.eti.t7.v9.1.quoteeventmatchid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.quote_event_px = ProtoField.new("Quote Event Px", "eurex.cash.eti.t7.v9.1.quoteeventpx", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.quote_event_qty = ProtoField.new("Quote Event Qty", "eurex.cash.eti.t7.v9.1.quoteeventqty", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.quote_event_reason = ProtoField.new("Quote Event Reason", "eurex.cash.eti.t7.v9.1.quoteeventreason", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quote_event_side = ProtoField.new("Quote Event Side", "eurex.cash.eti.t7.v9.1.quoteeventside", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quote_event_type = ProtoField.new("Quote Event Type", "eurex.cash.eti.t7.v9.1.quoteeventtype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quote_execution_report = ProtoField.new("Quote Execution Report", "eurex.cash.eti.t7.v9.1.quoteexecutionreport", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.quote_id = ProtoField.new("Quote Id", "eurex.cash.eti.t7.v9.1.quoteid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.quote_msg_id = ProtoField.new("Quote Msg Id", "eurex.cash.eti.t7.v9.1.quotemsgid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.quote_req_id = ProtoField.new("Quote Req Id", "eurex.cash.eti.t7.v9.1.quotereqid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.quote_request_reject_reason = ProtoField.new("Quote Request Reject Reason", "eurex.cash.eti.t7.v9.1.quoterequestrejectreason", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quote_response_id = ProtoField.new("Quote Response Id", "eurex.cash.eti.t7.v9.1.quoteresponseid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.quote_size_type = ProtoField.new("Quote Size Type", "eurex.cash.eti.t7.v9.1.quotesizetype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quote_status = ProtoField.new("Quote Status", "eurex.cash.eti.t7.v9.1.quotestatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quote_type = ProtoField.new("Quote Type", "eurex.cash.eti.t7.v9.1.quotetype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.quoting_status = ProtoField.new("Quoting Status", "eurex.cash.eti.t7.v9.1.quotingstatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.rbc_header_comp = ProtoField.new("Rbc Header Comp", "eurex.cash.eti.t7.v9.1.rbcheadercomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.rbc_header_me_comp = ProtoField.new("Rbc Header Me Comp", "eurex.cash.eti.t7.v9.1.rbcheadermecomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.ref_appl_id = ProtoField.new("Ref Appl Id", "eurex.cash.eti.t7.v9.1.refapplid", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.ref_appl_last_msg_id = ProtoField.new("Ref Appl Last Msg Id", "eurex.cash.eti.t7.v9.1.refappllastmsgid", ftypes.BYTES)
eurex_cash_eti_t7_v9_1.fields.ref_appl_last_seq_num = ProtoField.new("Ref Appl Last Seq Num", "eurex.cash.eti.t7.v9.1.refappllastseqnum", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.ref_appl_sub_id = ProtoField.new("Ref Appl Sub Id", "eurex.cash.eti.t7.v9.1.refapplsubid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.refinancing_eligibility_indicator = ProtoField.new("Refinancing Eligibility Indicator", "eurex.cash.eti.t7.v9.1.refinancingeligibilityindicator", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.regulatory_trade_id = ProtoField.new("Regulatory Trade Id", "eurex.cash.eti.t7.v9.1.regulatorytradeid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.reject = ProtoField.new("Reject", "eurex.cash.eti.t7.v9.1.reject", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.request_header_comp = ProtoField.new("Request Header Comp", "eurex.cash.eti.t7.v9.1.requestheadercomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.request_time = ProtoField.new("Request Time", "eurex.cash.eti.t7.v9.1.requesttime", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.requesting_party_clearing_firm = ProtoField.new("Requesting Party Clearing Firm", "eurex.cash.eti.t7.v9.1.requestingpartyclearingfirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.requesting_party_entering_firm = ProtoField.new("Requesting Party Entering Firm", "eurex.cash.eti.t7.v9.1.requestingpartyenteringfirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.requesting_party_id_entering_firm = ProtoField.new("Requesting Party Id Entering Firm", "eurex.cash.eti.t7.v9.1.requestingpartyidenteringfirm", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.requesting_party_id_executing_system = ProtoField.new("Requesting Party Id Executing System", "eurex.cash.eti.t7.v9.1.requestingpartyidexecutingsystem", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.requesting_party_id_executing_trader = ProtoField.new("Requesting Party Id Executing Trader", "eurex.cash.eti.t7.v9.1.requestingpartyidexecutingtrader", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.respondent_type = ProtoField.new("Respondent Type", "eurex.cash.eti.t7.v9.1.respondenttype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.response_header_comp = ProtoField.new("Response Header Comp", "eurex.cash.eti.t7.v9.1.responseheadercomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.response_header_me_comp = ProtoField.new("Response Header Me Comp", "eurex.cash.eti.t7.v9.1.responseheadermecomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.response_in = ProtoField.new("Response In", "eurex.cash.eti.t7.v9.1.responsein", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.retransmit_me_message_request = ProtoField.new("Retransmit Me Message Request", "eurex.cash.eti.t7.v9.1.retransmitmemessagerequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.retransmit_me_message_response = ProtoField.new("Retransmit Me Message Response", "eurex.cash.eti.t7.v9.1.retransmitmemessageresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.retransmit_request = ProtoField.new("Retransmit Request", "eurex.cash.eti.t7.v9.1.retransmitrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.retransmit_response = ProtoField.new("Retransmit Response", "eurex.cash.eti.t7.v9.1.retransmitresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.rfq_broadcast = ProtoField.new("Rfq Broadcast", "eurex.cash.eti.t7.v9.1.rfqbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.rfq_publish_indicator = ProtoField.new("Rfq Publish Indicator", "eurex.cash.eti.t7.v9.1.rfqpublishindicator", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.rfq_reject_notification = ProtoField.new("Rfq Reject Notification", "eurex.cash.eti.t7.v9.1.rfqrejectnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.rfq_request = ProtoField.new("Rfq Request", "eurex.cash.eti.t7.v9.1.rfqrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.rfq_requester_disclosure_instruction = ProtoField.new("Rfq Requester Disclosure Instruction", "eurex.cash.eti.t7.v9.1.rfqrequesterdisclosureinstruction", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.rfq_response = ProtoField.new("Rfq Response", "eurex.cash.eti.t7.v9.1.rfqresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.rfq_specialist_broadcast = ProtoField.new("Rfq Specialist Broadcast", "eurex.cash.eti.t7.v9.1.rfqspecialistbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_clearing_firm = ProtoField.new("Root Party Clearing Firm", "eurex.cash.eti.t7.v9.1.rootpartyclearingfirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_contra_firm = ProtoField.new("Root Party Contra Firm", "eurex.cash.eti.t7.v9.1.rootpartycontrafirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_contra_firm_kv_number = ProtoField.new("Root Party Contra Firm Kv Number", "eurex.cash.eti.t7.v9.1.rootpartycontrafirmkvnumber", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_contra_settlement_account = ProtoField.new("Root Party Contra Settlement Account", "eurex.cash.eti.t7.v9.1.rootpartycontrasettlementaccount", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_contra_settlement_firm = ProtoField.new("Root Party Contra Settlement Firm", "eurex.cash.eti.t7.v9.1.rootpartycontrasettlementfirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_contra_settlement_location = ProtoField.new("Root Party Contra Settlement Location", "eurex.cash.eti.t7.v9.1.rootpartycontrasettlementlocation", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_entering_trader = ProtoField.new("Root Party Entering Trader", "eurex.cash.eti.t7.v9.1.rootpartyenteringtrader", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_executing_firm = ProtoField.new("Root Party Executing Firm", "eurex.cash.eti.t7.v9.1.rootpartyexecutingfirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_executing_firm_kv_number = ProtoField.new("Root Party Executing Firm Kv Number", "eurex.cash.eti.t7.v9.1.rootpartyexecutingfirmkvnumber", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_executing_trader = ProtoField.new("Root Party Executing Trader", "eurex.cash.eti.t7.v9.1.rootpartyexecutingtrader", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_id_clearing_unit = ProtoField.new("Root Party Id Clearing Unit", "eurex.cash.eti.t7.v9.1.rootpartyidclearingunit", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.root_party_id_client_id = ProtoField.new("Root Party Id Client Id", "eurex.cash.eti.t7.v9.1.rootpartyidclientid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.root_party_id_contra_settlement_unit = ProtoField.new("Root Party Id Contra Settlement Unit", "eurex.cash.eti.t7.v9.1.rootpartyidcontrasettlementunit", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.root_party_id_contra_unit = ProtoField.new("Root Party Id Contra Unit", "eurex.cash.eti.t7.v9.1.rootpartyidcontraunit", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.root_party_id_executing_trader = ProtoField.new("Root Party Id Executing Trader", "eurex.cash.eti.t7.v9.1.rootpartyidexecutingtrader", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.root_party_id_executing_unit = ProtoField.new("Root Party Id Executing Unit", "eurex.cash.eti.t7.v9.1.rootpartyidexecutingunit", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.root_party_id_execution_venue = ProtoField.new("Root Party Id Execution Venue", "eurex.cash.eti.t7.v9.1.rootpartyidexecutionvenue", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_id_investment_decision_maker = ProtoField.new("Root Party Id Investment Decision Maker", "eurex.cash.eti.t7.v9.1.rootpartyidinvestmentdecisionmaker", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.root_party_id_investment_decision_maker_qualifier = ProtoField.new("Root Party Id Investment Decision Maker Qualifier", "eurex.cash.eti.t7.v9.1.rootpartyidinvestmentdecisionmakerqualifier", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.root_party_id_session_id = ProtoField.new("Root Party Id Session Id", "eurex.cash.eti.t7.v9.1.rootpartyidsessionid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.root_party_id_settlement_unit = ProtoField.new("Root Party Id Settlement Unit", "eurex.cash.eti.t7.v9.1.rootpartyidsettlementunit", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.root_party_settlement_account = ProtoField.new("Root Party Settlement Account", "eurex.cash.eti.t7.v9.1.rootpartysettlementaccount", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_settlement_firm = ProtoField.new("Root Party Settlement Firm", "eurex.cash.eti.t7.v9.1.rootpartysettlementfirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.root_party_settlement_location = ProtoField.new("Root Party Settlement Location", "eurex.cash.eti.t7.v9.1.rootpartysettlementlocation", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.secondary_quote_id = ProtoField.new("Secondary Quote Id", "eurex.cash.eti.t7.v9.1.secondaryquoteid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.secondary_trade_id = ProtoField.new("Secondary Trade Id", "eurex.cash.eti.t7.v9.1.secondarytradeid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.security_id = ProtoField.new("Security Id", "eurex.cash.eti.t7.v9.1.securityid", ftypes.INT64)
eurex_cash_eti_t7_v9_1.fields.security_status = ProtoField.new("Security Status", "eurex.cash.eti.t7.v9.1.securitystatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.security_status_event_grp_comp = ProtoField.new("Security Status Event Grp Comp", "eurex.cash.eti.t7.v9.1.securitystatuseventgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.security_status_report_id = ProtoField.new("Security Status Report Id", "eurex.cash.eti.t7.v9.1.securitystatusreportid", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.security_trading_status = ProtoField.new("Security Trading Status", "eurex.cash.eti.t7.v9.1.securitytradingstatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.selective_request_for_quote_service_status = ProtoField.new("Selective Request For Quote Service Status", "eurex.cash.eti.t7.v9.1.selectiverequestforquoteservicestatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.selective_request_for_quote_service_trade_date = ProtoField.new("Selective Request For Quote Service Trade Date", "eurex.cash.eti.t7.v9.1.selectiverequestforquoteservicetradedate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.sender_sub_id = ProtoField.new("Sender Sub Id", "eurex.cash.eti.t7.v9.1.sendersubid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.sending_time = ProtoField.new("Sending Time", "eurex.cash.eti.t7.v9.1.sendingtime", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.service_availability_broadcast = ProtoField.new("Service Availability Broadcast", "eurex.cash.eti.t7.v9.1.serviceavailabilitybroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.service_availability_market_broadcast = ProtoField.new("Service Availability Market Broadcast", "eurex.cash.eti.t7.v9.1.serviceavailabilitymarketbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.session_instance_id = ProtoField.new("Session Instance Id", "eurex.cash.eti.t7.v9.1.sessioninstanceid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.session_mode = ProtoField.new("Session Mode", "eurex.cash.eti.t7.v9.1.sessionmode", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "eurex.cash.eti.t7.v9.1.sessionrejectreason", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.session_status = ProtoField.new("Session Status", "eurex.cash.eti.t7.v9.1.sessionstatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.session_sub_mode = ProtoField.new("Session Sub Mode", "eurex.cash.eti.t7.v9.1.sessionsubmode", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.sessions_grp_comp = ProtoField.new("Sessions Grp Comp", "eurex.cash.eti.t7.v9.1.sessionsgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.settl_curr_amt = ProtoField.new("Settl Curr Amt", "eurex.cash.eti.t7.v9.1.settlcurramt", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.settl_curr_fx_rate = ProtoField.new("Settl Curr Fx Rate", "eurex.cash.eti.t7.v9.1.settlcurrfxrate", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.settl_currency = ProtoField.new("Settl Currency", "eurex.cash.eti.t7.v9.1.settlcurrency", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.settl_date = ProtoField.new("Settl Date", "eurex.cash.eti.t7.v9.1.settldate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.side = ProtoField.new("Side", "eurex.cash.eti.t7.v9.1.side", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.side_alloc_grp_bc_comp = ProtoField.new("Side Alloc Grp Bc Comp", "eurex.cash.eti.t7.v9.1.sideallocgrpbccomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.side_alloc_grp_comp = ProtoField.new("Side Alloc Grp Comp", "eurex.cash.eti.t7.v9.1.sideallocgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.side_gross_trade_amt = ProtoField.new("Side Gross Trade Amt", "eurex.cash.eti.t7.v9.1.sidegrosstradeamt", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.side_liquidity_ind = ProtoField.new("Side Liquidity Ind", "eurex.cash.eti.t7.v9.1.sideliquidityind", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.side_trade_id = ProtoField.new("Side Trade Id", "eurex.cash.eti.t7.v9.1.sidetradeid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.side_trade_report_id = ProtoField.new("Side Trade Report Id", "eurex.cash.eti.t7.v9.1.sidetradereportid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.single_quote_request = ProtoField.new("Single Quote Request", "eurex.cash.eti.t7.v9.1.singlequoterequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.sold_out_indicator = ProtoField.new("Sold Out Indicator", "eurex.cash.eti.t7.v9.1.soldoutindicator", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.specialist_delete_all_order_broadcast = ProtoField.new("Specialist Delete All Order Broadcast", "eurex.cash.eti.t7.v9.1.specialistdeleteallorderbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.specialist_instrument_event_notification = ProtoField.new("Specialist Instrument Event Notification", "eurex.cash.eti.t7.v9.1.specialistinstrumenteventnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.specialist_order_book_notification = ProtoField.new("Specialist Order Book Notification", "eurex.cash.eti.t7.v9.1.specialistorderbooknotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.specialist_rfq_reject_request = ProtoField.new("Specialist Rfq Reject Request", "eurex.cash.eti.t7.v9.1.specialistrfqrejectrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.specialist_rfq_reply_notification = ProtoField.new("Specialist Rfq Reply Notification", "eurex.cash.eti.t7.v9.1.specialistrfqreplynotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.specialist_rfq_reply_request = ProtoField.new("Specialist Rfq Reply Request", "eurex.cash.eti.t7.v9.1.specialistrfqreplyrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.specialist_rfq_reply_response = ProtoField.new("Specialist Rfq Reply Response", "eurex.cash.eti.t7.v9.1.specialistrfqreplyresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.specialist_security_state_change_request = ProtoField.new("Specialist Security State Change Request", "eurex.cash.eti.t7.v9.1.specialistsecuritystatechangerequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.specialist_security_state_change_response = ProtoField.new("Specialist Security State Change Response", "eurex.cash.eti.t7.v9.1.specialistsecuritystatechangeresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.srqs_quote_entry_grp_comp = ProtoField.new("Srqs Quote Entry Grp Comp", "eurex.cash.eti.t7.v9.1.srqsquoteentrygrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.srqs_related_trade_id = ProtoField.new("Srqs Related Trade Id", "eurex.cash.eti.t7.v9.1.srqsrelatedtradeid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.stop_px = ProtoField.new("Stop Px", "eurex.cash.eti.t7.v9.1.stoppx", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.stop_px_indicator = ProtoField.new("Stop Px Indicator", "eurex.cash.eti.t7.v9.1.stoppxindicator", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.subscribe_request = ProtoField.new("Subscribe Request", "eurex.cash.eti.t7.v9.1.subscriberequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.subscribe_response = ProtoField.new("Subscribe Response", "eurex.cash.eti.t7.v9.1.subscriberesponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.subscription_scope = ProtoField.new("Subscription Scope", "eurex.cash.eti.t7.v9.1.subscriptionscope", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.t_7_entry_service_rtm_status = ProtoField.new("T 7 Entry Service Rtm Status", "eurex.cash.eti.t7.v9.1.t7entryservicertmstatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.t_7_entry_service_rtm_trade_date = ProtoField.new("T 7 Entry Service Rtm Trade Date", "eurex.cash.eti.t7.v9.1.t7entryservicertmtradedate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.t_7_entry_service_status = ProtoField.new("T 7 Entry Service Status", "eurex.cash.eti.t7.v9.1.t7entryservicestatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.t_7_entry_service_trade_date = ProtoField.new("T 7 Entry Service Trade Date", "eurex.cash.eti.t7.v9.1.t7entryservicetradedate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.target_party_executing_firm = ProtoField.new("Target Party Executing Firm", "eurex.cash.eti.t7.v9.1.targetpartyexecutingfirm", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.target_party_executing_trader = ProtoField.new("Target Party Executing Trader", "eurex.cash.eti.t7.v9.1.targetpartyexecutingtrader", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.target_party_id_desk_id = ProtoField.new("Target Party Id Desk Id", "eurex.cash.eti.t7.v9.1.targetpartyiddeskid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.target_party_id_executing_trader = ProtoField.new("Target Party Id Executing Trader", "eurex.cash.eti.t7.v9.1.targetpartyidexecutingtrader", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.target_party_id_session_id = ProtoField.new("Target Party Id Session Id", "eurex.cash.eti.t7.v9.1.targetpartyidsessionid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.template_id = ProtoField.new("Template Id", "eurex.cash.eti.t7.v9.1.templateid", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.tes_approve_broadcast = ProtoField.new("Tes Approve Broadcast", "eurex.cash.eti.t7.v9.1.tesapprovebroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.tes_broadcast = ProtoField.new("Tes Broadcast", "eurex.cash.eti.t7.v9.1.tesbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.tes_delete_broadcast = ProtoField.new("Tes Delete Broadcast", "eurex.cash.eti.t7.v9.1.tesdeletebroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.tes_enrichment_rule_id = ProtoField.new("Tes Enrichment Rule Id", "eurex.cash.eti.t7.v9.1.tesenrichmentruleid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.tes_exec_id = ProtoField.new("Tes Exec Id", "eurex.cash.eti.t7.v9.1.tesexecid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.tes_execution_broadcast = ProtoField.new("Tes Execution Broadcast", "eurex.cash.eti.t7.v9.1.tesexecutionbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.tes_response = ProtoField.new("Tes Response", "eurex.cash.eti.t7.v9.1.tesresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.tes_trade_broadcast = ProtoField.new("Tes Trade Broadcast", "eurex.cash.eti.t7.v9.1.testradebroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.tes_trading_session_status_broadcast = ProtoField.new("Tes Trading Session Status Broadcast", "eurex.cash.eti.t7.v9.1.testradingsessionstatusbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.throttle_disconnect_limit = ProtoField.new("Throttle Disconnect Limit", "eurex.cash.eti.t7.v9.1.throttledisconnectlimit", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.throttle_no_msgs = ProtoField.new("Throttle No Msgs", "eurex.cash.eti.t7.v9.1.throttlenomsgs", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.throttle_time_interval = ProtoField.new("Throttle Time Interval", "eurex.cash.eti.t7.v9.1.throttletimeinterval", ftypes.INT64)
eurex_cash_eti_t7_v9_1.fields.throttle_update_notification = ProtoField.new("Throttle Update Notification", "eurex.cash.eti.t7.v9.1.throttleupdatenotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.time_in_force = ProtoField.new("Time In Force", "eurex.cash.eti.t7.v9.1.timeinforce", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.tm_trading_session_status_broadcast = ProtoField.new("Tm Trading Session Status Broadcast", "eurex.cash.eti.t7.v9.1.tmtradingsessionstatusbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "eurex.cash.eti.t7.v9.1.tradsesevent", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trad_ses_mode = ProtoField.new("Trad Ses Mode", "eurex.cash.eti.t7.v9.1.tradsesmode", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trade_alloc_status = ProtoField.new("Trade Alloc Status", "eurex.cash.eti.t7.v9.1.tradeallocstatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trade_at_close_opt_in = ProtoField.new("Trade At Close Opt In", "eurex.cash.eti.t7.v9.1.tradeatcloseoptin", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trade_broadcast = ProtoField.new("Trade Broadcast", "eurex.cash.eti.t7.v9.1.tradebroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.trade_date = ProtoField.new("Trade Date", "eurex.cash.eti.t7.v9.1.tradedate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.trade_id = ProtoField.new("Trade Id", "eurex.cash.eti.t7.v9.1.tradeid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.trade_manager_status = ProtoField.new("Trade Manager Status", "eurex.cash.eti.t7.v9.1.trademanagerstatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trade_manager_trade_date = ProtoField.new("Trade Manager Trade Date", "eurex.cash.eti.t7.v9.1.trademanagertradedate", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.trade_number = ProtoField.new("Trade Number", "eurex.cash.eti.t7.v9.1.tradenumber", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.trade_publish_indicator = ProtoField.new("Trade Publish Indicator", "eurex.cash.eti.t7.v9.1.tradepublishindicator", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trade_report_id = ProtoField.new("Trade Report Id", "eurex.cash.eti.t7.v9.1.tradereportid", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.trade_report_text = ProtoField.new("Trade Report Text", "eurex.cash.eti.t7.v9.1.tradereporttext", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.trade_report_type = ProtoField.new("Trade Report Type", "eurex.cash.eti.t7.v9.1.tradereporttype", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trading_capacity = ProtoField.new("Trading Capacity", "eurex.cash.eti.t7.v9.1.tradingcapacity", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trading_session_status_broadcast = ProtoField.new("Trading Session Status Broadcast", "eurex.cash.eti.t7.v9.1.tradingsessionstatusbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.cash.eti.t7.v9.1.tradingsessionsubid", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trailing_stop_update_notification = ProtoField.new("Trailing Stop Update Notification", "eurex.cash.eti.t7.v9.1.trailingstopupdatenotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.trans_bkd_time = ProtoField.new("Trans Bkd Time", "eurex.cash.eti.t7.v9.1.transbkdtime", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.transact_time = ProtoField.new("Transact Time", "eurex.cash.eti.t7.v9.1.transacttime", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.transaction_delay_indicator = ProtoField.new("Transaction Delay Indicator", "eurex.cash.eti.t7.v9.1.transactiondelayindicator", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.transfer_reason = ProtoField.new("Transfer Reason", "eurex.cash.eti.t7.v9.1.transferreason", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trd_match_id = ProtoField.new("Trd Match Id", "eurex.cash.eti.t7.v9.1.trdmatchid", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.trd_reg_ts_entry_time = ProtoField.new("Trd Reg Ts Entry Time", "eurex.cash.eti.t7.v9.1.trdregtsentrytime", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.trd_reg_ts_execution_time = ProtoField.new("Trd Reg Ts Execution Time", "eurex.cash.eti.t7.v9.1.trdregtsexecutiontime", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg Ts Time In", "eurex.cash.eti.t7.v9.1.trdregtstimein", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.trd_reg_ts_time_out = ProtoField.new("Trd Reg Ts Time Out", "eurex.cash.eti.t7.v9.1.trdregtstimeout", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg Ts Time Priority", "eurex.cash.eti.t7.v9.1.trdregtstimepriority", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.trd_rpt_status = ProtoField.new("Trd Rpt Status", "eurex.cash.eti.t7.v9.1.trdrptstatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.trd_type = ProtoField.new("Trd Type", "eurex.cash.eti.t7.v9.1.trdtype", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.triggered = ProtoField.new("Triggered", "eurex.cash.eti.t7.v9.1.triggered", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.unsubscribe_request = ProtoField.new("Unsubscribe Request", "eurex.cash.eti.t7.v9.1.unsubscriberequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.unsubscribe_response = ProtoField.new("Unsubscribe Response", "eurex.cash.eti.t7.v9.1.unsubscriberesponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.user_login_request = ProtoField.new("User Login Request", "eurex.cash.eti.t7.v9.1.userloginrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.user_login_response = ProtoField.new("User Login Response", "eurex.cash.eti.t7.v9.1.userloginresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.user_logout_request = ProtoField.new("User Logout Request", "eurex.cash.eti.t7.v9.1.userlogoutrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.user_logout_response = ProtoField.new("User Logout Response", "eurex.cash.eti.t7.v9.1.userlogoutresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.user_status = ProtoField.new("User Status", "eurex.cash.eti.t7.v9.1.userstatus", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.username = ProtoField.new("Username", "eurex.cash.eti.t7.v9.1.username", ftypes.UINT32)
eurex_cash_eti_t7_v9_1.fields.valid_until_time = ProtoField.new("Valid Until Time", "eurex.cash.eti.t7.v9.1.validuntiltime", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.value_check_type_quantity = ProtoField.new("Value Check Type Quantity", "eurex.cash.eti.t7.v9.1.valuechecktypequantity", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.value_check_type_value = ProtoField.new("Value Check Type Value", "eurex.cash.eti.t7.v9.1.valuechecktypevalue", ftypes.UINT8)
eurex_cash_eti_t7_v9_1.fields.var_text = ProtoField.new("Var Text", "eurex.cash.eti.t7.v9.1.vartext", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.var_text_len = ProtoField.new("Var Text Len", "eurex.cash.eti.t7.v9.1.vartextlen", ftypes.UINT16)
eurex_cash_eti_t7_v9_1.fields.volume_discovery_price = ProtoField.new("Volume Discovery Price", "eurex.cash.eti.t7.v9.1.volumediscoveryprice", ftypes.UINT64)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_create_deal_notification = ProtoField.new("Xetra En Light Create Deal Notification", "eurex.cash.eti.t7.v9.1.xetraenlightcreatedealnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_deal_response = ProtoField.new("Xetra En Light Deal Response", "eurex.cash.eti.t7.v9.1.xetraenlightdealresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_enter_quote_request = ProtoField.new("Xetra En Light Enter Quote Request", "eurex.cash.eti.t7.v9.1.xetraenlightenterquoterequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_hit_quote_request = ProtoField.new("Xetra En Light Hit Quote Request", "eurex.cash.eti.t7.v9.1.xetraenlighthitquoterequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_negotiation_notification = ProtoField.new("Xetra En Light Negotiation Notification", "eurex.cash.eti.t7.v9.1.xetraenlightnegotiationnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_negotiation_requester_notification = ProtoField.new("Xetra En Light Negotiation Requester Notification", "eurex.cash.eti.t7.v9.1.xetraenlightnegotiationrequesternotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_negotiation_status_notification = ProtoField.new("Xetra En Light Negotiation Status Notification", "eurex.cash.eti.t7.v9.1.xetraenlightnegotiationstatusnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_open_negotiation_notification = ProtoField.new("Xetra En Light Open Negotiation Notification", "eurex.cash.eti.t7.v9.1.xetraenlightopennegotiationnotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_open_negotiation_request = ProtoField.new("Xetra En Light Open Negotiation Request", "eurex.cash.eti.t7.v9.1.xetraenlightopennegotiationrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_open_negotiation_requester_notification = ProtoField.new("Xetra En Light Open Negotiation Requester Notification", "eurex.cash.eti.t7.v9.1.xetraenlightopennegotiationrequesternotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_quote_notification = ProtoField.new("Xetra En Light Quote Notification", "eurex.cash.eti.t7.v9.1.xetraenlightquotenotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_quote_requester_notification = ProtoField.new("Xetra En Light Quote Requester Notification", "eurex.cash.eti.t7.v9.1.xetraenlightquoterequesternotification", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_quote_response = ProtoField.new("Xetra En Light Quote Response", "eurex.cash.eti.t7.v9.1.xetraenlightquoteresponse", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_quoting_status_request = ProtoField.new("Xetra En Light Quoting Status Request", "eurex.cash.eti.t7.v9.1.xetraenlightquotingstatusrequest", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_status_broadcast = ProtoField.new("Xetra En Light Status Broadcast", "eurex.cash.eti.t7.v9.1.xetraenlightstatusbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_target_parties_comp = ProtoField.new("Xetra En Light Target Parties Comp", "eurex.cash.eti.t7.v9.1.xetraenlighttargetpartiescomp", ftypes.STRING)
eurex_cash_eti_t7_v9_1.fields.xetra_en_light_update_negotiation_request = ProtoField.new("Xetra En Light Update Negotiation Request", "eurex.cash.eti.t7.v9.1.xetraenlightupdatenegotiationrequest", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Eurex Cash Eti T7 9.1 Element Dissection Options
show.affected_ord_grp_comp = true
show.affected_order_requests_grp_comp = true
show.approve_tes_trade_request = true
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
show.delete_tes_trade_request = true
show.enrichment_rules_grp_comp = true
show.enter_tes_trade_request = true
show.extended_deletion_report = true
show.fills_grp_comp = true
show.forced_logout_notification = true
show.forced_user_logout_notification = true
show.heartbeat = true
show.heartbeat_notification = true
show.inquire_enrichment_rule_id_list_request = true
show.inquire_enrichment_rule_id_list_response = true
show.inquire_session_list_request = true
show.inquire_session_list_response = true
show.inquire_user_request = true
show.inquire_user_response = true
show.issuer_notification = true
show.issuer_security_state_change_request = true
show.issuer_security_state_change_response = true
show.legal_notification_broadcast = true
show.logon_request = true
show.logon_response = true
show.logout_request = true
show.logout_response = true
show.mass_quote_request = true
show.mass_quote_response = true
show.message_header_in_comp = true
show.message_header_out_comp = true
show.modify_order_nr_response = true
show.modify_order_response = true
show.modify_order_single_request = true
show.modify_order_single_short_request = true
show.modify_tes_trade_request = true
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
show.order_book_item_grp_comp = true
show.order_exec_notification = true
show.order_exec_report_broadcast = true
show.order_exec_response = true
show.party_action_report = true
show.party_details_grp_comp = true
show.party_entitlements_update_report = true
show.ping_request = true
show.ping_response = true
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
show.rfq_reject_notification = true
show.rfq_request = true
show.rfq_response = true
show.rfq_specialist_broadcast = true
show.security_status_event_grp_comp = true
show.service_availability_broadcast = true
show.service_availability_market_broadcast = true
show.sessions_grp_comp = true
show.side_alloc_grp_bc_comp = true
show.side_alloc_grp_comp = true
show.single_quote_request = true
show.specialist_delete_all_order_broadcast = true
show.specialist_instrument_event_notification = true
show.specialist_order_book_notification = true
show.specialist_rfq_reject_request = true
show.specialist_rfq_reply_notification = true
show.specialist_rfq_reply_request = true
show.specialist_rfq_reply_response = true
show.specialist_security_state_change_request = true
show.specialist_security_state_change_response = true
show.srqs_quote_entry_grp_comp = true
show.subscribe_request = true
show.subscribe_response = true
show.tes_approve_broadcast = true
show.tes_broadcast = true
show.tes_delete_broadcast = true
show.tes_execution_broadcast = true
show.tes_response = true
show.tes_trade_broadcast = true
show.tes_trading_session_status_broadcast = true
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
show.xetra_en_light_create_deal_notification = true
show.xetra_en_light_deal_response = true
show.xetra_en_light_enter_quote_request = true
show.xetra_en_light_hit_quote_request = true
show.xetra_en_light_negotiation_notification = true
show.xetra_en_light_negotiation_requester_notification = true
show.xetra_en_light_negotiation_status_notification = true
show.xetra_en_light_open_negotiation_notification = true
show.xetra_en_light_open_negotiation_request = true
show.xetra_en_light_open_negotiation_requester_notification = true
show.xetra_en_light_quote_notification = true
show.xetra_en_light_quote_requester_notification = true
show.xetra_en_light_quote_response = true
show.xetra_en_light_quoting_status_request = true
show.xetra_en_light_status_broadcast = true
show.xetra_en_light_target_parties_comp = true
show.xetra_en_light_update_negotiation_request = true
show.packet = false

-- Register Eurex Cash Eti T7 9.1 Show Options
eurex_cash_eti_t7_v9_1.prefs.show_affected_ord_grp_comp = Pref.bool("Show Affected Ord Grp Comp", show.affected_ord_grp_comp, "Parse and add Affected Ord Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_affected_order_requests_grp_comp = Pref.bool("Show Affected Order Requests Grp Comp", show.affected_order_requests_grp_comp, "Parse and add Affected Order Requests Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_approve_tes_trade_request = Pref.bool("Show Approve Tes Trade Request", show.approve_tes_trade_request, "Parse and add Approve Tes Trade Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_broadcast_error_notification = Pref.bool("Show Broadcast Error Notification", show.broadcast_error_notification, "Parse and add Broadcast Error Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_cross_request = Pref.bool("Show Cross Request", show.cross_request, "Parse and add Cross Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_cross_request_response = Pref.bool("Show Cross Request Response", show.cross_request_response, "Parse and add Cross Request Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_broadcast = Pref.bool("Show Delete All Order Broadcast", show.delete_all_order_broadcast, "Parse and add Delete All Order Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_nr_response = Pref.bool("Show Delete All Order Nr Response", show.delete_all_order_nr_response, "Parse and add Delete All Order Nr Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_quote_event_broadcast = Pref.bool("Show Delete All Order Quote Event Broadcast", show.delete_all_order_quote_event_broadcast, "Parse and add Delete All Order Quote Event Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_request = Pref.bool("Show Delete All Order Request", show.delete_all_order_request, "Parse and add Delete All Order Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_response = Pref.bool("Show Delete All Order Response", show.delete_all_order_response, "Parse and add Delete All Order Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_all_quote_broadcast = Pref.bool("Show Delete All Quote Broadcast", show.delete_all_quote_broadcast, "Parse and add Delete All Quote Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_all_quote_request = Pref.bool("Show Delete All Quote Request", show.delete_all_quote_request, "Parse and add Delete All Quote Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_all_quote_response = Pref.bool("Show Delete All Quote Response", show.delete_all_quote_response, "Parse and add Delete All Quote Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_order_broadcast = Pref.bool("Show Delete Order Broadcast", show.delete_order_broadcast, "Parse and add Delete Order Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_order_nr_response = Pref.bool("Show Delete Order Nr Response", show.delete_order_nr_response, "Parse and add Delete Order Nr Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_order_response = Pref.bool("Show Delete Order Response", show.delete_order_response, "Parse and add Delete Order Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_order_single_request = Pref.bool("Show Delete Order Single Request", show.delete_order_single_request, "Parse and add Delete Order Single Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_delete_tes_trade_request = Pref.bool("Show Delete Tes Trade Request", show.delete_tes_trade_request, "Parse and add Delete Tes Trade Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_enrichment_rules_grp_comp = Pref.bool("Show Enrichment Rules Grp Comp", show.enrichment_rules_grp_comp, "Parse and add Enrichment Rules Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_enter_tes_trade_request = Pref.bool("Show Enter Tes Trade Request", show.enter_tes_trade_request, "Parse and add Enter Tes Trade Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_extended_deletion_report = Pref.bool("Show Extended Deletion Report", show.extended_deletion_report, "Parse and add Extended Deletion Report to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_fills_grp_comp = Pref.bool("Show Fills Grp Comp", show.fills_grp_comp, "Parse and add Fills Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_forced_logout_notification = Pref.bool("Show Forced Logout Notification", show.forced_logout_notification, "Parse and add Forced Logout Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_forced_user_logout_notification = Pref.bool("Show Forced User Logout Notification", show.forced_user_logout_notification, "Parse and add Forced User Logout Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_heartbeat_notification = Pref.bool("Show Heartbeat Notification", show.heartbeat_notification, "Parse and add Heartbeat Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_inquire_enrichment_rule_id_list_request = Pref.bool("Show Inquire Enrichment Rule Id List Request", show.inquire_enrichment_rule_id_list_request, "Parse and add Inquire Enrichment Rule Id List Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_inquire_enrichment_rule_id_list_response = Pref.bool("Show Inquire Enrichment Rule Id List Response", show.inquire_enrichment_rule_id_list_response, "Parse and add Inquire Enrichment Rule Id List Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_inquire_session_list_request = Pref.bool("Show Inquire Session List Request", show.inquire_session_list_request, "Parse and add Inquire Session List Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_inquire_session_list_response = Pref.bool("Show Inquire Session List Response", show.inquire_session_list_response, "Parse and add Inquire Session List Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_inquire_user_request = Pref.bool("Show Inquire User Request", show.inquire_user_request, "Parse and add Inquire User Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_inquire_user_response = Pref.bool("Show Inquire User Response", show.inquire_user_response, "Parse and add Inquire User Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_issuer_notification = Pref.bool("Show Issuer Notification", show.issuer_notification, "Parse and add Issuer Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_issuer_security_state_change_request = Pref.bool("Show Issuer Security State Change Request", show.issuer_security_state_change_request, "Parse and add Issuer Security State Change Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_issuer_security_state_change_response = Pref.bool("Show Issuer Security State Change Response", show.issuer_security_state_change_response, "Parse and add Issuer Security State Change Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_legal_notification_broadcast = Pref.bool("Show Legal Notification Broadcast", show.legal_notification_broadcast, "Parse and add Legal Notification Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_logon_request = Pref.bool("Show Logon Request", show.logon_request, "Parse and add Logon Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_logon_response = Pref.bool("Show Logon Response", show.logon_response, "Parse and add Logon Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_logout_response = Pref.bool("Show Logout Response", show.logout_response, "Parse and add Logout Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_mass_quote_request = Pref.bool("Show Mass Quote Request", show.mass_quote_request, "Parse and add Mass Quote Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_mass_quote_response = Pref.bool("Show Mass Quote Response", show.mass_quote_response, "Parse and add Mass Quote Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_message_header_in_comp = Pref.bool("Show Message Header In Comp", show.message_header_in_comp, "Parse and add Message Header In Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_message_header_out_comp = Pref.bool("Show Message Header Out Comp", show.message_header_out_comp, "Parse and add Message Header Out Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_modify_order_nr_response = Pref.bool("Show Modify Order Nr Response", show.modify_order_nr_response, "Parse and add Modify Order Nr Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_modify_order_response = Pref.bool("Show Modify Order Response", show.modify_order_response, "Parse and add Modify Order Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_modify_order_single_request = Pref.bool("Show Modify Order Single Request", show.modify_order_single_request, "Parse and add Modify Order Single Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_modify_order_single_short_request = Pref.bool("Show Modify Order Single Short Request", show.modify_order_single_short_request, "Parse and add Modify Order Single Short Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_modify_tes_trade_request = Pref.bool("Show Modify Tes Trade Request", show.modify_tes_trade_request, "Parse and add Modify Tes Trade Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_new_order_nr_response = Pref.bool("Show New Order Nr Response", show.new_order_nr_response, "Parse and add New Order Nr Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_new_order_response = Pref.bool("Show New Order Response", show.new_order_response, "Parse and add New Order Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_new_order_single_request = Pref.bool("Show New Order Single Request", show.new_order_single_request, "Parse and add New Order Single Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_new_order_single_short_request = Pref.bool("Show New Order Single Short Request", show.new_order_single_short_request, "Parse and add New Order Single Short Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_news_broadcast = Pref.bool("Show News Broadcast", show.news_broadcast, "Parse and add News Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_not_affected_orders_grp_comp = Pref.bool("Show Not Affected Orders Grp Comp", show.not_affected_orders_grp_comp, "Parse and add Not Affected Orders Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_not_affected_securities_grp_comp = Pref.bool("Show Not Affected Securities Grp Comp", show.not_affected_securities_grp_comp, "Parse and add Not Affected Securities Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_notif_header_comp = Pref.bool("Show Notif Header Comp", show.notif_header_comp, "Parse and add Notif Header Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_nr_response_header_me_comp = Pref.bool("Show Nr Response Header Me Comp", show.nr_response_header_me_comp, "Parse and add Nr Response Header Me Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_nrbc_header_comp = Pref.bool("Show Nrbc Header Comp", show.nrbc_header_comp, "Parse and add Nrbc Header Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_order_book_item_grp_comp = Pref.bool("Show Order Book Item Grp Comp", show.order_book_item_grp_comp, "Parse and add Order Book Item Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_order_exec_notification = Pref.bool("Show Order Exec Notification", show.order_exec_notification, "Parse and add Order Exec Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_order_exec_report_broadcast = Pref.bool("Show Order Exec Report Broadcast", show.order_exec_report_broadcast, "Parse and add Order Exec Report Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_order_exec_response = Pref.bool("Show Order Exec Response", show.order_exec_response, "Parse and add Order Exec Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_party_action_report = Pref.bool("Show Party Action Report", show.party_action_report, "Parse and add Party Action Report to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_party_details_grp_comp = Pref.bool("Show Party Details Grp Comp", show.party_details_grp_comp, "Parse and add Party Details Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_party_entitlements_update_report = Pref.bool("Show Party Entitlements Update Report", show.party_entitlements_update_report, "Parse and add Party Entitlements Update Report to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_ping_request = Pref.bool("Show Ping Request", show.ping_request, "Parse and add Ping Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_ping_response = Pref.bool("Show Ping Response", show.ping_response, "Parse and add Ping Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_quote_activation_notification = Pref.bool("Show Quote Activation Notification", show.quote_activation_notification, "Parse and add Quote Activation Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_quote_activation_request = Pref.bool("Show Quote Activation Request", show.quote_activation_request, "Parse and add Quote Activation Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_quote_activation_response = Pref.bool("Show Quote Activation Response", show.quote_activation_response, "Parse and add Quote Activation Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_quote_entry_ack_grp_comp = Pref.bool("Show Quote Entry Ack Grp Comp", show.quote_entry_ack_grp_comp, "Parse and add Quote Entry Ack Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_quote_entry_grp_comp = Pref.bool("Show Quote Entry Grp Comp", show.quote_entry_grp_comp, "Parse and add Quote Entry Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_quote_event_grp_comp = Pref.bool("Show Quote Event Grp Comp", show.quote_event_grp_comp, "Parse and add Quote Event Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_quote_execution_report = Pref.bool("Show Quote Execution Report", show.quote_execution_report, "Parse and add Quote Execution Report to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_rbc_header_comp = Pref.bool("Show Rbc Header Comp", show.rbc_header_comp, "Parse and add Rbc Header Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_rbc_header_me_comp = Pref.bool("Show Rbc Header Me Comp", show.rbc_header_me_comp, "Parse and add Rbc Header Me Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_reject = Pref.bool("Show Reject", show.reject, "Parse and add Reject to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_request_header_comp = Pref.bool("Show Request Header Comp", show.request_header_comp, "Parse and add Request Header Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_response_header_comp = Pref.bool("Show Response Header Comp", show.response_header_comp, "Parse and add Response Header Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_response_header_me_comp = Pref.bool("Show Response Header Me Comp", show.response_header_me_comp, "Parse and add Response Header Me Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_retransmit_me_message_request = Pref.bool("Show Retransmit Me Message Request", show.retransmit_me_message_request, "Parse and add Retransmit Me Message Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_retransmit_me_message_response = Pref.bool("Show Retransmit Me Message Response", show.retransmit_me_message_response, "Parse and add Retransmit Me Message Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_retransmit_request = Pref.bool("Show Retransmit Request", show.retransmit_request, "Parse and add Retransmit Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_retransmit_response = Pref.bool("Show Retransmit Response", show.retransmit_response, "Parse and add Retransmit Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_rfq_broadcast = Pref.bool("Show Rfq Broadcast", show.rfq_broadcast, "Parse and add Rfq Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_rfq_reject_notification = Pref.bool("Show Rfq Reject Notification", show.rfq_reject_notification, "Parse and add Rfq Reject Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_rfq_request = Pref.bool("Show Rfq Request", show.rfq_request, "Parse and add Rfq Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_rfq_response = Pref.bool("Show Rfq Response", show.rfq_response, "Parse and add Rfq Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_rfq_specialist_broadcast = Pref.bool("Show Rfq Specialist Broadcast", show.rfq_specialist_broadcast, "Parse and add Rfq Specialist Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_security_status_event_grp_comp = Pref.bool("Show Security Status Event Grp Comp", show.security_status_event_grp_comp, "Parse and add Security Status Event Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_service_availability_broadcast = Pref.bool("Show Service Availability Broadcast", show.service_availability_broadcast, "Parse and add Service Availability Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_service_availability_market_broadcast = Pref.bool("Show Service Availability Market Broadcast", show.service_availability_market_broadcast, "Parse and add Service Availability Market Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_sessions_grp_comp = Pref.bool("Show Sessions Grp Comp", show.sessions_grp_comp, "Parse and add Sessions Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_side_alloc_grp_bc_comp = Pref.bool("Show Side Alloc Grp Bc Comp", show.side_alloc_grp_bc_comp, "Parse and add Side Alloc Grp Bc Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_side_alloc_grp_comp = Pref.bool("Show Side Alloc Grp Comp", show.side_alloc_grp_comp, "Parse and add Side Alloc Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_single_quote_request = Pref.bool("Show Single Quote Request", show.single_quote_request, "Parse and add Single Quote Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_specialist_delete_all_order_broadcast = Pref.bool("Show Specialist Delete All Order Broadcast", show.specialist_delete_all_order_broadcast, "Parse and add Specialist Delete All Order Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_specialist_instrument_event_notification = Pref.bool("Show Specialist Instrument Event Notification", show.specialist_instrument_event_notification, "Parse and add Specialist Instrument Event Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_specialist_order_book_notification = Pref.bool("Show Specialist Order Book Notification", show.specialist_order_book_notification, "Parse and add Specialist Order Book Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reject_request = Pref.bool("Show Specialist Rfq Reject Request", show.specialist_rfq_reject_request, "Parse and add Specialist Rfq Reject Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reply_notification = Pref.bool("Show Specialist Rfq Reply Notification", show.specialist_rfq_reply_notification, "Parse and add Specialist Rfq Reply Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reply_request = Pref.bool("Show Specialist Rfq Reply Request", show.specialist_rfq_reply_request, "Parse and add Specialist Rfq Reply Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reply_response = Pref.bool("Show Specialist Rfq Reply Response", show.specialist_rfq_reply_response, "Parse and add Specialist Rfq Reply Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_specialist_security_state_change_request = Pref.bool("Show Specialist Security State Change Request", show.specialist_security_state_change_request, "Parse and add Specialist Security State Change Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_specialist_security_state_change_response = Pref.bool("Show Specialist Security State Change Response", show.specialist_security_state_change_response, "Parse and add Specialist Security State Change Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_srqs_quote_entry_grp_comp = Pref.bool("Show Srqs Quote Entry Grp Comp", show.srqs_quote_entry_grp_comp, "Parse and add Srqs Quote Entry Grp Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_subscribe_request = Pref.bool("Show Subscribe Request", show.subscribe_request, "Parse and add Subscribe Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_subscribe_response = Pref.bool("Show Subscribe Response", show.subscribe_response, "Parse and add Subscribe Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_tes_approve_broadcast = Pref.bool("Show Tes Approve Broadcast", show.tes_approve_broadcast, "Parse and add Tes Approve Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_tes_broadcast = Pref.bool("Show Tes Broadcast", show.tes_broadcast, "Parse and add Tes Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_tes_delete_broadcast = Pref.bool("Show Tes Delete Broadcast", show.tes_delete_broadcast, "Parse and add Tes Delete Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_tes_execution_broadcast = Pref.bool("Show Tes Execution Broadcast", show.tes_execution_broadcast, "Parse and add Tes Execution Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_tes_response = Pref.bool("Show Tes Response", show.tes_response, "Parse and add Tes Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_tes_trade_broadcast = Pref.bool("Show Tes Trade Broadcast", show.tes_trade_broadcast, "Parse and add Tes Trade Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_tes_trading_session_status_broadcast = Pref.bool("Show Tes Trading Session Status Broadcast", show.tes_trading_session_status_broadcast, "Parse and add Tes Trading Session Status Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_throttle_update_notification = Pref.bool("Show Throttle Update Notification", show.throttle_update_notification, "Parse and add Throttle Update Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_tm_trading_session_status_broadcast = Pref.bool("Show Tm Trading Session Status Broadcast", show.tm_trading_session_status_broadcast, "Parse and add Tm Trading Session Status Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_trade_broadcast = Pref.bool("Show Trade Broadcast", show.trade_broadcast, "Parse and add Trade Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_trading_session_status_broadcast = Pref.bool("Show Trading Session Status Broadcast", show.trading_session_status_broadcast, "Parse and add Trading Session Status Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_trailing_stop_update_notification = Pref.bool("Show Trailing Stop Update Notification", show.trailing_stop_update_notification, "Parse and add Trailing Stop Update Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_unsubscribe_request = Pref.bool("Show Unsubscribe Request", show.unsubscribe_request, "Parse and add Unsubscribe Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_unsubscribe_response = Pref.bool("Show Unsubscribe Response", show.unsubscribe_response, "Parse and add Unsubscribe Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_user_login_request = Pref.bool("Show User Login Request", show.user_login_request, "Parse and add User Login Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_user_login_response = Pref.bool("Show User Login Response", show.user_login_response, "Parse and add User Login Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_user_logout_request = Pref.bool("Show User Logout Request", show.user_logout_request, "Parse and add User Logout Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_user_logout_response = Pref.bool("Show User Logout Response", show.user_logout_response, "Parse and add User Logout Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_create_deal_notification = Pref.bool("Show Xetra En Light Create Deal Notification", show.xetra_en_light_create_deal_notification, "Parse and add Xetra En Light Create Deal Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_deal_response = Pref.bool("Show Xetra En Light Deal Response", show.xetra_en_light_deal_response, "Parse and add Xetra En Light Deal Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_enter_quote_request = Pref.bool("Show Xetra En Light Enter Quote Request", show.xetra_en_light_enter_quote_request, "Parse and add Xetra En Light Enter Quote Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_hit_quote_request = Pref.bool("Show Xetra En Light Hit Quote Request", show.xetra_en_light_hit_quote_request, "Parse and add Xetra En Light Hit Quote Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_negotiation_notification = Pref.bool("Show Xetra En Light Negotiation Notification", show.xetra_en_light_negotiation_notification, "Parse and add Xetra En Light Negotiation Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_negotiation_requester_notification = Pref.bool("Show Xetra En Light Negotiation Requester Notification", show.xetra_en_light_negotiation_requester_notification, "Parse and add Xetra En Light Negotiation Requester Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_negotiation_status_notification = Pref.bool("Show Xetra En Light Negotiation Status Notification", show.xetra_en_light_negotiation_status_notification, "Parse and add Xetra En Light Negotiation Status Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_open_negotiation_notification = Pref.bool("Show Xetra En Light Open Negotiation Notification", show.xetra_en_light_open_negotiation_notification, "Parse and add Xetra En Light Open Negotiation Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_open_negotiation_request = Pref.bool("Show Xetra En Light Open Negotiation Request", show.xetra_en_light_open_negotiation_request, "Parse and add Xetra En Light Open Negotiation Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_open_negotiation_requester_notification = Pref.bool("Show Xetra En Light Open Negotiation Requester Notification", show.xetra_en_light_open_negotiation_requester_notification, "Parse and add Xetra En Light Open Negotiation Requester Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quote_notification = Pref.bool("Show Xetra En Light Quote Notification", show.xetra_en_light_quote_notification, "Parse and add Xetra En Light Quote Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quote_requester_notification = Pref.bool("Show Xetra En Light Quote Requester Notification", show.xetra_en_light_quote_requester_notification, "Parse and add Xetra En Light Quote Requester Notification to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quote_response = Pref.bool("Show Xetra En Light Quote Response", show.xetra_en_light_quote_response, "Parse and add Xetra En Light Quote Response to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quoting_status_request = Pref.bool("Show Xetra En Light Quoting Status Request", show.xetra_en_light_quoting_status_request, "Parse and add Xetra En Light Quoting Status Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_status_broadcast = Pref.bool("Show Xetra En Light Status Broadcast", show.xetra_en_light_status_broadcast, "Parse and add Xetra En Light Status Broadcast to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_target_parties_comp = Pref.bool("Show Xetra En Light Target Parties Comp", show.xetra_en_light_target_parties_comp, "Parse and add Xetra En Light Target Parties Comp to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_update_negotiation_request = Pref.bool("Show Xetra En Light Update Negotiation Request", show.xetra_en_light_update_negotiation_request, "Parse and add Xetra En Light Update Negotiation Request to protocol tree")
eurex_cash_eti_t7_v9_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function eurex_cash_eti_t7_v9_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.affected_ord_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_affected_ord_grp_comp then
    show.affected_ord_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_affected_ord_grp_comp
    changed = true
  end
  if show.affected_order_requests_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_affected_order_requests_grp_comp then
    show.affected_order_requests_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_affected_order_requests_grp_comp
    changed = true
  end
  if show.approve_tes_trade_request ~= eurex_cash_eti_t7_v9_1.prefs.show_approve_tes_trade_request then
    show.approve_tes_trade_request = eurex_cash_eti_t7_v9_1.prefs.show_approve_tes_trade_request
    changed = true
  end
  if show.broadcast_error_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_broadcast_error_notification then
    show.broadcast_error_notification = eurex_cash_eti_t7_v9_1.prefs.show_broadcast_error_notification
    changed = true
  end
  if show.cross_request ~= eurex_cash_eti_t7_v9_1.prefs.show_cross_request then
    show.cross_request = eurex_cash_eti_t7_v9_1.prefs.show_cross_request
    changed = true
  end
  if show.cross_request_response ~= eurex_cash_eti_t7_v9_1.prefs.show_cross_request_response then
    show.cross_request_response = eurex_cash_eti_t7_v9_1.prefs.show_cross_request_response
    changed = true
  end
  if show.delete_all_order_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_broadcast then
    show.delete_all_order_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_broadcast
    changed = true
  end
  if show.delete_all_order_nr_response ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_nr_response then
    show.delete_all_order_nr_response = eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_nr_response
    changed = true
  end
  if show.delete_all_order_quote_event_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_quote_event_broadcast then
    show.delete_all_order_quote_event_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_quote_event_broadcast
    changed = true
  end
  if show.delete_all_order_request ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_request then
    show.delete_all_order_request = eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_request
    changed = true
  end
  if show.delete_all_order_response ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_response then
    show.delete_all_order_response = eurex_cash_eti_t7_v9_1.prefs.show_delete_all_order_response
    changed = true
  end
  if show.delete_all_quote_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_all_quote_broadcast then
    show.delete_all_quote_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_delete_all_quote_broadcast
    changed = true
  end
  if show.delete_all_quote_request ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_all_quote_request then
    show.delete_all_quote_request = eurex_cash_eti_t7_v9_1.prefs.show_delete_all_quote_request
    changed = true
  end
  if show.delete_all_quote_response ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_all_quote_response then
    show.delete_all_quote_response = eurex_cash_eti_t7_v9_1.prefs.show_delete_all_quote_response
    changed = true
  end
  if show.delete_order_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_order_broadcast then
    show.delete_order_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_delete_order_broadcast
    changed = true
  end
  if show.delete_order_nr_response ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_order_nr_response then
    show.delete_order_nr_response = eurex_cash_eti_t7_v9_1.prefs.show_delete_order_nr_response
    changed = true
  end
  if show.delete_order_response ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_order_response then
    show.delete_order_response = eurex_cash_eti_t7_v9_1.prefs.show_delete_order_response
    changed = true
  end
  if show.delete_order_single_request ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_order_single_request then
    show.delete_order_single_request = eurex_cash_eti_t7_v9_1.prefs.show_delete_order_single_request
    changed = true
  end
  if show.delete_tes_trade_request ~= eurex_cash_eti_t7_v9_1.prefs.show_delete_tes_trade_request then
    show.delete_tes_trade_request = eurex_cash_eti_t7_v9_1.prefs.show_delete_tes_trade_request
    changed = true
  end
  if show.enrichment_rules_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_enrichment_rules_grp_comp then
    show.enrichment_rules_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_enrichment_rules_grp_comp
    changed = true
  end
  if show.enter_tes_trade_request ~= eurex_cash_eti_t7_v9_1.prefs.show_enter_tes_trade_request then
    show.enter_tes_trade_request = eurex_cash_eti_t7_v9_1.prefs.show_enter_tes_trade_request
    changed = true
  end
  if show.extended_deletion_report ~= eurex_cash_eti_t7_v9_1.prefs.show_extended_deletion_report then
    show.extended_deletion_report = eurex_cash_eti_t7_v9_1.prefs.show_extended_deletion_report
    changed = true
  end
  if show.fills_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_fills_grp_comp then
    show.fills_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_fills_grp_comp
    changed = true
  end
  if show.forced_logout_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_forced_logout_notification then
    show.forced_logout_notification = eurex_cash_eti_t7_v9_1.prefs.show_forced_logout_notification
    changed = true
  end
  if show.forced_user_logout_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_forced_user_logout_notification then
    show.forced_user_logout_notification = eurex_cash_eti_t7_v9_1.prefs.show_forced_user_logout_notification
    changed = true
  end
  if show.heartbeat ~= eurex_cash_eti_t7_v9_1.prefs.show_heartbeat then
    show.heartbeat = eurex_cash_eti_t7_v9_1.prefs.show_heartbeat
    changed = true
  end
  if show.heartbeat_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_heartbeat_notification then
    show.heartbeat_notification = eurex_cash_eti_t7_v9_1.prefs.show_heartbeat_notification
    changed = true
  end
  if show.inquire_enrichment_rule_id_list_request ~= eurex_cash_eti_t7_v9_1.prefs.show_inquire_enrichment_rule_id_list_request then
    show.inquire_enrichment_rule_id_list_request = eurex_cash_eti_t7_v9_1.prefs.show_inquire_enrichment_rule_id_list_request
    changed = true
  end
  if show.inquire_enrichment_rule_id_list_response ~= eurex_cash_eti_t7_v9_1.prefs.show_inquire_enrichment_rule_id_list_response then
    show.inquire_enrichment_rule_id_list_response = eurex_cash_eti_t7_v9_1.prefs.show_inquire_enrichment_rule_id_list_response
    changed = true
  end
  if show.inquire_session_list_request ~= eurex_cash_eti_t7_v9_1.prefs.show_inquire_session_list_request then
    show.inquire_session_list_request = eurex_cash_eti_t7_v9_1.prefs.show_inquire_session_list_request
    changed = true
  end
  if show.inquire_session_list_response ~= eurex_cash_eti_t7_v9_1.prefs.show_inquire_session_list_response then
    show.inquire_session_list_response = eurex_cash_eti_t7_v9_1.prefs.show_inquire_session_list_response
    changed = true
  end
  if show.inquire_user_request ~= eurex_cash_eti_t7_v9_1.prefs.show_inquire_user_request then
    show.inquire_user_request = eurex_cash_eti_t7_v9_1.prefs.show_inquire_user_request
    changed = true
  end
  if show.inquire_user_response ~= eurex_cash_eti_t7_v9_1.prefs.show_inquire_user_response then
    show.inquire_user_response = eurex_cash_eti_t7_v9_1.prefs.show_inquire_user_response
    changed = true
  end
  if show.issuer_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_issuer_notification then
    show.issuer_notification = eurex_cash_eti_t7_v9_1.prefs.show_issuer_notification
    changed = true
  end
  if show.issuer_security_state_change_request ~= eurex_cash_eti_t7_v9_1.prefs.show_issuer_security_state_change_request then
    show.issuer_security_state_change_request = eurex_cash_eti_t7_v9_1.prefs.show_issuer_security_state_change_request
    changed = true
  end
  if show.issuer_security_state_change_response ~= eurex_cash_eti_t7_v9_1.prefs.show_issuer_security_state_change_response then
    show.issuer_security_state_change_response = eurex_cash_eti_t7_v9_1.prefs.show_issuer_security_state_change_response
    changed = true
  end
  if show.legal_notification_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_legal_notification_broadcast then
    show.legal_notification_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_legal_notification_broadcast
    changed = true
  end
  if show.logon_request ~= eurex_cash_eti_t7_v9_1.prefs.show_logon_request then
    show.logon_request = eurex_cash_eti_t7_v9_1.prefs.show_logon_request
    changed = true
  end
  if show.logon_response ~= eurex_cash_eti_t7_v9_1.prefs.show_logon_response then
    show.logon_response = eurex_cash_eti_t7_v9_1.prefs.show_logon_response
    changed = true
  end
  if show.logout_request ~= eurex_cash_eti_t7_v9_1.prefs.show_logout_request then
    show.logout_request = eurex_cash_eti_t7_v9_1.prefs.show_logout_request
    changed = true
  end
  if show.logout_response ~= eurex_cash_eti_t7_v9_1.prefs.show_logout_response then
    show.logout_response = eurex_cash_eti_t7_v9_1.prefs.show_logout_response
    changed = true
  end
  if show.mass_quote_request ~= eurex_cash_eti_t7_v9_1.prefs.show_mass_quote_request then
    show.mass_quote_request = eurex_cash_eti_t7_v9_1.prefs.show_mass_quote_request
    changed = true
  end
  if show.mass_quote_response ~= eurex_cash_eti_t7_v9_1.prefs.show_mass_quote_response then
    show.mass_quote_response = eurex_cash_eti_t7_v9_1.prefs.show_mass_quote_response
    changed = true
  end
  if show.message_header_in_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_message_header_in_comp then
    show.message_header_in_comp = eurex_cash_eti_t7_v9_1.prefs.show_message_header_in_comp
    changed = true
  end
  if show.message_header_out_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_message_header_out_comp then
    show.message_header_out_comp = eurex_cash_eti_t7_v9_1.prefs.show_message_header_out_comp
    changed = true
  end
  if show.modify_order_nr_response ~= eurex_cash_eti_t7_v9_1.prefs.show_modify_order_nr_response then
    show.modify_order_nr_response = eurex_cash_eti_t7_v9_1.prefs.show_modify_order_nr_response
    changed = true
  end
  if show.modify_order_response ~= eurex_cash_eti_t7_v9_1.prefs.show_modify_order_response then
    show.modify_order_response = eurex_cash_eti_t7_v9_1.prefs.show_modify_order_response
    changed = true
  end
  if show.modify_order_single_request ~= eurex_cash_eti_t7_v9_1.prefs.show_modify_order_single_request then
    show.modify_order_single_request = eurex_cash_eti_t7_v9_1.prefs.show_modify_order_single_request
    changed = true
  end
  if show.modify_order_single_short_request ~= eurex_cash_eti_t7_v9_1.prefs.show_modify_order_single_short_request then
    show.modify_order_single_short_request = eurex_cash_eti_t7_v9_1.prefs.show_modify_order_single_short_request
    changed = true
  end
  if show.modify_tes_trade_request ~= eurex_cash_eti_t7_v9_1.prefs.show_modify_tes_trade_request then
    show.modify_tes_trade_request = eurex_cash_eti_t7_v9_1.prefs.show_modify_tes_trade_request
    changed = true
  end
  if show.new_order_nr_response ~= eurex_cash_eti_t7_v9_1.prefs.show_new_order_nr_response then
    show.new_order_nr_response = eurex_cash_eti_t7_v9_1.prefs.show_new_order_nr_response
    changed = true
  end
  if show.new_order_response ~= eurex_cash_eti_t7_v9_1.prefs.show_new_order_response then
    show.new_order_response = eurex_cash_eti_t7_v9_1.prefs.show_new_order_response
    changed = true
  end
  if show.new_order_single_request ~= eurex_cash_eti_t7_v9_1.prefs.show_new_order_single_request then
    show.new_order_single_request = eurex_cash_eti_t7_v9_1.prefs.show_new_order_single_request
    changed = true
  end
  if show.new_order_single_short_request ~= eurex_cash_eti_t7_v9_1.prefs.show_new_order_single_short_request then
    show.new_order_single_short_request = eurex_cash_eti_t7_v9_1.prefs.show_new_order_single_short_request
    changed = true
  end
  if show.news_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_news_broadcast then
    show.news_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_news_broadcast
    changed = true
  end
  if show.not_affected_orders_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_not_affected_orders_grp_comp then
    show.not_affected_orders_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_not_affected_orders_grp_comp
    changed = true
  end
  if show.not_affected_securities_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_not_affected_securities_grp_comp then
    show.not_affected_securities_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_not_affected_securities_grp_comp
    changed = true
  end
  if show.notif_header_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_notif_header_comp then
    show.notif_header_comp = eurex_cash_eti_t7_v9_1.prefs.show_notif_header_comp
    changed = true
  end
  if show.nr_response_header_me_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_nr_response_header_me_comp then
    show.nr_response_header_me_comp = eurex_cash_eti_t7_v9_1.prefs.show_nr_response_header_me_comp
    changed = true
  end
  if show.nrbc_header_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_nrbc_header_comp then
    show.nrbc_header_comp = eurex_cash_eti_t7_v9_1.prefs.show_nrbc_header_comp
    changed = true
  end
  if show.order_book_item_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_order_book_item_grp_comp then
    show.order_book_item_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_order_book_item_grp_comp
    changed = true
  end
  if show.order_exec_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_order_exec_notification then
    show.order_exec_notification = eurex_cash_eti_t7_v9_1.prefs.show_order_exec_notification
    changed = true
  end
  if show.order_exec_report_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_order_exec_report_broadcast then
    show.order_exec_report_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_order_exec_report_broadcast
    changed = true
  end
  if show.order_exec_response ~= eurex_cash_eti_t7_v9_1.prefs.show_order_exec_response then
    show.order_exec_response = eurex_cash_eti_t7_v9_1.prefs.show_order_exec_response
    changed = true
  end
  if show.party_action_report ~= eurex_cash_eti_t7_v9_1.prefs.show_party_action_report then
    show.party_action_report = eurex_cash_eti_t7_v9_1.prefs.show_party_action_report
    changed = true
  end
  if show.party_details_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_party_details_grp_comp then
    show.party_details_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_party_details_grp_comp
    changed = true
  end
  if show.party_entitlements_update_report ~= eurex_cash_eti_t7_v9_1.prefs.show_party_entitlements_update_report then
    show.party_entitlements_update_report = eurex_cash_eti_t7_v9_1.prefs.show_party_entitlements_update_report
    changed = true
  end
  if show.ping_request ~= eurex_cash_eti_t7_v9_1.prefs.show_ping_request then
    show.ping_request = eurex_cash_eti_t7_v9_1.prefs.show_ping_request
    changed = true
  end
  if show.ping_response ~= eurex_cash_eti_t7_v9_1.prefs.show_ping_response then
    show.ping_response = eurex_cash_eti_t7_v9_1.prefs.show_ping_response
    changed = true
  end
  if show.quote_activation_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_quote_activation_notification then
    show.quote_activation_notification = eurex_cash_eti_t7_v9_1.prefs.show_quote_activation_notification
    changed = true
  end
  if show.quote_activation_request ~= eurex_cash_eti_t7_v9_1.prefs.show_quote_activation_request then
    show.quote_activation_request = eurex_cash_eti_t7_v9_1.prefs.show_quote_activation_request
    changed = true
  end
  if show.quote_activation_response ~= eurex_cash_eti_t7_v9_1.prefs.show_quote_activation_response then
    show.quote_activation_response = eurex_cash_eti_t7_v9_1.prefs.show_quote_activation_response
    changed = true
  end
  if show.quote_entry_ack_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_quote_entry_ack_grp_comp then
    show.quote_entry_ack_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_quote_entry_ack_grp_comp
    changed = true
  end
  if show.quote_entry_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_quote_entry_grp_comp then
    show.quote_entry_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_quote_entry_grp_comp
    changed = true
  end
  if show.quote_event_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_quote_event_grp_comp then
    show.quote_event_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_quote_event_grp_comp
    changed = true
  end
  if show.quote_execution_report ~= eurex_cash_eti_t7_v9_1.prefs.show_quote_execution_report then
    show.quote_execution_report = eurex_cash_eti_t7_v9_1.prefs.show_quote_execution_report
    changed = true
  end
  if show.rbc_header_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_rbc_header_comp then
    show.rbc_header_comp = eurex_cash_eti_t7_v9_1.prefs.show_rbc_header_comp
    changed = true
  end
  if show.rbc_header_me_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_rbc_header_me_comp then
    show.rbc_header_me_comp = eurex_cash_eti_t7_v9_1.prefs.show_rbc_header_me_comp
    changed = true
  end
  if show.reject ~= eurex_cash_eti_t7_v9_1.prefs.show_reject then
    show.reject = eurex_cash_eti_t7_v9_1.prefs.show_reject
    changed = true
  end
  if show.request_header_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_request_header_comp then
    show.request_header_comp = eurex_cash_eti_t7_v9_1.prefs.show_request_header_comp
    changed = true
  end
  if show.response_header_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_response_header_comp then
    show.response_header_comp = eurex_cash_eti_t7_v9_1.prefs.show_response_header_comp
    changed = true
  end
  if show.response_header_me_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_response_header_me_comp then
    show.response_header_me_comp = eurex_cash_eti_t7_v9_1.prefs.show_response_header_me_comp
    changed = true
  end
  if show.retransmit_me_message_request ~= eurex_cash_eti_t7_v9_1.prefs.show_retransmit_me_message_request then
    show.retransmit_me_message_request = eurex_cash_eti_t7_v9_1.prefs.show_retransmit_me_message_request
    changed = true
  end
  if show.retransmit_me_message_response ~= eurex_cash_eti_t7_v9_1.prefs.show_retransmit_me_message_response then
    show.retransmit_me_message_response = eurex_cash_eti_t7_v9_1.prefs.show_retransmit_me_message_response
    changed = true
  end
  if show.retransmit_request ~= eurex_cash_eti_t7_v9_1.prefs.show_retransmit_request then
    show.retransmit_request = eurex_cash_eti_t7_v9_1.prefs.show_retransmit_request
    changed = true
  end
  if show.retransmit_response ~= eurex_cash_eti_t7_v9_1.prefs.show_retransmit_response then
    show.retransmit_response = eurex_cash_eti_t7_v9_1.prefs.show_retransmit_response
    changed = true
  end
  if show.rfq_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_rfq_broadcast then
    show.rfq_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_rfq_broadcast
    changed = true
  end
  if show.rfq_reject_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_rfq_reject_notification then
    show.rfq_reject_notification = eurex_cash_eti_t7_v9_1.prefs.show_rfq_reject_notification
    changed = true
  end
  if show.rfq_request ~= eurex_cash_eti_t7_v9_1.prefs.show_rfq_request then
    show.rfq_request = eurex_cash_eti_t7_v9_1.prefs.show_rfq_request
    changed = true
  end
  if show.rfq_response ~= eurex_cash_eti_t7_v9_1.prefs.show_rfq_response then
    show.rfq_response = eurex_cash_eti_t7_v9_1.prefs.show_rfq_response
    changed = true
  end
  if show.rfq_specialist_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_rfq_specialist_broadcast then
    show.rfq_specialist_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_rfq_specialist_broadcast
    changed = true
  end
  if show.security_status_event_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_security_status_event_grp_comp then
    show.security_status_event_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_security_status_event_grp_comp
    changed = true
  end
  if show.service_availability_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_service_availability_broadcast then
    show.service_availability_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_service_availability_broadcast
    changed = true
  end
  if show.service_availability_market_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_service_availability_market_broadcast then
    show.service_availability_market_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_service_availability_market_broadcast
    changed = true
  end
  if show.sessions_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_sessions_grp_comp then
    show.sessions_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_sessions_grp_comp
    changed = true
  end
  if show.side_alloc_grp_bc_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_side_alloc_grp_bc_comp then
    show.side_alloc_grp_bc_comp = eurex_cash_eti_t7_v9_1.prefs.show_side_alloc_grp_bc_comp
    changed = true
  end
  if show.side_alloc_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_side_alloc_grp_comp then
    show.side_alloc_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_side_alloc_grp_comp
    changed = true
  end
  if show.single_quote_request ~= eurex_cash_eti_t7_v9_1.prefs.show_single_quote_request then
    show.single_quote_request = eurex_cash_eti_t7_v9_1.prefs.show_single_quote_request
    changed = true
  end
  if show.specialist_delete_all_order_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_specialist_delete_all_order_broadcast then
    show.specialist_delete_all_order_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_specialist_delete_all_order_broadcast
    changed = true
  end
  if show.specialist_instrument_event_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_specialist_instrument_event_notification then
    show.specialist_instrument_event_notification = eurex_cash_eti_t7_v9_1.prefs.show_specialist_instrument_event_notification
    changed = true
  end
  if show.specialist_order_book_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_specialist_order_book_notification then
    show.specialist_order_book_notification = eurex_cash_eti_t7_v9_1.prefs.show_specialist_order_book_notification
    changed = true
  end
  if show.specialist_rfq_reject_request ~= eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reject_request then
    show.specialist_rfq_reject_request = eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reject_request
    changed = true
  end
  if show.specialist_rfq_reply_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reply_notification then
    show.specialist_rfq_reply_notification = eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reply_notification
    changed = true
  end
  if show.specialist_rfq_reply_request ~= eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reply_request then
    show.specialist_rfq_reply_request = eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reply_request
    changed = true
  end
  if show.specialist_rfq_reply_response ~= eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reply_response then
    show.specialist_rfq_reply_response = eurex_cash_eti_t7_v9_1.prefs.show_specialist_rfq_reply_response
    changed = true
  end
  if show.specialist_security_state_change_request ~= eurex_cash_eti_t7_v9_1.prefs.show_specialist_security_state_change_request then
    show.specialist_security_state_change_request = eurex_cash_eti_t7_v9_1.prefs.show_specialist_security_state_change_request
    changed = true
  end
  if show.specialist_security_state_change_response ~= eurex_cash_eti_t7_v9_1.prefs.show_specialist_security_state_change_response then
    show.specialist_security_state_change_response = eurex_cash_eti_t7_v9_1.prefs.show_specialist_security_state_change_response
    changed = true
  end
  if show.srqs_quote_entry_grp_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_srqs_quote_entry_grp_comp then
    show.srqs_quote_entry_grp_comp = eurex_cash_eti_t7_v9_1.prefs.show_srqs_quote_entry_grp_comp
    changed = true
  end
  if show.subscribe_request ~= eurex_cash_eti_t7_v9_1.prefs.show_subscribe_request then
    show.subscribe_request = eurex_cash_eti_t7_v9_1.prefs.show_subscribe_request
    changed = true
  end
  if show.subscribe_response ~= eurex_cash_eti_t7_v9_1.prefs.show_subscribe_response then
    show.subscribe_response = eurex_cash_eti_t7_v9_1.prefs.show_subscribe_response
    changed = true
  end
  if show.tes_approve_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_tes_approve_broadcast then
    show.tes_approve_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_tes_approve_broadcast
    changed = true
  end
  if show.tes_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_tes_broadcast then
    show.tes_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_tes_broadcast
    changed = true
  end
  if show.tes_delete_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_tes_delete_broadcast then
    show.tes_delete_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_tes_delete_broadcast
    changed = true
  end
  if show.tes_execution_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_tes_execution_broadcast then
    show.tes_execution_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_tes_execution_broadcast
    changed = true
  end
  if show.tes_response ~= eurex_cash_eti_t7_v9_1.prefs.show_tes_response then
    show.tes_response = eurex_cash_eti_t7_v9_1.prefs.show_tes_response
    changed = true
  end
  if show.tes_trade_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_tes_trade_broadcast then
    show.tes_trade_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_tes_trade_broadcast
    changed = true
  end
  if show.tes_trading_session_status_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_tes_trading_session_status_broadcast then
    show.tes_trading_session_status_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_tes_trading_session_status_broadcast
    changed = true
  end
  if show.throttle_update_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_throttle_update_notification then
    show.throttle_update_notification = eurex_cash_eti_t7_v9_1.prefs.show_throttle_update_notification
    changed = true
  end
  if show.tm_trading_session_status_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_tm_trading_session_status_broadcast then
    show.tm_trading_session_status_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_tm_trading_session_status_broadcast
    changed = true
  end
  if show.trade_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_trade_broadcast then
    show.trade_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_trade_broadcast
    changed = true
  end
  if show.trading_session_status_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_trading_session_status_broadcast then
    show.trading_session_status_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_trading_session_status_broadcast
    changed = true
  end
  if show.trailing_stop_update_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_trailing_stop_update_notification then
    show.trailing_stop_update_notification = eurex_cash_eti_t7_v9_1.prefs.show_trailing_stop_update_notification
    changed = true
  end
  if show.unsubscribe_request ~= eurex_cash_eti_t7_v9_1.prefs.show_unsubscribe_request then
    show.unsubscribe_request = eurex_cash_eti_t7_v9_1.prefs.show_unsubscribe_request
    changed = true
  end
  if show.unsubscribe_response ~= eurex_cash_eti_t7_v9_1.prefs.show_unsubscribe_response then
    show.unsubscribe_response = eurex_cash_eti_t7_v9_1.prefs.show_unsubscribe_response
    changed = true
  end
  if show.user_login_request ~= eurex_cash_eti_t7_v9_1.prefs.show_user_login_request then
    show.user_login_request = eurex_cash_eti_t7_v9_1.prefs.show_user_login_request
    changed = true
  end
  if show.user_login_response ~= eurex_cash_eti_t7_v9_1.prefs.show_user_login_response then
    show.user_login_response = eurex_cash_eti_t7_v9_1.prefs.show_user_login_response
    changed = true
  end
  if show.user_logout_request ~= eurex_cash_eti_t7_v9_1.prefs.show_user_logout_request then
    show.user_logout_request = eurex_cash_eti_t7_v9_1.prefs.show_user_logout_request
    changed = true
  end
  if show.user_logout_response ~= eurex_cash_eti_t7_v9_1.prefs.show_user_logout_response then
    show.user_logout_response = eurex_cash_eti_t7_v9_1.prefs.show_user_logout_response
    changed = true
  end
  if show.xetra_en_light_create_deal_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_create_deal_notification then
    show.xetra_en_light_create_deal_notification = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_create_deal_notification
    changed = true
  end
  if show.xetra_en_light_deal_response ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_deal_response then
    show.xetra_en_light_deal_response = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_deal_response
    changed = true
  end
  if show.xetra_en_light_enter_quote_request ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_enter_quote_request then
    show.xetra_en_light_enter_quote_request = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_enter_quote_request
    changed = true
  end
  if show.xetra_en_light_hit_quote_request ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_hit_quote_request then
    show.xetra_en_light_hit_quote_request = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_hit_quote_request
    changed = true
  end
  if show.xetra_en_light_negotiation_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_negotiation_notification then
    show.xetra_en_light_negotiation_notification = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_negotiation_notification
    changed = true
  end
  if show.xetra_en_light_negotiation_requester_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_negotiation_requester_notification then
    show.xetra_en_light_negotiation_requester_notification = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_negotiation_requester_notification
    changed = true
  end
  if show.xetra_en_light_negotiation_status_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_negotiation_status_notification then
    show.xetra_en_light_negotiation_status_notification = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_negotiation_status_notification
    changed = true
  end
  if show.xetra_en_light_open_negotiation_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_open_negotiation_notification then
    show.xetra_en_light_open_negotiation_notification = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_open_negotiation_notification
    changed = true
  end
  if show.xetra_en_light_open_negotiation_request ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_open_negotiation_request then
    show.xetra_en_light_open_negotiation_request = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_open_negotiation_request
    changed = true
  end
  if show.xetra_en_light_open_negotiation_requester_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_open_negotiation_requester_notification then
    show.xetra_en_light_open_negotiation_requester_notification = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_open_negotiation_requester_notification
    changed = true
  end
  if show.xetra_en_light_quote_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quote_notification then
    show.xetra_en_light_quote_notification = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quote_notification
    changed = true
  end
  if show.xetra_en_light_quote_requester_notification ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quote_requester_notification then
    show.xetra_en_light_quote_requester_notification = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quote_requester_notification
    changed = true
  end
  if show.xetra_en_light_quote_response ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quote_response then
    show.xetra_en_light_quote_response = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quote_response
    changed = true
  end
  if show.xetra_en_light_quoting_status_request ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quoting_status_request then
    show.xetra_en_light_quoting_status_request = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_quoting_status_request
    changed = true
  end
  if show.xetra_en_light_status_broadcast ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_status_broadcast then
    show.xetra_en_light_status_broadcast = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_status_broadcast
    changed = true
  end
  if show.xetra_en_light_target_parties_comp ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_target_parties_comp then
    show.xetra_en_light_target_parties_comp = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_target_parties_comp
    changed = true
  end
  if show.xetra_en_light_update_negotiation_request ~= eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_update_negotiation_request then
    show.xetra_en_light_update_negotiation_request = eurex_cash_eti_t7_v9_1.prefs.show_xetra_en_light_update_negotiation_request
    changed = true
  end
  if show.packet ~= eurex_cash_eti_t7_v9_1.prefs.show_packet then
    show.packet = eurex_cash_eti_t7_v9_1.prefs.show_packet
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Eurex Cash Eti T7 9.1
-----------------------------------------------------------------------

-- Size: Pad 1
size_of.pad_1 = 1

-- Display: Pad 1
display.pad_1 = function(value)
  return "Pad 1: "..value
end

-- Dissect: Pad 1
dissect.pad_1 = function(buffer, offset, packet, parent)
  local length = size_of.pad_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_1(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.pad_1, range, value, display)

  return offset + length, value
end

-- Size: Target Party Executing Trader
size_of.target_party_executing_trader = 6

-- Display: Target Party Executing Trader
display.target_party_executing_trader = function(value)
  return "Target Party Executing Trader: "..value
end

-- Dissect: Target Party Executing Trader
dissect.target_party_executing_trader = function(buffer, offset, packet, parent)
  local length = size_of.target_party_executing_trader
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.target_party_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.target_party_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Target Party Executing Firm
size_of.target_party_executing_firm = 5

-- Display: Target Party Executing Firm
display.target_party_executing_firm = function(value)
  return "Target Party Executing Firm: "..value
end

-- Dissect: Target Party Executing Firm
dissect.target_party_executing_firm = function(buffer, offset, packet, parent)
  local length = size_of.target_party_executing_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.target_party_executing_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.target_party_executing_firm, range, value, display)

  return offset + length, value
end

-- Size: Target Party Id Executing Trader
size_of.target_party_id_executing_trader = 4

-- Display: Target Party Id Executing Trader
display.target_party_id_executing_trader = function(value)
  return "Target Party Id Executing Trader: "..value
end

-- Dissect: Target Party Id Executing Trader
dissect.target_party_id_executing_trader = function(buffer, offset, packet, parent)
  local length = size_of.target_party_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.target_party_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.target_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Target Parties Comp
size_of.xetra_en_light_target_parties_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.target_party_id_executing_trader

  index = index + size_of.target_party_executing_firm

  index = index + size_of.target_party_executing_trader

  index = index + size_of.pad_1

  return index
end

-- Display: Xetra En Light Target Parties Comp
display.xetra_en_light_target_parties_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Target Parties Comp
dissect.xetra_en_light_target_parties_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_executing_trader = dissect.target_party_id_executing_trader(buffer, index, packet, parent)

  -- Target Party Executing Firm: 5 Byte Ascii String
  index, target_party_executing_firm = dissect.target_party_executing_firm(buffer, index, packet, parent)

  -- Target Party Executing Trader: 6 Byte Ascii String
  index, target_party_executing_trader = dissect.target_party_executing_trader(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Target Parties Comp
dissect.xetra_en_light_target_parties_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_target_parties_comp then
    local length = size_of.xetra_en_light_target_parties_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_target_parties_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_target_parties_comp, range, display)
  end

  return dissect.xetra_en_light_target_parties_comp_fields(buffer, offset, packet, parent)
end

-- Size: Free Text 5
size_of.free_text_5 = 132

-- Display: Free Text 5
display.free_text_5 = function(value)
  return "Free Text 5: "..value
end

-- Dissect: Free Text 5
dissect.free_text_5 = function(buffer, offset, packet, parent)
  local length = size_of.free_text_5
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.free_text_5(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.free_text_5, range, value, display)

  return offset + length, value
end

-- Size: Party Executing Trader
size_of.party_executing_trader = 6

-- Display: Party Executing Trader
display.party_executing_trader = function(value)
  return "Party Executing Trader: "..value
end

-- Dissect: Party Executing Trader
dissect.party_executing_trader = function(buffer, offset, packet, parent)
  local length = size_of.party_executing_trader
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Party Executing Firm
size_of.party_executing_firm = 5

-- Display: Party Executing Firm
display.party_executing_firm = function(value)
  return "Party Executing Firm: "..value
end

-- Dissect: Party Executing Firm
dissect.party_executing_firm = function(buffer, offset, packet, parent)
  local length = size_of.party_executing_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_executing_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_executing_firm, range, value, display)

  return offset + length, value
end

-- Size: Quote Cancel Type
size_of.quote_cancel_type = 1

-- Display: Quote Cancel Type
display.quote_cancel_type = function(value)
  if value == 4 then
    return "Quote Cancel Type: Cancel All Quotes (4)"
  end

  return "Quote Cancel Type: Unknown("..value..")"
end

-- Dissect: Quote Cancel Type
dissect.quote_cancel_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_cancel_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_cancel_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_cancel_type, range, value, display)

  return offset + length, value
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Number Of Resp Disclosure Instruction
size_of.number_of_resp_disclosure_instruction = 1

-- Display: Number Of Resp Disclosure Instruction
display.number_of_resp_disclosure_instruction = function(value)
  if value == 0 then
    return "Number Of Resp Disclosure Instruction: No (0)"
  end
  if value == 1 then
    return "Number Of Resp Disclosure Instruction: Yes (1)"
  end

  return "Number Of Resp Disclosure Instruction: Unknown("..value..")"
end

-- Dissect: Number Of Resp Disclosure Instruction
dissect.number_of_resp_disclosure_instruction = function(buffer, offset, packet, parent)
  local length = size_of.number_of_resp_disclosure_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.number_of_resp_disclosure_instruction(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.number_of_resp_disclosure_instruction, range, value, display)

  return offset + length, value
end

-- Size: No Target Party I Ds
size_of.no_target_party_i_ds = 1

-- Display: No Target Party I Ds
display.no_target_party_i_ds = function(value)
  return "No Target Party I Ds: "..value
end

-- Dissect: No Target Party I Ds
dissect.no_target_party_i_ds = function(buffer, offset, packet, parent)
  local length = size_of.no_target_party_i_ds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_target_party_i_ds(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_target_party_i_ds, range, value, display)

  return offset + length, value
end

-- Size: Settl Date
size_of.settl_date = 4

-- Display: Settl Date
display.settl_date = function(value)
  return "Settl Date: "..value
end

-- Dissect: Settl Date
dissect.settl_date = function(buffer, offset, packet, parent)
  local length = size_of.settl_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.settl_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Size: Negotiation Id
size_of.negotiation_id = 4

-- Display: Negotiation Id
display.negotiation_id = function(value)
  return "Negotiation Id: "..value
end

-- Dissect: Negotiation Id
dissect.negotiation_id = function(buffer, offset, packet, parent)
  local length = size_of.negotiation_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.negotiation_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.negotiation_id, range, value, display)

  return offset + length, value
end

-- Size: Market Segment Id
size_of.market_segment_id = 4

-- Display: Market Segment Id
display.market_segment_id = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
dissect.market_segment_id = function(buffer, offset, packet, parent)
  local length = size_of.market_segment_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
size_of.order_qty = 8

-- Display: Order Qty
display.order_qty = function(value)
  return "Order Qty: "..value:tonumber()/10000
end

-- Dissect: Order Qty
dissect.order_qty = function(buffer, offset, packet, parent)
  local length = size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Offer Px
size_of.offer_px = 8

-- Display: Offer Px
display.offer_px = function(value)
  return "Offer Px: "..value:tonumber()/100000000
end

-- Dissect: Offer Px
dissect.offer_px = function(buffer, offset, packet, parent)
  local length = size_of.offer_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.offer_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Size: Bid Px
size_of.bid_px = 8

-- Display: Bid Px
display.bid_px = function(value)
  return "Bid Px: "..value:tonumber()/100000000
end

-- Dissect: Bid Px
dissect.bid_px = function(buffer, offset, packet, parent)
  local length = size_of.bid_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.bid_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Size: Sender Sub Id
size_of.sender_sub_id = 4

-- Display: Sender Sub Id
display.sender_sub_id = function(value)
  return "Sender Sub Id: "..value
end

-- Dissect: Sender Sub Id
dissect.sender_sub_id = function(buffer, offset, packet, parent)
  local length = size_of.sender_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sender_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.sender_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Msg Seq Num
size_of.msg_seq_num = 4

-- Display: Msg Seq Num
display.msg_seq_num = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request Header Comp
size_of.request_header_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.sender_sub_id

  return index
end

-- Display: Request Header Comp
display.request_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request Header Comp
dissect.request_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Sender Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, sender_sub_id = dissect.sender_sub_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Header Comp
dissect.request_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_header_comp then
    local length = size_of.request_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.request_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.request_header_comp, range, display)
  end

  return dissect.request_header_comp_fields(buffer, offset, packet, parent)
end

-- Size: Pad 2
size_of.pad_2 = 2

-- Display: Pad 2
display.pad_2 = function(value)
  return "Pad 2: "..value
end

-- Dissect: Pad 2
dissect.pad_2 = function(buffer, offset, packet, parent)
  local length = size_of.pad_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_2(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.pad_2, range, value, display)

  return offset + length, value
end

-- Size: Network Msg Id
size_of.network_msg_id = 8

-- Display: Network Msg Id
display.network_msg_id = function(value)
  return "Network Msg Id: "..value
end

-- Dissect: Network Msg Id
dissect.network_msg_id = function(buffer, offset, packet, parent)
  local length = size_of.network_msg_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.network_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.network_msg_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 2

-- Display: Template Id
display.template_id = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Body Len
size_of.body_len = 4

-- Display: Body Len
display.body_len = function(value)
  return "Body Len: "..value
end

-- Dissect: Body Len
dissect.body_len = function(buffer, offset, packet, parent)
  local length = size_of.body_len
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.body_len(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.body_len, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header In Comp
size_of.message_header_in_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.body_len

  index = index + size_of.template_id

  index = index + size_of.network_msg_id

  index = index + size_of.pad_2

  return index
end

-- Display: Message Header In Comp
display.message_header_in_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header In Comp
dissect.message_header_in_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 4 Byte Unsigned Fixed Width Integer
  index, body_len = dissect.body_len(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header In Comp
dissect.message_header_in_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header_in_comp then
    local length = size_of.message_header_in_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header_in_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.message_header_in_comp, range, display)
  end

  return dissect.message_header_in_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Xetra En Light Update Negotiation Request
size_of.xetra_en_light_update_negotiation_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.order_qty

  index = index + size_of.market_segment_id

  index = index + size_of.negotiation_id

  index = index + size_of.settl_date

  index = index + size_of.no_target_party_i_ds

  index = index + size_of.number_of_resp_disclosure_instruction

  index = index + size_of.side

  index = index + size_of.quote_cancel_type

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.free_text_5

  index = index + size_of.pad_1

  -- Calculate field size from count
  local xetra_en_light_target_parties_comp_count = buffer(offset + index - 148, 1):le_uint()
  index = index + xetra_en_light_target_parties_comp_count * 16

  return index
end

-- Display: Xetra En Light Update Negotiation Request
display.xetra_en_light_update_negotiation_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Update Negotiation Request
dissect.xetra_en_light_update_negotiation_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- No Target Party I Ds: 1 Byte Unsigned Fixed Width Integer
  index, no_target_party_i_ds = dissect.no_target_party_i_ds(buffer, index, packet, parent)

  -- Number Of Resp Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, number_of_resp_disclosure_instruction = dissect.number_of_resp_disclosure_instruction(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quote Cancel Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, quote_cancel_type = dissect.quote_cancel_type(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Free Text 5: 132 Byte Ascii String
  index, free_text_5 = dissect.free_text_5(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Xetra En Light Target Parties Comp: Struct of 4 fields
  for i = 1, no_target_party_i_ds do
    index = dissect.xetra_en_light_target_parties_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Xetra En Light Update Negotiation Request
dissect.xetra_en_light_update_negotiation_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.xetra_en_light_update_negotiation_request then
    local length = size_of.xetra_en_light_update_negotiation_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_update_negotiation_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_update_negotiation_request, range, display)
  end

  return dissect.xetra_en_light_update_negotiation_request_fields(buffer, offset, packet, parent)
end

-- Size: Pad 3
size_of.pad_3 = 3

-- Display: Pad 3
display.pad_3 = function(value)
  return "Pad 3: "..value
end

-- Dissect: Pad 3
dissect.pad_3 = function(buffer, offset, packet, parent)
  local length = size_of.pad_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_3(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Size: Trad Ses Event
size_of.trad_ses_event = 1

-- Display: Trad Ses Event
display.trad_ses_event = function(value)
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
dissect.trad_ses_event = function(buffer, offset, packet, parent)
  local length = size_of.trad_ses_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trad_ses_event(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trad_ses_event, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
size_of.trade_date = 4

-- Display: Trade Date
display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
dissect.trade_date = function(buffer, offset, packet, parent)
  local length = size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Pad 7
size_of.pad_7 = 7

-- Display: Pad 7
display.pad_7 = function(value)
  return "Pad 7: "..value
end

-- Dissect: Pad 7
dissect.pad_7 = function(buffer, offset, packet, parent)
  local length = size_of.pad_7
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_7(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Size: Last Fragment
size_of.last_fragment = 1

-- Display: Last Fragment
display.last_fragment = function(value)
  if value == 0 then
    return "Last Fragment: Not Last Message (0)"
  end
  if value == 1 then
    return "Last Fragment: Last Message (1)"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
dissect.last_fragment = function(buffer, offset, packet, parent)
  local length = size_of.last_fragment
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_fragment(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Size: Appl Id
size_of.appl_id = 1

-- Display: Appl Id
display.appl_id = function(value)
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
  if value == 7 then
    return "Appl Id: Tes Maintenance (7)"
  end
  if value == 8 then
    return "Appl Id: Tes Trade (8)"
  end
  if value == 9 then
    return "Appl Id: Srqs Maintenance (9)"
  end
  if value == 10 then
    return "Appl Id: Service Availability Market (10)"
  end
  if value == 11 then
    return "Appl Id: Specialist Data (11)"
  end

  return "Appl Id: Unknown("..value..")"
end

-- Dissect: Appl Id
dissect.appl_id = function(buffer, offset, packet, parent)
  local length = size_of.appl_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Size: Appl Resend Flag
size_of.appl_resend_flag = 1

-- Display: Appl Resend Flag
display.appl_resend_flag = function(value)
  if value == 0 then
    return "Appl Resend Flag: False (0)"
  end
  if value == 1 then
    return "Appl Resend Flag: True (1)"
  end

  return "Appl Resend Flag: Unknown("..value..")"
end

-- Dissect: Appl Resend Flag
dissect.appl_resend_flag = function(buffer, offset, packet, parent)
  local length = size_of.appl_resend_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_resend_flag(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_resend_flag, range, value, display)

  return offset + length, value
end

-- Size: Partition Id
size_of.partition_id = 2

-- Display: Partition Id
display.partition_id = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
dissect.partition_id = function(buffer, offset, packet, parent)
  local length = size_of.partition_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.partition_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Size: Appl Sub Id
size_of.appl_sub_id = 4

-- Display: Appl Sub Id
display.appl_sub_id = function(value)
  return "Appl Sub Id: "..value
end

-- Dissect: Appl Sub Id
dissect.appl_sub_id = function(buffer, offset, packet, parent)
  local length = size_of.appl_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Appl Seq Num
size_of.appl_seq_num = 8

-- Display: Appl Seq Num
display.appl_seq_num = function(value)
  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
dissect.appl_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.appl_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.appl_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Sending Time
size_of.sending_time = 8

-- Display: Sending Time
display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
dissect.sending_time = function(buffer, offset, packet, parent)
  local length = size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.sending_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rbc Header Comp
size_of.rbc_header_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.appl_seq_num

  index = index + size_of.appl_sub_id

  index = index + size_of.partition_id

  index = index + size_of.appl_resend_flag

  index = index + size_of.appl_id

  index = index + size_of.last_fragment

  index = index + size_of.pad_7

  return index
end

-- Display: Rbc Header Comp
display.rbc_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rbc Header Comp
dissect.rbc_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Appl Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, appl_seq_num = dissect.appl_seq_num(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, appl_sub_id = dissect.appl_sub_id(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Appl Resend Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_resend_flag = dissect.appl_resend_flag(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Comp
dissect.rbc_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rbc_header_comp then
    local length = size_of.rbc_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rbc_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.rbc_header_comp, range, display)
  end

  return dissect.rbc_header_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message Header Out Comp
size_of.message_header_out_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.body_len

  index = index + size_of.template_id

  index = index + size_of.pad_2

  return index
end

-- Display: Message Header Out Comp
display.message_header_out_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header Out Comp
dissect.message_header_out_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 4 Byte Unsigned Fixed Width Integer
  index, body_len = dissect.body_len(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header Out Comp
dissect.message_header_out_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header_out_comp then
    local length = size_of.message_header_out_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header_out_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.message_header_out_comp, range, display)
  end

  return dissect.message_header_out_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Xetra En Light Status Broadcast
size_of.xetra_en_light_status_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.trade_date

  index = index + size_of.trad_ses_event

  index = index + size_of.pad_3

  return index
end

-- Display: Xetra En Light Status Broadcast
display.xetra_en_light_status_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Status Broadcast
dissect.xetra_en_light_status_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_event = dissect.trad_ses_event(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Status Broadcast
dissect.xetra_en_light_status_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_status_broadcast then
    local length = size_of.xetra_en_light_status_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_status_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_status_broadcast, range, display)
  end

  return dissect.xetra_en_light_status_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Pad 4
size_of.pad_4 = 4

-- Display: Pad 4
display.pad_4 = function(value)
  return "Pad 4: "..value
end

-- Dissect: Pad 4
dissect.pad_4 = function(buffer, offset, packet, parent)
  local length = size_of.pad_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_4(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.pad_4, range, value, display)

  return offset + length, value
end

-- Size: Quoting Status
size_of.quoting_status = 1

-- Display: Quoting Status
display.quoting_status = function(value)
  if value == 1 then
    return "Quoting Status: Open Active (1)"
  end
  if value == 2 then
    return "Quoting Status: Open Idle (2)"
  end
  if value == 3 then
    return "Quoting Status: Closed Inactive (3)"
  end
  if value == 4 then
    return "Quoting Status: Open Not Responded (4)"
  end

  return "Quoting Status: Unknown("..value..")"
end

-- Dissect: Quoting Status
dissect.quoting_status = function(buffer, offset, packet, parent)
  local length = size_of.quoting_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quoting_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quoting_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Quoting Status Request
size_of.xetra_en_light_quoting_status_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.market_segment_id

  index = index + size_of.negotiation_id

  index = index + size_of.quoting_status

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.pad_4

  return index
end

-- Display: Xetra En Light Quoting Status Request
display.xetra_en_light_quoting_status_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Quoting Status Request
dissect.xetra_en_light_quoting_status_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Quoting Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quoting_status = dissect.quoting_status(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Quoting Status Request
dissect.xetra_en_light_quoting_status_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_quoting_status_request then
    local length = size_of.xetra_en_light_quoting_status_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_quoting_status_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_quoting_status_request, range, display)
  end

  return dissect.xetra_en_light_quoting_status_request_fields(buffer, offset, packet, parent)
end

-- Size: Quote Req Id
size_of.quote_req_id = 20

-- Display: Quote Req Id
display.quote_req_id = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
dissect.quote_req_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_req_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.quote_req_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Id
size_of.quote_id = 8

-- Display: Quote Id
display.quote_id = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
dissect.quote_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quote_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Size: Request Time
size_of.request_time = 8

-- Display: Request Time
display.request_time = function(value)
  return "Request Time: "..value
end

-- Dissect: Request Time
dissect.request_time = function(buffer, offset, packet, parent)
  local length = size_of.request_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.request_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.request_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Response Header Comp
size_of.response_header_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.request_time

  index = index + size_of.sending_time

  index = index + size_of.msg_seq_num

  index = index + size_of.pad_4

  return index
end

-- Display: Response Header Comp
display.response_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Response Header Comp
dissect.response_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = dissect.request_time(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Comp
dissect.response_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.response_header_comp then
    local length = size_of.response_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.response_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.response_header_comp, range, display)
  end

  return dissect.response_header_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Xetra En Light Quote Response
size_of.xetra_en_light_quote_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  index = index + size_of.quote_id

  index = index + size_of.negotiation_id

  index = index + size_of.quote_req_id

  return index
end

-- Display: Xetra En Light Quote Response
display.xetra_en_light_quote_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Quote Response
dissect.xetra_en_light_quote_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Quote Req Id: 20 Byte Ascii String
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Quote Response
dissect.xetra_en_light_quote_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_quote_response then
    local length = size_of.xetra_en_light_quote_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_quote_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_quote_response, range, display)
  end

  return dissect.xetra_en_light_quote_response_fields(buffer, offset, packet, parent)
end

-- Size: Party Entering Trader
size_of.party_entering_trader = 6

-- Display: Party Entering Trader
display.party_entering_trader = function(value)
  return "Party Entering Trader: "..value
end

-- Dissect: Party Entering Trader
dissect.party_entering_trader = function(buffer, offset, packet, parent)
  local length = size_of.party_entering_trader
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_entering_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_entering_trader, range, value, display)

  return offset + length, value
end

-- Size: Party Id Executing Trader
size_of.party_id_executing_trader = 4

-- Display: Party Id Executing Trader
display.party_id_executing_trader = function(value)
  return "Party Id Executing Trader: "..value
end

-- Dissect: Party Id Executing Trader
dissect.party_id_executing_trader = function(buffer, offset, packet, parent)
  local length = size_of.party_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Offer Size
size_of.offer_size = 8

-- Display: Offer Size
display.offer_size = function(value)
  return "Offer Size: "..value:tonumber()/10000
end

-- Dissect: Offer Size
dissect.offer_size = function(buffer, offset, packet, parent)
  local length = size_of.offer_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 8

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value:tonumber()/10000
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Secondary Quote Id
size_of.secondary_quote_id = 8

-- Display: Secondary Quote Id
display.secondary_quote_id = function(value)
  return "Secondary Quote Id: "..value
end

-- Dissect: Secondary Quote Id
dissect.secondary_quote_id = function(buffer, offset, packet, parent)
  local length = size_of.secondary_quote_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.secondary_quote_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.secondary_quote_id, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
size_of.transact_time = 8

-- Display: Transact Time
display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
dissect.transact_time = function(buffer, offset, packet, parent)
  local length = size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.transact_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Quote Entry Grp Comp
size_of.srqs_quote_entry_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.quote_id

  index = index + size_of.secondary_quote_id

  index = index + size_of.bid_px

  index = index + size_of.bid_size

  index = index + size_of.offer_px

  index = index + size_of.offer_size

  index = index + size_of.party_id_executing_trader

  index = index + size_of.quoting_status

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.pad_2

  return index
end

-- Display: Srqs Quote Entry Grp Comp
display.srqs_quote_entry_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Quote Entry Grp Comp
dissect.srqs_quote_entry_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Secondary Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_quote_id = dissect.secondary_quote_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_trader = dissect.party_id_executing_trader(buffer, index, packet, parent)

  -- Quoting Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quoting_status = dissect.quoting_status(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Srqs Quote Entry Grp Comp
dissect.srqs_quote_entry_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_quote_entry_grp_comp then
    local length = size_of.srqs_quote_entry_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_quote_entry_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.srqs_quote_entry_grp_comp, range, display)
  end

  return dissect.srqs_quote_entry_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Quote Entries
size_of.no_quote_entries = 1

-- Display: No Quote Entries
display.no_quote_entries = function(value)
  return "No Quote Entries: "..value
end

-- Dissect: No Quote Entries
dissect.no_quote_entries = function(buffer, offset, packet, parent)
  local length = size_of.no_quote_entries
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_quote_entries(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_quote_entries, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
size_of.trade_id = 4

-- Display: Trade Id
display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
dissect.trade_id = function(buffer, offset, packet, parent)
  local length = size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Quote Requester Notification
size_of.xetra_en_light_quote_requester_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.negotiation_id

  index = index + size_of.trade_id

  index = index + size_of.quote_req_id

  index = index + size_of.no_quote_entries

  index = index + size_of.pad_3

  -- Calculate field size from count
  local srqs_quote_entry_grp_comp_count = buffer(offset + index - 4, 1):le_uint()
  index = index + srqs_quote_entry_grp_comp_count * 80

  return index
end

-- Display: Xetra En Light Quote Requester Notification
display.xetra_en_light_quote_requester_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Quote Requester Notification
dissect.xetra_en_light_quote_requester_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Quote Req Id: 20 Byte Ascii String
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_entries = dissect.no_quote_entries(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  -- Srqs Quote Entry Grp Comp: Struct of 13 fields
  for i = 1, no_quote_entries do
    index = dissect.srqs_quote_entry_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Xetra En Light Quote Requester Notification
dissect.xetra_en_light_quote_requester_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.xetra_en_light_quote_requester_notification then
    local length = size_of.xetra_en_light_quote_requester_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_quote_requester_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_quote_requester_notification, range, display)
  end

  return dissect.xetra_en_light_quote_requester_notification_fields(buffer, offset, packet, parent)
end

-- Size: Free Text 4
size_of.free_text_4 = 16

-- Display: Free Text 4
display.free_text_4 = function(value)
  return "Free Text 4: "..value
end

-- Dissect: Free Text 4
dissect.free_text_4 = function(buffer, offset, packet, parent)
  local length = size_of.free_text_4
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.free_text_4(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.free_text_4, range, value, display)

  return offset + length, value
end

-- Size: Free Text 2
size_of.free_text_2 = 12

-- Display: Free Text 2
display.free_text_2 = function(value)
  return "Free Text 2: "..value
end

-- Dissect: Free Text 2
dissect.free_text_2 = function(buffer, offset, packet, parent)
  local length = size_of.free_text_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.free_text_2(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.free_text_2, range, value, display)

  return offset + length, value
end

-- Size: Free Text 1
size_of.free_text_1 = 12

-- Display: Free Text 1
display.free_text_1 = function(value)
  return "Free Text 1: "..value
end

-- Dissect: Free Text 1
dissect.free_text_1 = function(buffer, offset, packet, parent)
  local length = size_of.free_text_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.free_text_1(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.free_text_1, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Reason
size_of.quote_event_reason = 1

-- Display: Quote Event Reason
display.quote_event_reason = function(value)
  if value == 14 then
    return "Quote Event Reason: Pendingcancellationexecuted (14)"
  end
  if value == 15 then
    return "Quote Event Reason: Invalidprice (15)"
  end
  if value == 16 then
    return "Quote Event Reason: Crossrejected (16)"
  end
  if value == 18 then
    return "Quote Event Reason: Plp (18)"
  end
  if value == 19 then
    return "Quote Event Reason: Pricenot Topof Book (19)"
  end
  if value == 20 then
    return "Quote Event Reason: Random Selection (20)"
  end
  if value == 21 then
    return "Quote Event Reason: Manual Selection (21)"
  end

  return "Quote Event Reason: Unknown("..value..")"
end

-- Dissect: Quote Event Reason
dissect.quote_event_reason = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_event_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_event_reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Capacity
size_of.trading_capacity = 1

-- Display: Trading Capacity
display.trading_capacity = function(value)
  if value == 1 then
    return "Trading Capacity: Customer (1)"
  end
  if value == 3 then
    return "Trading Capacity: Brokerdealer (3)"
  end
  if value == 5 then
    return "Trading Capacity: Principal (5)"
  end
  if value == 6 then
    return "Trading Capacity: Market Maker (6)"
  end
  if value == 9 then
    return "Trading Capacity: Riskless Principal (9)"
  end

  return "Trading Capacity: Unknown("..value..")"
end

-- Dissect: Trading Capacity
dissect.trading_capacity = function(buffer, offset, packet, parent)
  local length = size_of.trading_capacity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_capacity(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Quote Notification
size_of.xetra_en_light_quote_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.quote_id

  index = index + size_of.secondary_quote_id

  index = index + size_of.bid_px

  index = index + size_of.bid_size

  index = index + size_of.offer_px

  index = index + size_of.offer_size

  index = index + size_of.negotiation_id

  index = index + size_of.trading_capacity

  index = index + size_of.quoting_status

  index = index + size_of.quote_event_reason

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.quote_req_id

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.pad_4

  return index
end

-- Display: Xetra En Light Quote Notification
display.xetra_en_light_quote_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Quote Notification
dissect.xetra_en_light_quote_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Secondary Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_quote_id = dissect.secondary_quote_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Quoting Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quoting_status = dissect.quoting_status(buffer, index, packet, parent)

  -- Quote Event Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, quote_event_reason = dissect.quote_event_reason(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Quote Req Id: 20 Byte Ascii String
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Quote Notification
dissect.xetra_en_light_quote_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_quote_notification then
    local length = size_of.xetra_en_light_quote_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_quote_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_quote_notification, range, display)
  end

  return dissect.xetra_en_light_quote_notification_fields(buffer, offset, packet, parent)
end

-- Size: Firm Negotiation Id
size_of.firm_negotiation_id = 20

-- Display: Firm Negotiation Id
display.firm_negotiation_id = function(value)
  return "Firm Negotiation Id: "..value
end

-- Dissect: Firm Negotiation Id
dissect.firm_negotiation_id = function(buffer, offset, packet, parent)
  local length = size_of.firm_negotiation_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.firm_negotiation_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.firm_negotiation_id, range, value, display)

  return offset + length, value
end

-- Size: Respondent Type
size_of.respondent_type = 1

-- Display: Respondent Type
display.respondent_type = function(value)
  if value == 2 then
    return "Respondent Type: Specifiedmarketparticipants (2)"
  end
  if value == 100 then
    return "Respondent Type: Specifiedand Smart Rf Qselectedparticipants (100)"
  end
  if value == 101 then
    return "Respondent Type: Smart Rf Qselectedparticipants (101)"
  end

  return "Respondent Type: Unknown("..value..")"
end

-- Dissect: Respondent Type
dissect.respondent_type = function(buffer, offset, packet, parent)
  local length = size_of.respondent_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.respondent_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.respondent_type, range, value, display)

  return offset + length, value
end

-- Size: Quote Status
size_of.quote_status = 1

-- Display: Quote Status
display.quote_status = function(value)
  if value == 6 then
    return "Quote Status: Removed (6)"
  end
  if value == 7 then
    return "Quote Status: Expired (7)"
  end
  if value == 16 then
    return "Quote Status: Active (16)"
  end

  return "Quote Status: Unknown("..value..")"
end

-- Dissect: Quote Status
dissect.quote_status = function(buffer, offset, packet, parent)
  local length = size_of.quote_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_status, range, value, display)

  return offset + length, value
end

-- Size: Number Of Respondents
size_of.number_of_respondents = 4

-- Display: Number Of Respondents
display.number_of_respondents = function(value)
  return "Number Of Respondents: "..value
end

-- Dissect: Number Of Respondents
dissect.number_of_respondents = function(buffer, offset, packet, parent)
  local length = size_of.number_of_respondents
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.number_of_respondents(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.number_of_respondents, range, value, display)

  return offset + length, value
end

-- Size: Expire Time
size_of.expire_time = 8

-- Display: Expire Time
display.expire_time = function(value)
  return "Expire Time: "..value
end

-- Dissect: Expire Time
dissect.expire_time = function(buffer, offset, packet, parent)
  local length = size_of.expire_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.expire_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Size: Last Qty
size_of.last_qty = 8

-- Display: Last Qty
display.last_qty = function(value)
  return "Last Qty: "..value:tonumber()/10000
end

-- Dissect: Last Qty
dissect.last_qty = function(buffer, offset, packet, parent)
  local length = size_of.last_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Size: Last Px
size_of.last_px = 8

-- Display: Last Px
display.last_px = function(value)
  return "Last Px: "..value:tonumber()/100000000
end

-- Dissect: Last Px
dissect.last_px = function(buffer, offset, packet, parent)
  local length = size_of.last_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Security Id
size_of.security_id = 8

-- Display: Security Id
display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
dissect.security_id = function(buffer, offset, packet, parent)
  local length = size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Open Negotiation Requester Notification
size_of.xetra_en_light_open_negotiation_requester_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.security_id

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.order_qty

  index = index + size_of.last_px

  index = index + size_of.last_qty

  index = index + size_of.expire_time

  index = index + size_of.negotiation_id

  index = index + size_of.market_segment_id

  index = index + size_of.number_of_respondents

  index = index + size_of.settl_date

  index = index + size_of.quote_status

  index = index + size_of.no_target_party_i_ds

  index = index + size_of.side

  index = index + size_of.number_of_resp_disclosure_instruction

  index = index + size_of.respondent_type

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.firm_negotiation_id

  index = index + size_of.free_text_5

  index = index + size_of.pad_2

  -- Calculate field size from count
  local xetra_en_light_target_parties_comp_count = buffer(offset + index - 175, 1):le_uint()
  index = index + xetra_en_light_target_parties_comp_count * 16

  return index
end

-- Display: Xetra En Light Open Negotiation Requester Notification
display.xetra_en_light_open_negotiation_requester_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Open Negotiation Requester Notification
dissect.xetra_en_light_open_negotiation_requester_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer
  index, expire_time = dissect.expire_time(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Number Of Respondents: 4 Byte Unsigned Fixed Width Integer
  index, number_of_respondents = dissect.number_of_respondents(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_status = dissect.quote_status(buffer, index, packet, parent)

  -- No Target Party I Ds: 1 Byte Unsigned Fixed Width Integer
  index, no_target_party_i_ds = dissect.no_target_party_i_ds(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Number Of Resp Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, number_of_resp_disclosure_instruction = dissect.number_of_resp_disclosure_instruction(buffer, index, packet, parent)

  -- Respondent Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, respondent_type = dissect.respondent_type(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Firm Negotiation Id: 20 Byte Ascii String
  index, firm_negotiation_id = dissect.firm_negotiation_id(buffer, index, packet, parent)

  -- Free Text 5: 132 Byte Ascii String
  index, free_text_5 = dissect.free_text_5(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Xetra En Light Target Parties Comp: Struct of 4 fields
  for i = 1, no_target_party_i_ds do
    index = dissect.xetra_en_light_target_parties_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Xetra En Light Open Negotiation Requester Notification
dissect.xetra_en_light_open_negotiation_requester_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.xetra_en_light_open_negotiation_requester_notification then
    local length = size_of.xetra_en_light_open_negotiation_requester_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_open_negotiation_requester_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_open_negotiation_requester_notification, range, display)
  end

  return dissect.xetra_en_light_open_negotiation_requester_notification_fields(buffer, offset, packet, parent)
end

-- Size: Value Check Type Quantity
size_of.value_check_type_quantity = 1

-- Display: Value Check Type Quantity
display.value_check_type_quantity = function(value)
  if value == 0 then
    return "Value Check Type Quantity: Donotcheck (0)"
  end
  if value == 1 then
    return "Value Check Type Quantity: Check (1)"
  end

  return "Value Check Type Quantity: Unknown("..value..")"
end

-- Dissect: Value Check Type Quantity
dissect.value_check_type_quantity = function(buffer, offset, packet, parent)
  local length = size_of.value_check_type_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.value_check_type_quantity(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.value_check_type_quantity, range, value, display)

  return offset + length, value
end

-- Size: Value Check Type Value
size_of.value_check_type_value = 1

-- Display: Value Check Type Value
display.value_check_type_value = function(value)
  if value == 0 then
    return "Value Check Type Value: Donotcheck (0)"
  end
  if value == 1 then
    return "Value Check Type Value: Check (1)"
  end

  return "Value Check Type Value: Unknown("..value..")"
end

-- Dissect: Value Check Type Value
dissect.value_check_type_value = function(buffer, offset, packet, parent)
  local length = size_of.value_check_type_value
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.value_check_type_value(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.value_check_type_value, range, value, display)

  return offset + length, value
end

-- Size: Valid Until Time
size_of.valid_until_time = 8

-- Display: Valid Until Time
display.valid_until_time = function(value)
  return "Valid Until Time: "..value
end

-- Dissect: Valid Until Time
dissect.valid_until_time = function(buffer, offset, packet, parent)
  local length = size_of.valid_until_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.valid_until_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.valid_until_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Open Negotiation Request
size_of.xetra_en_light_open_negotiation_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.order_qty

  index = index + size_of.valid_until_time

  index = index + size_of.market_segment_id

  index = index + size_of.settl_date

  index = index + size_of.no_target_party_i_ds

  index = index + size_of.number_of_resp_disclosure_instruction

  index = index + size_of.side

  index = index + size_of.value_check_type_value

  index = index + size_of.value_check_type_quantity

  index = index + size_of.respondent_type

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.free_text_5

  index = index + size_of.quote_req_id

  index = index + size_of.pad_7

  -- Calculate field size from count
  local xetra_en_light_target_parties_comp_count = buffer(offset + index - 176, 1):le_uint()
  index = index + xetra_en_light_target_parties_comp_count * 16

  return index
end

-- Display: Xetra En Light Open Negotiation Request
display.xetra_en_light_open_negotiation_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Open Negotiation Request
dissect.xetra_en_light_open_negotiation_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Valid Until Time: 8 Byte Unsigned Fixed Width Integer
  index, valid_until_time = dissect.valid_until_time(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- No Target Party I Ds: 1 Byte Unsigned Fixed Width Integer
  index, no_target_party_i_ds = dissect.no_target_party_i_ds(buffer, index, packet, parent)

  -- Number Of Resp Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, number_of_resp_disclosure_instruction = dissect.number_of_resp_disclosure_instruction(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Respondent Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, respondent_type = dissect.respondent_type(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Free Text 5: 132 Byte Ascii String
  index, free_text_5 = dissect.free_text_5(buffer, index, packet, parent)

  -- Quote Req Id: 20 Byte Ascii String
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  -- Xetra En Light Target Parties Comp: Struct of 4 fields
  for i = 1, no_target_party_i_ds do
    index = dissect.xetra_en_light_target_parties_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Xetra En Light Open Negotiation Request
dissect.xetra_en_light_open_negotiation_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.xetra_en_light_open_negotiation_request then
    local length = size_of.xetra_en_light_open_negotiation_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_open_negotiation_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_open_negotiation_request, range, display)
  end

  return dissect.xetra_en_light_open_negotiation_request_fields(buffer, offset, packet, parent)
end

-- Size: Leaves Qty
size_of.leaves_qty = 8

-- Display: Leaves Qty
display.leaves_qty = function(value)
  return "Leaves Qty: "..value:tonumber()/10000
end

-- Dissect: Leaves Qty
dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Negotiation Start Time
size_of.negotiation_start_time = 8

-- Display: Negotiation Start Time
display.negotiation_start_time = function(value)
  return "Negotiation Start Time: "..value
end

-- Dissect: Negotiation Start Time
dissect.negotiation_start_time = function(buffer, offset, packet, parent)
  local length = size_of.negotiation_start_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.negotiation_start_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.negotiation_start_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Open Negotiation Notification
size_of.xetra_en_light_open_negotiation_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.negotiation_start_time

  index = index + size_of.security_id

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.leaves_qty

  index = index + size_of.expire_time

  index = index + size_of.negotiation_id

  index = index + size_of.market_segment_id

  index = index + size_of.number_of_respondents

  index = index + size_of.settl_date

  index = index + size_of.quote_status

  index = index + size_of.side

  index = index + size_of.respondent_type

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.target_party_executing_firm

  index = index + size_of.target_party_executing_trader

  index = index + size_of.firm_negotiation_id

  index = index + size_of.free_text_5

  index = index + size_of.pad_1

  return index
end

-- Display: Xetra En Light Open Negotiation Notification
display.xetra_en_light_open_negotiation_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Open Negotiation Notification
dissect.xetra_en_light_open_negotiation_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Negotiation Start Time: 8 Byte Unsigned Fixed Width Integer
  index, negotiation_start_time = dissect.negotiation_start_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer
  index, expire_time = dissect.expire_time(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Number Of Respondents: 4 Byte Unsigned Fixed Width Integer
  index, number_of_respondents = dissect.number_of_respondents(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_status = dissect.quote_status(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Respondent Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, respondent_type = dissect.respondent_type(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Target Party Executing Firm: 5 Byte Ascii String
  index, target_party_executing_firm = dissect.target_party_executing_firm(buffer, index, packet, parent)

  -- Target Party Executing Trader: 6 Byte Ascii String
  index, target_party_executing_trader = dissect.target_party_executing_trader(buffer, index, packet, parent)

  -- Firm Negotiation Id: 20 Byte Ascii String
  index, firm_negotiation_id = dissect.firm_negotiation_id(buffer, index, packet, parent)

  -- Free Text 5: 132 Byte Ascii String
  index, free_text_5 = dissect.free_text_5(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Open Negotiation Notification
dissect.xetra_en_light_open_negotiation_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_open_negotiation_notification then
    local length = size_of.xetra_en_light_open_negotiation_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_open_negotiation_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_open_negotiation_notification, range, display)
  end

  return dissect.xetra_en_light_open_negotiation_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Xetra En Light Negotiation Status Notification
size_of.xetra_en_light_negotiation_status_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.negotiation_id

  index = index + size_of.quote_status

  index = index + size_of.firm_negotiation_id

  index = index + size_of.pad_7

  return index
end

-- Display: Xetra En Light Negotiation Status Notification
display.xetra_en_light_negotiation_status_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Negotiation Status Notification
dissect.xetra_en_light_negotiation_status_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_status = dissect.quote_status(buffer, index, packet, parent)

  -- Firm Negotiation Id: 20 Byte Ascii String
  index, firm_negotiation_id = dissect.firm_negotiation_id(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Negotiation Status Notification
dissect.xetra_en_light_negotiation_status_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_negotiation_status_notification then
    local length = size_of.xetra_en_light_negotiation_status_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_negotiation_status_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_negotiation_status_notification, range, display)
  end

  return dissect.xetra_en_light_negotiation_status_notification_fields(buffer, offset, packet, parent)
end

-- Size: Trd Reg Ts Execution Time
size_of.trd_reg_ts_execution_time = 8

-- Display: Trd Reg Ts Execution Time
display.trd_reg_ts_execution_time = function(value)
  return "Trd Reg Ts Execution Time: "..value
end

-- Dissect: Trd Reg Ts Execution Time
dissect.trd_reg_ts_execution_time = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_ts_execution_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_execution_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trd_reg_ts_execution_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Negotiation Requester Notification
size_of.xetra_en_light_negotiation_requester_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.trd_reg_ts_execution_time

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.order_qty

  index = index + size_of.last_px

  index = index + size_of.leaves_qty

  index = index + size_of.last_qty

  index = index + size_of.negotiation_id

  index = index + size_of.number_of_respondents

  index = index + size_of.settl_date

  index = index + size_of.quote_status

  index = index + size_of.no_target_party_i_ds

  index = index + size_of.number_of_resp_disclosure_instruction

  index = index + size_of.side

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.firm_negotiation_id

  index = index + size_of.free_text_5

  index = index + size_of.pad_7

  -- Calculate field size from count
  local xetra_en_light_target_parties_comp_count = buffer(offset + index - 179, 1):le_uint()
  index = index + xetra_en_light_target_parties_comp_count * 16

  return index
end

-- Display: Xetra En Light Negotiation Requester Notification
display.xetra_en_light_negotiation_requester_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Negotiation Requester Notification
dissect.xetra_en_light_negotiation_requester_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_execution_time = dissect.trd_reg_ts_execution_time(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Number Of Respondents: 4 Byte Unsigned Fixed Width Integer
  index, number_of_respondents = dissect.number_of_respondents(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_status = dissect.quote_status(buffer, index, packet, parent)

  -- No Target Party I Ds: 1 Byte Unsigned Fixed Width Integer
  index, no_target_party_i_ds = dissect.no_target_party_i_ds(buffer, index, packet, parent)

  -- Number Of Resp Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, number_of_resp_disclosure_instruction = dissect.number_of_resp_disclosure_instruction(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Firm Negotiation Id: 20 Byte Ascii String
  index, firm_negotiation_id = dissect.firm_negotiation_id(buffer, index, packet, parent)

  -- Free Text 5: 132 Byte Ascii String
  index, free_text_5 = dissect.free_text_5(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  -- Xetra En Light Target Parties Comp: Struct of 4 fields
  for i = 1, no_target_party_i_ds do
    index = dissect.xetra_en_light_target_parties_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Xetra En Light Negotiation Requester Notification
dissect.xetra_en_light_negotiation_requester_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.xetra_en_light_negotiation_requester_notification then
    local length = size_of.xetra_en_light_negotiation_requester_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_negotiation_requester_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_negotiation_requester_notification, range, display)
  end

  return dissect.xetra_en_light_negotiation_requester_notification_fields(buffer, offset, packet, parent)
end

-- Size: Pad 6
size_of.pad_6 = 6

-- Display: Pad 6
display.pad_6 = function(value)
  return "Pad 6: "..value
end

-- Dissect: Pad 6
dissect.pad_6 = function(buffer, offset, packet, parent)
  local length = size_of.pad_6
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_6(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Negotiation Notification
size_of.xetra_en_light_negotiation_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.leaves_qty

  index = index + size_of.negotiation_id

  index = index + size_of.number_of_respondents

  index = index + size_of.settl_date

  index = index + size_of.quote_status

  index = index + size_of.side

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.target_party_executing_firm

  index = index + size_of.target_party_executing_trader

  index = index + size_of.firm_negotiation_id

  index = index + size_of.free_text_5

  index = index + size_of.pad_6

  return index
end

-- Display: Xetra En Light Negotiation Notification
display.xetra_en_light_negotiation_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Negotiation Notification
dissect.xetra_en_light_negotiation_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Number Of Respondents: 4 Byte Unsigned Fixed Width Integer
  index, number_of_respondents = dissect.number_of_respondents(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_status = dissect.quote_status(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Target Party Executing Firm: 5 Byte Ascii String
  index, target_party_executing_firm = dissect.target_party_executing_firm(buffer, index, packet, parent)

  -- Target Party Executing Trader: 6 Byte Ascii String
  index, target_party_executing_trader = dissect.target_party_executing_trader(buffer, index, packet, parent)

  -- Firm Negotiation Id: 20 Byte Ascii String
  index, firm_negotiation_id = dissect.firm_negotiation_id(buffer, index, packet, parent)

  -- Free Text 5: 132 Byte Ascii String
  index, free_text_5 = dissect.free_text_5(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Negotiation Notification
dissect.xetra_en_light_negotiation_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_negotiation_notification then
    local length = size_of.xetra_en_light_negotiation_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_negotiation_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_negotiation_notification, range, display)
  end

  return dissect.xetra_en_light_negotiation_notification_fields(buffer, offset, packet, parent)
end

-- Size: Firm Trade Id
size_of.firm_trade_id = 20

-- Display: Firm Trade Id
display.firm_trade_id = function(value)
  return "Firm Trade Id: "..value
end

-- Dissect: Firm Trade Id
dissect.firm_trade_id = function(buffer, offset, packet, parent)
  local length = size_of.firm_trade_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.firm_trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.firm_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Order Origination
size_of.order_origination = 1

-- Display: Order Origination
display.order_origination = function(value)
  if value == 5 then
    return "Order Origination: Directaccessorsponsoredaccesscustomer (5)"
  end

  return "Order Origination: Unknown("..value..")"
end

-- Dissect: Order Origination
dissect.order_origination = function(buffer, offset, packet, parent)
  local length = size_of.order_origination
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_origination(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.order_origination, range, value, display)

  return offset + length, value
end

-- Size: Party Id Investment Decision Maker Qualifier
size_of.party_id_investment_decision_maker_qualifier = 1

-- Display: Party Id Investment Decision Maker Qualifier
display.party_id_investment_decision_maker_qualifier = function(value)
  if value == 22 then
    return "Party Id Investment Decision Maker Qualifier: Algo (22)"
  end
  if value == 24 then
    return "Party Id Investment Decision Maker Qualifier: Human (24)"
  end

  return "Party Id Investment Decision Maker Qualifier: Unknown("..value..")"
end

-- Dissect: Party Id Investment Decision Maker Qualifier
dissect.party_id_investment_decision_maker_qualifier = function(buffer, offset, packet, parent)
  local length = size_of.party_id_investment_decision_maker_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_id_investment_decision_maker_qualifier(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_id_investment_decision_maker_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Alloc Method
size_of.alloc_method = 1

-- Display: Alloc Method
display.alloc_method = function(value)
  if value == 1 then
    return "Alloc Method: Automatic Random (1)"
  end
  if value == 3 then
    return "Alloc Method: Manual (3)"
  end

  return "Alloc Method: Unknown("..value..")"
end

-- Dissect: Alloc Method
dissect.alloc_method = function(buffer, offset, packet, parent)
  local length = size_of.alloc_method
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.alloc_method(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.alloc_method, range, value, display)

  return offset + length, value
end

-- Size: Executing Trader Qualifier
size_of.executing_trader_qualifier = 1

-- Display: Executing Trader Qualifier
display.executing_trader_qualifier = function(value)
  if value == 22 then
    return "Executing Trader Qualifier: Algo (22)"
  end
  if value == 24 then
    return "Executing Trader Qualifier: Human (24)"
  end

  return "Executing Trader Qualifier: Unknown("..value..")"
end

-- Dissect: Executing Trader Qualifier
dissect.executing_trader_qualifier = function(buffer, offset, packet, parent)
  local length = size_of.executing_trader_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.executing_trader_qualifier(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.executing_trader_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Order Attribute Liquidity Provision
size_of.order_attribute_liquidity_provision = 1

-- Display: Order Attribute Liquidity Provision
display.order_attribute_liquidity_provision = function(value)
  if value == 1 then
    return "Order Attribute Liquidity Provision: Y (1)"
  end
  if value == 0 then
    return "Order Attribute Liquidity Provision: N (0)"
  end

  return "Order Attribute Liquidity Provision: Unknown("..value..")"
end

-- Dissect: Order Attribute Liquidity Provision
dissect.order_attribute_liquidity_provision = function(buffer, offset, packet, parent)
  local length = size_of.order_attribute_liquidity_provision
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_attribute_liquidity_provision(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.order_attribute_liquidity_provision, range, value, display)

  return offset + length, value
end

-- Size: Executing Trader
size_of.executing_trader = 8

-- Display: Executing Trader
display.executing_trader = function(value)
  return "Executing Trader: "..value
end

-- Dissect: Executing Trader
dissect.executing_trader = function(buffer, offset, packet, parent)
  local length = size_of.executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Party Id Investment Decision Maker
size_of.party_id_investment_decision_maker = 8

-- Display: Party Id Investment Decision Maker
display.party_id_investment_decision_maker = function(value)
  return "Party Id Investment Decision Maker: "..value
end

-- Dissect: Party Id Investment Decision Maker
dissect.party_id_investment_decision_maker = function(buffer, offset, packet, parent)
  local length = size_of.party_id_investment_decision_maker
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.party_id_investment_decision_maker(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_id_investment_decision_maker, range, value, display)

  return offset + length, value
end

-- Size: Party Id Client Id
size_of.party_id_client_id = 8

-- Display: Party Id Client Id
display.party_id_client_id = function(value)
  return "Party Id Client Id: "..value
end

-- Dissect: Party Id Client Id
dissect.party_id_client_id = function(buffer, offset, packet, parent)
  local length = size_of.party_id_client_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.party_id_client_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_id_client_id, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value:tonumber()/100000000
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Hit Quote Request
size_of.xetra_en_light_hit_quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.quote_id

  index = index + size_of.order_qty

  index = index + size_of.price

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.negotiation_id

  index = index + size_of.side

  index = index + size_of.value_check_type_quantity

  index = index + size_of.value_check_type_value

  index = index + size_of.trading_capacity

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.alloc_method

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.order_origination

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.firm_trade_id

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  return index
end

-- Display: Xetra En Light Hit Quote Request
display.xetra_en_light_hit_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Hit Quote Request
dissect.xetra_en_light_hit_quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Alloc Method: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, alloc_method = dissect.alloc_method(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Order Origination: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_origination = dissect.order_origination(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Firm Trade Id: 20 Byte Ascii String
  index, firm_trade_id = dissect.firm_trade_id(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Hit Quote Request
dissect.xetra_en_light_hit_quote_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_hit_quote_request then
    local length = size_of.xetra_en_light_hit_quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_hit_quote_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_hit_quote_request, range, display)
  end

  return dissect.xetra_en_light_hit_quote_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Xetra En Light Enter Quote Request
size_of.xetra_en_light_enter_quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.bid_size

  index = index + size_of.offer_size

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.negotiation_id

  index = index + size_of.value_check_type_quantity

  index = index + size_of.value_check_type_value

  index = index + size_of.trading_capacity

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.pad_7

  return index
end

-- Display: Xetra En Light Enter Quote Request
display.xetra_en_light_enter_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Enter Quote Request
dissect.xetra_en_light_enter_quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Enter Quote Request
dissect.xetra_en_light_enter_quote_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_enter_quote_request then
    local length = size_of.xetra_en_light_enter_quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_enter_quote_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_enter_quote_request, range, display)
  end

  return dissect.xetra_en_light_enter_quote_request_fields(buffer, offset, packet, parent)
end

-- Size: Secondary Trade Id
size_of.secondary_trade_id = 4

-- Display: Secondary Trade Id
display.secondary_trade_id = function(value)
  return "Secondary Trade Id: "..value
end

-- Dissect: Secondary Trade Id
dissect.secondary_trade_id = function(buffer, offset, packet, parent)
  local length = size_of.secondary_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.secondary_trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.secondary_trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Deal Response
size_of.xetra_en_light_deal_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.quote_id

  index = index + size_of.negotiation_id

  index = index + size_of.trade_id

  index = index + size_of.secondary_trade_id

  index = index + size_of.firm_trade_id

  index = index + size_of.firm_negotiation_id

  index = index + size_of.pad_4

  return index
end

-- Display: Xetra En Light Deal Response
display.xetra_en_light_deal_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Deal Response
dissect.xetra_en_light_deal_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Secondary Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, secondary_trade_id = dissect.secondary_trade_id(buffer, index, packet, parent)

  -- Firm Trade Id: 20 Byte Ascii String
  index, firm_trade_id = dissect.firm_trade_id(buffer, index, packet, parent)

  -- Firm Negotiation Id: 20 Byte Ascii String
  index, firm_negotiation_id = dissect.firm_negotiation_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Xetra En Light Deal Response
dissect.xetra_en_light_deal_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.xetra_en_light_deal_response then
    local length = size_of.xetra_en_light_deal_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_deal_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_deal_response, range, display)
  end

  return dissect.xetra_en_light_deal_response_fields(buffer, offset, packet, parent)
end

-- Size: Md Sub Book Type
size_of.md_sub_book_type = 1

-- Display: Md Sub Book Type
display.md_sub_book_type = function(value)
  if value == 2 then
    return "Md Sub Book Type: Volume Weighted Average (2)"
  end

  return "Md Sub Book Type: Unknown("..value..")"
end

-- Dissect: Md Sub Book Type
dissect.md_sub_book_type = function(buffer, offset, packet, parent)
  local length = size_of.md_sub_book_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_sub_book_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.md_sub_book_type, range, value, display)

  return offset + length, value
end

-- Size: Md Book Type
size_of.md_book_type = 1

-- Display: Md Book Type
display.md_book_type = function(value)
  if value == 1 then
    return "Md Book Type: Top Of Book (1)"
  end
  if value == 2 then
    return "Md Book Type: Price Depth (2)"
  end

  return "Md Book Type: Unknown("..value..")"
end

-- Dissect: Md Book Type
dissect.md_book_type = function(buffer, offset, packet, parent)
  local length = size_of.md_book_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_book_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.md_book_type, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Size
size_of.best_offer_size = 8

-- Display: Best Offer Size
display.best_offer_size = function(value)
  return "Best Offer Size: "..value:tonumber()/10000
end

-- Dissect: Best Offer Size
dissect.best_offer_size = function(buffer, offset, packet, parent)
  local length = size_of.best_offer_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.best_offer_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Px
size_of.best_offer_px = 8

-- Display: Best Offer Px
display.best_offer_px = function(value)
  return "Best Offer Px: "..value:tonumber()/100000000
end

-- Dissect: Best Offer Px
dissect.best_offer_px = function(buffer, offset, packet, parent)
  local length = size_of.best_offer_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.best_offer_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.best_offer_px, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Size
size_of.best_bid_size = 8

-- Display: Best Bid Size
display.best_bid_size = function(value)
  return "Best Bid Size: "..value:tonumber()/10000
end

-- Dissect: Best Bid Size
dissect.best_bid_size = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.best_bid_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Px
size_of.best_bid_px = 8

-- Display: Best Bid Px
display.best_bid_px = function(value)
  return "Best Bid Px: "..value:tonumber()/100000000
end

-- Dissect: Best Bid Px
dissect.best_bid_px = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.best_bid_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.best_bid_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Book Item Grp Comp
size_of.order_book_item_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.best_bid_px

  index = index + size_of.best_bid_size

  index = index + size_of.best_offer_px

  index = index + size_of.best_offer_size

  index = index + size_of.md_book_type

  index = index + size_of.md_sub_book_type

  index = index + size_of.pad_6

  return index
end

-- Display: Order Book Item Grp Comp
display.order_book_item_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Item Grp Comp
dissect.order_book_item_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, best_bid_px = dissect.best_bid_px(buffer, index, packet, parent)

  -- Best Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, best_bid_size = dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, best_offer_px = dissect.best_offer_px(buffer, index, packet, parent)

  -- Best Offer Size: 8 Byte Unsigned Fixed Width Integer
  index, best_offer_size = dissect.best_offer_size(buffer, index, packet, parent)

  -- Md Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, md_book_type = dissect.md_book_type(buffer, index, packet, parent)

  -- Md Sub Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, md_sub_book_type = dissect.md_sub_book_type(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Item Grp Comp
dissect.order_book_item_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_item_grp_comp then
    local length = size_of.order_book_item_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_book_item_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.order_book_item_grp_comp, range, display)
  end

  return dissect.order_book_item_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Root Party Entering Trader
size_of.root_party_entering_trader = 6

-- Display: Root Party Entering Trader
display.root_party_entering_trader = function(value)
  return "Root Party Entering Trader: "..value
end

-- Dissect: Root Party Entering Trader
dissect.root_party_entering_trader = function(buffer, offset, packet, parent)
  local length = size_of.root_party_entering_trader
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_entering_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_entering_trader, range, value, display)

  return offset + length, value
end

-- Size: Root Party Executing Trader
size_of.root_party_executing_trader = 6

-- Display: Root Party Executing Trader
display.root_party_executing_trader = function(value)
  return "Root Party Executing Trader: "..value
end

-- Dissect: Root Party Executing Trader
dissect.root_party_executing_trader = function(buffer, offset, packet, parent)
  local length = size_of.root_party_executing_trader
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Root Party Executing Firm
size_of.root_party_executing_firm = 5

-- Display: Root Party Executing Firm
display.root_party_executing_firm = function(value)
  return "Root Party Executing Firm: "..value
end

-- Dissect: Root Party Executing Firm
dissect.root_party_executing_firm = function(buffer, offset, packet, parent)
  local length = size_of.root_party_executing_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_executing_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_executing_firm, range, value, display)

  return offset + length, value
end

-- Size: No Order Book Items
size_of.no_order_book_items = 1

-- Display: No Order Book Items
display.no_order_book_items = function(value)
  return "No Order Book Items: "..value
end

-- Dissect: No Order Book Items
dissect.no_order_book_items = function(buffer, offset, packet, parent)
  local length = size_of.no_order_book_items
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_order_book_items(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_order_book_items, range, value, display)

  return offset + length, value
end

-- Size: Message Event Source
size_of.message_event_source = 1

-- Display: Message Event Source
display.message_event_source = function(value)
  if value == "I" then
    return "Message Event Source: Broadcastto Initiator (I)"
  end
  if value == "A" then
    return "Message Event Source: Broadcastto Approver (A)"
  end
  if value == "R" then
    return "Message Event Source: Broadcastto Requester (R)"
  end
  if value == "Q" then
    return "Message Event Source: Broadcastto Quote Submitter (Q)"
  end

  return "Message Event Source: Unknown("..value..")"
end

-- Dissect: Message Event Source
dissect.message_event_source = function(buffer, offset, packet, parent)
  local length = size_of.message_event_source
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_event_source(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.message_event_source, range, value, display)

  return offset + length, value
end

-- Size: Trd Rpt Status
size_of.trd_rpt_status = 1

-- Display: Trd Rpt Status
display.trd_rpt_status = function(value)
  if value == 0 then
    return "Trd Rpt Status: Accepted (0)"
  end
  if value == 1 then
    return "Trd Rpt Status: Rejected (1)"
  end
  if value == 2 then
    return "Trd Rpt Status: Cancelled (2)"
  end
  if value == 4 then
    return "Trd Rpt Status: Pending New (4)"
  end
  if value == 7 then
    return "Trd Rpt Status: Terminated (7)"
  end
  if value == 9 then
    return "Trd Rpt Status: Deemed Verified (9)"
  end

  return "Trd Rpt Status: Unknown("..value..")"
end

-- Dissect: Trd Rpt Status
dissect.trd_rpt_status = function(buffer, offset, packet, parent)
  local length = size_of.trd_rpt_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trd_rpt_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trd_rpt_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Xetra En Light Create Deal Notification
size_of.xetra_en_light_create_deal_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.last_px

  index = index + size_of.last_qty

  index = index + size_of.quote_id

  index = index + size_of.security_id

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.negotiation_id

  index = index + size_of.trade_id

  index = index + size_of.settl_date

  index = index + size_of.trading_capacity

  index = index + size_of.trd_rpt_status

  index = index + size_of.message_event_source

  index = index + size_of.side

  index = index + size_of.alloc_method

  index = index + size_of.no_order_book_items

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.root_party_entering_trader

  index = index + size_of.target_party_executing_firm

  index = index + size_of.target_party_executing_trader

  index = index + size_of.firm_trade_id

  index = index + size_of.firm_negotiation_id

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.pad_7

  -- Calculate field size from count
  local order_book_item_grp_comp_count = buffer(offset + index - 119, 1):le_uint()
  index = index + order_book_item_grp_comp_count * 40

  return index
end

-- Display: Xetra En Light Create Deal Notification
display.xetra_en_light_create_deal_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Xetra En Light Create Deal Notification
dissect.xetra_en_light_create_deal_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Trd Rpt Status: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trd_rpt_status = dissect.trd_rpt_status(buffer, index, packet, parent)

  -- Message Event Source: 1 Byte Ascii String Enum with 4 values
  index, message_event_source = dissect.message_event_source(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Alloc Method: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, alloc_method = dissect.alloc_method(buffer, index, packet, parent)

  -- No Order Book Items: 1 Byte Unsigned Fixed Width Integer
  index, no_order_book_items = dissect.no_order_book_items(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String
  index, root_party_executing_firm = dissect.root_party_executing_firm(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String
  index, root_party_executing_trader = dissect.root_party_executing_trader(buffer, index, packet, parent)

  -- Root Party Entering Trader: 6 Byte Ascii String
  index, root_party_entering_trader = dissect.root_party_entering_trader(buffer, index, packet, parent)

  -- Target Party Executing Firm: 5 Byte Ascii String
  index, target_party_executing_firm = dissect.target_party_executing_firm(buffer, index, packet, parent)

  -- Target Party Executing Trader: 6 Byte Ascii String
  index, target_party_executing_trader = dissect.target_party_executing_trader(buffer, index, packet, parent)

  -- Firm Trade Id: 20 Byte Ascii String
  index, firm_trade_id = dissect.firm_trade_id(buffer, index, packet, parent)

  -- Firm Negotiation Id: 20 Byte Ascii String
  index, firm_negotiation_id = dissect.firm_negotiation_id(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  -- Order Book Item Grp Comp: Struct of 7 fields
  for i = 1, no_order_book_items do
    index = dissect.order_book_item_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Xetra En Light Create Deal Notification
dissect.xetra_en_light_create_deal_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.xetra_en_light_create_deal_notification then
    local length = size_of.xetra_en_light_create_deal_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.xetra_en_light_create_deal_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.xetra_en_light_create_deal_notification, range, display)
  end

  return dissect.xetra_en_light_create_deal_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: User Logout Response
size_of.user_logout_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  return index
end

-- Display: User Logout Response
display.user_logout_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Logout Response
dissect.user_logout_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: User Logout Response
dissect.user_logout_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.user_logout_response then
    local length = size_of.user_logout_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.user_logout_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.user_logout_response, range, display)
  end

  return dissect.user_logout_response_fields(buffer, offset, packet, parent)
end

-- Size: Username
size_of.username = 4

-- Display: Username
display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
dissect.username = function(buffer, offset, packet, parent)
  local length = size_of.username
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.username(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.username, range, value, display)

  return offset + length, value
end

-- Calculate size of: User Logout Request
size_of.user_logout_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.username

  index = index + size_of.pad_4

  return index
end

-- Display: User Logout Request
display.user_logout_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Logout Request
dissect.user_logout_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer
  index, username = dissect.username(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: User Logout Request
dissect.user_logout_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.user_logout_request then
    local length = size_of.user_logout_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.user_logout_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.user_logout_request, range, display)
  end

  return dissect.user_logout_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: User Login Response
size_of.user_login_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  return index
end

-- Display: User Login Response
display.user_login_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Login Response
dissect.user_login_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: User Login Response
dissect.user_login_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.user_login_response then
    local length = size_of.user_login_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.user_login_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.user_login_response, range, display)
  end

  return dissect.user_login_response_fields(buffer, offset, packet, parent)
end

-- Size: Password
size_of.password = 32

-- Display: Password
display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
dissect.password = function(buffer, offset, packet, parent)
  local length = size_of.password
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.password(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.password, range, value, display)

  return offset + length, value
end

-- Calculate size of: User Login Request
size_of.user_login_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.username

  index = index + size_of.password

  index = index + size_of.pad_4

  return index
end

-- Display: User Login Request
display.user_login_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Login Request
dissect.user_login_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer
  index, username = dissect.username(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = dissect.password(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: User Login Request
dissect.user_login_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.user_login_request then
    local length = size_of.user_login_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.user_login_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.user_login_request, range, display)
  end

  return dissect.user_login_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Unsubscribe Response
size_of.unsubscribe_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  return index
end

-- Display: Unsubscribe Response
display.unsubscribe_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsubscribe Response
dissect.unsubscribe_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsubscribe Response
dissect.unsubscribe_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unsubscribe_response then
    local length = size_of.unsubscribe_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.unsubscribe_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.unsubscribe_response, range, display)
  end

  return dissect.unsubscribe_response_fields(buffer, offset, packet, parent)
end

-- Size: Ref Appl Sub Id
size_of.ref_appl_sub_id = 4

-- Display: Ref Appl Sub Id
display.ref_appl_sub_id = function(value)
  return "Ref Appl Sub Id: "..value
end

-- Dissect: Ref Appl Sub Id
dissect.ref_appl_sub_id = function(buffer, offset, packet, parent)
  local length = size_of.ref_appl_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ref_appl_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.ref_appl_sub_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unsubscribe Request
size_of.unsubscribe_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.ref_appl_sub_id

  index = index + size_of.pad_4

  return index
end

-- Display: Unsubscribe Request
display.unsubscribe_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsubscribe Request
dissect.unsubscribe_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Ref Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, ref_appl_sub_id = dissect.ref_appl_sub_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsubscribe Request
dissect.unsubscribe_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unsubscribe_request then
    local length = size_of.unsubscribe_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.unsubscribe_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.unsubscribe_request, range, display)
  end

  return dissect.unsubscribe_request_fields(buffer, offset, packet, parent)
end

-- Size: Fix Cl Ord Id
size_of.fix_cl_ord_id = 20

-- Display: Fix Cl Ord Id
display.fix_cl_ord_id = function(value)
  return "Fix Cl Ord Id: "..value
end

-- Dissect: Fix Cl Ord Id
dissect.fix_cl_ord_id = function(buffer, offset, packet, parent)
  local length = size_of.fix_cl_ord_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.fix_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.fix_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Exec Type
size_of.exec_type = 1

-- Display: Exec Type
display.exec_type = function(value)
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
  if value == "A" then
    return "Exec Type: Pending New (A)"
  end
  if value == "E" then
    return "Exec Type: Pending Replace (E)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
dissect.exec_type = function(buffer, offset, packet, parent)
  local length = size_of.exec_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.exec_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Size: Ord Status
size_of.ord_status = 1

-- Display: Ord Status
display.ord_status = function(value)
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
  if value == "A" then
    return "Ord Status: Pending New (A)"
  end
  if value == "E" then
    return "Ord Status: Pending Replace (E)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
dissect.ord_status = function(buffer, offset, packet, parent)
  local length = size_of.ord_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ord_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Size: Exec Restatement Reason
size_of.exec_restatement_reason = 2

-- Display: Exec Restatement Reason
display.exec_restatement_reason = function(value)
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
  if value == 114 then
    return "Exec Restatement Reason: Changedto Ioc (114)"
  end
  if value == 119 then
    return "Exec Restatement Reason: Changeof Specialist (119)"
  end
  if value == 122 then
    return "Exec Restatement Reason: Instrument State Change (122)"
  end
  if value == 138 then
    return "Exec Restatement Reason: Pending New (138)"
  end
  if value == 141 then
    return "Exec Restatement Reason: Pending New Applied (141)"
  end
  if value == 139 then
    return "Exec Restatement Reason: Pending Replace (139)"
  end
  if value == 142 then
    return "Exec Restatement Reason: Pending Replace Applied (142)"
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
  if value == 159 then
    return "Exec Restatement Reason: Iao Order Activated (159)"
  end
  if value == 160 then
    return "Exec Restatement Reason: Iao Order Inactivated (160)"
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
  if value == 261 then
    return "Exec Restatement Reason: Panic Cancel (261)"
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
  if value == 316 then
    return "Exec Restatement Reason: Qrs Expiry (316)"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
dissect.exec_restatement_reason = function(buffer, offset, packet, parent)
  local length = size_of.exec_restatement_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.exec_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Order Id Sfx
size_of.order_id_sfx = 4

-- Display: Order Id Sfx
display.order_id_sfx = function(value)
  return "Order Id Sfx: "..value
end

-- Dissect: Order Id Sfx
dissect.order_id_sfx = function(buffer, offset, packet, parent)
  local length = size_of.order_id_sfx
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_id_sfx(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.order_id_sfx, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
size_of.stop_px = 8

-- Display: Stop Px
display.stop_px = function(value)
  return "Stop Px: "..value:tonumber()/100000000
end

-- Dissect: Stop Px
dissect.stop_px = function(buffer, offset, packet, parent)
  local length = size_of.stop_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.stop_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
size_of.exec_id = 8

-- Display: Exec Id
display.exec_id = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
dissect.exec_id = function(buffer, offset, packet, parent)
  local length = size_of.exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Orig Cl Ord Id
size_of.orig_cl_ord_id = 8

-- Display: Orig Cl Ord Id
display.orig_cl_ord_id = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
dissect.orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = size_of.orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Cl Ord Id
size_of.cl_ord_id = 8

-- Display: Cl Ord Id
display.cl_ord_id = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local length = size_of.cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id
size_of.order_id = 8

-- Display: Order Id
display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local length = size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Appl Msg Id
size_of.appl_msg_id = 16

-- Display: Appl Msg Id
display.appl_msg_id = function(value)
  return "Appl Msg Id: "..value
end

-- Dissect: Appl Msg Id
dissect.appl_msg_id = function(buffer, offset, packet, parent)
  local length = size_of.appl_msg_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.appl_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_msg_id, range, value, display)

  return offset + length, value
end

-- Size: Notification In
size_of.notification_in = 8

-- Display: Notification In
display.notification_in = function(value)
  return "Notification In: "..value
end

-- Dissect: Notification In
dissect.notification_in = function(buffer, offset, packet, parent)
  local length = size_of.notification_in
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.notification_in(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.notification_in, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Time Out
size_of.trd_reg_ts_time_out = 8

-- Display: Trd Reg Ts Time Out
display.trd_reg_ts_time_out = function(value)
  return "Trd Reg Ts Time Out: "..value
end

-- Dissect: Trd Reg Ts Time Out
dissect.trd_reg_ts_time_out = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_ts_time_out
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_time_out(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trd_reg_ts_time_out, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rbc Header Me Comp
size_of.rbc_header_me_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.trd_reg_ts_time_out

  index = index + size_of.notification_in

  index = index + size_of.sending_time

  index = index + size_of.appl_sub_id

  index = index + size_of.partition_id

  index = index + size_of.appl_msg_id

  index = index + size_of.appl_id

  index = index + size_of.appl_resend_flag

  index = index + size_of.last_fragment

  index = index + size_of.pad_7

  return index
end

-- Display: Rbc Header Me Comp
display.rbc_header_me_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rbc Header Me Comp
dissect.rbc_header_me_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_out = dissect.trd_reg_ts_time_out(buffer, index, packet, parent)

  -- Notification In: 8 Byte Unsigned Fixed Width Integer
  index, notification_in = dissect.notification_in(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, appl_sub_id = dissect.appl_sub_id(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Appl Msg Id: 16 Byte
  index, appl_msg_id = dissect.appl_msg_id(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Appl Resend Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_resend_flag = dissect.appl_resend_flag(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Me Comp
dissect.rbc_header_me_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rbc_header_me_comp then
    local length = size_of.rbc_header_me_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rbc_header_me_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.rbc_header_me_comp, range, display)
  end

  return dissect.rbc_header_me_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trailing Stop Update Notification
size_of.trailing_stop_update_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.stop_px

  index = index + size_of.order_qty

  index = index + size_of.order_id_sfx

  index = index + size_of.market_segment_id

  index = index + size_of.exec_restatement_reason

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.side

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.pad_7

  return index
end

-- Display: Trailing Stop Update Notification
display.trailing_stop_update_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trailing Stop Update Notification
dissect.trailing_stop_update_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Trailing Stop Update Notification
dissect.trailing_stop_update_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trailing_stop_update_notification then
    local length = size_of.trailing_stop_update_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trailing_stop_update_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.trailing_stop_update_notification, range, display)
  end

  return dissect.trailing_stop_update_notification_fields(buffer, offset, packet, parent)
end

-- Size: Ref Appl Last Msg Id
size_of.ref_appl_last_msg_id = 16

-- Display: Ref Appl Last Msg Id
display.ref_appl_last_msg_id = function(value)
  return "Ref Appl Last Msg Id: "..value
end

-- Dissect: Ref Appl Last Msg Id
dissect.ref_appl_last_msg_id = function(buffer, offset, packet, parent)
  local length = size_of.ref_appl_last_msg_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.ref_appl_last_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.ref_appl_last_msg_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Session Status Broadcast
size_of.trading_session_status_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.market_segment_id

  index = index + size_of.trade_date

  index = index + size_of.trad_ses_event

  index = index + size_of.ref_appl_last_msg_id

  index = index + size_of.pad_7

  return index
end

-- Display: Trading Session Status Broadcast
display.trading_session_status_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Session Status Broadcast
dissect.trading_session_status_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_event = dissect.trad_ses_event(buffer, index, packet, parent)

  -- Ref Appl Last Msg Id: 16 Byte
  index, ref_appl_last_msg_id = dissect.ref_appl_last_msg_id(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Broadcast
dissect.trading_session_status_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_session_status_broadcast then
    local length = size_of.trading_session_status_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trading_session_status_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.trading_session_status_broadcast, range, display)
  end

  return dissect.trading_session_status_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Root Party Id Execution Venue
size_of.root_party_id_execution_venue = 4

-- Display: Root Party Id Execution Venue
display.root_party_id_execution_venue = function(value)
  return "Root Party Id Execution Venue: "..value
end

-- Dissect: Root Party Id Execution Venue
dissect.root_party_id_execution_venue = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_execution_venue
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_id_execution_venue(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_execution_venue, range, value, display)

  return offset + length, value
end

-- Size: Regulatory Trade Id
size_of.regulatory_trade_id = 52

-- Display: Regulatory Trade Id
display.regulatory_trade_id = function(value)
  return "Regulatory Trade Id: "..value
end

-- Dissect: Regulatory Trade Id
dissect.regulatory_trade_id = function(buffer, offset, packet, parent)
  local length = size_of.regulatory_trade_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.regulatory_trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.regulatory_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Party Specialist Trader
size_of.party_specialist_trader = 6

-- Display: Party Specialist Trader
display.party_specialist_trader = function(value)
  return "Party Specialist Trader: "..value
end

-- Dissect: Party Specialist Trader
dissect.party_specialist_trader = function(buffer, offset, packet, parent)
  local length = size_of.party_specialist_trader
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_specialist_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_specialist_trader, range, value, display)

  return offset + length, value
end

-- Size: Party Specialist Firm
size_of.party_specialist_firm = 5

-- Display: Party Specialist Firm
display.party_specialist_firm = function(value)
  return "Party Specialist Firm: "..value
end

-- Dissect: Party Specialist Firm
dissect.party_specialist_firm = function(buffer, offset, packet, parent)
  local length = size_of.party_specialist_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_specialist_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_specialist_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Contra Settlement Location
size_of.root_party_contra_settlement_location = 3

-- Display: Root Party Contra Settlement Location
display.root_party_contra_settlement_location = function(value)
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
dissect.root_party_contra_settlement_location = function(buffer, offset, packet, parent)
  local length = size_of.root_party_contra_settlement_location
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_contra_settlement_location(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_contra_settlement_location, range, value, display)

  return offset + length, value
end

-- Size: Root Party Contra Settlement Account
size_of.root_party_contra_settlement_account = 35

-- Display: Root Party Contra Settlement Account
display.root_party_contra_settlement_account = function(value)
  return "Root Party Contra Settlement Account: "..value
end

-- Dissect: Root Party Contra Settlement Account
dissect.root_party_contra_settlement_account = function(buffer, offset, packet, parent)
  local length = size_of.root_party_contra_settlement_account
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_contra_settlement_account(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_contra_settlement_account, range, value, display)

  return offset + length, value
end

-- Size: Root Party Contra Firm Kv Number
size_of.root_party_contra_firm_kv_number = 4

-- Display: Root Party Contra Firm Kv Number
display.root_party_contra_firm_kv_number = function(value)
  return "Root Party Contra Firm Kv Number: "..value
end

-- Dissect: Root Party Contra Firm Kv Number
dissect.root_party_contra_firm_kv_number = function(buffer, offset, packet, parent)
  local length = size_of.root_party_contra_firm_kv_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_contra_firm_kv_number(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_contra_firm_kv_number, range, value, display)

  return offset + length, value
end

-- Size: Root Party Contra Settlement Firm
size_of.root_party_contra_settlement_firm = 5

-- Display: Root Party Contra Settlement Firm
display.root_party_contra_settlement_firm = function(value)
  return "Root Party Contra Settlement Firm: "..value
end

-- Dissect: Root Party Contra Settlement Firm
dissect.root_party_contra_settlement_firm = function(buffer, offset, packet, parent)
  local length = size_of.root_party_contra_settlement_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_contra_settlement_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_contra_settlement_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Contra Firm
size_of.root_party_contra_firm = 5

-- Display: Root Party Contra Firm
display.root_party_contra_firm = function(value)
  return "Root Party Contra Firm: "..value
end

-- Dissect: Root Party Contra Firm
dissect.root_party_contra_firm = function(buffer, offset, packet, parent)
  local length = size_of.root_party_contra_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_contra_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_contra_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Settlement Firm
size_of.root_party_settlement_firm = 5

-- Display: Root Party Settlement Firm
display.root_party_settlement_firm = function(value)
  return "Root Party Settlement Firm: "..value
end

-- Dissect: Root Party Settlement Firm
dissect.root_party_settlement_firm = function(buffer, offset, packet, parent)
  local length = size_of.root_party_settlement_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_settlement_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_settlement_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Settlement Location
size_of.root_party_settlement_location = 3

-- Display: Root Party Settlement Location
display.root_party_settlement_location = function(value)
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
dissect.root_party_settlement_location = function(buffer, offset, packet, parent)
  local length = size_of.root_party_settlement_location
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_settlement_location(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_settlement_location, range, value, display)

  return offset + length, value
end

-- Size: Root Party Settlement Account
size_of.root_party_settlement_account = 35

-- Display: Root Party Settlement Account
display.root_party_settlement_account = function(value)
  return "Root Party Settlement Account: "..value
end

-- Dissect: Root Party Settlement Account
dissect.root_party_settlement_account = function(buffer, offset, packet, parent)
  local length = size_of.root_party_settlement_account
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_settlement_account(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_settlement_account, range, value, display)

  return offset + length, value
end

-- Size: Root Party Executing Firm Kv Number
size_of.root_party_executing_firm_kv_number = 4

-- Display: Root Party Executing Firm Kv Number
display.root_party_executing_firm_kv_number = function(value)
  return "Root Party Executing Firm Kv Number: "..value
end

-- Dissect: Root Party Executing Firm Kv Number
dissect.root_party_executing_firm_kv_number = function(buffer, offset, packet, parent)
  local length = size_of.root_party_executing_firm_kv_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_executing_firm_kv_number(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_executing_firm_kv_number, range, value, display)

  return offset + length, value
end

-- Size: Root Party Clearing Firm
size_of.root_party_clearing_firm = 5

-- Display: Root Party Clearing Firm
display.root_party_clearing_firm = function(value)
  return "Root Party Clearing Firm: "..value
end

-- Dissect: Root Party Clearing Firm
dissect.root_party_clearing_firm = function(buffer, offset, packet, parent)
  local length = size_of.root_party_clearing_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_clearing_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_clearing_firm, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
size_of.ord_type = 1

-- Display: Ord Type
display.ord_type = function(value)
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
dissect.ord_type = function(buffer, offset, packet, parent)
  local length = size_of.ord_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ord_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Size: Order Category
size_of.order_category = 1

-- Display: Order Category
display.order_category = function(value)
  if value == "1" then
    return "Order Category: Order (1)"
  end
  if value == "2" then
    return "Order Category: Quote (2)"
  end

  return "Order Category: Unknown("..value..")"
end

-- Dissect: Order Category
dissect.order_category = function(buffer, offset, packet, parent)
  local length = size_of.order_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.order_category(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.order_category, range, value, display)

  return offset + length, value
end

-- Size: Currency
size_of.currency = 3

-- Display: Currency
display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local length = size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Settl Currency
size_of.settl_currency = 3

-- Display: Settl Currency
display.settl_currency = function(value)
  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
dissect.settl_currency = function(buffer, offset, packet, parent)
  local length = size_of.settl_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.settl_currency(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.settl_currency, range, value, display)

  return offset + length, value
end

-- Size: Account
size_of.account = 2

-- Display: Account
display.account = function(value)
  return "Account: "..value
end

-- Dissect: Account
dissect.account = function(buffer, offset, packet, parent)
  local length = size_of.account
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.account(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.account, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Investment Decision Maker Qualifier
size_of.root_party_id_investment_decision_maker_qualifier = 1

-- Display: Root Party Id Investment Decision Maker Qualifier
display.root_party_id_investment_decision_maker_qualifier = function(value)
  if value == 22 then
    return "Root Party Id Investment Decision Maker Qualifier: Algo (22)"
  end
  if value == 24 then
    return "Root Party Id Investment Decision Maker Qualifier: Human (24)"
  end

  return "Root Party Id Investment Decision Maker Qualifier: Unknown("..value..")"
end

-- Dissect: Root Party Id Investment Decision Maker Qualifier
dissect.root_party_id_investment_decision_maker_qualifier = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_investment_decision_maker_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.root_party_id_investment_decision_maker_qualifier(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_investment_decision_maker_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Clearing Instruction
size_of.clearing_instruction = 1

-- Display: Clearing Instruction
display.clearing_instruction = function(value)
  if value == 2 then
    return "Clearing Instruction: Bilateralnettingonly (2)"
  end
  if value == 13 then
    return "Clearing Instruction: Selfclearing (13)"
  end

  return "Clearing Instruction: Unknown("..value..")"
end

-- Dissect: Clearing Instruction
dissect.clearing_instruction = function(buffer, offset, packet, parent)
  local length = size_of.clearing_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.clearing_instruction(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.clearing_instruction, range, value, display)

  return offset + length, value
end

-- Size: Refinancing Eligibility Indicator
size_of.refinancing_eligibility_indicator = 1

-- Display: Refinancing Eligibility Indicator
display.refinancing_eligibility_indicator = function(value)
  if value == 0 then
    return "Refinancing Eligibility Indicator: No (0)"
  end
  if value == 1 then
    return "Refinancing Eligibility Indicator: Yes (1)"
  end

  return "Refinancing Eligibility Indicator: Unknown("..value..")"
end

-- Dissect: Refinancing Eligibility Indicator
dissect.refinancing_eligibility_indicator = function(buffer, offset, packet, parent)
  local length = size_of.refinancing_eligibility_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.refinancing_eligibility_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.refinancing_eligibility_indicator, range, value, display)

  return offset + length, value
end

-- Size: Last Coupon Deviation Indicator
size_of.last_coupon_deviation_indicator = 1

-- Display: Last Coupon Deviation Indicator
display.last_coupon_deviation_indicator = function(value)
  if value == 0 then
    return "Last Coupon Deviation Indicator: None (0)"
  end
  if value == 1 then
    return "Last Coupon Deviation Indicator: Shortperiod (1)"
  end
  if value == 2 then
    return "Last Coupon Deviation Indicator: Longperiod (2)"
  end
  if value == 3 then
    return "Last Coupon Deviation Indicator: Onlyonecoupon (3)"
  end
  if value == 4 then
    return "Last Coupon Deviation Indicator: Shorttwointerestpaymentsdue (4)"
  end
  if value == 5 then
    return "Last Coupon Deviation Indicator: Longtwointerestpaymentsdue (5)"
  end
  if value == 6 then
    return "Last Coupon Deviation Indicator: Perpetual (6)"
  end

  return "Last Coupon Deviation Indicator: Unknown("..value..")"
end

-- Dissect: Last Coupon Deviation Indicator
dissect.last_coupon_deviation_indicator = function(buffer, offset, packet, parent)
  local length = size_of.last_coupon_deviation_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_coupon_deviation_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.last_coupon_deviation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Delivery Type
size_of.delivery_type = 1

-- Display: Delivery Type
display.delivery_type = function(value)
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
  if value == 5 then
    return "Delivery Type: Akt (5)"
  end

  return "Delivery Type: Unknown("..value..")"
end

-- Dissect: Delivery Type
dissect.delivery_type = function(buffer, offset, packet, parent)
  local length = size_of.delivery_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.delivery_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.delivery_type, range, value, display)

  return offset + length, value
end

-- Size: Side Liquidity Ind
size_of.side_liquidity_ind = 1

-- Display: Side Liquidity Ind
display.side_liquidity_ind = function(value)
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
dissect.side_liquidity_ind = function(buffer, offset, packet, parent)
  local length = size_of.side_liquidity_ind
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.side_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Size: Match Sub Type
size_of.match_sub_type = 1

-- Display: Match Sub Type
display.match_sub_type = function(value)
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
  if value == 5 then
    return "Match Sub Type: Tradeatclose (5)"
  end

  return "Match Sub Type: Unknown("..value..")"
end

-- Dissect: Match Sub Type
dissect.match_sub_type = function(buffer, offset, packet, parent)
  local length = size_of.match_sub_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.match_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.match_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Match Type
size_of.match_type = 1

-- Display: Match Type
display.match_type = function(value)
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
  if value == 11 then
    return "Match Type: Automatchresting (11)"
  end
  if value == 12 then
    return "Match Type: Automatchatmidpoint (12)"
  end
  if value == 14 then
    return "Match Type: Continuous Auction (14)"
  end

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
dissect.match_type = function(buffer, offset, packet, parent)
  local length = size_of.match_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.match_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.match_type, range, value, display)

  return offset + length, value
end

-- Size: Transfer Reason
size_of.transfer_reason = 1

-- Display: Transfer Reason
display.transfer_reason = function(value)
  if value == 1 then
    return "Transfer Reason: Owner (1)"
  end
  if value == 2 then
    return "Transfer Reason: Clearer (2)"
  end

  return "Transfer Reason: Unknown("..value..")"
end

-- Dissect: Transfer Reason
dissect.transfer_reason = function(buffer, offset, packet, parent)
  local length = size_of.transfer_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.transfer_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.transfer_reason, range, value, display)

  return offset + length, value
end

-- Size: Trade Report Type
size_of.trade_report_type = 1

-- Display: Trade Report Type
display.trade_report_type = function(value)
  if value == 0 then
    return "Trade Report Type: Submit (0)"
  end
  if value == 2 then
    return "Trade Report Type: Accept (2)"
  end
  if value == 3 then
    return "Trade Report Type: Decline (3)"
  end
  if value == 5 then
    return "Trade Report Type: No Was Replaced (5)"
  end
  if value == 6 then
    return "Trade Report Type: Trade Report Cancel (6)"
  end
  if value == 7 then
    return "Trade Report Type: Trade Break (7)"
  end
  if value == 11 then
    return "Trade Report Type: Alleged New (11)"
  end
  if value == 13 then
    return "Trade Report Type: Alleged No Was (13)"
  end

  return "Trade Report Type: Unknown("..value..")"
end

-- Dissect: Trade Report Type
dissect.trade_report_type = function(buffer, offset, packet, parent)
  local length = size_of.trade_report_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_report_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_report_type, range, value, display)

  return offset + length, value
end

-- Size: Last Mkt
size_of.last_mkt = 2

-- Display: Last Mkt
display.last_mkt = function(value)
  if value == 3 then
    return "Last Mkt: Xetr (3)"
  end
  if value == 4 then
    return "Last Mkt: Xvie (4)"
  end
  if value == 6 then
    return "Last Mkt: Xmal (6)"
  end
  if value == 7 then
    return "Last Mkt: Xbul (7)"
  end
  if value == 8 then
    return "Last Mkt: Xbud (8)"
  end
  if value == 9 then
    return "Last Mkt: Xlju (9)"
  end
  if value == 10 then
    return "Last Mkt: Xpra (10)"
  end
  if value == 11 then
    return "Last Mkt: Xzag (11)"
  end
  if value == 13 then
    return "Last Mkt: Xfra (13)"
  end

  return "Last Mkt: Unknown("..value..")"
end

-- Dissect: Last Mkt
dissect.last_mkt = function(buffer, offset, packet, parent)
  local length = size_of.last_mkt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_mkt(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Size: Num Days Interest
size_of.num_days_interest = 4

-- Display: Num Days Interest
display.num_days_interest = function(value)
  return "Num Days Interest: "..value
end

-- Dissect: Num Days Interest
dissect.num_days_interest = function(buffer, offset, packet, parent)
  local length = size_of.num_days_interest
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.num_days_interest(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.num_days_interest, range, value, display)

  return offset + length, value
end

-- Size: Trd Match Id
size_of.trd_match_id = 4

-- Display: Trd Match Id
display.trd_match_id = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
dissect.trd_match_id = function(buffer, offset, packet, parent)
  local length = size_of.trd_match_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trd_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Size: Match Date
size_of.match_date = 4

-- Display: Match Date
display.match_date = function(value)
  return "Match Date: "..value
end

-- Dissect: Match Date
dissect.match_date = function(buffer, offset, packet, parent)
  local length = size_of.match_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.match_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.match_date, range, value, display)

  return offset + length, value
end

-- Size: Trade Number
size_of.trade_number = 4

-- Display: Trade Number
display.trade_number = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
dissect.trade_number = function(buffer, offset, packet, parent)
  local length = size_of.trade_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_number(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Size: Side Trade Report Id
size_of.side_trade_report_id = 4

-- Display: Side Trade Report Id
display.side_trade_report_id = function(value)
  return "Side Trade Report Id: "..value
end

-- Dissect: Side Trade Report Id
dissect.side_trade_report_id = function(buffer, offset, packet, parent)
  local length = size_of.side_trade_report_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side_trade_report_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.side_trade_report_id, range, value, display)

  return offset + length, value
end

-- Size: Side Trade Id
size_of.side_trade_id = 4

-- Display: Side Trade Id
display.side_trade_id = function(value)
  return "Side Trade Id: "..value
end

-- Dissect: Side Trade Id
dissect.side_trade_id = function(buffer, offset, packet, parent)
  local length = size_of.side_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side_trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.side_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Party Id Specialist Trader
size_of.party_id_specialist_trader = 4

-- Display: Party Id Specialist Trader
display.party_id_specialist_trader = function(value)
  return "Party Id Specialist Trader: "..value
end

-- Dissect: Party Id Specialist Trader
dissect.party_id_specialist_trader = function(buffer, offset, packet, parent)
  local length = size_of.party_id_specialist_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_id_specialist_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_id_specialist_trader, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Contra Settlement Unit
size_of.root_party_id_contra_settlement_unit = 4

-- Display: Root Party Id Contra Settlement Unit
display.root_party_id_contra_settlement_unit = function(value)
  return "Root Party Id Contra Settlement Unit: "..value
end

-- Dissect: Root Party Id Contra Settlement Unit
dissect.root_party_id_contra_settlement_unit = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_contra_settlement_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.root_party_id_contra_settlement_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_contra_settlement_unit, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Contra Unit
size_of.root_party_id_contra_unit = 4

-- Display: Root Party Id Contra Unit
display.root_party_id_contra_unit = function(value)
  return "Root Party Id Contra Unit: "..value
end

-- Dissect: Root Party Id Contra Unit
dissect.root_party_id_contra_unit = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_contra_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.root_party_id_contra_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_contra_unit, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Clearing Unit
size_of.root_party_id_clearing_unit = 4

-- Display: Root Party Id Clearing Unit
display.root_party_id_clearing_unit = function(value)
  return "Root Party Id Clearing Unit: "..value
end

-- Dissect: Root Party Id Clearing Unit
dissect.root_party_id_clearing_unit = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_clearing_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.root_party_id_clearing_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_clearing_unit, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Settlement Unit
size_of.root_party_id_settlement_unit = 4

-- Display: Root Party Id Settlement Unit
display.root_party_id_settlement_unit = function(value)
  return "Root Party Id Settlement Unit: "..value
end

-- Dissect: Root Party Id Settlement Unit
dissect.root_party_id_settlement_unit = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_settlement_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.root_party_id_settlement_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_settlement_unit, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Executing Trader
size_of.root_party_id_executing_trader = 4

-- Display: Root Party Id Executing Trader
display.root_party_id_executing_trader = function(value)
  return "Root Party Id Executing Trader: "..value
end

-- Dissect: Root Party Id Executing Trader
dissect.root_party_id_executing_trader = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.root_party_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Session Id
size_of.root_party_id_session_id = 4

-- Display: Root Party Id Session Id
display.root_party_id_session_id = function(value)
  return "Root Party Id Session Id: "..value
end

-- Dissect: Root Party Id Session Id
dissect.root_party_id_session_id = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.root_party_id_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_session_id, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Executing Unit
size_of.root_party_id_executing_unit = 4

-- Display: Root Party Id Executing Unit
display.root_party_id_executing_unit = function(value)
  return "Root Party Id Executing Unit: "..value
end

-- Dissect: Root Party Id Executing Unit
dissect.root_party_id_executing_unit = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_executing_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.root_party_id_executing_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Size: Orig Trade Id
size_of.orig_trade_id = 4

-- Display: Orig Trade Id
display.orig_trade_id = function(value)
  return "Orig Trade Id: "..value
end

-- Dissect: Orig Trade Id
dissect.orig_trade_id = function(buffer, offset, packet, parent)
  local length = size_of.orig_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.orig_trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.orig_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Investment Decision Maker
size_of.root_party_id_investment_decision_maker = 8

-- Display: Root Party Id Investment Decision Maker
display.root_party_id_investment_decision_maker = function(value)
  return "Root Party Id Investment Decision Maker: "..value
end

-- Dissect: Root Party Id Investment Decision Maker
dissect.root_party_id_investment_decision_maker = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_investment_decision_maker
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.root_party_id_investment_decision_maker(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_investment_decision_maker, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Client Id
size_of.root_party_id_client_id = 8

-- Display: Root Party Id Client Id
display.root_party_id_client_id = function(value)
  return "Root Party Id Client Id: "..value
end

-- Dissect: Root Party Id Client Id
dissect.root_party_id_client_id = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_client_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.root_party_id_client_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.root_party_id_client_id, range, value, display)

  return offset + length, value
end

-- Size: Coupon Rate
size_of.coupon_rate = 8

-- Display: Coupon Rate
display.coupon_rate = function(value)
  return "Coupon Rate: "..value:tonumber()/10000000
end

-- Dissect: Coupon Rate
dissect.coupon_rate = function(buffer, offset, packet, parent)
  local length = size_of.coupon_rate
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.coupon_rate(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Size: Accrued Interes Amt
size_of.accrued_interes_amt = 8

-- Display: Accrued Interes Amt
display.accrued_interes_amt = function(value)
  return "Accrued Interes Amt: "..value:tonumber()/100000000
end

-- Dissect: Accrued Interes Amt
dissect.accrued_interes_amt = function(buffer, offset, packet, parent)
  local length = size_of.accrued_interes_amt
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.accrued_interes_amt(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.accrued_interes_amt, range, value, display)

  return offset + length, value
end

-- Size: Side Gross Trade Amt
size_of.side_gross_trade_amt = 8

-- Display: Side Gross Trade Amt
display.side_gross_trade_amt = function(value)
  return "Side Gross Trade Amt: "..value:tonumber()/100000000
end

-- Dissect: Side Gross Trade Amt
dissect.side_gross_trade_amt = function(buffer, offset, packet, parent)
  local length = size_of.side_gross_trade_amt
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.side_gross_trade_amt(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.side_gross_trade_amt, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
size_of.cum_qty = 8

-- Display: Cum Qty
display.cum_qty = function(value)
  return "Cum Qty: "..value:tonumber()/10000
end

-- Dissect: Cum Qty
dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = size_of.cum_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Size: Settl Curr Fx Rate
size_of.settl_curr_fx_rate = 8

-- Display: Settl Curr Fx Rate
display.settl_curr_fx_rate = function(value)
  return "Settl Curr Fx Rate: "..value:tonumber()/100000000
end

-- Dissect: Settl Curr Fx Rate
dissect.settl_curr_fx_rate = function(buffer, offset, packet, parent)
  local length = size_of.settl_curr_fx_rate
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.settl_curr_fx_rate(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.settl_curr_fx_rate, range, value, display)

  return offset + length, value
end

-- Size: Settl Curr Amt
size_of.settl_curr_amt = 8

-- Display: Settl Curr Amt
display.settl_curr_amt = function(value)
  return "Settl Curr Amt: "..value:tonumber()/100000000
end

-- Dissect: Settl Curr Amt
dissect.settl_curr_amt = function(buffer, offset, packet, parent)
  local length = size_of.settl_curr_amt
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.settl_curr_amt(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.settl_curr_amt, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Broadcast
size_of.trade_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.last_px

  index = index + size_of.last_qty

  index = index + size_of.settl_curr_amt

  index = index + size_of.settl_curr_fx_rate

  index = index + size_of.transact_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.side_gross_trade_amt

  index = index + size_of.accrued_interes_amt

  index = index + size_of.coupon_rate

  index = index + size_of.root_party_id_client_id

  index = index + size_of.executing_trader

  index = index + size_of.root_party_id_investment_decision_maker

  index = index + size_of.trade_id

  index = index + size_of.orig_trade_id

  index = index + size_of.root_party_id_executing_unit

  index = index + size_of.root_party_id_session_id

  index = index + size_of.root_party_id_executing_trader

  index = index + size_of.root_party_id_settlement_unit

  index = index + size_of.root_party_id_clearing_unit

  index = index + size_of.root_party_id_contra_unit

  index = index + size_of.root_party_id_contra_settlement_unit

  index = index + size_of.party_id_specialist_trader

  index = index + size_of.order_id_sfx

  index = index + size_of.market_segment_id

  index = index + size_of.side_trade_id

  index = index + size_of.side_trade_report_id

  index = index + size_of.trade_number

  index = index + size_of.match_date

  index = index + size_of.settl_date

  index = index + size_of.trd_match_id

  index = index + size_of.num_days_interest

  index = index + size_of.last_mkt

  index = index + size_of.trade_report_type

  index = index + size_of.transfer_reason

  index = index + size_of.match_type

  index = index + size_of.match_sub_type

  index = index + size_of.side

  index = index + size_of.side_liquidity_ind

  index = index + size_of.delivery_type

  index = index + size_of.trading_capacity

  index = index + size_of.last_coupon_deviation_indicator

  index = index + size_of.refinancing_eligibility_indicator

  index = index + size_of.clearing_instruction

  index = index + size_of.order_origination

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.root_party_id_investment_decision_maker_qualifier

  index = index + size_of.account

  index = index + size_of.settl_currency

  index = index + size_of.currency

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.order_category

  index = index + size_of.ord_type

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.root_party_clearing_firm

  index = index + size_of.root_party_executing_firm_kv_number

  index = index + size_of.root_party_settlement_account

  index = index + size_of.root_party_settlement_location

  index = index + size_of.root_party_settlement_firm

  index = index + size_of.root_party_contra_firm

  index = index + size_of.root_party_contra_settlement_firm

  index = index + size_of.root_party_contra_firm_kv_number

  index = index + size_of.root_party_contra_settlement_account

  index = index + size_of.root_party_contra_settlement_location

  index = index + size_of.party_specialist_firm

  index = index + size_of.party_specialist_trader

  index = index + size_of.regulatory_trade_id

  index = index + size_of.root_party_id_execution_venue

  index = index + size_of.pad_3

  return index
end

-- Display: Trade Broadcast
display.trade_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Broadcast
dissect.trade_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Settl Curr Amt: 8 Byte Unsigned Fixed Width Integer
  index, settl_curr_amt = dissect.settl_curr_amt(buffer, index, packet, parent)

  -- Settl Curr Fx Rate: 8 Byte Unsigned Fixed Width Integer
  index, settl_curr_fx_rate = dissect.settl_curr_fx_rate(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Side Gross Trade Amt: 8 Byte Unsigned Fixed Width Integer
  index, side_gross_trade_amt = dissect.side_gross_trade_amt(buffer, index, packet, parent)

  -- Accrued Interes Amt: 8 Byte Unsigned Fixed Width Integer
  index, accrued_interes_amt = dissect.accrued_interes_amt(buffer, index, packet, parent)

  -- Coupon Rate: 8 Byte Unsigned Fixed Width Integer
  index, coupon_rate = dissect.coupon_rate(buffer, index, packet, parent)

  -- Root Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, root_party_id_client_id = dissect.root_party_id_client_id(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Root Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, root_party_id_investment_decision_maker = dissect.root_party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Orig Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, orig_trade_id = dissect.orig_trade_id(buffer, index, packet, parent)

  -- Root Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_executing_unit = dissect.root_party_id_executing_unit(buffer, index, packet, parent)

  -- Root Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_session_id = dissect.root_party_id_session_id(buffer, index, packet, parent)

  -- Root Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_executing_trader = dissect.root_party_id_executing_trader(buffer, index, packet, parent)

  -- Root Party Id Settlement Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_settlement_unit = dissect.root_party_id_settlement_unit(buffer, index, packet, parent)

  -- Root Party Id Clearing Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_clearing_unit = dissect.root_party_id_clearing_unit(buffer, index, packet, parent)

  -- Root Party Id Contra Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_contra_unit = dissect.root_party_id_contra_unit(buffer, index, packet, parent)

  -- Root Party Id Contra Settlement Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_contra_settlement_unit = dissect.root_party_id_contra_settlement_unit(buffer, index, packet, parent)

  -- Party Id Specialist Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_specialist_trader = dissect.party_id_specialist_trader(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = dissect.side_trade_id(buffer, index, packet, parent)

  -- Side Trade Report Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_report_id = dissect.side_trade_report_id(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  -- Match Date: 4 Byte Unsigned Fixed Width Integer
  index, match_date = dissect.match_date(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer
  index, trd_match_id = dissect.trd_match_id(buffer, index, packet, parent)

  -- Num Days Interest: 4 Byte Unsigned Fixed Width Integer
  index, num_days_interest = dissect.num_days_interest(buffer, index, packet, parent)

  -- Last Mkt: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, last_mkt = dissect.last_mkt(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Transfer Reason: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transfer_reason = dissect.transfer_reason(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, match_type = dissect.match_type(buffer, index, packet, parent)

  -- Match Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_sub_type = dissect.match_sub_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Side Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_liquidity_ind = dissect.side_liquidity_ind(buffer, index, packet, parent)

  -- Delivery Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, delivery_type = dissect.delivery_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Last Coupon Deviation Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, last_coupon_deviation_indicator = dissect.last_coupon_deviation_indicator(buffer, index, packet, parent)

  -- Refinancing Eligibility Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, refinancing_eligibility_indicator = dissect.refinancing_eligibility_indicator(buffer, index, packet, parent)

  -- Clearing Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, clearing_instruction = dissect.clearing_instruction(buffer, index, packet, parent)

  -- Order Origination: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_origination = dissect.order_origination(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Root Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, root_party_id_investment_decision_maker_qualifier = dissect.root_party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = dissect.settl_currency(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Order Category: 1 Byte Ascii String Enum with 2 values
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String
  index, root_party_executing_firm = dissect.root_party_executing_firm(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String
  index, root_party_executing_trader = dissect.root_party_executing_trader(buffer, index, packet, parent)

  -- Root Party Clearing Firm: 5 Byte Ascii String
  index, root_party_clearing_firm = dissect.root_party_clearing_firm(buffer, index, packet, parent)

  -- Root Party Executing Firm Kv Number: 4 Byte Ascii String
  index, root_party_executing_firm_kv_number = dissect.root_party_executing_firm_kv_number(buffer, index, packet, parent)

  -- Root Party Settlement Account: 35 Byte Ascii String
  index, root_party_settlement_account = dissect.root_party_settlement_account(buffer, index, packet, parent)

  -- Root Party Settlement Location: 3 Byte Ascii String Enum with 18 values
  index, root_party_settlement_location = dissect.root_party_settlement_location(buffer, index, packet, parent)

  -- Root Party Settlement Firm: 5 Byte Ascii String
  index, root_party_settlement_firm = dissect.root_party_settlement_firm(buffer, index, packet, parent)

  -- Root Party Contra Firm: 5 Byte Ascii String
  index, root_party_contra_firm = dissect.root_party_contra_firm(buffer, index, packet, parent)

  -- Root Party Contra Settlement Firm: 5 Byte Ascii String
  index, root_party_contra_settlement_firm = dissect.root_party_contra_settlement_firm(buffer, index, packet, parent)

  -- Root Party Contra Firm Kv Number: 4 Byte Ascii String
  index, root_party_contra_firm_kv_number = dissect.root_party_contra_firm_kv_number(buffer, index, packet, parent)

  -- Root Party Contra Settlement Account: 35 Byte Ascii String
  index, root_party_contra_settlement_account = dissect.root_party_contra_settlement_account(buffer, index, packet, parent)

  -- Root Party Contra Settlement Location: 3 Byte Ascii String Enum with 18 values
  index, root_party_contra_settlement_location = dissect.root_party_contra_settlement_location(buffer, index, packet, parent)

  -- Party Specialist Firm: 5 Byte Ascii String
  index, party_specialist_firm = dissect.party_specialist_firm(buffer, index, packet, parent)

  -- Party Specialist Trader: 6 Byte Ascii String
  index, party_specialist_trader = dissect.party_specialist_trader(buffer, index, packet, parent)

  -- Regulatory Trade Id: 52 Byte Ascii String
  index, regulatory_trade_id = dissect.regulatory_trade_id(buffer, index, packet, parent)

  -- Root Party Id Execution Venue: 4 Byte Ascii String
  index, root_party_id_execution_venue = dissect.root_party_id_execution_venue(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Broadcast
dissect.trade_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_broadcast then
    local length = size_of.trade_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.trade_broadcast, range, display)
  end

  return dissect.trade_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Throttle Disconnect Limit
size_of.throttle_disconnect_limit = 4

-- Display: Throttle Disconnect Limit
display.throttle_disconnect_limit = function(value)
  return "Throttle Disconnect Limit: "..value
end

-- Dissect: Throttle Disconnect Limit
dissect.throttle_disconnect_limit = function(buffer, offset, packet, parent)
  local length = size_of.throttle_disconnect_limit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.throttle_disconnect_limit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.throttle_disconnect_limit, range, value, display)

  return offset + length, value
end

-- Size: Throttle No Msgs
size_of.throttle_no_msgs = 4

-- Display: Throttle No Msgs
display.throttle_no_msgs = function(value)
  return "Throttle No Msgs: "..value
end

-- Dissect: Throttle No Msgs
dissect.throttle_no_msgs = function(buffer, offset, packet, parent)
  local length = size_of.throttle_no_msgs
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.throttle_no_msgs(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.throttle_no_msgs, range, value, display)

  return offset + length, value
end

-- Size: Throttle Time Interval
size_of.throttle_time_interval = 8

-- Display: Throttle Time Interval
display.throttle_time_interval = function(value)
  return "Throttle Time Interval: "..value
end

-- Dissect: Throttle Time Interval
dissect.throttle_time_interval = function(buffer, offset, packet, parent)
  local length = size_of.throttle_time_interval
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.throttle_time_interval(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.throttle_time_interval, range, value, display)

  return offset + length, value
end

-- Calculate size of: Notif Header Comp
size_of.notif_header_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  return index
end

-- Display: Notif Header Comp
display.notif_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Notif Header Comp
dissect.notif_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Notif Header Comp
dissect.notif_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.notif_header_comp then
    local length = size_of.notif_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.notif_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.notif_header_comp, range, display)
  end

  return dissect.notif_header_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Throttle Update Notification
size_of.throttle_update_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.notif_header_comp(buffer, offset + index)

  index = index + size_of.throttle_time_interval

  index = index + size_of.throttle_no_msgs

  index = index + size_of.throttle_disconnect_limit

  return index
end

-- Display: Throttle Update Notification
display.throttle_update_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Throttle Update Notification
dissect.throttle_update_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = dissect.notif_header_comp(buffer, index, packet, parent)

  -- Throttle Time Interval: 8 Byte Signed Fixed Width Integer
  index, throttle_time_interval = dissect.throttle_time_interval(buffer, index, packet, parent)

  -- Throttle No Msgs: 4 Byte Unsigned Fixed Width Integer
  index, throttle_no_msgs = dissect.throttle_no_msgs(buffer, index, packet, parent)

  -- Throttle Disconnect Limit: 4 Byte Unsigned Fixed Width Integer
  index, throttle_disconnect_limit = dissect.throttle_disconnect_limit(buffer, index, packet, parent)

  return index
end

-- Dissect: Throttle Update Notification
dissect.throttle_update_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.throttle_update_notification then
    local length = size_of.throttle_update_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.throttle_update_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.throttle_update_notification, range, display)
  end

  return dissect.throttle_update_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Tm Trading Session Status Broadcast
size_of.tm_trading_session_status_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.trad_ses_event

  index = index + size_of.pad_7

  return index
end

-- Display: Tm Trading Session Status Broadcast
display.tm_trading_session_status_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tm Trading Session Status Broadcast
dissect.tm_trading_session_status_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_event = dissect.trad_ses_event(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Tm Trading Session Status Broadcast
dissect.tm_trading_session_status_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tm_trading_session_status_broadcast then
    local length = size_of.tm_trading_session_status_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tm_trading_session_status_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.tm_trading_session_status_broadcast, range, display)
  end

  return dissect.tm_trading_session_status_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Tes Trading Session Status Broadcast
size_of.tes_trading_session_status_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.trade_date

  index = index + size_of.trad_ses_event

  index = index + size_of.pad_3

  return index
end

-- Display: Tes Trading Session Status Broadcast
display.tes_trading_session_status_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Trading Session Status Broadcast
dissect.tes_trading_session_status_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_event = dissect.trad_ses_event(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Tes Trading Session Status Broadcast
dissect.tes_trading_session_status_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tes_trading_session_status_broadcast then
    local length = size_of.tes_trading_session_status_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_trading_session_status_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.tes_trading_session_status_broadcast, range, display)
  end

  return dissect.tes_trading_session_status_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Trade Publish Indicator
size_of.trade_publish_indicator = 1

-- Display: Trade Publish Indicator
display.trade_publish_indicator = function(value)
  if value == 2 then
    return "Trade Publish Indicator: Deferred Publication (2)"
  end
  if value == 3 then
    return "Trade Publish Indicator: Published (3)"
  end

  return "Trade Publish Indicator: Unknown("..value..")"
end

-- Dissect: Trade Publish Indicator
dissect.trade_publish_indicator = function(buffer, offset, packet, parent)
  local length = size_of.trade_publish_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_publish_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_publish_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trd Type
size_of.trd_type = 2

-- Display: Trd Type
display.trd_type = function(value)
  if value == 54 then
    return "Trd Type: Otc (54)"
  end
  if value == 1005 then
    return "Trd Type: Lis (1005)"
  end
  if value == 1006 then
    return "Trd Type: Enlight (1006)"
  end

  return "Trd Type: Unknown("..value..")"
end

-- Dissect: Trd Type
dissect.trd_type = function(buffer, offset, packet, parent)
  local length = size_of.trd_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trd_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trd_type, range, value, display)

  return offset + length, value
end

-- Size: Srqs Related Trade Id
size_of.srqs_related_trade_id = 4

-- Display: Srqs Related Trade Id
display.srqs_related_trade_id = function(value)
  return "Srqs Related Trade Id: "..value
end

-- Dissect: Srqs Related Trade Id
dissect.srqs_related_trade_id = function(buffer, offset, packet, parent)
  local length = size_of.srqs_related_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.srqs_related_trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.srqs_related_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Package Id
size_of.package_id = 4

-- Display: Package Id
display.package_id = function(value)
  return "Package Id: "..value
end

-- Dissect: Package Id
dissect.package_id = function(buffer, offset, packet, parent)
  local length = size_of.package_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.package_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.package_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Trade Broadcast
size_of.tes_trade_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.last_qty

  index = index + size_of.transact_time

  index = index + size_of.settl_curr_amt

  index = index + size_of.side_gross_trade_amt

  index = index + size_of.settl_curr_fx_rate

  index = index + size_of.accrued_interes_amt

  index = index + size_of.coupon_rate

  index = index + size_of.root_party_id_client_id

  index = index + size_of.executing_trader

  index = index + size_of.root_party_id_investment_decision_maker

  index = index + size_of.package_id

  index = index + size_of.market_segment_id

  index = index + size_of.trade_id

  index = index + size_of.trade_date

  index = index + size_of.side_trade_id

  index = index + size_of.root_party_id_session_id

  index = index + size_of.root_party_id_settlement_unit

  index = index + size_of.root_party_id_contra_unit

  index = index + size_of.root_party_id_contra_settlement_unit

  index = index + size_of.orig_trade_id

  index = index + size_of.root_party_id_executing_unit

  index = index + size_of.root_party_id_executing_trader

  index = index + size_of.root_party_id_clearing_unit

  index = index + size_of.settl_date

  index = index + size_of.num_days_interest

  index = index + size_of.negotiation_id

  index = index + size_of.srqs_related_trade_id

  index = index + size_of.trd_type

  index = index + size_of.last_mkt

  index = index + size_of.side

  index = index + size_of.trading_capacity

  index = index + size_of.trade_report_type

  index = index + size_of.transfer_reason

  index = index + size_of.trade_publish_indicator

  index = index + size_of.delivery_type

  index = index + size_of.last_coupon_deviation_indicator

  index = index + size_of.refinancing_eligibility_indicator

  index = index + size_of.clearing_instruction

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.root_party_id_investment_decision_maker_qualifier

  index = index + size_of.order_origination

  index = index + size_of.account

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.settl_currency

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.root_party_clearing_firm

  index = index + size_of.root_party_executing_firm_kv_number

  index = index + size_of.root_party_settlement_account

  index = index + size_of.root_party_settlement_location

  index = index + size_of.root_party_settlement_firm

  index = index + size_of.root_party_contra_firm

  index = index + size_of.root_party_contra_settlement_firm

  index = index + size_of.root_party_contra_firm_kv_number

  index = index + size_of.root_party_contra_settlement_account

  index = index + size_of.root_party_contra_settlement_location

  index = index + size_of.root_party_id_execution_venue

  index = index + size_of.regulatory_trade_id

  index = index + size_of.pad_3

  return index
end

-- Display: Tes Trade Broadcast
display.tes_trade_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Trade Broadcast
dissect.tes_trade_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Settl Curr Amt: 8 Byte Unsigned Fixed Width Integer
  index, settl_curr_amt = dissect.settl_curr_amt(buffer, index, packet, parent)

  -- Side Gross Trade Amt: 8 Byte Unsigned Fixed Width Integer
  index, side_gross_trade_amt = dissect.side_gross_trade_amt(buffer, index, packet, parent)

  -- Settl Curr Fx Rate: 8 Byte Unsigned Fixed Width Integer
  index, settl_curr_fx_rate = dissect.settl_curr_fx_rate(buffer, index, packet, parent)

  -- Accrued Interes Amt: 8 Byte Unsigned Fixed Width Integer
  index, accrued_interes_amt = dissect.accrued_interes_amt(buffer, index, packet, parent)

  -- Coupon Rate: 8 Byte Unsigned Fixed Width Integer
  index, coupon_rate = dissect.coupon_rate(buffer, index, packet, parent)

  -- Root Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, root_party_id_client_id = dissect.root_party_id_client_id(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Root Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, root_party_id_investment_decision_maker = dissect.root_party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = dissect.side_trade_id(buffer, index, packet, parent)

  -- Root Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_session_id = dissect.root_party_id_session_id(buffer, index, packet, parent)

  -- Root Party Id Settlement Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_settlement_unit = dissect.root_party_id_settlement_unit(buffer, index, packet, parent)

  -- Root Party Id Contra Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_contra_unit = dissect.root_party_id_contra_unit(buffer, index, packet, parent)

  -- Root Party Id Contra Settlement Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_contra_settlement_unit = dissect.root_party_id_contra_settlement_unit(buffer, index, packet, parent)

  -- Orig Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, orig_trade_id = dissect.orig_trade_id(buffer, index, packet, parent)

  -- Root Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_executing_unit = dissect.root_party_id_executing_unit(buffer, index, packet, parent)

  -- Root Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_executing_trader = dissect.root_party_id_executing_trader(buffer, index, packet, parent)

  -- Root Party Id Clearing Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_clearing_unit = dissect.root_party_id_clearing_unit(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Num Days Interest: 4 Byte Unsigned Fixed Width Integer
  index, num_days_interest = dissect.num_days_interest(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Srqs Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, srqs_related_trade_id = dissect.srqs_related_trade_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Last Mkt: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, last_mkt = dissect.last_mkt(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Transfer Reason: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transfer_reason = dissect.transfer_reason(buffer, index, packet, parent)

  -- Trade Publish Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_publish_indicator = dissect.trade_publish_indicator(buffer, index, packet, parent)

  -- Delivery Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, delivery_type = dissect.delivery_type(buffer, index, packet, parent)

  -- Last Coupon Deviation Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, last_coupon_deviation_indicator = dissect.last_coupon_deviation_indicator(buffer, index, packet, parent)

  -- Refinancing Eligibility Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, refinancing_eligibility_indicator = dissect.refinancing_eligibility_indicator(buffer, index, packet, parent)

  -- Clearing Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, clearing_instruction = dissect.clearing_instruction(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Root Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, root_party_id_investment_decision_maker_qualifier = dissect.root_party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Order Origination: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_origination = dissect.order_origination(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = dissect.settl_currency(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String
  index, root_party_executing_firm = dissect.root_party_executing_firm(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String
  index, root_party_executing_trader = dissect.root_party_executing_trader(buffer, index, packet, parent)

  -- Root Party Clearing Firm: 5 Byte Ascii String
  index, root_party_clearing_firm = dissect.root_party_clearing_firm(buffer, index, packet, parent)

  -- Root Party Executing Firm Kv Number: 4 Byte Ascii String
  index, root_party_executing_firm_kv_number = dissect.root_party_executing_firm_kv_number(buffer, index, packet, parent)

  -- Root Party Settlement Account: 35 Byte Ascii String
  index, root_party_settlement_account = dissect.root_party_settlement_account(buffer, index, packet, parent)

  -- Root Party Settlement Location: 3 Byte Ascii String Enum with 18 values
  index, root_party_settlement_location = dissect.root_party_settlement_location(buffer, index, packet, parent)

  -- Root Party Settlement Firm: 5 Byte Ascii String
  index, root_party_settlement_firm = dissect.root_party_settlement_firm(buffer, index, packet, parent)

  -- Root Party Contra Firm: 5 Byte Ascii String
  index, root_party_contra_firm = dissect.root_party_contra_firm(buffer, index, packet, parent)

  -- Root Party Contra Settlement Firm: 5 Byte Ascii String
  index, root_party_contra_settlement_firm = dissect.root_party_contra_settlement_firm(buffer, index, packet, parent)

  -- Root Party Contra Firm Kv Number: 4 Byte Ascii String
  index, root_party_contra_firm_kv_number = dissect.root_party_contra_firm_kv_number(buffer, index, packet, parent)

  -- Root Party Contra Settlement Account: 35 Byte Ascii String
  index, root_party_contra_settlement_account = dissect.root_party_contra_settlement_account(buffer, index, packet, parent)

  -- Root Party Contra Settlement Location: 3 Byte Ascii String Enum with 18 values
  index, root_party_contra_settlement_location = dissect.root_party_contra_settlement_location(buffer, index, packet, parent)

  -- Root Party Id Execution Venue: 4 Byte Ascii String
  index, root_party_id_execution_venue = dissect.root_party_id_execution_venue(buffer, index, packet, parent)

  -- Regulatory Trade Id: 52 Byte Ascii String
  index, regulatory_trade_id = dissect.regulatory_trade_id(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Tes Trade Broadcast
dissect.tes_trade_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tes_trade_broadcast then
    local length = size_of.tes_trade_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_trade_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.tes_trade_broadcast, range, display)
  end

  return dissect.tes_trade_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Trade Report Id
size_of.trade_report_id = 20

-- Display: Trade Report Id
display.trade_report_id = function(value)
  return "Trade Report Id: "..value
end

-- Dissect: Trade Report Id
dissect.trade_report_id = function(buffer, offset, packet, parent)
  local length = size_of.trade_report_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_report_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_report_id, range, value, display)

  return offset + length, value
end

-- Size: Tes Exec Id
size_of.tes_exec_id = 4

-- Display: Tes Exec Id
display.tes_exec_id = function(value)
  return "Tes Exec Id: "..value
end

-- Dissect: Tes Exec Id
dissect.tes_exec_id = function(buffer, offset, packet, parent)
  local length = size_of.tes_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tes_exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.tes_exec_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Response
size_of.tes_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  index = index + size_of.tes_exec_id

  index = index + size_of.trade_report_id

  return index
end

-- Display: Tes Response
display.tes_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Response
dissect.tes_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Tes Response
dissect.tes_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tes_response then
    local length = size_of.tes_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.tes_response, range, display)
  end

  return dissect.tes_response_fields(buffer, offset, packet, parent)
end

-- Size: Alloc Id
size_of.alloc_id = 4

-- Display: Alloc Id
display.alloc_id = function(value)
  return "Alloc Id: "..value
end

-- Dissect: Alloc Id
dissect.alloc_id = function(buffer, offset, packet, parent)
  local length = size_of.alloc_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.alloc_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.alloc_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Execution Broadcast
size_of.tes_execution_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.alloc_id

  index = index + size_of.trd_type

  index = index + size_of.trade_report_type

  index = index + size_of.side

  index = index + size_of.trd_rpt_status

  index = index + size_of.message_event_source

  index = index + size_of.pad_2

  return index
end

-- Display: Tes Execution Broadcast
display.tes_execution_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Execution Broadcast
dissect.tes_execution_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Alloc Id: 4 Byte Unsigned Fixed Width Integer
  index, alloc_id = dissect.alloc_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Trd Rpt Status: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trd_rpt_status = dissect.trd_rpt_status(buffer, index, packet, parent)

  -- Message Event Source: 1 Byte Ascii String Enum with 4 values
  index, message_event_source = dissect.message_event_source(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Tes Execution Broadcast
dissect.tes_execution_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tes_execution_broadcast then
    local length = size_of.tes_execution_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_execution_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.tes_execution_broadcast, range, display)
  end

  return dissect.tes_execution_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Delete Reason
size_of.delete_reason = 1

-- Display: Delete Reason
display.delete_reason = function(value)
  if value == 100 then
    return "Delete Reason: Nospecialreason (100)"
  end
  if value == 101 then
    return "Delete Reason: Tas Change (101)"
  end
  if value == 102 then
    return "Delete Reason: Intraday Expiration (102)"
  end
  if value == 103 then
    return "Delete Reason: Risk Event (103)"
  end
  if value == 104 then
    return "Delete Reason: Stop Trading (104)"
  end

  return "Delete Reason: Unknown("..value..")"
end

-- Dissect: Delete Reason
dissect.delete_reason = function(buffer, offset, packet, parent)
  local length = size_of.delete_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.delete_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.delete_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Delete Broadcast
size_of.tes_delete_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.trd_type

  index = index + size_of.delete_reason

  index = index + size_of.trade_report_type

  index = index + size_of.trd_rpt_status

  index = index + size_of.message_event_source

  index = index + size_of.trade_report_id

  index = index + size_of.pad_2

  return index
end

-- Display: Tes Delete Broadcast
display.tes_delete_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Delete Broadcast
dissect.tes_delete_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Delete Reason: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, delete_reason = dissect.delete_reason(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Trd Rpt Status: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trd_rpt_status = dissect.trd_rpt_status(buffer, index, packet, parent)

  -- Message Event Source: 1 Byte Ascii String Enum with 4 values
  index, message_event_source = dissect.message_event_source(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Tes Delete Broadcast
dissect.tes_delete_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tes_delete_broadcast then
    local length = size_of.tes_delete_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_delete_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.tes_delete_broadcast, range, display)
  end

  return dissect.tes_delete_broadcast_fields(buffer, offset, packet, parent)
end

-- Display: Var Text
display.var_text = function(value)
  return "Var Text: "..value
end

-- Dissect runtime sized field: Var Text
dissect.var_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.var_text(value, buffer, offset, packet, parent, size)

  parent:add(eurex_cash_eti_t7_v9_1.fields.var_text, range, value, display)

  return offset + size
end

-- Size: Trade Alloc Status
size_of.trade_alloc_status = 1

-- Display: Trade Alloc Status
display.trade_alloc_status = function(value)
  if value == 1 then
    return "Trade Alloc Status: Pending (1)"
  end
  if value == 2 then
    return "Trade Alloc Status: Approved (2)"
  end
  if value == 3 then
    return "Trade Alloc Status: Auto Approved (3)"
  end
  if value == 4 then
    return "Trade Alloc Status: Uploaded (4)"
  end
  if value == 5 then
    return "Trade Alloc Status: Canceled (5)"
  end

  return "Trade Alloc Status: Unknown("..value..")"
end

-- Dissect: Trade Alloc Status
dissect.trade_alloc_status = function(buffer, offset, packet, parent)
  local length = size_of.trade_alloc_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_alloc_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_alloc_status, range, value, display)

  return offset + length, value
end

-- Size: Tes Enrichment Rule Id
size_of.tes_enrichment_rule_id = 4

-- Display: Tes Enrichment Rule Id
display.tes_enrichment_rule_id = function(value)
  return "Tes Enrichment Rule Id: "..value
end

-- Dissect: Tes Enrichment Rule Id
dissect.tes_enrichment_rule_id = function(buffer, offset, packet, parent)
  local length = size_of.tes_enrichment_rule_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tes_enrichment_rule_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.tes_enrichment_rule_id, range, value, display)

  return offset + length, value
end

-- Size: Individual Alloc Id
size_of.individual_alloc_id = 4

-- Display: Individual Alloc Id
display.individual_alloc_id = function(value)
  return "Individual Alloc Id: "..value
end

-- Dissect: Individual Alloc Id
dissect.individual_alloc_id = function(buffer, offset, packet, parent)
  local length = size_of.individual_alloc_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.individual_alloc_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.individual_alloc_id, range, value, display)

  return offset + length, value
end

-- Size: Alloc Qty
size_of.alloc_qty = 8

-- Display: Alloc Qty
display.alloc_qty = function(value)
  return "Alloc Qty: "..value:tonumber()/10000
end

-- Dissect: Alloc Qty
dissect.alloc_qty = function(buffer, offset, packet, parent)
  local length = size_of.alloc_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.alloc_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.alloc_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Side Alloc Grp Bc Comp
size_of.side_alloc_grp_bc_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.alloc_qty

  index = index + size_of.individual_alloc_id

  index = index + size_of.tes_enrichment_rule_id

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.side

  index = index + size_of.trade_alloc_status

  index = index + size_of.pad_3

  return index
end

-- Display: Side Alloc Grp Bc Comp
display.side_alloc_grp_bc_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Side Alloc Grp Bc Comp
dissect.side_alloc_grp_bc_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Alloc Qty: 8 Byte Unsigned Fixed Width Integer
  index, alloc_qty = dissect.alloc_qty(buffer, index, packet, parent)

  -- Individual Alloc Id: 4 Byte Unsigned Fixed Width Integer
  index, individual_alloc_id = dissect.individual_alloc_id(buffer, index, packet, parent)

  -- Tes Enrichment Rule Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_enrichment_rule_id = dissect.tes_enrichment_rule_id(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Trade Alloc Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trade_alloc_status = dissect.trade_alloc_status(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Side Alloc Grp Bc Comp
dissect.side_alloc_grp_bc_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.side_alloc_grp_bc_comp then
    local length = size_of.side_alloc_grp_bc_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.side_alloc_grp_bc_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.side_alloc_grp_bc_comp, range, display)
  end

  return dissect.side_alloc_grp_bc_comp_fields(buffer, offset, packet, parent)
end

-- Size: Trade Report Text
size_of.trade_report_text = 20

-- Display: Trade Report Text
display.trade_report_text = function(value)
  return "Trade Report Text: "..value
end

-- Dissect: Trade Report Text
dissect.trade_report_text = function(buffer, offset, packet, parent)
  local length = size_of.trade_report_text
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_report_text(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_report_text, range, value, display)

  return offset + length, value
end

-- Size: No Side Allocs
size_of.no_side_allocs = 1

-- Display: No Side Allocs
display.no_side_allocs = function(value)
  return "No Side Allocs: "..value
end

-- Dissect: No Side Allocs
dissect.no_side_allocs = function(buffer, offset, packet, parent)
  local length = size_of.no_side_allocs
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_side_allocs(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_side_allocs, range, value, display)

  return offset + length, value
end

-- Size: Var Text Len
size_of.var_text_len = 2

-- Display: Var Text Len
display.var_text_len = function(value)
  return "Var Text Len: "..value
end

-- Dissect: Var Text Len
dissect.var_text_len = function(buffer, offset, packet, parent)
  local length = size_of.var_text_len
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.var_text_len(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.var_text_len, range, value, display)

  return offset + length, value
end

-- Size: Auto Approval Rule Id
size_of.auto_approval_rule_id = 4

-- Display: Auto Approval Rule Id
display.auto_approval_rule_id = function(value)
  return "Auto Approval Rule Id: "..value
end

-- Dissect: Auto Approval Rule Id
dissect.auto_approval_rule_id = function(buffer, offset, packet, parent)
  local length = size_of.auto_approval_rule_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.auto_approval_rule_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.auto_approval_rule_id, range, value, display)

  return offset + length, value
end

-- Size: Trans Bkd Time
size_of.trans_bkd_time = 8

-- Display: Trans Bkd Time
display.trans_bkd_time = function(value)
  return "Trans Bkd Time: "..value
end

-- Dissect: Trans Bkd Time
dissect.trans_bkd_time = function(buffer, offset, packet, parent)
  local length = size_of.trans_bkd_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trans_bkd_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trans_bkd_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Broadcast
size_of.tes_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.transact_time

  index = index + size_of.trans_bkd_time

  index = index + size_of.settl_curr_fx_rate

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.settl_date

  index = index + size_of.auto_approval_rule_id

  index = index + size_of.trd_type

  index = index + size_of.var_text_len

  index = index + size_of.trade_report_type

  index = index + size_of.trd_rpt_status

  index = index + size_of.no_side_allocs

  index = index + size_of.message_event_source

  index = index + size_of.trade_report_text

  index = index + size_of.trade_report_id

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.pad_1

  -- Calculate field size from count
  local side_alloc_grp_bc_comp_count = buffer(offset + index - 54, 1):le_uint()
  index = index + side_alloc_grp_bc_comp_count * 32

  -- Parse runtime size of: Var Text
  index = index + buffer(offset + index - 90, 2):le_uint()

  return index
end

-- Display: Tes Broadcast
display.tes_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Broadcast
dissect.tes_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Settl Curr Fx Rate: 8 Byte Unsigned Fixed Width Integer
  index, settl_curr_fx_rate = dissect.settl_curr_fx_rate(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Auto Approval Rule Id: 4 Byte Unsigned Fixed Width Integer
  index, auto_approval_rule_id = dissect.auto_approval_rule_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = dissect.var_text_len(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Trd Rpt Status: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trd_rpt_status = dissect.trd_rpt_status(buffer, index, packet, parent)

  -- No Side Allocs: 1 Byte Unsigned Fixed Width Integer
  index, no_side_allocs = dissect.no_side_allocs(buffer, index, packet, parent)

  -- Message Event Source: 1 Byte Ascii String Enum with 4 values
  index, message_event_source = dissect.message_event_source(buffer, index, packet, parent)

  -- Trade Report Text: 20 Byte Ascii String
  index, trade_report_text = dissect.trade_report_text(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String
  index, root_party_executing_firm = dissect.root_party_executing_firm(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String
  index, root_party_executing_trader = dissect.root_party_executing_trader(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Side Alloc Grp Bc Comp: Struct of 8 fields
  for i = 1, no_side_allocs do
    index = dissect.side_alloc_grp_bc_comp(buffer, index, packet, parent)
  end

  -- Var Text: 2000 Byte Ascii String
  index = dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Tes Broadcast
dissect.tes_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.tes_broadcast then
    local length = size_of.tes_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.tes_broadcast, range, display)
  end

  return dissect.tes_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Party Id Entering Firm
size_of.party_id_entering_firm = 1

-- Display: Party Id Entering Firm
display.party_id_entering_firm = function(value)
  if value == 1 then
    return "Party Id Entering Firm: Participant (1)"
  end
  if value == 2 then
    return "Party Id Entering Firm: Market Supervision (2)"
  end

  return "Party Id Entering Firm: Unknown("..value..")"
end

-- Dissect: Party Id Entering Firm
dissect.party_id_entering_firm = function(buffer, offset, packet, parent)
  local length = size_of.party_id_entering_firm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_id_entering_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_id_entering_firm, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Approve Broadcast
size_of.tes_approve_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.alloc_qty

  index = index + size_of.transact_time

  index = index + size_of.trans_bkd_time

  index = index + size_of.settl_curr_fx_rate

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.alloc_id

  index = index + size_of.settl_date

  index = index + size_of.tes_enrichment_rule_id

  index = index + size_of.auto_approval_rule_id

  index = index + size_of.trd_type

  index = index + size_of.var_text_len

  index = index + size_of.side

  index = index + size_of.value_check_type_value

  index = index + size_of.value_check_type_quantity

  index = index + size_of.trade_report_type

  index = index + size_of.trd_rpt_status

  index = index + size_of.trading_capacity

  index = index + size_of.trade_alloc_status

  index = index + size_of.message_event_source

  index = index + size_of.trade_report_id

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_id_entering_firm

  index = index + size_of.party_entering_trader

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.pad_7

  -- Parse runtime size of: Var Text
  index = index + buffer(offset + index - 106, 2):le_uint()

  return index
end

-- Display: Tes Approve Broadcast
display.tes_approve_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Approve Broadcast
dissect.tes_approve_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Alloc Qty: 8 Byte Unsigned Fixed Width Integer
  index, alloc_qty = dissect.alloc_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Settl Curr Fx Rate: 8 Byte Unsigned Fixed Width Integer
  index, settl_curr_fx_rate = dissect.settl_curr_fx_rate(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Alloc Id: 4 Byte Unsigned Fixed Width Integer
  index, alloc_id = dissect.alloc_id(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Tes Enrichment Rule Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_enrichment_rule_id = dissect.tes_enrichment_rule_id(buffer, index, packet, parent)

  -- Auto Approval Rule Id: 4 Byte Unsigned Fixed Width Integer
  index, auto_approval_rule_id = dissect.auto_approval_rule_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = dissect.var_text_len(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Trd Rpt Status: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trd_rpt_status = dissect.trd_rpt_status(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Trade Alloc Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trade_alloc_status = dissect.trade_alloc_status(buffer, index, packet, parent)

  -- Message Event Source: 1 Byte Ascii String Enum with 4 values
  index, message_event_source = dissect.message_event_source(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String
  index, root_party_executing_firm = dissect.root_party_executing_firm(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String
  index, root_party_executing_trader = dissect.root_party_executing_trader(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Tes Approve Broadcast
dissect.tes_approve_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.tes_approve_broadcast then
    local length = size_of.tes_approve_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_approve_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.tes_approve_broadcast, range, display)
  end

  return dissect.tes_approve_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Subscribe Response
size_of.subscribe_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  index = index + size_of.appl_sub_id

  index = index + size_of.pad_4

  return index
end

-- Display: Subscribe Response
display.subscribe_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Subscribe Response
dissect.subscribe_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, appl_sub_id = dissect.appl_sub_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscribe Response
dissect.subscribe_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.subscribe_response then
    local length = size_of.subscribe_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.subscribe_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.subscribe_response, range, display)
  end

  return dissect.subscribe_response_fields(buffer, offset, packet, parent)
end

-- Size: Ref Appl Id
size_of.ref_appl_id = 1

-- Display: Ref Appl Id
display.ref_appl_id = function(value)
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
  if value == 7 then
    return "Ref Appl Id: Tes Maintenance (7)"
  end
  if value == 8 then
    return "Ref Appl Id: Tes Trade (8)"
  end
  if value == 9 then
    return "Ref Appl Id: Srqs Maintenance (9)"
  end
  if value == 10 then
    return "Ref Appl Id: Service Availability Market (10)"
  end
  if value == 11 then
    return "Ref Appl Id: Specialist Data (11)"
  end

  return "Ref Appl Id: Unknown("..value..")"
end

-- Dissect: Ref Appl Id
dissect.ref_appl_id = function(buffer, offset, packet, parent)
  local length = size_of.ref_appl_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ref_appl_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.ref_appl_id, range, value, display)

  return offset + length, value
end

-- Size: Subscription Scope
size_of.subscription_scope = 4

-- Display: Subscription Scope
display.subscription_scope = function(value)
  return "Subscription Scope: "..value
end

-- Dissect: Subscription Scope
dissect.subscription_scope = function(buffer, offset, packet, parent)
  local length = size_of.subscription_scope
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.subscription_scope(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.subscription_scope, range, value, display)

  return offset + length, value
end

-- Calculate size of: Subscribe Request
size_of.subscribe_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.subscription_scope

  index = index + size_of.ref_appl_id

  index = index + size_of.pad_3

  return index
end

-- Display: Subscribe Request
display.subscribe_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Subscribe Request
dissect.subscribe_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer
  index, subscription_scope = dissect.subscription_scope(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, ref_appl_id = dissect.ref_appl_id(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscribe Request
dissect.subscribe_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.subscribe_request then
    local length = size_of.subscribe_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.subscribe_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.subscribe_request, range, display)
  end

  return dissect.subscribe_request_fields(buffer, offset, packet, parent)
end

-- Size: Security Status Report Id
size_of.security_status_report_id = 8

-- Display: Security Status Report Id
display.security_status_report_id = function(value)
  return "Security Status Report Id: "..value
end

-- Dissect: Security Status Report Id
dissect.security_status_report_id = function(buffer, offset, packet, parent)
  local length = size_of.security_status_report_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.security_status_report_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.security_status_report_id, range, value, display)

  return offset + length, value
end

-- Size: Response In
size_of.response_in = 8

-- Display: Response In
display.response_in = function(value)
  return "Response In: "..value
end

-- Dissect: Response In
dissect.response_in = function(buffer, offset, packet, parent)
  local length = size_of.response_in
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.response_in(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.response_in, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Time In
size_of.trd_reg_ts_time_in = 8

-- Display: Trd Reg Ts Time In
display.trd_reg_ts_time_in = function(value)
  return "Trd Reg Ts Time In: "..value
end

-- Dissect: Trd Reg Ts Time In
dissect.trd_reg_ts_time_in = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_ts_time_in
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_time_in(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trd_reg_ts_time_in, range, value, display)

  return offset + length, value
end

-- Calculate size of: Nr Response Header Me Comp
size_of.nr_response_header_me_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.request_time

  index = index + size_of.trd_reg_ts_time_in

  index = index + size_of.trd_reg_ts_time_out

  index = index + size_of.response_in

  index = index + size_of.sending_time

  index = index + size_of.msg_seq_num

  index = index + size_of.last_fragment

  index = index + size_of.pad_3

  return index
end

-- Display: Nr Response Header Me Comp
display.nr_response_header_me_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Nr Response Header Me Comp
dissect.nr_response_header_me_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = dissect.request_time(buffer, index, packet, parent)

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_in = dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_out = dissect.trd_reg_ts_time_out(buffer, index, packet, parent)

  -- Response In: 8 Byte Unsigned Fixed Width Integer
  index, response_in = dissect.response_in(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Nr Response Header Me Comp
dissect.nr_response_header_me_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.nr_response_header_me_comp then
    local length = size_of.nr_response_header_me_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.nr_response_header_me_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.nr_response_header_me_comp, range, display)
  end

  return dissect.nr_response_header_me_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Specialist Security State Change Response
size_of.specialist_security_state_change_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.security_status_report_id

  return index
end

-- Display: Specialist Security State Change Response
display.specialist_security_state_change_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Specialist Security State Change Response
dissect.specialist_security_state_change_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Security Status Report Id: 8 Byte Unsigned Fixed Width Integer
  index, security_status_report_id = dissect.security_status_report_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Specialist Security State Change Response
dissect.specialist_security_state_change_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.specialist_security_state_change_response then
    local length = size_of.specialist_security_state_change_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.specialist_security_state_change_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.specialist_security_state_change_response, range, display)
  end

  return dissect.specialist_security_state_change_response_fields(buffer, offset, packet, parent)
end

-- Size: Event Type
size_of.event_type = 1

-- Display: Event Type
display.event_type = function(value)
  if value == 26 then
    return "Event Type: Redemption (26)"
  end
  if value == 100 then
    return "Event Type: Delisting (100)"
  end
  if value == 104 then
    return "Event Type: Instrument Assignment Added (104)"
  end
  if value == 105 then
    return "Event Type: Instrument Assignment Removed (105)"
  end
  if value == 106 then
    return "Event Type: Closed (106)"
  end
  if value == 107 then
    return "Event Type: Restricted (107)"
  end
  if value == 108 then
    return "Event Type: Book (108)"
  end
  if value == 109 then
    return "Event Type: Continuous (109)"
  end
  if value == 110 then
    return "Event Type: Auction (110)"
  end
  if value == 111 then
    return "Event Type: Freeze (111)"
  end
  if value == 112 then
    return "Event Type: Cancel Freeze (112)"
  end
  if value == 113 then
    return "Event Type: Pre Call (113)"
  end
  if value == 114 then
    return "Event Type: Endof Restatement (114)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
dissect.event_type = function(buffer, offset, packet, parent)
  local length = size_of.event_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.event_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.event_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Specialist Security State Change Request
size_of.specialist_security_state_change_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.market_segment_id

  index = index + size_of.event_type

  index = index + size_of.pad_3

  return index
end

-- Display: Specialist Security State Change Request
display.specialist_security_state_change_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Specialist Security State Change Request
dissect.specialist_security_state_change_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, event_type = dissect.event_type(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Specialist Security State Change Request
dissect.specialist_security_state_change_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.specialist_security_state_change_request then
    local length = size_of.specialist_security_state_change_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.specialist_security_state_change_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.specialist_security_state_change_request, range, display)
  end

  return dissect.specialist_security_state_change_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Specialist Rfq Reply Response
size_of.specialist_rfq_reply_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.transact_time

  return index
end

-- Display: Specialist Rfq Reply Response
display.specialist_rfq_reply_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Specialist Rfq Reply Response
dissect.specialist_rfq_reply_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Specialist Rfq Reply Response
dissect.specialist_rfq_reply_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.specialist_rfq_reply_response then
    local length = size_of.specialist_rfq_reply_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.specialist_rfq_reply_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.specialist_rfq_reply_response, range, display)
  end

  return dissect.specialist_rfq_reply_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Specialist Rfq Reply Request
size_of.specialist_rfq_reply_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.quote_id

  index = index + size_of.bid_px

  index = index + size_of.bid_size

  index = index + size_of.offer_px

  index = index + size_of.offer_size

  index = index + size_of.market_segment_id

  index = index + size_of.party_executing_firm

  index = index + size_of.pad_7

  return index
end

-- Display: Specialist Rfq Reply Request
display.specialist_rfq_reply_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Specialist Rfq Reply Request
dissect.specialist_rfq_reply_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Specialist Rfq Reply Request
dissect.specialist_rfq_reply_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.specialist_rfq_reply_request then
    local length = size_of.specialist_rfq_reply_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.specialist_rfq_reply_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.specialist_rfq_reply_request, range, display)
  end

  return dissect.specialist_rfq_reply_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Specialist Rfq Reply Notification
size_of.specialist_rfq_reply_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.transact_time

  index = index + size_of.quote_id

  index = index + size_of.bid_px

  index = index + size_of.bid_size

  index = index + size_of.offer_px

  index = index + size_of.offer_size

  index = index + size_of.market_segment_id

  index = index + size_of.party_executing_firm

  index = index + size_of.pad_7

  return index
end

-- Display: Specialist Rfq Reply Notification
display.specialist_rfq_reply_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Specialist Rfq Reply Notification
dissect.specialist_rfq_reply_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Specialist Rfq Reply Notification
dissect.specialist_rfq_reply_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.specialist_rfq_reply_notification then
    local length = size_of.specialist_rfq_reply_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.specialist_rfq_reply_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.specialist_rfq_reply_notification, range, display)
  end

  return dissect.specialist_rfq_reply_notification_fields(buffer, offset, packet, parent)
end

-- Size: Quote Request Reject Reason
size_of.quote_request_reject_reason = 1

-- Display: Quote Request Reject Reason
display.quote_request_reject_reason = function(value)
  if value == 2 then
    return "Quote Request Reject Reason: Exchangeclosed (2)"
  end
  if value == 99 then
    return "Quote Request Reject Reason: Other (99)"
  end
  if value == 100 then
    return "Quote Request Reject Reason: Requestedsizetoosmall (100)"
  end
  if value == 101 then
    return "Quote Request Reject Reason: Requestedsizetoobig (101)"
  end
  if value == 102 then
    return "Quote Request Reject Reason: Novalidquotefromissuer (102)"
  end
  if value == 103 then
    return "Quote Request Reject Reason: Soldout (103)"
  end
  if value == 104 then
    return "Quote Request Reject Reason: Tradingrestriction (104)"
  end
  if value == 105 then
    return "Quote Request Reject Reason: Pendingrequesttimedout (105)"
  end

  return "Quote Request Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Request Reject Reason
dissect.quote_request_reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.quote_request_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_request_reject_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_request_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Specialist Rfq Reject Request
size_of.specialist_rfq_reject_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.quote_id

  index = index + size_of.market_segment_id

  index = index + size_of.quote_request_reject_reason

  index = index + size_of.party_executing_firm

  index = index + size_of.pad_6

  return index
end

-- Display: Specialist Rfq Reject Request
display.specialist_rfq_reject_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Specialist Rfq Reject Request
dissect.specialist_rfq_reject_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Quote Request Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, quote_request_reject_reason = dissect.quote_request_reject_reason(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Specialist Rfq Reject Request
dissect.specialist_rfq_reject_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.specialist_rfq_reject_request then
    local length = size_of.specialist_rfq_reject_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.specialist_rfq_reject_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.specialist_rfq_reject_request, range, display)
  end

  return dissect.specialist_rfq_reject_request_fields(buffer, offset, packet, parent)
end

-- Size: Fill Liquidity Ind
size_of.fill_liquidity_ind = 1

-- Display: Fill Liquidity Ind
display.fill_liquidity_ind = function(value)
  if value == 1 then
    return "Fill Liquidity Ind: Added Liquidity (1)"
  end
  if value == 2 then
    return "Fill Liquidity Ind: Removed Liquidity (2)"
  end
  if value == 4 then
    return "Fill Liquidity Ind: Auction (4)"
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
dissect.fill_liquidity_ind = function(buffer, offset, packet, parent)
  local length = size_of.fill_liquidity_ind
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.fill_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.fill_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Size: Fill Exec Id
size_of.fill_exec_id = 4

-- Display: Fill Exec Id
display.fill_exec_id = function(value)
  return "Fill Exec Id: "..value
end

-- Dissect: Fill Exec Id
dissect.fill_exec_id = function(buffer, offset, packet, parent)
  local length = size_of.fill_exec_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.fill_exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.fill_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Fill Match Id
size_of.fill_match_id = 4

-- Display: Fill Match Id
display.fill_match_id = function(value)
  return "Fill Match Id: "..value
end

-- Dissect: Fill Match Id
dissect.fill_match_id = function(buffer, offset, packet, parent)
  local length = size_of.fill_match_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.fill_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.fill_match_id, range, value, display)

  return offset + length, value
end

-- Size: Fill Qty
size_of.fill_qty = 8

-- Display: Fill Qty
display.fill_qty = function(value)
  return "Fill Qty: "..value:tonumber()/10000
end

-- Dissect: Fill Qty
dissect.fill_qty = function(buffer, offset, packet, parent)
  local length = size_of.fill_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.fill_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Size: Fill Px
size_of.fill_px = 8

-- Display: Fill Px
display.fill_px = function(value)
  return "Fill Px: "..value:tonumber()/100000000
end

-- Dissect: Fill Px
dissect.fill_px = function(buffer, offset, packet, parent)
  local length = size_of.fill_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.fill_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.fill_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fills Grp Comp
size_of.fills_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.fill_px

  index = index + size_of.fill_qty

  index = index + size_of.fill_match_id

  index = index + size_of.fill_exec_id

  index = index + size_of.fill_liquidity_ind

  index = index + size_of.pad_7

  return index
end

-- Display: Fills Grp Comp
display.fills_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fills Grp Comp
dissect.fills_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Fill Px: 8 Byte Unsigned Fixed Width Integer
  index, fill_px = dissect.fill_px(buffer, index, packet, parent)

  -- Fill Qty: 8 Byte Unsigned Fixed Width Integer
  index, fill_qty = dissect.fill_qty(buffer, index, packet, parent)

  -- Fill Match Id: 4 Byte Unsigned Fixed Width Integer
  index, fill_match_id = dissect.fill_match_id(buffer, index, packet, parent)

  -- Fill Exec Id: 4 Byte Signed Fixed Width Integer
  index, fill_exec_id = dissect.fill_exec_id(buffer, index, packet, parent)

  -- Fill Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, fill_liquidity_ind = dissect.fill_liquidity_ind(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Grp Comp
dissect.fills_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fills_grp_comp then
    local length = size_of.fills_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.fills_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.fills_grp_comp, range, display)
  end

  return dissect.fills_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Party Entering Firm
size_of.party_entering_firm = 5

-- Display: Party Entering Firm
display.party_entering_firm = function(value)
  return "Party Entering Firm: "..value
end

-- Dissect: Party Entering Firm
dissect.party_entering_firm = function(buffer, offset, packet, parent)
  local length = size_of.party_entering_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_entering_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_entering_firm, range, value, display)

  return offset + length, value
end

-- Size: Triggered
size_of.triggered = 1

-- Display: Triggered
display.triggered = function(value)
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
dissect.triggered = function(buffer, offset, packet, parent)
  local length = size_of.triggered
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.triggered(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.triggered, range, value, display)

  return offset + length, value
end

-- Size: Appl Seq Indicator
size_of.appl_seq_indicator = 1

-- Display: Appl Seq Indicator
display.appl_seq_indicator = function(value)
  if value == 0 then
    return "Appl Seq Indicator: No Recovery Required (0)"
  end
  if value == 1 then
    return "Appl Seq Indicator: Recovery Required (1)"
  end

  return "Appl Seq Indicator: Unknown("..value..")"
end

-- Dissect: Appl Seq Indicator
dissect.appl_seq_indicator = function(buffer, offset, packet, parent)
  local length = size_of.appl_seq_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_seq_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_seq_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Sub Id
size_of.trading_session_sub_id = 1

-- Display: Trading Session Sub Id
display.trading_session_sub_id = function(value)
  if value == 2 then
    return "Trading Session Sub Id: Openingauction (2)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Closingauction (4)"
  end
  if value == 6 then
    return "Trading Session Sub Id: Intraday Auction (6)"
  end
  if value == 8 then
    return "Trading Session Sub Id: Any Auction (8)"
  end
  if value == 105 then
    return "Trading Session Sub Id: Special Auction (105)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
dissect.trading_session_sub_id = function(buffer, offset, packet, parent)
  local length = size_of.trading_session_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_session_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Exec Inst
size_of.exec_inst = 1

-- Display: Exec Inst
display.exec_inst = function(value)
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
dissect.exec_inst = function(buffer, offset, packet, parent)
  local length = size_of.exec_inst
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.exec_inst(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
size_of.time_in_force = 1

-- Display: Time In Force
display.time_in_force = function(value)
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
dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Order Event Type
size_of.order_event_type = 1

-- Display: Order Event Type
display.order_event_type = function(value)
  if value == 100 then
    return "Order Event Type: Pendingrequestsdiscarded (100)"
  end

  return "Order Event Type: Unknown("..value..")"
end

-- Dissect: Order Event Type
dissect.order_event_type = function(buffer, offset, packet, parent)
  local length = size_of.order_event_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_event_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.order_event_type, range, value, display)

  return offset + length, value
end

-- Size: No Fills
size_of.no_fills = 1

-- Display: No Fills
display.no_fills = function(value)
  return "No Fills: "..value
end

-- Dissect: No Fills
dissect.no_fills = function(buffer, offset, packet, parent)
  local length = size_of.no_fills
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_fills(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_fills, range, value, display)

  return offset + length, value
end

-- Size: Party Id Entering Trader
size_of.party_id_entering_trader = 4

-- Display: Party Id Entering Trader
display.party_id_entering_trader = function(value)
  return "Party Id Entering Trader: "..value
end

-- Dissect: Party Id Entering Trader
dissect.party_id_entering_trader = function(buffer, offset, packet, parent)
  local length = size_of.party_id_entering_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_id_entering_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_id_entering_trader, range, value, display)

  return offset + length, value
end

-- Size: Party Id Session Id
size_of.party_id_session_id = 4

-- Display: Party Id Session Id
display.party_id_session_id = function(value)
  return "Party Id Session Id: "..value
end

-- Dissect: Party Id Session Id
dissect.party_id_session_id = function(buffer, offset, packet, parent)
  local length = size_of.party_id_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_id_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_id_session_id, range, value, display)

  return offset + length, value
end

-- Size: Party Id Executing Unit
size_of.party_id_executing_unit = 4

-- Display: Party Id Executing Unit
display.party_id_executing_unit = function(value)
  return "Party Id Executing Unit: "..value
end

-- Dissect: Party Id Executing Unit
dissect.party_id_executing_unit = function(buffer, offset, packet, parent)
  local length = size_of.party_id_executing_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_id_executing_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Size: Expire Date
size_of.expire_date = 4

-- Display: Expire Date
display.expire_date = function(value)
  return "Expire Date: "..value
end

-- Dissect: Expire Date
dissect.expire_date = function(buffer, offset, packet, parent)
  local length = size_of.expire_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.expire_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Size: Cxl Qty
size_of.cxl_qty = 8

-- Display: Cxl Qty
display.cxl_qty = function(value)
  return "Cxl Qty: "..value:tonumber()/10000
end

-- Dissect: Cxl Qty
dissect.cxl_qty = function(buffer, offset, packet, parent)
  local length = size_of.cxl_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.cxl_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.cxl_qty, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Time Priority
size_of.trd_reg_ts_time_priority = 8

-- Display: Trd Reg Ts Time Priority
display.trd_reg_ts_time_priority = function(value)
  return "Trd Reg Ts Time Priority: "..value
end

-- Dissect: Trd Reg Ts Time Priority
dissect.trd_reg_ts_time_priority = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_ts_time_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_time_priority(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trd_reg_ts_time_priority, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Entry Time
size_of.trd_reg_ts_entry_time = 8

-- Display: Trd Reg Ts Entry Time
display.trd_reg_ts_entry_time = function(value)
  return "Trd Reg Ts Entry Time: "..value
end

-- Dissect: Trd Reg Ts Entry Time
dissect.trd_reg_ts_entry_time = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_ts_entry_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trd_reg_ts_entry_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trd_reg_ts_entry_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Specialist Order Book Notification
size_of.specialist_order_book_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.trd_reg_ts_entry_time

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.price

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.order_qty

  index = index + size_of.stop_px

  index = index + size_of.quote_id

  index = index + size_of.market_segment_id

  index = index + size_of.order_id_sfx

  index = index + size_of.expire_date

  index = index + size_of.party_id_executing_unit

  index = index + size_of.party_id_session_id

  index = index + size_of.party_id_executing_trader

  index = index + size_of.party_id_entering_trader

  index = index + size_of.no_fills

  index = index + size_of.pad_1

  index = index + size_of.exec_restatement_reason

  index = index + size_of.party_id_entering_firm

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.order_event_type

  index = index + size_of.match_type

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.trading_capacity

  index = index + size_of.time_in_force

  index = index + size_of.exec_inst

  index = index + size_of.trading_session_sub_id

  index = index + size_of.appl_seq_indicator

  index = index + size_of.triggered

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.party_entering_firm

  index = index + size_of.party_entering_trader

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.fix_cl_ord_id

  -- Calculate field size from count
  local fills_grp_comp_count = buffer(offset + index - 60, 1):le_uint()
  index = index + fills_grp_comp_count * 32

  return index
end

-- Display: Specialist Order Book Notification
display.specialist_order_book_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Specialist Order Book Notification
dissect.specialist_order_book_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_entry_time = dissect.trd_reg_ts_entry_time(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_unit = dissect.party_id_executing_unit(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = dissect.party_id_session_id(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_trader = dissect.party_id_executing_trader(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer
  index, no_fills = dissect.no_fills(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_event_type = dissect.order_event_type(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, match_type = dissect.match_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_session_sub_id = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Party Entering Firm: 5 Byte Ascii String
  index, party_entering_firm = dissect.party_entering_firm(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Fills Grp Comp: Struct of 6 fields
  for i = 1, no_fills do
    index = dissect.fills_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Specialist Order Book Notification
dissect.specialist_order_book_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.specialist_order_book_notification then
    local length = size_of.specialist_order_book_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.specialist_order_book_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.specialist_order_book_notification, range, display)
  end

  return dissect.specialist_order_book_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Specialist Instrument Event Notification
size_of.specialist_instrument_event_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.transact_time

  index = index + size_of.market_segment_id

  index = index + size_of.event_type

  index = index + size_of.pad_3

  return index
end

-- Display: Specialist Instrument Event Notification
display.specialist_instrument_event_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Specialist Instrument Event Notification
dissect.specialist_instrument_event_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, event_type = dissect.event_type(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Specialist Instrument Event Notification
dissect.specialist_instrument_event_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.specialist_instrument_event_notification then
    local length = size_of.specialist_instrument_event_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.specialist_instrument_event_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.specialist_instrument_event_notification, range, display)
  end

  return dissect.specialist_instrument_event_notification_fields(buffer, offset, packet, parent)
end

-- Size: Not Aff Orig Cl Ord Id
size_of.not_aff_orig_cl_ord_id = 8

-- Display: Not Aff Orig Cl Ord Id
display.not_aff_orig_cl_ord_id = function(value)
  return "Not Aff Orig Cl Ord Id: "..value
end

-- Dissect: Not Aff Orig Cl Ord Id
dissect.not_aff_orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = size_of.not_aff_orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.not_aff_orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.not_aff_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Not Affected Order Id
size_of.not_affected_order_id = 8

-- Display: Not Affected Order Id
display.not_affected_order_id = function(value)
  return "Not Affected Order Id: "..value
end

-- Dissect: Not Affected Order Id
dissect.not_affected_order_id = function(buffer, offset, packet, parent)
  local length = size_of.not_affected_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.not_affected_order_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.not_affected_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Not Affected Orders Grp Comp
size_of.not_affected_orders_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.not_affected_order_id

  index = index + size_of.not_aff_orig_cl_ord_id

  return index
end

-- Display: Not Affected Orders Grp Comp
display.not_affected_orders_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Affected Orders Grp Comp
dissect.not_affected_orders_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Not Affected Order Id: 8 Byte Unsigned Fixed Width Integer
  index, not_affected_order_id = dissect.not_affected_order_id(buffer, index, packet, parent)

  -- Not Aff Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, not_aff_orig_cl_ord_id = dissect.not_aff_orig_cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Affected Orders Grp Comp
dissect.not_affected_orders_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.not_affected_orders_grp_comp then
    local length = size_of.not_affected_orders_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.not_affected_orders_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.not_affected_orders_grp_comp, range, display)
  end

  return dissect.not_affected_orders_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Affected Orig Cl Ord Id
size_of.affected_orig_cl_ord_id = 8

-- Display: Affected Orig Cl Ord Id
display.affected_orig_cl_ord_id = function(value)
  return "Affected Orig Cl Ord Id: "..value
end

-- Dissect: Affected Orig Cl Ord Id
dissect.affected_orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = size_of.affected_orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.affected_orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.affected_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Affected Order Id
size_of.affected_order_id = 8

-- Display: Affected Order Id
display.affected_order_id = function(value)
  return "Affected Order Id: "..value
end

-- Dissect: Affected Order Id
dissect.affected_order_id = function(buffer, offset, packet, parent)
  local length = size_of.affected_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.affected_order_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.affected_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Affected Ord Grp Comp
size_of.affected_ord_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.affected_order_id

  index = index + size_of.affected_orig_cl_ord_id

  return index
end

-- Display: Affected Ord Grp Comp
display.affected_ord_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Affected Ord Grp Comp
dissect.affected_ord_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Affected Order Id: 8 Byte Unsigned Fixed Width Integer
  index, affected_order_id = dissect.affected_order_id(buffer, index, packet, parent)

  -- Affected Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, affected_orig_cl_ord_id = dissect.affected_orig_cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Affected Ord Grp Comp
dissect.affected_ord_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.affected_ord_grp_comp then
    local length = size_of.affected_ord_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.affected_ord_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.affected_ord_grp_comp, range, display)
  end

  return dissect.affected_ord_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Mass Action Reason
size_of.mass_action_reason = 1

-- Display: Mass Action Reason
display.mass_action_reason = function(value)
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
  if value == 100 then
    return "Mass Action Reason: Internal Connection Loss (100)"
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
  if value == 115 then
    return "Mass Action Reason: Instrument Knock Out (115)"
  end
  if value == 116 then
    return "Mass Action Reason: Instrument Sold Out (116)"
  end
  if value == 118 then
    return "Mass Action Reason: Instrument Knock Out Reverted (118)"
  end
  if value == 119 then
    return "Mass Action Reason: Automatic Quote Deletion (119)"
  end

  return "Mass Action Reason: Unknown("..value..")"
end

-- Dissect: Mass Action Reason
dissect.mass_action_reason = function(buffer, offset, packet, parent)
  local length = size_of.mass_action_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_action_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.mass_action_reason, range, value, display)

  return offset + length, value
end

-- Size: No Not Affected Orders
size_of.no_not_affected_orders = 2

-- Display: No Not Affected Orders
display.no_not_affected_orders = function(value)
  return "No Not Affected Orders: "..value
end

-- Dissect: No Not Affected Orders
dissect.no_not_affected_orders = function(buffer, offset, packet, parent)
  local length = size_of.no_not_affected_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_not_affected_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_not_affected_orders, range, value, display)

  return offset + length, value
end

-- Size: No Affected Orders
size_of.no_affected_orders = 2

-- Display: No Affected Orders
display.no_affected_orders = function(value)
  return "No Affected Orders: "..value
end

-- Dissect: No Affected Orders
dissect.no_affected_orders = function(buffer, offset, packet, parent)
  local length = size_of.no_affected_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_affected_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_affected_orders, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Report Id
size_of.mass_action_report_id = 8

-- Display: Mass Action Report Id
display.mass_action_report_id = function(value)
  return "Mass Action Report Id: "..value
end

-- Dissect: Mass Action Report Id
dissect.mass_action_report_id = function(buffer, offset, packet, parent)
  local length = size_of.mass_action_report_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.mass_action_report_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.mass_action_report_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Specialist Delete All Order Broadcast
size_of.specialist_delete_all_order_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.market_segment_id

  index = index + size_of.party_id_entering_trader

  index = index + size_of.no_affected_orders

  index = index + size_of.no_not_affected_orders

  index = index + size_of.party_id_entering_firm

  index = index + size_of.mass_action_reason

  index = index + size_of.pad_2

  -- Calculate field size from count
  local affected_ord_grp_comp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + affected_ord_grp_comp_count * 16

  -- Calculate field size from count
  local not_affected_orders_grp_comp_count = buffer(offset + index - 22, 2):le_uint()
  index = index + not_affected_orders_grp_comp_count * 16

  return index
end

-- Display: Specialist Delete All Order Broadcast
display.specialist_delete_all_order_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Specialist Delete All Order Broadcast
dissect.specialist_delete_all_order_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- No Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_affected_orders = dissect.no_affected_orders(buffer, index, packet, parent)

  -- No Not Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_orders = dissect.no_not_affected_orders(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, mass_action_reason = dissect.mass_action_reason(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Affected Ord Grp Comp: Struct of 2 fields
  for i = 1, no_affected_orders do
    index = dissect.affected_ord_grp_comp(buffer, index, packet, parent)
  end

  -- Not Affected Orders Grp Comp: Struct of 2 fields
  for i = 1, no_not_affected_orders do
    index = dissect.not_affected_orders_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Specialist Delete All Order Broadcast
dissect.specialist_delete_all_order_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.specialist_delete_all_order_broadcast then
    local length = size_of.specialist_delete_all_order_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.specialist_delete_all_order_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.specialist_delete_all_order_broadcast, range, display)
  end

  return dissect.specialist_delete_all_order_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Quote Type
size_of.quote_type = 1

-- Display: Quote Type
display.quote_type = function(value)
  if value == 0 then
    return "Quote Type: Indicative (0)"
  end
  if value == 1 then
    return "Quote Type: Tradeable (1)"
  end
  if value == 101 then
    return "Quote Type: Tradeable Matching (101)"
  end
  if value == 102 then
    return "Quote Type: Tradeable Pwt (102)"
  end
  if value == 103 then
    return "Quote Type: Special Auction (103)"
  end
  if value == 104 then
    return "Quote Type: Pw Twithin Special Auction (104)"
  end

  return "Quote Type: Unknown("..value..")"
end

-- Dissect: Quote Type
dissect.quote_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Size: Quote Size Type
size_of.quote_size_type = 1

-- Display: Quote Size Type
display.quote_size_type = function(value)
  if value == 1 then
    return "Quote Size Type: Total Size (1)"
  end
  if value == 2 then
    return "Quote Size Type: Open Size (2)"
  end

  return "Quote Size Type: Unknown("..value..")"
end

-- Dissect: Quote Size Type
dissect.quote_size_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_size_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_size_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_size_type, range, value, display)

  return offset + length, value
end

-- Size: Price Validity Check Type
size_of.price_validity_check_type = 1

-- Display: Price Validity Check Type
display.price_validity_check_type = function(value)
  if value == 0 then
    return "Price Validity Check Type: None (0)"
  end
  if value == 2 then
    return "Price Validity Check Type: Mandatory (2)"
  end

  return "Price Validity Check Type: Unknown("..value..")"
end

-- Dissect: Price Validity Check Type
dissect.price_validity_check_type = function(buffer, offset, packet, parent)
  local length = size_of.price_validity_check_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_validity_check_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.price_validity_check_type, range, value, display)

  return offset + length, value
end

-- Size: Match Inst Cross Id
size_of.match_inst_cross_id = 4

-- Display: Match Inst Cross Id
display.match_inst_cross_id = function(value)
  return "Match Inst Cross Id: "..value
end

-- Dissect: Match Inst Cross Id
dissect.match_inst_cross_id = function(buffer, offset, packet, parent)
  local length = size_of.match_inst_cross_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.match_inst_cross_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.match_inst_cross_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Single Quote Request
size_of.single_quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.quote_id

  index = index + size_of.security_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.bid_px

  index = index + size_of.bid_size

  index = index + size_of.offer_px

  index = index + size_of.offer_size

  index = index + size_of.settl_curr_fx_rate

  index = index + size_of.market_segment_id

  index = index + size_of.match_inst_cross_id

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.value_check_type_quantity

  index = index + size_of.quote_size_type

  index = index + size_of.quote_type

  index = index + size_of.trading_capacity

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.pad_7

  return index
end

-- Display: Single Quote Request
display.single_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Quote Request
dissect.single_quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Settl Curr Fx Rate: 8 Byte Unsigned Fixed Width Integer
  index, settl_curr_fx_rate = dissect.settl_curr_fx_rate(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Quote Size Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_size_type = dissect.quote_size_type(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, quote_type = dissect.quote_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Quote Request
dissect.single_quote_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_quote_request then
    local length = size_of.single_quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.single_quote_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.single_quote_request, range, display)
  end

  return dissect.single_quote_request_fields(buffer, offset, packet, parent)
end

-- Size: Selective Request For Quote Service Status
size_of.selective_request_for_quote_service_status = 1

-- Display: Selective Request For Quote Service Status
display.selective_request_for_quote_service_status = function(value)
  if value == 0 then
    return "Selective Request For Quote Service Status: Unavailable (0)"
  end
  if value == 1 then
    return "Selective Request For Quote Service Status: Available (1)"
  end

  return "Selective Request For Quote Service Status: Unknown("..value..")"
end

-- Dissect: Selective Request For Quote Service Status
dissect.selective_request_for_quote_service_status = function(buffer, offset, packet, parent)
  local length = size_of.selective_request_for_quote_service_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.selective_request_for_quote_service_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.selective_request_for_quote_service_status, range, value, display)

  return offset + length, value
end

-- Size: Selective Request For Quote Service Trade Date
size_of.selective_request_for_quote_service_trade_date = 4

-- Display: Selective Request For Quote Service Trade Date
display.selective_request_for_quote_service_trade_date = function(value)
  return "Selective Request For Quote Service Trade Date: "..value
end

-- Dissect: Selective Request For Quote Service Trade Date
dissect.selective_request_for_quote_service_trade_date = function(buffer, offset, packet, parent)
  local length = size_of.selective_request_for_quote_service_trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.selective_request_for_quote_service_trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.selective_request_for_quote_service_trade_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Nrbc Header Comp
size_of.nrbc_header_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.appl_sub_id

  index = index + size_of.appl_id

  index = index + size_of.last_fragment

  index = index + size_of.pad_2

  return index
end

-- Display: Nrbc Header Comp
display.nrbc_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Nrbc Header Comp
dissect.nrbc_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, appl_sub_id = dissect.appl_sub_id(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Nrbc Header Comp
dissect.nrbc_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.nrbc_header_comp then
    local length = size_of.nrbc_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.nrbc_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.nrbc_header_comp, range, display)
  end

  return dissect.nrbc_header_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Service Availability Market Broadcast
size_of.service_availability_market_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nrbc_header_comp(buffer, offset + index)

  index = index + size_of.selective_request_for_quote_service_trade_date

  index = index + size_of.selective_request_for_quote_service_status

  index = index + size_of.pad_3

  return index
end

-- Display: Service Availability Market Broadcast
display.service_availability_market_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Service Availability Market Broadcast
dissect.service_availability_market_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nrbc Header Comp: Struct of 5 fields
  index, nrbc_header_comp = dissect.nrbc_header_comp(buffer, index, packet, parent)

  -- Selective Request For Quote Service Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, selective_request_for_quote_service_trade_date = dissect.selective_request_for_quote_service_trade_date(buffer, index, packet, parent)

  -- Selective Request For Quote Service Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, selective_request_for_quote_service_status = dissect.selective_request_for_quote_service_status(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Service Availability Market Broadcast
dissect.service_availability_market_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.service_availability_market_broadcast then
    local length = size_of.service_availability_market_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.service_availability_market_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.service_availability_market_broadcast, range, display)
  end

  return dissect.service_availability_market_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Pad 5
size_of.pad_5 = 5

-- Display: Pad 5
display.pad_5 = function(value)
  return "Pad 5: "..value
end

-- Dissect: Pad 5
dissect.pad_5 = function(buffer, offset, packet, parent)
  local length = size_of.pad_5
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.pad_5(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.pad_5, range, value, display)

  return offset + length, value
end

-- Size: T 7 Entry Service Rtm Status
size_of.t_7_entry_service_rtm_status = 1

-- Display: T 7 Entry Service Rtm Status
display.t_7_entry_service_rtm_status = function(value)
  if value == 0 then
    return "T 7 Entry Service Rtm Status: Unavailable (0)"
  end
  if value == 1 then
    return "T 7 Entry Service Rtm Status: Available (1)"
  end

  return "T 7 Entry Service Rtm Status: Unknown("..value..")"
end

-- Dissect: T 7 Entry Service Rtm Status
dissect.t_7_entry_service_rtm_status = function(buffer, offset, packet, parent)
  local length = size_of.t_7_entry_service_rtm_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.t_7_entry_service_rtm_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.t_7_entry_service_rtm_status, range, value, display)

  return offset + length, value
end

-- Size: T 7 Entry Service Status
size_of.t_7_entry_service_status = 1

-- Display: T 7 Entry Service Status
display.t_7_entry_service_status = function(value)
  if value == 0 then
    return "T 7 Entry Service Status: Unavailable (0)"
  end
  if value == 1 then
    return "T 7 Entry Service Status: Available (1)"
  end

  return "T 7 Entry Service Status: Unknown("..value..")"
end

-- Dissect: T 7 Entry Service Status
dissect.t_7_entry_service_status = function(buffer, offset, packet, parent)
  local length = size_of.t_7_entry_service_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.t_7_entry_service_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.t_7_entry_service_status, range, value, display)

  return offset + length, value
end

-- Size: Appl Seq Status
size_of.appl_seq_status = 1

-- Display: Appl Seq Status
display.appl_seq_status = function(value)
  if value == 0 then
    return "Appl Seq Status: Unavailable (0)"
  end
  if value == 1 then
    return "Appl Seq Status: Available (1)"
  end

  return "Appl Seq Status: Unknown("..value..")"
end

-- Dissect: Appl Seq Status
dissect.appl_seq_status = function(buffer, offset, packet, parent)
  local length = size_of.appl_seq_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_seq_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_seq_status, range, value, display)

  return offset + length, value
end

-- Size: Trade Manager Status
size_of.trade_manager_status = 1

-- Display: Trade Manager Status
display.trade_manager_status = function(value)
  if value == 0 then
    return "Trade Manager Status: Unavailable (0)"
  end
  if value == 1 then
    return "Trade Manager Status: Available (1)"
  end

  return "Trade Manager Status: Unknown("..value..")"
end

-- Dissect: Trade Manager Status
dissect.trade_manager_status = function(buffer, offset, packet, parent)
  local length = size_of.trade_manager_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_manager_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_manager_status, range, value, display)

  return offset + length, value
end

-- Size: Matching Engine Status
size_of.matching_engine_status = 1

-- Display: Matching Engine Status
display.matching_engine_status = function(value)
  if value == 0 then
    return "Matching Engine Status: Unavailable (0)"
  end
  if value == 1 then
    return "Matching Engine Status: Available (1)"
  end

  return "Matching Engine Status: Unknown("..value..")"
end

-- Dissect: Matching Engine Status
dissect.matching_engine_status = function(buffer, offset, packet, parent)
  local length = size_of.matching_engine_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.matching_engine_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.matching_engine_status, range, value, display)

  return offset + length, value
end

-- Size: T 7 Entry Service Rtm Trade Date
size_of.t_7_entry_service_rtm_trade_date = 4

-- Display: T 7 Entry Service Rtm Trade Date
display.t_7_entry_service_rtm_trade_date = function(value)
  return "T 7 Entry Service Rtm Trade Date: "..value
end

-- Dissect: T 7 Entry Service Rtm Trade Date
dissect.t_7_entry_service_rtm_trade_date = function(buffer, offset, packet, parent)
  local length = size_of.t_7_entry_service_rtm_trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.t_7_entry_service_rtm_trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.t_7_entry_service_rtm_trade_date, range, value, display)

  return offset + length, value
end

-- Size: T 7 Entry Service Trade Date
size_of.t_7_entry_service_trade_date = 4

-- Display: T 7 Entry Service Trade Date
display.t_7_entry_service_trade_date = function(value)
  return "T 7 Entry Service Trade Date: "..value
end

-- Dissect: T 7 Entry Service Trade Date
dissect.t_7_entry_service_trade_date = function(buffer, offset, packet, parent)
  local length = size_of.t_7_entry_service_trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.t_7_entry_service_trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.t_7_entry_service_trade_date, range, value, display)

  return offset + length, value
end

-- Size: Appl Seq Trade Date
size_of.appl_seq_trade_date = 4

-- Display: Appl Seq Trade Date
display.appl_seq_trade_date = function(value)
  return "Appl Seq Trade Date: "..value
end

-- Dissect: Appl Seq Trade Date
dissect.appl_seq_trade_date = function(buffer, offset, packet, parent)
  local length = size_of.appl_seq_trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_seq_trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_seq_trade_date, range, value, display)

  return offset + length, value
end

-- Size: Trade Manager Trade Date
size_of.trade_manager_trade_date = 4

-- Display: Trade Manager Trade Date
display.trade_manager_trade_date = function(value)
  return "Trade Manager Trade Date: "..value
end

-- Dissect: Trade Manager Trade Date
dissect.trade_manager_trade_date = function(buffer, offset, packet, parent)
  local length = size_of.trade_manager_trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_manager_trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_manager_trade_date, range, value, display)

  return offset + length, value
end

-- Size: Matching Engine Trade Date
size_of.matching_engine_trade_date = 4

-- Display: Matching Engine Trade Date
display.matching_engine_trade_date = function(value)
  return "Matching Engine Trade Date: "..value
end

-- Dissect: Matching Engine Trade Date
dissect.matching_engine_trade_date = function(buffer, offset, packet, parent)
  local length = size_of.matching_engine_trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.matching_engine_trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.matching_engine_trade_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Service Availability Broadcast
size_of.service_availability_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nrbc_header_comp(buffer, offset + index)

  index = index + size_of.matching_engine_trade_date

  index = index + size_of.trade_manager_trade_date

  index = index + size_of.appl_seq_trade_date

  index = index + size_of.t_7_entry_service_trade_date

  index = index + size_of.t_7_entry_service_rtm_trade_date

  index = index + size_of.partition_id

  index = index + size_of.matching_engine_status

  index = index + size_of.trade_manager_status

  index = index + size_of.appl_seq_status

  index = index + size_of.t_7_entry_service_status

  index = index + size_of.t_7_entry_service_rtm_status

  index = index + size_of.pad_5

  return index
end

-- Display: Service Availability Broadcast
display.service_availability_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Service Availability Broadcast
dissect.service_availability_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nrbc Header Comp: Struct of 5 fields
  index, nrbc_header_comp = dissect.nrbc_header_comp(buffer, index, packet, parent)

  -- Matching Engine Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, matching_engine_trade_date = dissect.matching_engine_trade_date(buffer, index, packet, parent)

  -- Trade Manager Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_manager_trade_date = dissect.trade_manager_trade_date(buffer, index, packet, parent)

  -- Appl Seq Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, appl_seq_trade_date = dissect.appl_seq_trade_date(buffer, index, packet, parent)

  -- T 7 Entry Service Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, t_7_entry_service_trade_date = dissect.t_7_entry_service_trade_date(buffer, index, packet, parent)

  -- T 7 Entry Service Rtm Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, t_7_entry_service_rtm_trade_date = dissect.t_7_entry_service_rtm_trade_date(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Matching Engine Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, matching_engine_status = dissect.matching_engine_status(buffer, index, packet, parent)

  -- Trade Manager Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_manager_status = dissect.trade_manager_status(buffer, index, packet, parent)

  -- Appl Seq Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_status = dissect.appl_seq_status(buffer, index, packet, parent)

  -- T 7 Entry Service Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, t_7_entry_service_status = dissect.t_7_entry_service_status(buffer, index, packet, parent)

  -- T 7 Entry Service Rtm Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, t_7_entry_service_rtm_status = dissect.t_7_entry_service_rtm_status(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Service Availability Broadcast
dissect.service_availability_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.service_availability_broadcast then
    local length = size_of.service_availability_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.service_availability_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.service_availability_broadcast, range, display)
  end

  return dissect.service_availability_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Appl Total Message Count
size_of.appl_total_message_count = 2

-- Display: Appl Total Message Count
display.appl_total_message_count = function(value)
  return "Appl Total Message Count: "..value
end

-- Dissect: Appl Total Message Count
dissect.appl_total_message_count = function(buffer, offset, packet, parent)
  local length = size_of.appl_total_message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_total_message_count(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_total_message_count, range, value, display)

  return offset + length, value
end

-- Size: Ref Appl Last Seq Num
size_of.ref_appl_last_seq_num = 8

-- Display: Ref Appl Last Seq Num
display.ref_appl_last_seq_num = function(value)
  return "Ref Appl Last Seq Num: "..value
end

-- Dissect: Ref Appl Last Seq Num
dissect.ref_appl_last_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.ref_appl_last_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.ref_appl_last_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.ref_appl_last_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Appl End Seq Num
size_of.appl_end_seq_num = 8

-- Display: Appl End Seq Num
display.appl_end_seq_num = function(value)
  return "Appl End Seq Num: "..value
end

-- Dissect: Appl End Seq Num
dissect.appl_end_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.appl_end_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.appl_end_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_end_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Response
size_of.retransmit_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  index = index + size_of.appl_end_seq_num

  index = index + size_of.ref_appl_last_seq_num

  index = index + size_of.appl_total_message_count

  index = index + size_of.pad_6

  return index
end

-- Display: Retransmit Response
display.retransmit_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Response
dissect.retransmit_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  -- Appl End Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, appl_end_seq_num = dissect.appl_end_seq_num(buffer, index, packet, parent)

  -- Ref Appl Last Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, ref_appl_last_seq_num = dissect.ref_appl_last_seq_num(buffer, index, packet, parent)

  -- Appl Total Message Count: 2 Byte Unsigned Fixed Width Integer
  index, appl_total_message_count = dissect.appl_total_message_count(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Response
dissect.retransmit_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_response then
    local length = size_of.retransmit_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.retransmit_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.retransmit_response, range, display)
  end

  return dissect.retransmit_response_fields(buffer, offset, packet, parent)
end

-- Size: Appl Beg Seq Num
size_of.appl_beg_seq_num = 8

-- Display: Appl Beg Seq Num
display.appl_beg_seq_num = function(value)
  return "Appl Beg Seq Num: "..value
end

-- Dissect: Appl Beg Seq Num
dissect.appl_beg_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.appl_beg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.appl_beg_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_beg_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Request
size_of.retransmit_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.appl_beg_seq_num

  index = index + size_of.appl_end_seq_num

  index = index + size_of.partition_id

  index = index + size_of.ref_appl_id

  index = index + size_of.pad_5

  return index
end

-- Display: Retransmit Request
display.retransmit_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Request
dissect.retransmit_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Appl Beg Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, appl_beg_seq_num = dissect.appl_beg_seq_num(buffer, index, packet, parent)

  -- Appl End Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, appl_end_seq_num = dissect.appl_end_seq_num(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, ref_appl_id = dissect.ref_appl_id(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request
dissect.retransmit_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_request then
    local length = size_of.retransmit_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.retransmit_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.retransmit_request, range, display)
  end

  return dissect.retransmit_request_fields(buffer, offset, packet, parent)
end

-- Size: Appl End Msg Id
size_of.appl_end_msg_id = 16

-- Display: Appl End Msg Id
display.appl_end_msg_id = function(value)
  return "Appl End Msg Id: "..value
end

-- Dissect: Appl End Msg Id
dissect.appl_end_msg_id = function(buffer, offset, packet, parent)
  local length = size_of.appl_end_msg_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.appl_end_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_end_msg_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Me Message Response
size_of.retransmit_me_message_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  index = index + size_of.appl_total_message_count

  index = index + size_of.appl_end_msg_id

  index = index + size_of.ref_appl_last_msg_id

  index = index + size_of.pad_6

  return index
end

-- Display: Retransmit Me Message Response
display.retransmit_me_message_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Me Message Response
dissect.retransmit_me_message_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  -- Appl Total Message Count: 2 Byte Unsigned Fixed Width Integer
  index, appl_total_message_count = dissect.appl_total_message_count(buffer, index, packet, parent)

  -- Appl End Msg Id: 16 Byte
  index, appl_end_msg_id = dissect.appl_end_msg_id(buffer, index, packet, parent)

  -- Ref Appl Last Msg Id: 16 Byte
  index, ref_appl_last_msg_id = dissect.ref_appl_last_msg_id(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Me Message Response
dissect.retransmit_me_message_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_me_message_response then
    local length = size_of.retransmit_me_message_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.retransmit_me_message_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.retransmit_me_message_response, range, display)
  end

  return dissect.retransmit_me_message_response_fields(buffer, offset, packet, parent)
end

-- Size: Appl Beg Msg Id
size_of.appl_beg_msg_id = 16

-- Display: Appl Beg Msg Id
display.appl_beg_msg_id = function(value)
  return "Appl Beg Msg Id: "..value
end

-- Dissect: Appl Beg Msg Id
dissect.appl_beg_msg_id = function(buffer, offset, packet, parent)
  local length = size_of.appl_beg_msg_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.appl_beg_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_beg_msg_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Me Message Request
size_of.retransmit_me_message_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.subscription_scope

  index = index + size_of.partition_id

  index = index + size_of.ref_appl_id

  index = index + size_of.appl_beg_msg_id

  index = index + size_of.appl_end_msg_id

  index = index + size_of.pad_1

  return index
end

-- Display: Retransmit Me Message Request
display.retransmit_me_message_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Me Message Request
dissect.retransmit_me_message_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer
  index, subscription_scope = dissect.subscription_scope(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, ref_appl_id = dissect.ref_appl_id(buffer, index, packet, parent)

  -- Appl Beg Msg Id: 16 Byte
  index, appl_beg_msg_id = dissect.appl_beg_msg_id(buffer, index, packet, parent)

  -- Appl End Msg Id: 16 Byte
  index, appl_end_msg_id = dissect.appl_end_msg_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Me Message Request
dissect.retransmit_me_message_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_me_message_request then
    local length = size_of.retransmit_me_message_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.retransmit_me_message_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.retransmit_me_message_request, range, display)
  end

  return dissect.retransmit_me_message_request_fields(buffer, offset, packet, parent)
end

-- Size: Session Status
size_of.session_status = 1

-- Display: Session Status
display.session_status = function(value)
  if value == 0 then
    return "Session Status: Active (0)"
  end
  if value == 4 then
    return "Session Status: Logout (4)"
  end

  return "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
dissect.session_status = function(buffer, offset, packet, parent)
  local length = size_of.session_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.session_status, range, value, display)

  return offset + length, value
end

-- Size: Session Reject Reason
size_of.session_reject_reason = 4

-- Display: Session Reject Reason
display.session_reject_reason = function(value)
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
  if value == 216 then
    return "Session Reject Reason: Gateway Is Standby (216)"
  end
  if value == 217 then
    return "Session Reject Reason: Session Login Limit Reached (217)"
  end
  if value == 223 then
    return "Session Reject Reason: User Entitlement Data Timeout (223)"
  end
  if value == 224 then
    return "Session Reject Reason: Ps Gateway Session Limit Reached (224)"
  end
  if value == 225 then
    return "Session Reject Reason: User Login Limit Reached (225)"
  end
  if value == 226 then
    return "Session Reject Reason: Outstanding Logins Bu Limit Reached (226)"
  end
  if value == 227 then
    return "Session Reject Reason: Outstanding Logins Session Limit Reached (227)"
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
  if value == 10012 then
    return "Session Reject Reason: Ordernotacceptedin Volatility Freeze (10012)"
  end

  return "Session Reject Reason: Unknown("..value..")"
end

-- Dissect: Session Reject Reason
dissect.session_reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.session_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_reject_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.session_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reject
size_of.reject = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.session_reject_reason

  index = index + size_of.var_text_len

  index = index + size_of.session_status

  index = index + size_of.pad_1

  -- Parse runtime size of: Var Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Reject
display.reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reject
dissect.reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Session Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 32 values
  index, session_reject_reason = dissect.session_reject_reason(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = dissect.var_text_len(buffer, index, packet, parent)

  -- Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, session_status = dissect.session_status(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Reject
dissect.reject = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.reject then
    local length = size_of.reject(buffer, offset)
    local range = buffer(offset, length)
    local display = display.reject(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.reject, range, display)
  end

  return dissect.reject_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Rfq Specialist Broadcast
size_of.rfq_specialist_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.order_qty

  index = index + size_of.quote_id

  index = index + size_of.market_segment_id

  index = index + size_of.side

  index = index + size_of.party_executing_firm

  index = index + size_of.pad_6

  return index
end

-- Display: Rfq Specialist Broadcast
display.rfq_specialist_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Specialist Broadcast
dissect.rfq_specialist_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Specialist Broadcast
dissect.rfq_specialist_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_specialist_broadcast then
    local length = size_of.rfq_specialist_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rfq_specialist_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.rfq_specialist_broadcast, range, display)
  end

  return dissect.rfq_specialist_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Rfq Response
size_of.rfq_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.exec_id

  return index
end

-- Display: Rfq Response
display.rfq_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Response
dissect.rfq_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Response
dissect.rfq_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_response then
    local length = size_of.rfq_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rfq_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.rfq_response, range, display)
  end

  return dissect.rfq_response_fields(buffer, offset, packet, parent)
end

-- Size: Rfq Requester Disclosure Instruction
size_of.rfq_requester_disclosure_instruction = 1

-- Display: Rfq Requester Disclosure Instruction
display.rfq_requester_disclosure_instruction = function(value)
  if value == 0 then
    return "Rfq Requester Disclosure Instruction: No (0)"
  end
  if value == 1 then
    return "Rfq Requester Disclosure Instruction: Yes (1)"
  end

  return "Rfq Requester Disclosure Instruction: Unknown("..value..")"
end

-- Dissect: Rfq Requester Disclosure Instruction
dissect.rfq_requester_disclosure_instruction = function(buffer, offset, packet, parent)
  local length = size_of.rfq_requester_disclosure_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.rfq_requester_disclosure_instruction(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.rfq_requester_disclosure_instruction, range, value, display)

  return offset + length, value
end

-- Size: Rfq Publish Indicator
size_of.rfq_publish_indicator = 1

-- Display: Rfq Publish Indicator
display.rfq_publish_indicator = function(value)
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
  if value == 6 then
    return "Rfq Publish Indicator: Specialist (6)"
  end

  return "Rfq Publish Indicator: Unknown("..value..")"
end

-- Dissect: Rfq Publish Indicator
dissect.rfq_publish_indicator = function(buffer, offset, packet, parent)
  local length = size_of.rfq_publish_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.rfq_publish_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.rfq_publish_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rfq Request
size_of.rfq_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.quote_id

  index = index + size_of.market_segment_id

  index = index + size_of.rfq_publish_indicator

  index = index + size_of.rfq_requester_disclosure_instruction

  index = index + size_of.side

  index = index + size_of.pad_1

  return index
end

-- Display: Rfq Request
display.rfq_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Request
dissect.rfq_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Rfq Publish Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, rfq_publish_indicator = dissect.rfq_publish_indicator(buffer, index, packet, parent)

  -- Rfq Requester Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, rfq_requester_disclosure_instruction = dissect.rfq_requester_disclosure_instruction(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Request
dissect.rfq_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_request then
    local length = size_of.rfq_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rfq_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.rfq_request, range, display)
  end

  return dissect.rfq_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Rfq Reject Notification
size_of.rfq_reject_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.quote_id

  index = index + size_of.market_segment_id

  index = index + size_of.quote_request_reject_reason

  index = index + size_of.party_executing_firm

  index = index + size_of.pad_6

  return index
end

-- Display: Rfq Reject Notification
display.rfq_reject_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Reject Notification
dissect.rfq_reject_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Quote Request Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, quote_request_reject_reason = dissect.quote_request_reject_reason(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Reject Notification
dissect.rfq_reject_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_reject_notification then
    local length = size_of.rfq_reject_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rfq_reject_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.rfq_reject_notification, range, display)
  end

  return dissect.rfq_reject_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Rfq Broadcast
size_of.rfq_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.order_qty

  index = index + size_of.market_segment_id

  index = index + size_of.side

  index = index + size_of.party_executing_firm

  index = index + size_of.pad_6

  return index
end

-- Display: Rfq Broadcast
display.rfq_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Broadcast
dissect.rfq_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Broadcast
dissect.rfq_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_broadcast then
    local length = size_of.rfq_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rfq_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.rfq_broadcast, range, display)
  end

  return dissect.rfq_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Quote Event Liquidity Ind
size_of.quote_event_liquidity_ind = 1

-- Display: Quote Event Liquidity Ind
display.quote_event_liquidity_ind = function(value)
  if value == 1 then
    return "Quote Event Liquidity Ind: Added Liquidity (1)"
  end
  if value == 2 then
    return "Quote Event Liquidity Ind: Removed Liquidity (2)"
  end
  if value == 4 then
    return "Quote Event Liquidity Ind: Auction (4)"
  end

  return "Quote Event Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Quote Event Liquidity Ind
dissect.quote_event_liquidity_ind = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_liquidity_ind
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_event_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_event_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Side
size_of.quote_event_side = 1

-- Display: Quote Event Side
display.quote_event_side = function(value)
  if value == 1 then
    return "Quote Event Side: Buy (1)"
  end
  if value == 2 then
    return "Quote Event Side: Sell (2)"
  end

  return "Quote Event Side: Unknown("..value..")"
end

-- Dissect: Quote Event Side
dissect.quote_event_side = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_event_side(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_event_side, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Type
size_of.quote_event_type = 1

-- Display: Quote Event Type
display.quote_event_type = function(value)
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
dissect.quote_event_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_event_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_event_type, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Exec Id
size_of.quote_event_exec_id = 4

-- Display: Quote Event Exec Id
display.quote_event_exec_id = function(value)
  return "Quote Event Exec Id: "..value
end

-- Dissect: Quote Event Exec Id
dissect.quote_event_exec_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_exec_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.quote_event_exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_event_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Match Id
size_of.quote_event_match_id = 4

-- Display: Quote Event Match Id
display.quote_event_match_id = function(value)
  return "Quote Event Match Id: "..value
end

-- Dissect: Quote Event Match Id
dissect.quote_event_match_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_match_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_event_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_event_match_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Msg Id
size_of.quote_msg_id = 8

-- Display: Quote Msg Id
display.quote_msg_id = function(value)
  return "Quote Msg Id: "..value
end

-- Dissect: Quote Msg Id
dissect.quote_msg_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_msg_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quote_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_msg_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Qty
size_of.quote_event_qty = 8

-- Display: Quote Event Qty
display.quote_event_qty = function(value)
  return "Quote Event Qty: "..value:tonumber()/10000
end

-- Dissect: Quote Event Qty
dissect.quote_event_qty = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quote_event_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_event_qty, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Px
size_of.quote_event_px = 8

-- Display: Quote Event Px
display.quote_event_px = function(value)
  return "Quote Event Px: "..value:tonumber()/100000000
end

-- Dissect: Quote Event Px
dissect.quote_event_px = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quote_event_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_event_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Event Grp Comp
size_of.quote_event_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.quote_event_px

  index = index + size_of.quote_event_qty

  index = index + size_of.quote_msg_id

  index = index + size_of.quote_event_match_id

  index = index + size_of.quote_event_exec_id

  index = index + size_of.quote_event_type

  index = index + size_of.quote_event_side

  index = index + size_of.quote_event_liquidity_ind

  index = index + size_of.quote_event_reason

  index = index + size_of.pad_4

  return index
end

-- Display: Quote Event Grp Comp
display.quote_event_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Event Grp Comp
dissect.quote_event_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Quote Event Px: 8 Byte Unsigned Fixed Width Integer
  index, quote_event_px = dissect.quote_event_px(buffer, index, packet, parent)

  -- Quote Event Qty: 8 Byte Unsigned Fixed Width Integer
  index, quote_event_qty = dissect.quote_event_qty(buffer, index, packet, parent)

  -- Quote Msg Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_msg_id = dissect.quote_msg_id(buffer, index, packet, parent)

  -- Quote Event Match Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_event_match_id = dissect.quote_event_match_id(buffer, index, packet, parent)

  -- Quote Event Exec Id: 4 Byte Signed Fixed Width Integer
  index, quote_event_exec_id = dissect.quote_event_exec_id(buffer, index, packet, parent)

  -- Quote Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_event_type = dissect.quote_event_type(buffer, index, packet, parent)

  -- Quote Event Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_event_side = dissect.quote_event_side(buffer, index, packet, parent)

  -- Quote Event Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_event_liquidity_ind = dissect.quote_event_liquidity_ind(buffer, index, packet, parent)

  -- Quote Event Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, quote_event_reason = dissect.quote_event_reason(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Event Grp Comp
dissect.quote_event_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_event_grp_comp then
    local length = size_of.quote_event_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_event_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.quote_event_grp_comp, range, display)
  end

  return dissect.quote_event_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Quote Events
size_of.no_quote_events = 1

-- Display: No Quote Events
display.no_quote_events = function(value)
  return "No Quote Events: "..value
end

-- Dissect: No Quote Events
dissect.no_quote_events = function(buffer, offset, packet, parent)
  local length = size_of.no_quote_events
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_quote_events(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_quote_events, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Execution Report
size_of.quote_execution_report = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.exec_id

  index = index + size_of.market_segment_id

  index = index + size_of.no_quote_events

  index = index + size_of.pad_3

  -- Calculate field size from count
  local quote_event_grp_comp_count = buffer(offset + index - 4, 1):le_uint()
  index = index + quote_event_grp_comp_count * 48

  return index
end

-- Display: Quote Execution Report
display.quote_execution_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Execution Report
dissect.quote_execution_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- No Quote Events: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_events = dissect.no_quote_events(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  -- Quote Event Grp Comp: Struct of 11 fields
  for i = 1, no_quote_events do
    index = dissect.quote_event_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Execution Report
dissect.quote_execution_report = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_execution_report then
    local length = size_of.quote_execution_report(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_execution_report(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.quote_execution_report, range, display)
  end

  return dissect.quote_execution_report_fields(buffer, offset, packet, parent)
end

-- Size: Not Affected Security Id
size_of.not_affected_security_id = 8

-- Display: Not Affected Security Id
display.not_affected_security_id = function(value)
  return "Not Affected Security Id: "..value
end

-- Dissect: Not Affected Security Id
dissect.not_affected_security_id = function(buffer, offset, packet, parent)
  local length = size_of.not_affected_security_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.not_affected_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.not_affected_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Not Affected Securities Grp Comp
size_of.not_affected_securities_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.not_affected_security_id

  return index
end

-- Display: Not Affected Securities Grp Comp
display.not_affected_securities_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Affected Securities Grp Comp
dissect.not_affected_securities_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Not Affected Security Id: 8 Byte Unsigned Fixed Width Integer
  index, not_affected_security_id = dissect.not_affected_security_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Affected Securities Grp Comp
dissect.not_affected_securities_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.not_affected_securities_grp_comp then
    local length = size_of.not_affected_securities_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.not_affected_securities_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.not_affected_securities_grp_comp, range, display)
  end

  return dissect.not_affected_securities_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Not Affected Securities
size_of.no_not_affected_securities = 2

-- Display: No Not Affected Securities
display.no_not_affected_securities = function(value)
  return "No Not Affected Securities: "..value
end

-- Dissect: No Not Affected Securities
dissect.no_not_affected_securities = function(buffer, offset, packet, parent)
  local length = size_of.no_not_affected_securities
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_not_affected_securities(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_not_affected_securities, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Activation Response
size_of.quote_activation_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.no_not_affected_securities

  index = index + size_of.pad_6

  -- Calculate field size from count
  local not_affected_securities_grp_comp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_securities_grp_comp_count * 8

  return index
end

-- Display: Quote Activation Response
display.quote_activation_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Activation Response
dissect.quote_activation_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_securities = dissect.no_not_affected_securities(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Not Affected Securities Grp Comp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = dissect.not_affected_securities_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Activation Response
dissect.quote_activation_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_activation_response then
    local length = size_of.quote_activation_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_activation_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.quote_activation_response, range, display)
  end

  return dissect.quote_activation_response_fields(buffer, offset, packet, parent)
end

-- Size: Mass Action Type
size_of.mass_action_type = 1

-- Display: Mass Action Type
display.mass_action_type = function(value)
  if value == 1 then
    return "Mass Action Type: Suspendquotes (1)"
  end
  if value == 2 then
    return "Mass Action Type: Releasequotes (2)"
  end

  return "Mass Action Type: Unknown("..value..")"
end

-- Dissect: Mass Action Type
dissect.mass_action_type = function(buffer, offset, packet, parent)
  local length = size_of.mass_action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_action_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.mass_action_type, range, value, display)

  return offset + length, value
end

-- Size: Target Party Id Session Id
size_of.target_party_id_session_id = 4

-- Display: Target Party Id Session Id
display.target_party_id_session_id = function(value)
  return "Target Party Id Session Id: "..value
end

-- Dissect: Target Party Id Session Id
dissect.target_party_id_session_id = function(buffer, offset, packet, parent)
  local length = size_of.target_party_id_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.target_party_id_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.target_party_id_session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Activation Request
size_of.quote_activation_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.mass_action_type

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.pad_5

  return index
end

-- Display: Quote Activation Request
display.quote_activation_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Activation Request
dissect.quote_activation_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_type = dissect.mass_action_type(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Activation Request
dissect.quote_activation_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_activation_request then
    local length = size_of.quote_activation_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_activation_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.quote_activation_request, range, display)
  end

  return dissect.quote_activation_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Activation Notification
size_of.quote_activation_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.market_segment_id

  index = index + size_of.party_id_entering_trader

  index = index + size_of.no_not_affected_securities

  index = index + size_of.party_id_entering_firm

  index = index + size_of.mass_action_type

  index = index + size_of.mass_action_reason

  index = index + size_of.pad_3

  -- Calculate field size from count
  local not_affected_securities_grp_comp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_securities_grp_comp_count * 8

  return index
end

-- Display: Quote Activation Notification
display.quote_activation_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Activation Notification
dissect.quote_activation_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_securities = dissect.no_not_affected_securities(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_type = dissect.mass_action_type(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, mass_action_reason = dissect.mass_action_reason(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  -- Not Affected Securities Grp Comp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = dissect.not_affected_securities_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Activation Notification
dissect.quote_activation_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_activation_notification then
    local length = size_of.quote_activation_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_activation_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.quote_activation_notification, range, display)
  end

  return dissect.quote_activation_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Ping Response
size_of.ping_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.transact_time

  return index
end

-- Display: Ping Response
display.ping_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ping Response
dissect.ping_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Ping Response
dissect.ping_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ping_response then
    local length = size_of.ping_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.ping_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.ping_response, range, display)
  end

  return dissect.ping_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Ping Request
size_of.ping_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.partition_id

  index = index + size_of.pad_6

  return index
end

-- Display: Ping Request
display.ping_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ping Request
dissect.ping_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Ping Request
dissect.ping_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ping_request then
    local length = size_of.ping_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.ping_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.ping_request, range, display)
  end

  return dissect.ping_request_fields(buffer, offset, packet, parent)
end

-- Size: Party Detail Status
size_of.party_detail_status = 1

-- Display: Party Detail Status
display.party_detail_status = function(value)
  if value == 0 then
    return "Party Detail Status: Active (0)"
  end
  if value == 1 then
    return "Party Detail Status: Suspend (1)"
  end

  return "Party Detail Status: Unknown("..value..")"
end

-- Dissect: Party Detail Status
dissect.party_detail_status = function(buffer, offset, packet, parent)
  local length = size_of.party_detail_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_detail_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_detail_status, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Clearing Firm
size_of.requesting_party_clearing_firm = 9

-- Display: Requesting Party Clearing Firm
display.requesting_party_clearing_firm = function(value)
  return "Requesting Party Clearing Firm: "..value
end

-- Dissect: Requesting Party Clearing Firm
dissect.requesting_party_clearing_firm = function(buffer, offset, packet, parent)
  local length = size_of.requesting_party_clearing_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.requesting_party_clearing_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.requesting_party_clearing_firm, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Entering Firm
size_of.requesting_party_entering_firm = 9

-- Display: Requesting Party Entering Firm
display.requesting_party_entering_firm = function(value)
  return "Requesting Party Entering Firm: "..value
end

-- Dissect: Requesting Party Entering Firm
dissect.requesting_party_entering_firm = function(buffer, offset, packet, parent)
  local length = size_of.requesting_party_entering_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.requesting_party_entering_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.requesting_party_entering_firm, range, value, display)

  return offset + length, value
end

-- Size: List Update Action
size_of.list_update_action = 1

-- Display: List Update Action
display.list_update_action = function(value)
  if value == "A" then
    return "List Update Action: Add (A)"
  end
  if value == "D" then
    return "List Update Action: Delete (D)"
  end

  return "List Update Action: Unknown("..value..")"
end

-- Dissect: List Update Action
dissect.list_update_action = function(buffer, offset, packet, parent)
  local length = size_of.list_update_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.list_update_action(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.list_update_action, range, value, display)

  return offset + length, value
end

-- Size: Market Id
size_of.market_id = 2

-- Display: Market Id
display.market_id = function(value)
  if value == 3 then
    return "Market Id: Xetr (3)"
  end
  if value == 4 then
    return "Market Id: Xvie (4)"
  end
  if value == 6 then
    return "Market Id: Xmal (6)"
  end
  if value == 7 then
    return "Market Id: Xbul (7)"
  end
  if value == 8 then
    return "Market Id: Xbud (8)"
  end
  if value == 9 then
    return "Market Id: Xlju (9)"
  end
  if value == 10 then
    return "Market Id: Xpra (10)"
  end
  if value == 11 then
    return "Market Id: Xzag (11)"
  end
  if value == 13 then
    return "Market Id: Xfra (13)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
dissect.market_id = function(buffer, offset, packet, parent)
  local length = size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.market_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Id Executing System
size_of.requesting_party_id_executing_system = 4

-- Display: Requesting Party Id Executing System
display.requesting_party_id_executing_system = function(value)
  if value == 2 then
    return "Requesting Party Id Executing System: T 7 (2)"
  end

  return "Requesting Party Id Executing System: Unknown("..value..")"
end

-- Dissect: Requesting Party Id Executing System
dissect.requesting_party_id_executing_system = function(buffer, offset, packet, parent)
  local length = size_of.requesting_party_id_executing_system
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.requesting_party_id_executing_system(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.requesting_party_id_executing_system, range, value, display)

  return offset + length, value
end

-- Size: Party Detail Id Executing Unit
size_of.party_detail_id_executing_unit = 4

-- Display: Party Detail Id Executing Unit
display.party_detail_id_executing_unit = function(value)
  return "Party Detail Id Executing Unit: "..value
end

-- Dissect: Party Detail Id Executing Unit
dissect.party_detail_id_executing_unit = function(buffer, offset, packet, parent)
  local length = size_of.party_detail_id_executing_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_detail_id_executing_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_detail_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party Entitlements Update Report
size_of.party_entitlements_update_report = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.trade_date

  index = index + size_of.party_detail_id_executing_unit

  index = index + size_of.requesting_party_id_executing_system

  index = index + size_of.market_id

  index = index + size_of.list_update_action

  index = index + size_of.requesting_party_entering_firm

  index = index + size_of.requesting_party_clearing_firm

  index = index + size_of.party_detail_status

  index = index + size_of.pad_6

  return index
end

-- Display: Party Entitlements Update Report
display.party_entitlements_update_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Entitlements Update Report
dissect.party_entitlements_update_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Party Detail Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_detail_id_executing_unit = dissect.party_detail_id_executing_unit(buffer, index, packet, parent)

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, requesting_party_id_executing_system = dissect.requesting_party_id_executing_system(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = dissect.market_id(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String Enum with 2 values
  index, list_update_action = dissect.list_update_action(buffer, index, packet, parent)

  -- Requesting Party Entering Firm: 9 Byte Ascii String
  index, requesting_party_entering_firm = dissect.requesting_party_entering_firm(buffer, index, packet, parent)

  -- Requesting Party Clearing Firm: 9 Byte Ascii String
  index, requesting_party_clearing_firm = dissect.requesting_party_clearing_firm(buffer, index, packet, parent)

  -- Party Detail Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_detail_status = dissect.party_detail_status(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Entitlements Update Report
dissect.party_entitlements_update_report = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.party_entitlements_update_report then
    local length = size_of.party_entitlements_update_report(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_entitlements_update_report(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.party_entitlements_update_report, range, display)
  end

  return dissect.party_entitlements_update_report_fields(buffer, offset, packet, parent)
end

-- Size: Requesting Party Id Entering Firm
size_of.requesting_party_id_entering_firm = 1

-- Display: Requesting Party Id Entering Firm
display.requesting_party_id_entering_firm = function(value)
  if value == 1 then
    return "Requesting Party Id Entering Firm: Participant (1)"
  end
  if value == 2 then
    return "Requesting Party Id Entering Firm: Market Supervision (2)"
  end

  return "Requesting Party Id Entering Firm: Unknown("..value..")"
end

-- Dissect: Requesting Party Id Entering Firm
dissect.requesting_party_id_entering_firm = function(buffer, offset, packet, parent)
  local length = size_of.requesting_party_id_entering_firm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.requesting_party_id_entering_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.requesting_party_id_entering_firm, range, value, display)

  return offset + length, value
end

-- Size: Party Action Type
size_of.party_action_type = 1

-- Display: Party Action Type
display.party_action_type = function(value)
  if value == 1 then
    return "Party Action Type: Halt Trading (1)"
  end
  if value == 2 then
    return "Party Action Type: Reinstate (2)"
  end

  return "Party Action Type: Unknown("..value..")"
end

-- Dissect: Party Action Type
dissect.party_action_type = function(buffer, offset, packet, parent)
  local length = size_of.party_action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_action_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_action_type, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Id Executing Trader
size_of.requesting_party_id_executing_trader = 4

-- Display: Requesting Party Id Executing Trader
display.requesting_party_id_executing_trader = function(value)
  return "Requesting Party Id Executing Trader: "..value
end

-- Dissect: Requesting Party Id Executing Trader
dissect.requesting_party_id_executing_trader = function(buffer, offset, packet, parent)
  local length = size_of.requesting_party_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.requesting_party_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.requesting_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party Action Report
size_of.party_action_report = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.trade_date

  index = index + size_of.requesting_party_id_executing_trader

  index = index + size_of.party_id_executing_unit

  index = index + size_of.party_id_executing_trader

  index = index + size_of.requesting_party_id_executing_system

  index = index + size_of.market_id

  index = index + size_of.party_action_type

  index = index + size_of.requesting_party_id_entering_firm

  return index
end

-- Display: Party Action Report
display.party_action_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Action Report
dissect.party_action_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Requesting Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, requesting_party_id_executing_trader = dissect.requesting_party_id_executing_trader(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_unit = dissect.party_id_executing_unit(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_trader = dissect.party_id_executing_trader(buffer, index, packet, parent)

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, requesting_party_id_executing_system = dissect.requesting_party_id_executing_system(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = dissect.market_id(buffer, index, packet, parent)

  -- Party Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_action_type = dissect.party_action_type(buffer, index, packet, parent)

  -- Requesting Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, requesting_party_id_entering_firm = dissect.requesting_party_id_entering_firm(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Action Report
dissect.party_action_report = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.party_action_report then
    local length = size_of.party_action_report(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_action_report(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.party_action_report, range, display)
  end

  return dissect.party_action_report_fields(buffer, offset, packet, parent)
end

-- Size: Transaction Delay Indicator
size_of.transaction_delay_indicator = 1

-- Display: Transaction Delay Indicator
display.transaction_delay_indicator = function(value)
  if value == 0 then
    return "Transaction Delay Indicator: Notdelayed (0)"
  end
  if value == 1 then
    return "Transaction Delay Indicator: Delayed (1)"
  end

  return "Transaction Delay Indicator: Unknown("..value..")"
end

-- Dissect: Transaction Delay Indicator
dissect.transaction_delay_indicator = function(buffer, offset, packet, parent)
  local length = size_of.transaction_delay_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.transaction_delay_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.transaction_delay_indicator, range, value, display)

  return offset + length, value
end

-- Size: Crossed Indicator
size_of.crossed_indicator = 1

-- Display: Crossed Indicator
display.crossed_indicator = function(value)
  if value == 0 then
    return "Crossed Indicator: Nocrossing (0)"
  end
  if value == 1 then
    return "Crossed Indicator: Crossrejected (1)"
  end

  return "Crossed Indicator: Unknown("..value..")"
end

-- Dissect: Crossed Indicator
dissect.crossed_indicator = function(buffer, offset, packet, parent)
  local length = size_of.crossed_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.crossed_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.crossed_indicator, range, value, display)

  return offset + length, value
end

-- Size: Display Qty
size_of.display_qty = 8

-- Display: Display Qty
display.display_qty = function(value)
  return "Display Qty: "..value:tonumber()/10000
end

-- Dissect: Display Qty
dissect.display_qty = function(buffer, offset, packet, parent)
  local length = size_of.display_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.display_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Response Header Me Comp
size_of.response_header_me_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.request_time

  index = index + size_of.trd_reg_ts_time_in

  index = index + size_of.trd_reg_ts_time_out

  index = index + size_of.response_in

  index = index + size_of.sending_time

  index = index + size_of.msg_seq_num

  index = index + size_of.partition_id

  index = index + size_of.appl_id

  index = index + size_of.appl_msg_id

  index = index + size_of.last_fragment

  return index
end

-- Display: Response Header Me Comp
display.response_header_me_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Response Header Me Comp
dissect.response_header_me_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = dissect.request_time(buffer, index, packet, parent)

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_in = dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_out = dissect.trd_reg_ts_time_out(buffer, index, packet, parent)

  -- Response In: 8 Byte Unsigned Fixed Width Integer
  index, response_in = dissect.response_in(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Appl Msg Id: 16 Byte
  index, appl_msg_id = dissect.appl_msg_id(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Me Comp
dissect.response_header_me_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.response_header_me_comp then
    local length = size_of.response_header_me_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.response_header_me_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.response_header_me_comp, range, display)
  end

  return dissect.response_header_me_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Exec Response
size_of.order_exec_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.trd_reg_ts_entry_time

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.display_qty

  index = index + size_of.market_segment_id

  index = index + size_of.order_id_sfx

  index = index + size_of.exec_restatement_reason

  index = index + size_of.side

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.match_type

  index = index + size_of.triggered

  index = index + size_of.crossed_indicator

  index = index + size_of.transaction_delay_indicator

  index = index + size_of.no_fills

  index = index + size_of.pad_6

  -- Calculate field size from count
  local fills_grp_comp_count = buffer(offset + index - 7, 1):le_uint()
  index = index + fills_grp_comp_count * 32

  return index
end

-- Display: Order Exec Response
display.order_exec_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Exec Response
dissect.order_exec_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 10 fields
  index, response_header_me_comp = dissect.response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_entry_time = dissect.trd_reg_ts_entry_time(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, match_type = dissect.match_type(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Transaction Delay Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transaction_delay_indicator = dissect.transaction_delay_indicator(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer
  index, no_fills = dissect.no_fills(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Fills Grp Comp: Struct of 6 fields
  for i = 1, no_fills do
    index = dissect.fills_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Exec Response
dissect.order_exec_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_exec_response then
    local length = size_of.order_exec_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_exec_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.order_exec_response, range, display)
  end

  return dissect.order_exec_response_fields(buffer, offset, packet, parent)
end

-- Size: Trade At Close Opt In
size_of.trade_at_close_opt_in = 1

-- Display: Trade At Close Opt In
display.trade_at_close_opt_in = function(value)
  if value == 0 then
    return "Trade At Close Opt In: No (0)"
  end
  if value == 1 then
    return "Trade At Close Opt In: Yes (1)"
  end

  return "Trade At Close Opt In: Unknown("..value..")"
end

-- Dissect: Trade At Close Opt In
dissect.trade_at_close_opt_in = function(buffer, offset, packet, parent)
  local length = size_of.trade_at_close_opt_in
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_at_close_opt_in(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trade_at_close_opt_in, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset Value Pct
size_of.peg_offset_value_pct = 8

-- Display: Peg Offset Value Pct
display.peg_offset_value_pct = function(value)
  return "Peg Offset Value Pct: "..value:tonumber()/10000
end

-- Dissect: Peg Offset Value Pct
dissect.peg_offset_value_pct = function(buffer, offset, packet, parent)
  local length = size_of.peg_offset_value_pct
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.peg_offset_value_pct(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.peg_offset_value_pct, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset Value Abs
size_of.peg_offset_value_abs = 8

-- Display: Peg Offset Value Abs
display.peg_offset_value_abs = function(value)
  return "Peg Offset Value Abs: "..value:tonumber()/100000000
end

-- Dissect: Peg Offset Value Abs
dissect.peg_offset_value_abs = function(buffer, offset, packet, parent)
  local length = size_of.peg_offset_value_abs
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.peg_offset_value_abs(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.peg_offset_value_abs, range, value, display)

  return offset + length, value
end

-- Size: Volume Discovery Price
size_of.volume_discovery_price = 8

-- Display: Volume Discovery Price
display.volume_discovery_price = function(value)
  return "Volume Discovery Price: "..value:tonumber()/100000000
end

-- Dissect: Volume Discovery Price
dissect.volume_discovery_price = function(buffer, offset, packet, parent)
  local length = size_of.volume_discovery_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.volume_discovery_price(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.volume_discovery_price, range, value, display)

  return offset + length, value
end

-- Size: Display High Qty
size_of.display_high_qty = 8

-- Display: Display High Qty
display.display_high_qty = function(value)
  return "Display High Qty: "..value:tonumber()/10000
end

-- Dissect: Display High Qty
dissect.display_high_qty = function(buffer, offset, packet, parent)
  local length = size_of.display_high_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.display_high_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.display_high_qty, range, value, display)

  return offset + length, value
end

-- Size: Display Low Qty
size_of.display_low_qty = 8

-- Display: Display Low Qty
display.display_low_qty = function(value)
  return "Display Low Qty: "..value:tonumber()/10000
end

-- Dissect: Display Low Qty
dissect.display_low_qty = function(buffer, offset, packet, parent)
  local length = size_of.display_low_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.display_low_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.display_low_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Exec Report Broadcast
size_of.order_exec_report_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.trd_reg_ts_entry_time

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.price

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.order_qty

  index = index + size_of.display_qty

  index = index + size_of.display_low_qty

  index = index + size_of.display_high_qty

  index = index + size_of.stop_px

  index = index + size_of.volume_discovery_price

  index = index + size_of.peg_offset_value_abs

  index = index + size_of.peg_offset_value_pct

  index = index + size_of.quote_id

  index = index + size_of.market_segment_id

  index = index + size_of.order_id_sfx

  index = index + size_of.expire_date

  index = index + size_of.match_inst_cross_id

  index = index + size_of.party_id_executing_unit

  index = index + size_of.party_id_session_id

  index = index + size_of.party_id_executing_trader

  index = index + size_of.party_id_entering_trader

  index = index + size_of.exec_restatement_reason

  index = index + size_of.party_id_entering_firm

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.order_event_type

  index = index + size_of.match_type

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.trading_capacity

  index = index + size_of.time_in_force

  index = index + size_of.exec_inst

  index = index + size_of.trading_session_sub_id

  index = index + size_of.appl_seq_indicator

  index = index + size_of.party_entering_firm

  index = index + size_of.party_entering_trader

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.no_fills

  index = index + size_of.triggered

  index = index + size_of.crossed_indicator

  index = index + size_of.trade_at_close_opt_in

  index = index + size_of.pad_4

  -- Calculate field size from count
  local fills_grp_comp_count = buffer(offset + index - 8, 1):le_uint()
  index = index + fills_grp_comp_count * 32

  return index
end

-- Display: Order Exec Report Broadcast
display.order_exec_report_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Exec Report Broadcast
dissect.order_exec_report_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_entry_time = dissect.trd_reg_ts_entry_time(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Display Low Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_low_qty = dissect.display_low_qty(buffer, index, packet, parent)

  -- Display High Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_high_qty = dissect.display_high_qty(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Volume Discovery Price: 8 Byte Unsigned Fixed Width Integer
  index, volume_discovery_price = dissect.volume_discovery_price(buffer, index, packet, parent)

  -- Peg Offset Value Abs: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_abs = dissect.peg_offset_value_abs(buffer, index, packet, parent)

  -- Peg Offset Value Pct: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_pct = dissect.peg_offset_value_pct(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_unit = dissect.party_id_executing_unit(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = dissect.party_id_session_id(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_trader = dissect.party_id_executing_trader(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_event_type = dissect.order_event_type(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, match_type = dissect.match_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_session_sub_id = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Party Entering Firm: 5 Byte Ascii String
  index, party_entering_firm = dissect.party_entering_firm(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer
  index, no_fills = dissect.no_fills(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Trade At Close Opt In: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_at_close_opt_in = dissect.trade_at_close_opt_in(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Fills Grp Comp: Struct of 6 fields
  for i = 1, no_fills do
    index = dissect.fills_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Exec Report Broadcast
dissect.order_exec_report_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_exec_report_broadcast then
    local length = size_of.order_exec_report_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_exec_report_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.order_exec_report_broadcast, range, display)
  end

  return dissect.order_exec_report_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Exec Notification
size_of.order_exec_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.display_qty

  index = index + size_of.market_segment_id

  index = index + size_of.order_id_sfx

  index = index + size_of.exec_restatement_reason

  index = index + size_of.side

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.order_event_type

  index = index + size_of.match_type

  index = index + size_of.triggered

  index = index + size_of.crossed_indicator

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.no_fills

  index = index + size_of.pad_2

  -- Calculate field size from count
  local fills_grp_comp_count = buffer(offset + index - 3, 1):le_uint()
  index = index + fills_grp_comp_count * 32

  return index
end

-- Display: Order Exec Notification
display.order_exec_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Exec Notification
dissect.order_exec_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_event_type = dissect.order_event_type(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, match_type = dissect.match_type(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer
  index, no_fills = dissect.no_fills(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Fills Grp Comp: Struct of 6 fields
  for i = 1, no_fills do
    index = dissect.fills_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Exec Notification
dissect.order_exec_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_exec_notification then
    local length = size_of.order_exec_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_exec_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.order_exec_notification, range, display)
  end

  return dissect.order_exec_notification_fields(buffer, offset, packet, parent)
end

-- Size: Headline
size_of.headline = 256

-- Display: Headline
display.headline = function(value)
  return "Headline: "..value
end

-- Dissect: Headline
dissect.headline = function(buffer, offset, packet, parent)
  local length = size_of.headline
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.headline(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.headline, range, value, display)

  return offset + length, value
end

-- Size: Orig Time
size_of.orig_time = 8

-- Display: Orig Time
display.orig_time = function(value)
  return "Orig Time: "..value
end

-- Dissect: Orig Time
dissect.orig_time = function(buffer, offset, packet, parent)
  local length = size_of.orig_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.orig_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: News Broadcast
size_of.news_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.orig_time

  index = index + size_of.var_text_len

  index = index + size_of.headline

  index = index + size_of.pad_6

  -- Parse runtime size of: Var Text
  index = index + buffer(offset + index - 264, 2):le_uint()

  return index
end

-- Display: News Broadcast
display.news_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: News Broadcast
dissect.news_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer
  index, orig_time = dissect.orig_time(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = dissect.var_text_len(buffer, index, packet, parent)

  -- Headline: 256 Byte Ascii String
  index, headline = dissect.headline(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: News Broadcast
dissect.news_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.news_broadcast then
    local length = size_of.news_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.news_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.news_broadcast, range, display)
  end

  return dissect.news_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Enrichment Rule Id
size_of.enrichment_rule_id = 2

-- Display: Enrichment Rule Id
display.enrichment_rule_id = function(value)
  return "Enrichment Rule Id: "..value
end

-- Dissect: Enrichment Rule Id
dissect.enrichment_rule_id = function(buffer, offset, packet, parent)
  local length = size_of.enrichment_rule_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.enrichment_rule_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.enrichment_rule_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Single Short Request
size_of.new_order_single_short_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.order_qty

  index = index + size_of.cl_ord_id

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.match_inst_cross_id

  index = index + size_of.enrichment_rule_id

  index = index + size_of.side

  index = index + size_of.appl_seq_indicator

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.value_check_type_quantity

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.time_in_force

  index = index + size_of.exec_inst

  index = index + size_of.trading_capacity

  index = index + size_of.order_origination

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.pad_6

  return index
end

-- Display: New Order Single Short Request
display.new_order_single_short_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single Short Request
dissect.new_order_single_short_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Order Origination: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_origination = dissect.order_origination(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Short Request
dissect.new_order_single_short_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_single_short_request then
    local length = size_of.new_order_single_short_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_single_short_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.new_order_single_short_request, range, display)
  end

  return dissect.new_order_single_short_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Single Request
size_of.new_order_single_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.price

  index = index + size_of.order_qty

  index = index + size_of.display_qty

  index = index + size_of.display_low_qty

  index = index + size_of.display_high_qty

  index = index + size_of.stop_px

  index = index + size_of.volume_discovery_price

  index = index + size_of.peg_offset_value_abs

  index = index + size_of.peg_offset_value_pct

  index = index + size_of.cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.quote_id

  index = index + size_of.expire_date

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.match_inst_cross_id

  index = index + size_of.appl_seq_indicator

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.value_check_type_quantity

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.time_in_force

  index = index + size_of.exec_inst

  index = index + size_of.trading_session_sub_id

  index = index + size_of.trade_at_close_opt_in

  index = index + size_of.trading_capacity

  index = index + size_of.order_origination

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.pad_2

  return index
end

-- Display: New Order Single Request
display.new_order_single_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single Request
dissect.new_order_single_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Display Low Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_low_qty = dissect.display_low_qty(buffer, index, packet, parent)

  -- Display High Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_high_qty = dissect.display_high_qty(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Volume Discovery Price: 8 Byte Unsigned Fixed Width Integer
  index, volume_discovery_price = dissect.volume_discovery_price(buffer, index, packet, parent)

  -- Peg Offset Value Abs: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_abs = dissect.peg_offset_value_abs(buffer, index, packet, parent)

  -- Peg Offset Value Pct: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_pct = dissect.peg_offset_value_pct(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_session_sub_id = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Trade At Close Opt In: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_at_close_opt_in = dissect.trade_at_close_opt_in(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Order Origination: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_origination = dissect.order_origination(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Request
dissect.new_order_single_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_single_request then
    local length = size_of.new_order_single_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_single_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.new_order_single_request, range, display)
  end

  return dissect.new_order_single_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Response
size_of.new_order_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.trd_reg_ts_entry_time

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.order_id_sfx

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.crossed_indicator

  index = index + size_of.triggered

  index = index + size_of.transaction_delay_indicator

  index = index + size_of.pad_5

  return index
end

-- Display: New Order Response
display.new_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Response
dissect.new_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 10 fields
  index, response_header_me_comp = dissect.response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_entry_time = dissect.trd_reg_ts_entry_time(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Transaction Delay Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transaction_delay_indicator = dissect.transaction_delay_indicator(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response
dissect.new_order_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_response then
    local length = size_of.new_order_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.new_order_response, range, display)
  end

  return dissect.new_order_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Nr Response
size_of.new_order_nr_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.order_id_sfx

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.crossed_indicator

  index = index + size_of.triggered

  index = index + size_of.transaction_delay_indicator

  index = index + size_of.pad_5

  return index
end

-- Display: New Order Nr Response
display.new_order_nr_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Nr Response
dissect.new_order_nr_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Transaction Delay Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transaction_delay_indicator = dissect.transaction_delay_indicator(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Nr Response
dissect.new_order_nr_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_nr_response then
    local length = size_of.new_order_nr_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_nr_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.new_order_nr_response, range, display)
  end

  return dissect.new_order_nr_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Side Alloc Grp Comp
size_of.side_alloc_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.alloc_qty

  index = index + size_of.individual_alloc_id

  index = index + size_of.tes_enrichment_rule_id

  index = index + size_of.side

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.pad_4

  return index
end

-- Display: Side Alloc Grp Comp
display.side_alloc_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Side Alloc Grp Comp
dissect.side_alloc_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Alloc Qty: 8 Byte Unsigned Fixed Width Integer
  index, alloc_qty = dissect.alloc_qty(buffer, index, packet, parent)

  -- Individual Alloc Id: 4 Byte Unsigned Fixed Width Integer
  index, individual_alloc_id = dissect.individual_alloc_id(buffer, index, packet, parent)

  -- Tes Enrichment Rule Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_enrichment_rule_id = dissect.tes_enrichment_rule_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Side Alloc Grp Comp
dissect.side_alloc_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.side_alloc_grp_comp then
    local length = size_of.side_alloc_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.side_alloc_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.side_alloc_grp_comp, range, display)
  end

  return dissect.side_alloc_grp_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Tes Trade Request
size_of.modify_tes_trade_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.last_px

  index = index + size_of.trans_bkd_time

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.settl_date

  index = index + size_of.trd_type

  index = index + size_of.trade_report_type

  index = index + size_of.no_side_allocs

  index = index + size_of.trade_report_text

  index = index + size_of.trade_report_id

  index = index + size_of.pad_4

  -- Calculate field size from count
  local side_alloc_grp_comp_count = buffer(offset + index - 45, 1):le_uint()
  index = index + side_alloc_grp_comp_count * 32

  return index
end

-- Display: Modify Tes Trade Request
display.modify_tes_trade_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Tes Trade Request
dissect.modify_tes_trade_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- No Side Allocs: 1 Byte Unsigned Fixed Width Integer
  index, no_side_allocs = dissect.no_side_allocs(buffer, index, packet, parent)

  -- Trade Report Text: 20 Byte Ascii String
  index, trade_report_text = dissect.trade_report_text(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Side Alloc Grp Comp: Struct of 7 fields
  for i = 1, no_side_allocs do
    index = dissect.side_alloc_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Modify Tes Trade Request
dissect.modify_tes_trade_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.modify_tes_trade_request then
    local length = size_of.modify_tes_trade_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_tes_trade_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.modify_tes_trade_request, range, display)
  end

  return dissect.modify_tes_trade_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Single Short Request
size_of.modify_order_single_short_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.order_qty

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.match_inst_cross_id

  index = index + size_of.enrichment_rule_id

  index = index + size_of.side

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.value_check_type_quantity

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.time_in_force

  index = index + size_of.appl_seq_indicator

  index = index + size_of.exec_inst

  index = index + size_of.trading_capacity

  index = index + size_of.order_origination

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.pad_6

  return index
end

-- Display: Modify Order Single Short Request
display.modify_order_single_short_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Single Short Request
dissect.modify_order_single_short_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Order Origination: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_origination = dissect.order_origination(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Single Short Request
dissect.modify_order_single_short_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_single_short_request then
    local length = size_of.modify_order_single_short_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_single_short_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.modify_order_single_short_request, range, display)
  end

  return dissect.modify_order_single_short_request_fields(buffer, offset, packet, parent)
end

-- Size: Ownership Indicator
size_of.ownership_indicator = 1

-- Display: Ownership Indicator
display.ownership_indicator = function(value)
  if value == 0 then
    return "Ownership Indicator: No Changeof Ownership (0)"
  end
  if value == 1 then
    return "Ownership Indicator: Changeto Executing Trader (1)"
  end

  return "Ownership Indicator: Unknown("..value..")"
end

-- Dissect: Ownership Indicator
dissect.ownership_indicator = function(buffer, offset, packet, parent)
  local length = size_of.ownership_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ownership_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.ownership_indicator, range, value, display)

  return offset + length, value
end

-- Size: Stop Px Indicator
size_of.stop_px_indicator = 1

-- Display: Stop Px Indicator
display.stop_px_indicator = function(value)
  if value == 0 then
    return "Stop Px Indicator: Donotoverwrite (0)"
  end
  if value == 1 then
    return "Stop Px Indicator: Overwrite (1)"
  end

  return "Stop Px Indicator: Unknown("..value..")"
end

-- Dissect: Stop Px Indicator
dissect.stop_px_indicator = function(buffer, offset, packet, parent)
  local length = size_of.stop_px_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.stop_px_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.stop_px_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Single Request
size_of.modify_order_single_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.order_qty

  index = index + size_of.display_qty

  index = index + size_of.display_low_qty

  index = index + size_of.display_high_qty

  index = index + size_of.stop_px

  index = index + size_of.volume_discovery_price

  index = index + size_of.peg_offset_value_abs

  index = index + size_of.peg_offset_value_pct

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.expire_date

  index = index + size_of.market_segment_id

  index = index + size_of.match_inst_cross_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.appl_seq_indicator

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.value_check_type_quantity

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.time_in_force

  index = index + size_of.exec_inst

  index = index + size_of.trading_session_sub_id

  index = index + size_of.stop_px_indicator

  index = index + size_of.trading_capacity

  index = index + size_of.order_origination

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.ownership_indicator

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.pad_1

  return index
end

-- Display: Modify Order Single Request
display.modify_order_single_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Single Request
dissect.modify_order_single_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Display Low Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_low_qty = dissect.display_low_qty(buffer, index, packet, parent)

  -- Display High Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_high_qty = dissect.display_high_qty(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Volume Discovery Price: 8 Byte Unsigned Fixed Width Integer
  index, volume_discovery_price = dissect.volume_discovery_price(buffer, index, packet, parent)

  -- Peg Offset Value Abs: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_abs = dissect.peg_offset_value_abs(buffer, index, packet, parent)

  -- Peg Offset Value Pct: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_pct = dissect.peg_offset_value_pct(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_session_sub_id = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Stop Px Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, stop_px_indicator = dissect.stop_px_indicator(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Order Origination: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_origination = dissect.order_origination(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Ownership Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ownership_indicator = dissect.ownership_indicator(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Single Request
dissect.modify_order_single_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_single_request then
    local length = size_of.modify_order_single_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_single_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.modify_order_single_request, range, display)
  end

  return dissect.modify_order_single_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Response
size_of.modify_order_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.stop_px

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.display_qty

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.order_id_sfx

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.crossed_indicator

  index = index + size_of.triggered

  index = index + size_of.transaction_delay_indicator

  index = index + size_of.pad_5

  return index
end

-- Display: Modify Order Response
display.modify_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Response
dissect.modify_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 10 fields
  index, response_header_me_comp = dissect.response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Transaction Delay Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transaction_delay_indicator = dissect.transaction_delay_indicator(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Response
dissect.modify_order_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_response then
    local length = size_of.modify_order_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.modify_order_response, range, display)
  end

  return dissect.modify_order_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Nr Response
size_of.modify_order_nr_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.stop_px

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.display_qty

  index = index + size_of.order_id_sfx

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.crossed_indicator

  index = index + size_of.triggered

  index = index + size_of.transaction_delay_indicator

  index = index + size_of.pad_5

  return index
end

-- Display: Modify Order Nr Response
display.modify_order_nr_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Nr Response
dissect.modify_order_nr_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Transaction Delay Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transaction_delay_indicator = dissect.transaction_delay_indicator(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Nr Response
dissect.modify_order_nr_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_nr_response then
    local length = size_of.modify_order_nr_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_nr_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.modify_order_nr_response, range, display)
  end

  return dissect.modify_order_nr_response_fields(buffer, offset, packet, parent)
end

-- Size: Quote Entry Status
size_of.quote_entry_status = 1

-- Display: Quote Entry Status
display.quote_entry_status = function(value)
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
dissect.quote_entry_status = function(buffer, offset, packet, parent)
  local length = size_of.quote_entry_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_entry_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_entry_status, range, value, display)

  return offset + length, value
end

-- Size: Quote Entry Reject Reason
size_of.quote_entry_reject_reason = 4

-- Display: Quote Entry Reject Reason
display.quote_entry_reject_reason = function(value)
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
  if value == 134 then
    return "Quote Entry Reject Reason: Invalid Quote Type (134)"
  end
  if value == 135 then
    return "Quote Entry Reject Reason: Pwt Quotenotallowedincurrentstate (135)"
  end
  if value == 136 then
    return "Quote Entry Reject Reason: Standard Quotenotallowedincurrentstate (136)"
  end
  if value == 137 then
    return "Quote Entry Reject Reason: Pwt Quotenotallowedwithcrossedbook (137)"
  end
  if value == 138 then
    return "Quote Entry Reject Reason: Asksidequotenotallowed (138)"
  end
  if value == 139 then
    return "Quote Entry Reject Reason: Asksidequotewithqtynotallowed (139)"
  end
  if value == 140 then
    return "Quote Entry Reject Reason: Invalidchange L Psession (140)"
  end
  if value == 144 then
    return "Quote Entry Reject Reason: On Book Tradingdisabledfor Instrument Type (144)"
  end
  if value == 145 then
    return "Quote Entry Reject Reason: L Plicencenotassigned (145)"
  end
  if value == 146 then
    return "Quote Entry Reject Reason: S Plicencenotassigned (146)"
  end
  if value == 147 then
    return "Quote Entry Reject Reason: Liquidityproviderprotectionbidsidecancelled (147)"
  end
  if value == 148 then
    return "Quote Entry Reject Reason: Liquidityproviderprotectionasksidecancelled (148)"
  end
  if value == 149 then
    return "Quote Entry Reject Reason: Quantity Limit Exceeded Instrument (149)"
  end
  if value == 150 then
    return "Quote Entry Reject Reason: Value Limit Exceeded Instrument (150)"
  end
  if value == 151 then
    return "Quote Entry Reject Reason: Issuer Stopped (151)"
  end
  if value == 152 then
    return "Quote Entry Reject Reason: Partial Exec Of Qrs Order (152)"
  end
  if value == 153 then
    return "Quote Entry Reject Reason: Matching Quote Not Allowed In Current State (153)"
  end
  if value == 155 then
    return "Quote Entry Reject Reason: Outside Quoting Period (155)"
  end
  if value == 156 then
    return "Quote Entry Reject Reason: Match Price Not On Price Step (156)"
  end
  if value == 161 then
    return "Quote Entry Reject Reason: Quantity Limit Exceeds Tsl (161)"
  end
  if value == 162 then
    return "Quote Entry Reject Reason: Invalid Trading Session Sub I Dfor Instrument (162)"
  end
  if value == 163 then
    return "Quote Entry Reject Reason: Too Many Ordersand Quotesin Order Book (163)"
  end
  if value == 164 then
    return "Quote Entry Reject Reason: Inactive Cover (164)"
  end
  if value == 165 then
    return "Quote Entry Reject Reason: Indicative Quotenotallowedincurrentstate (165)"
  end

  return "Quote Entry Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Entry Reject Reason
dissect.quote_entry_reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.quote_entry_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_entry_reject_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_entry_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Cxl Size
size_of.cxl_size = 8

-- Display: Cxl Size
display.cxl_size = function(value)
  return "Cxl Size: "..value:tonumber()/10000
end

-- Dissect: Cxl Size
dissect.cxl_size = function(buffer, offset, packet, parent)
  local length = size_of.cxl_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.cxl_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.cxl_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Entry Ack Grp Comp
size_of.quote_entry_ack_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.cxl_size

  index = index + size_of.quote_entry_reject_reason

  index = index + size_of.quote_entry_status

  index = index + size_of.side

  index = index + size_of.pad_2

  return index
end

-- Display: Quote Entry Ack Grp Comp
display.quote_entry_ack_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Entry Ack Grp Comp
dissect.quote_entry_ack_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Cxl Size: 8 Byte Unsigned Fixed Width Integer
  index, cxl_size = dissect.cxl_size(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 44 values
  index, quote_entry_reject_reason = dissect.quote_entry_reject_reason(buffer, index, packet, parent)

  -- Quote Entry Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_entry_status = dissect.quote_entry_status(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entry Ack Grp Comp
dissect.quote_entry_ack_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_entry_ack_grp_comp then
    local length = size_of.quote_entry_ack_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_entry_ack_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.quote_entry_ack_grp_comp, range, display)
  end

  return dissect.quote_entry_ack_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Quote Side Entries
size_of.no_quote_side_entries = 1

-- Display: No Quote Side Entries
display.no_quote_side_entries = function(value)
  return "No Quote Side Entries: "..value
end

-- Dissect: No Quote Side Entries
dissect.no_quote_side_entries = function(buffer, offset, packet, parent)
  local length = size_of.no_quote_side_entries
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_quote_side_entries(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_quote_side_entries, range, value, display)

  return offset + length, value
end

-- Size: Quote Response Id
size_of.quote_response_id = 8

-- Display: Quote Response Id
display.quote_response_id = function(value)
  return "Quote Response Id: "..value
end

-- Dissect: Quote Response Id
dissect.quote_response_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_response_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quote_response_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.quote_response_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Quote Response
size_of.mass_quote_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.quote_id

  index = index + size_of.quote_response_id

  index = index + size_of.market_segment_id

  index = index + size_of.no_quote_side_entries

  index = index + size_of.pad_3

  -- Calculate field size from count
  local quote_entry_ack_grp_comp_count = buffer(offset + index - 4, 1):le_uint()
  index = index + quote_entry_ack_grp_comp_count * 24

  return index
end

-- Display: Mass Quote Response
display.mass_quote_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Response
dissect.mass_quote_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Quote Response Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_response_id = dissect.quote_response_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- No Quote Side Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_side_entries = dissect.no_quote_side_entries(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  -- Quote Entry Ack Grp Comp: Struct of 6 fields
  for i = 1, no_quote_side_entries do
    index = dissect.quote_entry_ack_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Quote Response
dissect.mass_quote_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote_response then
    local length = size_of.mass_quote_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_quote_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.mass_quote_response, range, display)
  end

  return dissect.mass_quote_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Entry Grp Comp
size_of.quote_entry_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.bid_px

  index = index + size_of.bid_size

  index = index + size_of.offer_px

  index = index + size_of.offer_size

  return index
end

-- Display: Quote Entry Grp Comp
display.quote_entry_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Entry Grp Comp
dissect.quote_entry_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entry Grp Comp
dissect.quote_entry_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_entry_grp_comp then
    local length = size_of.quote_entry_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_entry_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.quote_entry_grp_comp, range, display)
  end

  return dissect.quote_entry_grp_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Quote Request
size_of.mass_quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.quote_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.match_inst_cross_id

  index = index + size_of.enrichment_rule_id

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.value_check_type_quantity

  index = index + size_of.quote_size_type

  index = index + size_of.quote_type

  index = index + size_of.trading_capacity

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.no_quote_entries

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.pad_4

  -- Calculate field size from count
  local quote_entry_grp_comp_count = buffer(offset + index - 7, 1):le_uint()
  index = index + quote_entry_grp_comp_count * 40

  return index
end

-- Display: Mass Quote Request
display.mass_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Request
dissect.mass_quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Quote Size Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_size_type = dissect.quote_size_type(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, quote_type = dissect.quote_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_entries = dissect.no_quote_entries(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Quote Entry Grp Comp: Struct of 5 fields
  for i = 1, no_quote_entries do
    index = dissect.quote_entry_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Quote Request
dissect.mass_quote_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote_request then
    local length = size_of.mass_quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_quote_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.mass_quote_request, range, display)
  end

  return dissect.mass_quote_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logout Response
size_of.logout_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  return index
end

-- Display: Logout Response
display.logout_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Response
dissect.logout_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response
dissect.logout_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout_response then
    local length = size_of.logout_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logout_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.logout_response, range, display)
  end

  return dissect.logout_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logout Request
size_of.logout_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  return index
end

-- Display: Logout Request
display.logout_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Request
dissect.logout_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Request
dissect.logout_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout_request then
    local length = size_of.logout_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logout_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.logout_request, range, display)
  end

  return dissect.logout_request_fields(buffer, offset, packet, parent)
end

-- Size: Default Cstm Appl Ver Sub Id
size_of.default_cstm_appl_ver_sub_id = 5

-- Display: Default Cstm Appl Ver Sub Id
display.default_cstm_appl_ver_sub_id = function(value)
  if value == "C0002" then
    return "Default Cstm Appl Ver Sub Id: Cash (C0002)"
  end

  return "Default Cstm Appl Ver Sub Id: Unknown("..value..")"
end

-- Dissect: Default Cstm Appl Ver Sub Id
dissect.default_cstm_appl_ver_sub_id = function(buffer, offset, packet, parent)
  local length = size_of.default_cstm_appl_ver_sub_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.default_cstm_appl_ver_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.default_cstm_appl_ver_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Default Cstm Appl Ver Id
size_of.default_cstm_appl_ver_id = 30

-- Display: Default Cstm Appl Ver Id
display.default_cstm_appl_ver_id = function(value)
  return "Default Cstm Appl Ver Id: "..value
end

-- Dissect: Default Cstm Appl Ver Id
dissect.default_cstm_appl_ver_id = function(buffer, offset, packet, parent)
  local length = size_of.default_cstm_appl_ver_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.default_cstm_appl_ver_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.default_cstm_appl_ver_id, range, value, display)

  return offset + length, value
end

-- Size: Trad Ses Mode
size_of.trad_ses_mode = 1

-- Display: Trad Ses Mode
display.trad_ses_mode = function(value)
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

  return "Trad Ses Mode: Unknown("..value..")"
end

-- Dissect: Trad Ses Mode
dissect.trad_ses_mode = function(buffer, offset, packet, parent)
  local length = size_of.trad_ses_mode
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trad_ses_mode(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.trad_ses_mode, range, value, display)

  return offset + length, value
end

-- Size: Session Instance Id
size_of.session_instance_id = 4

-- Display: Session Instance Id
display.session_instance_id = function(value)
  return "Session Instance Id: "..value
end

-- Dissect: Session Instance Id
dissect.session_instance_id = function(buffer, offset, packet, parent)
  local length = size_of.session_instance_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_instance_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.session_instance_id, range, value, display)

  return offset + length, value
end

-- Size: Heart Bt Int
size_of.heart_bt_int = 4

-- Display: Heart Bt Int
display.heart_bt_int = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
dissect.heart_bt_int = function(buffer, offset, packet, parent)
  local length = size_of.heart_bt_int
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.heart_bt_int(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Response
size_of.logon_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  index = index + size_of.throttle_time_interval

  index = index + size_of.throttle_no_msgs

  index = index + size_of.throttle_disconnect_limit

  index = index + size_of.heart_bt_int

  index = index + size_of.session_instance_id

  index = index + size_of.market_id

  index = index + size_of.trad_ses_mode

  index = index + size_of.default_cstm_appl_ver_id

  index = index + size_of.default_cstm_appl_ver_sub_id

  index = index + size_of.pad_2

  return index
end

-- Display: Logon Response
display.logon_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Response
dissect.logon_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  -- Throttle Time Interval: 8 Byte Signed Fixed Width Integer
  index, throttle_time_interval = dissect.throttle_time_interval(buffer, index, packet, parent)

  -- Throttle No Msgs: 4 Byte Unsigned Fixed Width Integer
  index, throttle_no_msgs = dissect.throttle_no_msgs(buffer, index, packet, parent)

  -- Throttle Disconnect Limit: 4 Byte Unsigned Fixed Width Integer
  index, throttle_disconnect_limit = dissect.throttle_disconnect_limit(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer
  index, heart_bt_int = dissect.heart_bt_int(buffer, index, packet, parent)

  -- Session Instance Id: 4 Byte Unsigned Fixed Width Integer
  index, session_instance_id = dissect.session_instance_id(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = dissect.market_id(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_mode = dissect.trad_ses_mode(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String
  index, default_cstm_appl_ver_id = dissect.default_cstm_appl_ver_id(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Sub Id: 5 Byte Ascii String Enum with 1 values
  index, default_cstm_appl_ver_sub_id = dissect.default_cstm_appl_ver_sub_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response
dissect.logon_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_response then
    local length = size_of.logon_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logon_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.logon_response, range, display)
  end

  return dissect.logon_response_fields(buffer, offset, packet, parent)
end

-- Size: Application System Vendor
size_of.application_system_vendor = 30

-- Display: Application System Vendor
display.application_system_vendor = function(value)
  return "Application System Vendor: "..value
end

-- Dissect: Application System Vendor
dissect.application_system_vendor = function(buffer, offset, packet, parent)
  local length = size_of.application_system_vendor
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.application_system_vendor(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.application_system_vendor, range, value, display)

  return offset + length, value
end

-- Size: Application System Version
size_of.application_system_version = 30

-- Display: Application System Version
display.application_system_version = function(value)
  return "Application System Version: "..value
end

-- Dissect: Application System Version
dissect.application_system_version = function(buffer, offset, packet, parent)
  local length = size_of.application_system_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.application_system_version(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.application_system_version, range, value, display)

  return offset + length, value
end

-- Size: Application System Name
size_of.application_system_name = 30

-- Display: Application System Name
display.application_system_name = function(value)
  return "Application System Name: "..value
end

-- Dissect: Application System Name
dissect.application_system_name = function(buffer, offset, packet, parent)
  local length = size_of.application_system_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.application_system_name(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.application_system_name, range, value, display)

  return offset + length, value
end

-- Size: Fix Engine Vendor
size_of.fix_engine_vendor = 30

-- Display: Fix Engine Vendor
display.fix_engine_vendor = function(value)
  return "Fix Engine Vendor: "..value
end

-- Dissect: Fix Engine Vendor
dissect.fix_engine_vendor = function(buffer, offset, packet, parent)
  local length = size_of.fix_engine_vendor
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.fix_engine_vendor(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.fix_engine_vendor, range, value, display)

  return offset + length, value
end

-- Size: Fix Engine Version
size_of.fix_engine_version = 30

-- Display: Fix Engine Version
display.fix_engine_version = function(value)
  return "Fix Engine Version: "..value
end

-- Dissect: Fix Engine Version
dissect.fix_engine_version = function(buffer, offset, packet, parent)
  local length = size_of.fix_engine_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.fix_engine_version(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.fix_engine_version, range, value, display)

  return offset + length, value
end

-- Size: Fix Engine Name
size_of.fix_engine_name = 30

-- Display: Fix Engine Name
display.fix_engine_name = function(value)
  return "Fix Engine Name: "..value
end

-- Dissect: Fix Engine Name
dissect.fix_engine_name = function(buffer, offset, packet, parent)
  local length = size_of.fix_engine_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.fix_engine_name(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.fix_engine_name, range, value, display)

  return offset + length, value
end

-- Size: Order Routing Indicator
size_of.order_routing_indicator = 1

-- Display: Order Routing Indicator
display.order_routing_indicator = function(value)
  if value == "Y" then
    return "Order Routing Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Order Routing Indicator: No (N)"
  end

  return "Order Routing Indicator: Unknown("..value..")"
end

-- Dissect: Order Routing Indicator
dissect.order_routing_indicator = function(buffer, offset, packet, parent)
  local length = size_of.order_routing_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.order_routing_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.order_routing_indicator, range, value, display)

  return offset + length, value
end

-- Size: Appl Usage Quotes
size_of.appl_usage_quotes = 1

-- Display: Appl Usage Quotes
display.appl_usage_quotes = function(value)
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
dissect.appl_usage_quotes = function(buffer, offset, packet, parent)
  local length = size_of.appl_usage_quotes
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.appl_usage_quotes(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_usage_quotes, range, value, display)

  return offset + length, value
end

-- Size: Appl Usage Orders
size_of.appl_usage_orders = 1

-- Display: Appl Usage Orders
display.appl_usage_orders = function(value)
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
dissect.appl_usage_orders = function(buffer, offset, packet, parent)
  local length = size_of.appl_usage_orders
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.appl_usage_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_usage_orders, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Request
size_of.logon_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.heart_bt_int

  index = index + size_of.party_id_session_id

  index = index + size_of.default_cstm_appl_ver_id

  index = index + size_of.password

  index = index + size_of.appl_usage_orders

  index = index + size_of.appl_usage_quotes

  index = index + size_of.order_routing_indicator

  index = index + size_of.fix_engine_name

  index = index + size_of.fix_engine_version

  index = index + size_of.fix_engine_vendor

  index = index + size_of.application_system_name

  index = index + size_of.application_system_version

  index = index + size_of.application_system_vendor

  index = index + size_of.pad_3

  return index
end

-- Display: Logon Request
display.logon_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Request
dissect.logon_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer
  index, heart_bt_int = dissect.heart_bt_int(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = dissect.party_id_session_id(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String
  index, default_cstm_appl_ver_id = dissect.default_cstm_appl_ver_id(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = dissect.password(buffer, index, packet, parent)

  -- Appl Usage Orders: 1 Byte Ascii String Enum with 4 values
  index, appl_usage_orders = dissect.appl_usage_orders(buffer, index, packet, parent)

  -- Appl Usage Quotes: 1 Byte Ascii String Enum with 4 values
  index, appl_usage_quotes = dissect.appl_usage_quotes(buffer, index, packet, parent)

  -- Order Routing Indicator: 1 Byte Ascii String Enum with 2 values
  index, order_routing_indicator = dissect.order_routing_indicator(buffer, index, packet, parent)

  -- Fix Engine Name: 30 Byte Ascii String
  index, fix_engine_name = dissect.fix_engine_name(buffer, index, packet, parent)

  -- Fix Engine Version: 30 Byte Ascii String
  index, fix_engine_version = dissect.fix_engine_version(buffer, index, packet, parent)

  -- Fix Engine Vendor: 30 Byte Ascii String
  index, fix_engine_vendor = dissect.fix_engine_vendor(buffer, index, packet, parent)

  -- Application System Name: 30 Byte Ascii String
  index, application_system_name = dissect.application_system_name(buffer, index, packet, parent)

  -- Application System Version: 30 Byte Ascii String
  index, application_system_version = dissect.application_system_version(buffer, index, packet, parent)

  -- Application System Vendor: 30 Byte Ascii String
  index, application_system_vendor = dissect.application_system_vendor(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request
dissect.logon_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_request then
    local length = size_of.logon_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logon_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.logon_request, range, display)
  end

  return dissect.logon_request_fields(buffer, offset, packet, parent)
end

-- Size: User Status
size_of.user_status = 1

-- Display: User Status
display.user_status = function(value)
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
dissect.user_status = function(buffer, offset, packet, parent)
  local length = size_of.user_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.user_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.user_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Legal Notification Broadcast
size_of.legal_notification_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_comp(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.var_text_len

  index = index + size_of.user_status

  index = index + size_of.pad_5

  -- Parse runtime size of: Var Text
  index = index + buffer(offset + index - 8, 2):le_uint()

  return index
end

-- Display: Legal Notification Broadcast
display.legal_notification_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Legal Notification Broadcast
dissect.legal_notification_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = dissect.var_text_len(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_status = dissect.user_status(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Legal Notification Broadcast
dissect.legal_notification_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.legal_notification_broadcast then
    local length = size_of.legal_notification_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.legal_notification_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.legal_notification_broadcast, range, display)
  end

  return dissect.legal_notification_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Issuer Security State Change Response
size_of.issuer_security_state_change_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.security_status_report_id

  return index
end

-- Display: Issuer Security State Change Response
display.issuer_security_state_change_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Issuer Security State Change Response
dissect.issuer_security_state_change_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Security Status Report Id: 8 Byte Unsigned Fixed Width Integer
  index, security_status_report_id = dissect.security_status_report_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Issuer Security State Change Response
dissect.issuer_security_state_change_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.issuer_security_state_change_response then
    local length = size_of.issuer_security_state_change_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.issuer_security_state_change_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.issuer_security_state_change_response, range, display)
  end

  return dissect.issuer_security_state_change_response_fields(buffer, offset, packet, parent)
end

-- Size: Event Date
size_of.event_date = 4

-- Display: Event Date
display.event_date = function(value)
  return "Event Date: "..value
end

-- Dissect: Event Date
dissect.event_date = function(buffer, offset, packet, parent)
  local length = size_of.event_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.event_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.event_date, range, value, display)

  return offset + length, value
end

-- Size: Event Px
size_of.event_px = 8

-- Display: Event Px
display.event_px = function(value)
  return "Event Px: "..value:tonumber()/100000000
end

-- Dissect: Event Px
dissect.event_px = function(buffer, offset, packet, parent)
  local length = size_of.event_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.event_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.event_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status Event Grp Comp
size_of.security_status_event_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.event_px

  index = index + size_of.event_date

  index = index + size_of.event_type

  index = index + size_of.pad_3

  return index
end

-- Display: Security Status Event Grp Comp
display.security_status_event_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Status Event Grp Comp
dissect.security_status_event_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Px: 8 Byte Unsigned Fixed Width Integer
  index, event_px = dissect.event_px(buffer, index, packet, parent)

  -- Event Date: 4 Byte Unsigned Fixed Width Integer
  index, event_date = dissect.event_date(buffer, index, packet, parent)

  -- Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, event_type = dissect.event_type(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Event Grp Comp
dissect.security_status_event_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_status_event_grp_comp then
    local length = size_of.security_status_event_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_status_event_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.security_status_event_grp_comp, range, display)
  end

  return dissect.security_status_event_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Sold Out Indicator
size_of.sold_out_indicator = 1

-- Display: Sold Out Indicator
display.sold_out_indicator = function(value)
  if value == 0 then
    return "Sold Out Indicator: Revertsoldout (0)"
  end
  if value == 1 then
    return "Sold Out Indicator: Soldout (1)"
  end

  return "Sold Out Indicator: Unknown("..value..")"
end

-- Dissect: Sold Out Indicator
dissect.sold_out_indicator = function(buffer, offset, packet, parent)
  local length = size_of.sold_out_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sold_out_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.sold_out_indicator, range, value, display)

  return offset + length, value
end

-- Size: Security Status
size_of.security_status = 1

-- Display: Security Status
display.security_status = function(value)
  if value == 6 then
    return "Security Status: Knockedout (6)"
  end
  if value == 7 then
    return "Security Status: Knockoutrevoked (7)"
  end
  if value == 12 then
    return "Security Status: Knockedoutandsuspend (12)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
dissect.security_status = function(buffer, offset, packet, parent)
  local length = size_of.security_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.security_status, range, value, display)

  return offset + length, value
end

-- Size: No Events
size_of.no_events = 1

-- Display: No Events
display.no_events = function(value)
  return "No Events: "..value
end

-- Dissect: No Events
dissect.no_events = function(buffer, offset, packet, parent)
  local length = size_of.no_events
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_events(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_events, range, value, display)

  return offset + length, value
end

-- Calculate size of: Issuer Security State Change Request
size_of.issuer_security_state_change_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.transact_time

  index = index + size_of.market_segment_id

  index = index + size_of.no_events

  index = index + size_of.security_status

  index = index + size_of.sold_out_indicator

  index = index + size_of.pad_1

  -- Calculate field size from count
  local security_status_event_grp_comp_count = buffer(offset + index - 4, 1):le_uint()
  index = index + security_status_event_grp_comp_count * 16

  return index
end

-- Display: Issuer Security State Change Request
display.issuer_security_state_change_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Issuer Security State Change Request
dissect.issuer_security_state_change_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- No Events: 1 Byte Unsigned Fixed Width Integer
  index, no_events = dissect.no_events(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_status = dissect.security_status(buffer, index, packet, parent)

  -- Sold Out Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, sold_out_indicator = dissect.sold_out_indicator(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Security Status Event Grp Comp: Struct of 4 fields
  for i = 1, no_events do
    index = dissect.security_status_event_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Issuer Security State Change Request
dissect.issuer_security_state_change_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.issuer_security_state_change_request then
    local length = size_of.issuer_security_state_change_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.issuer_security_state_change_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.issuer_security_state_change_request, range, display)
  end

  return dissect.issuer_security_state_change_request_fields(buffer, offset, packet, parent)
end

-- Size: Security Trading Status
size_of.security_trading_status = 1

-- Display: Security Trading Status
display.security_trading_status = function(value)
  if value == 7 then
    return "Security Trading Status: Market Imbalance Buy (7)"
  end
  if value == 8 then
    return "Security Trading Status: Market Imbalance Sell (8)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = size_of.security_trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Qty
size_of.imbalance_qty = 8

-- Display: Imbalance Qty
display.imbalance_qty = function(value)
  return "Imbalance Qty: "..value:tonumber()/10000
end

-- Dissect: Imbalance Qty
dissect.imbalance_qty = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Potential Exec Volume
size_of.potential_exec_volume = 8

-- Display: Potential Exec Volume
display.potential_exec_volume = function(value)
  return "Potential Exec Volume: "..value:tonumber()/10000
end

-- Dissect: Potential Exec Volume
dissect.potential_exec_volume = function(buffer, offset, packet, parent)
  local length = size_of.potential_exec_volume
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.potential_exec_volume(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.potential_exec_volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Issuer Notification
size_of.issuer_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.transact_time

  index = index + size_of.last_px

  index = index + size_of.potential_exec_volume

  index = index + size_of.last_qty

  index = index + size_of.imbalance_qty

  index = index + size_of.market_segment_id

  index = index + size_of.party_id_session_id

  index = index + size_of.security_trading_status

  index = index + size_of.pad_7

  return index
end

-- Display: Issuer Notification
display.issuer_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Issuer Notification
dissect.issuer_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Potential Exec Volume: 8 Byte Unsigned Fixed Width Integer
  index, potential_exec_volume = dissect.potential_exec_volume(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Imbalance Qty: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_qty = dissect.imbalance_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = dissect.party_id_session_id(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, security_trading_status = dissect.security_trading_status(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Issuer Notification
dissect.issuer_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.issuer_notification then
    local length = size_of.issuer_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.issuer_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.issuer_notification, range, display)
  end

  return dissect.issuer_notification_fields(buffer, offset, packet, parent)
end

-- Size: Party Detail Desk Id
size_of.party_detail_desk_id = 3

-- Display: Party Detail Desk Id
display.party_detail_desk_id = function(value)
  return "Party Detail Desk Id: "..value
end

-- Dissect: Party Detail Desk Id
dissect.party_detail_desk_id = function(buffer, offset, packet, parent)
  local length = size_of.party_detail_desk_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_detail_desk_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_detail_desk_id, range, value, display)

  return offset + length, value
end

-- Size: Party Detail Role Qualifier
size_of.party_detail_role_qualifier = 1

-- Display: Party Detail Role Qualifier
display.party_detail_role_qualifier = function(value)
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
dissect.party_detail_role_qualifier = function(buffer, offset, packet, parent)
  local length = size_of.party_detail_role_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_detail_role_qualifier(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_detail_role_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Party Detail Executing Trader
size_of.party_detail_executing_trader = 6

-- Display: Party Detail Executing Trader
display.party_detail_executing_trader = function(value)
  return "Party Detail Executing Trader: "..value
end

-- Dissect: Party Detail Executing Trader
dissect.party_detail_executing_trader = function(buffer, offset, packet, parent)
  local length = size_of.party_detail_executing_trader
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_detail_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_detail_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Party Detail Id Executing Trader
size_of.party_detail_id_executing_trader = 4

-- Display: Party Detail Id Executing Trader
display.party_detail_id_executing_trader = function(value)
  return "Party Detail Id Executing Trader: "..value
end

-- Dissect: Party Detail Id Executing Trader
dissect.party_detail_id_executing_trader = function(buffer, offset, packet, parent)
  local length = size_of.party_detail_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_detail_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.party_detail_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party Details Grp Comp
size_of.party_details_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.party_detail_id_executing_trader

  index = index + size_of.party_detail_executing_trader

  index = index + size_of.party_detail_role_qualifier

  index = index + size_of.party_detail_status

  index = index + size_of.party_detail_desk_id

  index = index + size_of.pad_1

  return index
end

-- Display: Party Details Grp Comp
display.party_details_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details Grp Comp
dissect.party_details_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Detail Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_detail_id_executing_trader = dissect.party_detail_id_executing_trader(buffer, index, packet, parent)

  -- Party Detail Executing Trader: 6 Byte Ascii String
  index, party_detail_executing_trader = dissect.party_detail_executing_trader(buffer, index, packet, parent)

  -- Party Detail Role Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_detail_role_qualifier = dissect.party_detail_role_qualifier(buffer, index, packet, parent)

  -- Party Detail Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_detail_status = dissect.party_detail_status(buffer, index, packet, parent)

  -- Party Detail Desk Id: 3 Byte Ascii String
  index, party_detail_desk_id = dissect.party_detail_desk_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Grp Comp
dissect.party_details_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.party_details_grp_comp then
    local length = size_of.party_details_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.party_details_grp_comp, range, display)
  end

  return dissect.party_details_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Party Details
size_of.no_party_details = 2

-- Display: No Party Details
display.no_party_details = function(value)
  return "No Party Details: "..value
end

-- Dissect: No Party Details
dissect.no_party_details = function(buffer, offset, packet, parent)
  local length = size_of.no_party_details
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_party_details(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_party_details, range, value, display)

  return offset + length, value
end

-- Size: Last Entity Processed
size_of.last_entity_processed = 16

-- Display: Last Entity Processed
display.last_entity_processed = function(value)
  return "Last Entity Processed: "..value
end

-- Dissect: Last Entity Processed
dissect.last_entity_processed = function(buffer, offset, packet, parent)
  local length = size_of.last_entity_processed
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.last_entity_processed(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.last_entity_processed, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inquire User Response
size_of.inquire_user_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  index = index + size_of.last_entity_processed

  index = index + size_of.no_party_details

  index = index + size_of.pad_6

  -- Calculate field size from count
  local party_details_grp_comp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + party_details_grp_comp_count * 16

  return index
end

-- Display: Inquire User Response
display.inquire_user_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire User Response
dissect.inquire_user_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = dissect.last_entity_processed(buffer, index, packet, parent)

  -- No Party Details: 2 Byte Unsigned Fixed Width Integer
  index, no_party_details = dissect.no_party_details(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Party Details Grp Comp: Struct of 6 fields
  for i = 1, no_party_details do
    index = dissect.party_details_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Inquire User Response
dissect.inquire_user_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.inquire_user_response then
    local length = size_of.inquire_user_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inquire_user_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.inquire_user_response, range, display)
  end

  return dissect.inquire_user_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Inquire User Request
size_of.inquire_user_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.last_entity_processed

  return index
end

-- Display: Inquire User Request
display.inquire_user_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire User Request
dissect.inquire_user_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = dissect.last_entity_processed(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire User Request
dissect.inquire_user_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inquire_user_request then
    local length = size_of.inquire_user_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inquire_user_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.inquire_user_request, range, display)
  end

  return dissect.inquire_user_request_fields(buffer, offset, packet, parent)
end

-- Size: Session Sub Mode
size_of.session_sub_mode = 1

-- Display: Session Sub Mode
display.session_sub_mode = function(value)
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
dissect.session_sub_mode = function(buffer, offset, packet, parent)
  local length = size_of.session_sub_mode
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_sub_mode(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.session_sub_mode, range, value, display)

  return offset + length, value
end

-- Size: Session Mode
size_of.session_mode = 1

-- Display: Session Mode
display.session_mode = function(value)
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
dissect.session_mode = function(buffer, offset, packet, parent)
  local length = size_of.session_mode
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_mode(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.session_mode, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sessions Grp Comp
size_of.sessions_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.party_id_session_id

  index = index + size_of.session_mode

  index = index + size_of.session_sub_mode

  index = index + size_of.pad_2

  return index
end

-- Display: Sessions Grp Comp
display.sessions_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sessions Grp Comp
dissect.sessions_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = dissect.party_id_session_id(buffer, index, packet, parent)

  -- Session Mode: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_mode = dissect.session_mode(buffer, index, packet, parent)

  -- Session Sub Mode: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_sub_mode = dissect.session_sub_mode(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Sessions Grp Comp
dissect.sessions_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sessions_grp_comp then
    local length = size_of.sessions_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sessions_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.sessions_grp_comp, range, display)
  end

  return dissect.sessions_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Sessions
size_of.no_sessions = 2

-- Display: No Sessions
display.no_sessions = function(value)
  return "No Sessions: "..value
end

-- Dissect: No Sessions
dissect.no_sessions = function(buffer, offset, packet, parent)
  local length = size_of.no_sessions
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_sessions(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_sessions, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inquire Session List Response
size_of.inquire_session_list_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  index = index + size_of.no_sessions

  index = index + size_of.pad_6

  -- Calculate field size from count
  local sessions_grp_comp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + sessions_grp_comp_count * 8

  return index
end

-- Display: Inquire Session List Response
display.inquire_session_list_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Session List Response
dissect.inquire_session_list_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  -- No Sessions: 2 Byte Unsigned Fixed Width Integer
  index, no_sessions = dissect.no_sessions(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Sessions Grp Comp: Struct of 4 fields
  for i = 1, no_sessions do
    index = dissect.sessions_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Inquire Session List Response
dissect.inquire_session_list_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.inquire_session_list_response then
    local length = size_of.inquire_session_list_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inquire_session_list_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.inquire_session_list_response, range, display)
  end

  return dissect.inquire_session_list_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Inquire Session List Request
size_of.inquire_session_list_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  return index
end

-- Display: Inquire Session List Request
display.inquire_session_list_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Session List Request
dissect.inquire_session_list_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire Session List Request
dissect.inquire_session_list_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inquire_session_list_request then
    local length = size_of.inquire_session_list_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inquire_session_list_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.inquire_session_list_request, range, display)
  end

  return dissect.inquire_session_list_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Enrichment Rules Grp Comp
size_of.enrichment_rules_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.enrichment_rule_id

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.pad_6

  return index
end

-- Display: Enrichment Rules Grp Comp
display.enrichment_rules_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Enrichment Rules Grp Comp
dissect.enrichment_rules_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Enrichment Rules Grp Comp
dissect.enrichment_rules_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.enrichment_rules_grp_comp then
    local length = size_of.enrichment_rules_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.enrichment_rules_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.enrichment_rules_grp_comp, range, display)
  end

  return dissect.enrichment_rules_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Enrichment Rules
size_of.no_enrichment_rules = 2

-- Display: No Enrichment Rules
display.no_enrichment_rules = function(value)
  return "No Enrichment Rules: "..value
end

-- Dissect: No Enrichment Rules
dissect.no_enrichment_rules = function(buffer, offset, packet, parent)
  local length = size_of.no_enrichment_rules
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_enrichment_rules(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_enrichment_rules, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inquire Enrichment Rule Id List Response
size_of.inquire_enrichment_rule_id_list_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_comp(buffer, offset + index)

  index = index + size_of.last_entity_processed

  index = index + size_of.no_enrichment_rules

  index = index + size_of.pad_6

  -- Calculate field size from count
  local enrichment_rules_grp_comp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + enrichment_rules_grp_comp_count * 48

  return index
end

-- Display: Inquire Enrichment Rule Id List Response
display.inquire_enrichment_rule_id_list_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Enrichment Rule Id List Response
dissect.inquire_enrichment_rule_id_list_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = dissect.response_header_comp(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = dissect.last_entity_processed(buffer, index, packet, parent)

  -- No Enrichment Rules: 2 Byte Unsigned Fixed Width Integer
  index, no_enrichment_rules = dissect.no_enrichment_rules(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Enrichment Rules Grp Comp: Struct of 5 fields
  for i = 1, no_enrichment_rules do
    index = dissect.enrichment_rules_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Inquire Enrichment Rule Id List Response
dissect.inquire_enrichment_rule_id_list_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.inquire_enrichment_rule_id_list_response then
    local length = size_of.inquire_enrichment_rule_id_list_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inquire_enrichment_rule_id_list_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.inquire_enrichment_rule_id_list_response, range, display)
  end

  return dissect.inquire_enrichment_rule_id_list_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Inquire Enrichment Rule Id List Request
size_of.inquire_enrichment_rule_id_list_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.last_entity_processed

  return index
end

-- Display: Inquire Enrichment Rule Id List Request
display.inquire_enrichment_rule_id_list_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Enrichment Rule Id List Request
dissect.inquire_enrichment_rule_id_list_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = dissect.last_entity_processed(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire Enrichment Rule Id List Request
dissect.inquire_enrichment_rule_id_list_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inquire_enrichment_rule_id_list_request then
    local length = size_of.inquire_enrichment_rule_id_list_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inquire_enrichment_rule_id_list_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.inquire_enrichment_rule_id_list_request, range, display)
  end

  return dissect.inquire_enrichment_rule_id_list_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat Notification
size_of.heartbeat_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.notif_header_comp(buffer, offset + index)

  return index
end

-- Display: Heartbeat Notification
display.heartbeat_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat Notification
dissect.heartbeat_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = dissect.notif_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Notification
dissect.heartbeat_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat_notification then
    local length = size_of.heartbeat_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.heartbeat_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.heartbeat_notification, range, display)
  end

  return dissect.heartbeat_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat
size_of.heartbeat = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  return index
end

-- Display: Heartbeat
display.heartbeat = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat
dissect.heartbeat_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
dissect.heartbeat = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local length = size_of.heartbeat(buffer, offset)
    local range = buffer(offset, length)
    local display = display.heartbeat(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.heartbeat, range, display)
  end

  return dissect.heartbeat_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Forced User Logout Notification
size_of.forced_user_logout_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.notif_header_comp(buffer, offset + index)

  index = index + size_of.username

  index = index + size_of.var_text_len

  index = index + size_of.user_status

  index = index + size_of.pad_1

  -- Parse runtime size of: Var Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Forced User Logout Notification
display.forced_user_logout_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Forced User Logout Notification
dissect.forced_user_logout_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = dissect.notif_header_comp(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer
  index, username = dissect.username(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = dissect.var_text_len(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_status = dissect.user_status(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Forced User Logout Notification
dissect.forced_user_logout_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.forced_user_logout_notification then
    local length = size_of.forced_user_logout_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.forced_user_logout_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.forced_user_logout_notification, range, display)
  end

  return dissect.forced_user_logout_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Forced Logout Notification
size_of.forced_logout_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.notif_header_comp(buffer, offset + index)

  index = index + size_of.var_text_len

  index = index + size_of.pad_6

  -- Parse runtime size of: Var Text
  index = index + buffer(offset + index - 8, 2):le_uint()

  return index
end

-- Display: Forced Logout Notification
display.forced_logout_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Forced Logout Notification
dissect.forced_logout_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = dissect.notif_header_comp(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = dissect.var_text_len(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Forced Logout Notification
dissect.forced_logout_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.forced_logout_notification then
    local length = size_of.forced_logout_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.forced_logout_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.forced_logout_notification, range, display)
  end

  return dissect.forced_logout_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Extended Deletion Report
size_of.extended_deletion_report = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.trd_reg_ts_entry_time

  index = index + size_of.price

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.order_qty

  index = index + size_of.display_qty

  index = index + size_of.display_low_qty

  index = index + size_of.display_high_qty

  index = index + size_of.stop_px

  index = index + size_of.volume_discovery_price

  index = index + size_of.peg_offset_value_abs

  index = index + size_of.peg_offset_value_pct

  index = index + size_of.quote_id

  index = index + size_of.market_segment_id

  index = index + size_of.order_id_sfx

  index = index + size_of.expire_date

  index = index + size_of.match_inst_cross_id

  index = index + size_of.party_id_executing_unit

  index = index + size_of.party_id_session_id

  index = index + size_of.party_id_executing_trader

  index = index + size_of.party_id_entering_trader

  index = index + size_of.exec_restatement_reason

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.trading_capacity

  index = index + size_of.time_in_force

  index = index + size_of.exec_inst

  index = index + size_of.trading_session_sub_id

  index = index + size_of.appl_seq_indicator

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.party_entering_firm

  index = index + size_of.party_entering_trader

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.triggered

  index = index + size_of.pad_2

  return index
end

-- Display: Extended Deletion Report
display.extended_deletion_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Extended Deletion Report
dissect.extended_deletion_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_entry_time = dissect.trd_reg_ts_entry_time(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Display Low Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_low_qty = dissect.display_low_qty(buffer, index, packet, parent)

  -- Display High Qty: 8 Byte Unsigned Fixed Width Integer
  index, display_high_qty = dissect.display_high_qty(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Volume Discovery Price: 8 Byte Unsigned Fixed Width Integer
  index, volume_discovery_price = dissect.volume_discovery_price(buffer, index, packet, parent)

  -- Peg Offset Value Abs: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_abs = dissect.peg_offset_value_abs(buffer, index, packet, parent)

  -- Peg Offset Value Pct: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_pct = dissect.peg_offset_value_pct(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_unit = dissect.party_id_executing_unit(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = dissect.party_id_session_id(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_trader = dissect.party_id_executing_trader(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_session_sub_id = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Party Entering Firm: 5 Byte Ascii String
  index, party_entering_firm = dissect.party_entering_firm(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Deletion Report
dissect.extended_deletion_report = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.extended_deletion_report then
    local length = size_of.extended_deletion_report(buffer, offset)
    local range = buffer(offset, length)
    local display = display.extended_deletion_report(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.extended_deletion_report, range, display)
  end

  return dissect.extended_deletion_report_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Enter Tes Trade Request
size_of.enter_tes_trade_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.trans_bkd_time

  index = index + size_of.settl_curr_fx_rate

  index = index + size_of.market_segment_id

  index = index + size_of.settl_date

  index = index + size_of.trd_type

  index = index + size_of.trade_report_type

  index = index + size_of.no_side_allocs

  index = index + size_of.trade_report_text

  index = index + size_of.trade_report_id

  index = index + size_of.pad_4

  -- Calculate field size from count
  local side_alloc_grp_comp_count = buffer(offset + index - 45, 1):le_uint()
  index = index + side_alloc_grp_comp_count * 32

  return index
end

-- Display: Enter Tes Trade Request
display.enter_tes_trade_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Enter Tes Trade Request
dissect.enter_tes_trade_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Settl Curr Fx Rate: 8 Byte Unsigned Fixed Width Integer
  index, settl_curr_fx_rate = dissect.settl_curr_fx_rate(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- No Side Allocs: 1 Byte Unsigned Fixed Width Integer
  index, no_side_allocs = dissect.no_side_allocs(buffer, index, packet, parent)

  -- Trade Report Text: 20 Byte Ascii String
  index, trade_report_text = dissect.trade_report_text(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Side Alloc Grp Comp: Struct of 7 fields
  for i = 1, no_side_allocs do
    index = dissect.side_alloc_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Enter Tes Trade Request
dissect.enter_tes_trade_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.enter_tes_trade_request then
    local length = size_of.enter_tes_trade_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.enter_tes_trade_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.enter_tes_trade_request, range, display)
  end

  return dissect.enter_tes_trade_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Tes Trade Request
size_of.delete_tes_trade_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.package_id

  index = index + size_of.market_segment_id

  index = index + size_of.tes_exec_id

  index = index + size_of.trd_type

  index = index + size_of.trade_report_type

  index = index + size_of.trade_report_id

  index = index + size_of.pad_5

  return index
end

-- Display: Delete Tes Trade Request
display.delete_tes_trade_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Tes Trade Request
dissect.delete_tes_trade_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Tes Trade Request
dissect.delete_tes_trade_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_tes_trade_request then
    local length = size_of.delete_tes_trade_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_tes_trade_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_tes_trade_request, range, display)
  end

  return dissect.delete_tes_trade_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Single Request
size_of.delete_order_single_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.order_origination

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.pad_6

  return index
end

-- Display: Delete Order Single Request
display.delete_order_single_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Single Request
dissect.delete_order_single_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Order Origination: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_origination = dissect.order_origination(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Single Request
dissect.delete_order_single_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_single_request then
    local length = size_of.delete_order_single_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_order_single_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_order_single_request, range, display)
  end

  return dissect.delete_order_single_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Response
size_of.delete_order_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.order_id_sfx

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.transaction_delay_indicator

  index = index + size_of.pad_7

  return index
end

-- Display: Delete Order Response
display.delete_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Response
dissect.delete_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 10 fields
  index, response_header_me_comp = dissect.response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Transaction Delay Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transaction_delay_indicator = dissect.transaction_delay_indicator(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Response
dissect.delete_order_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_response then
    local length = size_of.delete_order_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_order_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_order_response, range, display)
  end

  return dissect.delete_order_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Nr Response
size_of.delete_order_nr_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.order_id_sfx

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.transaction_delay_indicator

  index = index + size_of.pad_7

  return index
end

-- Display: Delete Order Nr Response
display.delete_order_nr_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Nr Response
dissect.delete_order_nr_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Transaction Delay Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transaction_delay_indicator = dissect.transaction_delay_indicator(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Nr Response
dissect.delete_order_nr_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_nr_response then
    local length = size_of.delete_order_nr_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_order_nr_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_order_nr_response, range, display)
  end

  return dissect.delete_order_nr_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Broadcast
size_of.delete_order_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.quote_id

  index = index + size_of.order_id_sfx

  index = index + size_of.market_segment_id

  index = index + size_of.party_id_entering_trader

  index = index + size_of.party_id_session_id

  index = index + size_of.exec_restatement_reason

  index = index + size_of.party_id_entering_firm

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.side

  index = index + size_of.order_event_type

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.party_entering_firm

  index = index + size_of.party_entering_trader

  index = index + size_of.pad_2

  return index
end

-- Display: Delete Order Broadcast
display.delete_order_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Broadcast
dissect.delete_order_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = dissect.order_id_sfx(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = dissect.party_id_session_id(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 10 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_event_type = dissect.order_event_type(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Party Entering Firm: 5 Byte Ascii String
  index, party_entering_firm = dissect.party_entering_firm(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Broadcast
dissect.delete_order_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_broadcast then
    local length = size_of.delete_order_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_order_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_order_broadcast, range, display)
  end

  return dissect.delete_order_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Quote Response
size_of.delete_all_quote_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.no_not_affected_securities

  index = index + size_of.pad_6

  -- Calculate field size from count
  local not_affected_securities_grp_comp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_securities_grp_comp_count * 8

  return index
end

-- Display: Delete All Quote Response
display.delete_all_quote_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Quote Response
dissect.delete_all_quote_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_securities = dissect.no_not_affected_securities(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Not Affected Securities Grp Comp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = dissect.not_affected_securities_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delete All Quote Response
dissect.delete_all_quote_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.delete_all_quote_response then
    local length = size_of.delete_all_quote_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_all_quote_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_all_quote_response, range, display)
  end

  return dissect.delete_all_quote_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Quote Request
size_of.delete_all_quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.pad_6

  return index
end

-- Display: Delete All Quote Request
display.delete_all_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Quote Request
dissect.delete_all_quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Quote Request
dissect.delete_all_quote_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_all_quote_request then
    local length = size_of.delete_all_quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_all_quote_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_all_quote_request, range, display)
  end

  return dissect.delete_all_quote_request_fields(buffer, offset, packet, parent)
end

-- Size: Target Party Id Desk Id
size_of.target_party_id_desk_id = 3

-- Display: Target Party Id Desk Id
display.target_party_id_desk_id = function(value)
  return "Target Party Id Desk Id: "..value
end

-- Dissect: Target Party Id Desk Id
dissect.target_party_id_desk_id = function(buffer, offset, packet, parent)
  local length = size_of.target_party_id_desk_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.target_party_id_desk_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.target_party_id_desk_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Delete All Quote Broadcast
size_of.delete_all_quote_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.security_id

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.party_id_entering_trader

  index = index + size_of.target_party_id_executing_trader

  index = index + size_of.no_not_affected_securities

  index = index + size_of.mass_action_reason

  index = index + size_of.party_id_entering_firm

  index = index + size_of.target_party_id_desk_id

  index = index + size_of.pad_1

  -- Calculate field size from count
  local not_affected_securities_grp_comp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_securities_grp_comp_count * 8

  return index
end

-- Display: Delete All Quote Broadcast
display.delete_all_quote_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Quote Broadcast
dissect.delete_all_quote_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_executing_trader = dissect.target_party_id_executing_trader(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_securities = dissect.no_not_affected_securities(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, mass_action_reason = dissect.mass_action_reason(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Target Party Id Desk Id: 3 Byte Ascii String
  index, target_party_id_desk_id = dissect.target_party_id_desk_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Not Affected Securities Grp Comp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = dissect.not_affected_securities_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delete All Quote Broadcast
dissect.delete_all_quote_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.delete_all_quote_broadcast then
    local length = size_of.delete_all_quote_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_all_quote_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_all_quote_broadcast, range, display)
  end

  return dissect.delete_all_quote_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Affected Order Request Id
size_of.affected_order_request_id = 4

-- Display: Affected Order Request Id
display.affected_order_request_id = function(value)
  return "Affected Order Request Id: "..value
end

-- Dissect: Affected Order Request Id
dissect.affected_order_request_id = function(buffer, offset, packet, parent)
  local length = size_of.affected_order_request_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.affected_order_request_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.affected_order_request_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Affected Order Requests Grp Comp
size_of.affected_order_requests_grp_comp = function(buffer, offset)
  local index = 0

  index = index + size_of.affected_order_request_id

  index = index + size_of.pad_4

  return index
end

-- Display: Affected Order Requests Grp Comp
display.affected_order_requests_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Affected Order Requests Grp Comp
dissect.affected_order_requests_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Affected Order Request Id: 4 Byte Unsigned Fixed Width Integer
  index, affected_order_request_id = dissect.affected_order_request_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Affected Order Requests Grp Comp
dissect.affected_order_requests_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.affected_order_requests_grp_comp then
    local length = size_of.affected_order_requests_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.affected_order_requests_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.affected_order_requests_grp_comp, range, display)
  end

  return dissect.affected_order_requests_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Affected Order Requests
size_of.no_affected_order_requests = 2

-- Display: No Affected Order Requests
display.no_affected_order_requests = function(value)
  return "No Affected Order Requests: "..value
end

-- Dissect: No Affected Order Requests
dissect.no_affected_order_requests = function(buffer, offset, packet, parent)
  local length = size_of.no_affected_order_requests
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_affected_order_requests(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.no_affected_order_requests, range, value, display)

  return offset + length, value
end

-- Calculate size of: Delete All Order Response
size_of.delete_all_order_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.response_header_me_comp(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.no_not_affected_orders

  index = index + size_of.no_affected_orders

  index = index + size_of.no_affected_order_requests

  index = index + size_of.pad_2

  -- Calculate field size from count
  local not_affected_orders_grp_comp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_orders_grp_comp_count * 16

  -- Calculate field size from count
  local affected_ord_grp_comp_count = buffer(offset + index - 22, 2):le_uint()
  index = index + affected_ord_grp_comp_count * 16

  -- Calculate field size from count
  local affected_order_requests_grp_comp_count = buffer(offset + index - 36, 2):le_uint()
  index = index + affected_order_requests_grp_comp_count * 8

  return index
end

-- Display: Delete All Order Response
display.delete_all_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Response
dissect.delete_all_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 10 fields
  index, response_header_me_comp = dissect.response_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- No Not Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_orders = dissect.no_not_affected_orders(buffer, index, packet, parent)

  -- No Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_affected_orders = dissect.no_affected_orders(buffer, index, packet, parent)

  -- No Affected Order Requests: 2 Byte Unsigned Fixed Width Integer
  index, no_affected_order_requests = dissect.no_affected_order_requests(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Not Affected Orders Grp Comp: Struct of 2 fields
  for i = 1, no_not_affected_orders do
    index = dissect.not_affected_orders_grp_comp(buffer, index, packet, parent)
  end

  -- Affected Ord Grp Comp: Struct of 2 fields
  for i = 1, no_affected_orders do
    index = dissect.affected_ord_grp_comp(buffer, index, packet, parent)
  end

  -- Affected Order Requests Grp Comp: Struct of 2 fields
  for i = 1, no_affected_order_requests do
    index = dissect.affected_order_requests_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delete All Order Response
dissect.delete_all_order_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.delete_all_order_response then
    local length = size_of.delete_all_order_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_all_order_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_all_order_response, range, display)
  end

  return dissect.delete_all_order_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Order Request
size_of.delete_all_order_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.target_party_id_executing_trader

  index = index + size_of.side

  index = index + size_of.order_origination

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  return index
end

-- Display: Delete All Order Request
display.delete_all_order_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Request
dissect.delete_all_order_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_executing_trader = dissect.target_party_id_executing_trader(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Origination: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_origination = dissect.order_origination(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Request
dissect.delete_all_order_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_all_order_request then
    local length = size_of.delete_all_order_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_all_order_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_all_order_request, range, display)
  end

  return dissect.delete_all_order_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Order Quote Event Broadcast
size_of.delete_all_order_quote_event_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.security_id

  index = index + size_of.market_segment_id

  index = index + size_of.mass_action_reason

  index = index + size_of.exec_inst

  index = index + size_of.pad_2

  return index
end

-- Display: Delete All Order Quote Event Broadcast
display.delete_all_order_quote_event_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Quote Event Broadcast
dissect.delete_all_order_quote_event_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, mass_action_reason = dissect.mass_action_reason(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Quote Event Broadcast
dissect.delete_all_order_quote_event_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_all_order_quote_event_broadcast then
    local length = size_of.delete_all_order_quote_event_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_all_order_quote_event_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_all_order_quote_event_broadcast, range, display)
  end

  return dissect.delete_all_order_quote_event_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Order Nr Response
size_of.delete_all_order_nr_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  return index
end

-- Display: Delete All Order Nr Response
display.delete_all_order_nr_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Nr Response
dissect.delete_all_order_nr_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Nr Response
dissect.delete_all_order_nr_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_all_order_nr_response then
    local length = size_of.delete_all_order_nr_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_all_order_nr_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_all_order_nr_response, range, display)
  end

  return dissect.delete_all_order_nr_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Order Broadcast
size_of.delete_all_order_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.rbc_header_me_comp(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.target_party_id_executing_trader

  index = index + size_of.party_id_entering_trader

  index = index + size_of.no_not_affected_orders

  index = index + size_of.no_affected_orders

  index = index + size_of.no_affected_order_requests

  index = index + size_of.party_id_entering_firm

  index = index + size_of.mass_action_reason

  index = index + size_of.exec_inst

  index = index + size_of.side

  index = index + size_of.pad_6

  -- Calculate field size from count
  local not_affected_orders_grp_comp_count = buffer(offset + index - 16, 2):le_uint()
  index = index + not_affected_orders_grp_comp_count * 16

  -- Calculate field size from count
  local affected_ord_grp_comp_count = buffer(offset + index - 30, 2):le_uint()
  index = index + affected_ord_grp_comp_count * 16

  -- Calculate field size from count
  local affected_order_requests_grp_comp_count = buffer(offset + index - 44, 2):le_uint()
  index = index + affected_order_requests_grp_comp_count * 8

  return index
end

-- Display: Delete All Order Broadcast
display.delete_all_order_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Broadcast
dissect.delete_all_order_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_executing_trader = dissect.target_party_id_executing_trader(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- No Not Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_orders = dissect.no_not_affected_orders(buffer, index, packet, parent)

  -- No Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_affected_orders = dissect.no_affected_orders(buffer, index, packet, parent)

  -- No Affected Order Requests: 2 Byte Unsigned Fixed Width Integer
  index, no_affected_order_requests = dissect.no_affected_order_requests(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, mass_action_reason = dissect.mass_action_reason(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Not Affected Orders Grp Comp: Struct of 2 fields
  for i = 1, no_not_affected_orders do
    index = dissect.not_affected_orders_grp_comp(buffer, index, packet, parent)
  end

  -- Affected Ord Grp Comp: Struct of 2 fields
  for i = 1, no_affected_orders do
    index = dissect.affected_ord_grp_comp(buffer, index, packet, parent)
  end

  -- Affected Order Requests Grp Comp: Struct of 2 fields
  for i = 1, no_affected_order_requests do
    index = dissect.affected_order_requests_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delete All Order Broadcast
dissect.delete_all_order_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.delete_all_order_broadcast then
    local length = size_of.delete_all_order_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_all_order_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.delete_all_order_broadcast, range, display)
  end

  return dissect.delete_all_order_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cross Request Response
size_of.cross_request_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.nr_response_header_me_comp(buffer, offset + index)

  index = index + size_of.exec_id

  return index
end

-- Display: Cross Request Response
display.cross_request_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Request Response
dissect.cross_request_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 8 fields
  index, nr_response_header_me_comp = dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request Response
dissect.cross_request_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_request_response then
    local length = size_of.cross_request_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cross_request_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.cross_request_response, range, display)
  end

  return dissect.cross_request_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cross Request
size_of.cross_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.market_segment_id

  index = index + size_of.pad_4

  return index
end

-- Display: Cross Request
display.cross_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Request
dissect.cross_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request
dissect.cross_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_request then
    local length = size_of.cross_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cross_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.cross_request, range, display)
  end

  return dissect.cross_request_fields(buffer, offset, packet, parent)
end

-- Size: Appl Id Status
size_of.appl_id_status = 4

-- Display: Appl Id Status
display.appl_id_status = function(value)
  if value == 105 then
    return "Appl Id Status: Outboundconversionerror (105)"
  end

  return "Appl Id Status: Unknown("..value..")"
end

-- Dissect: Appl Id Status
dissect.appl_id_status = function(buffer, offset, packet, parent)
  local length = size_of.appl_id_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_id_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v9_1.fields.appl_id_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broadcast Error Notification
size_of.broadcast_error_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out_comp(buffer, offset + index)

  index = index + size_of.notif_header_comp(buffer, offset + index)

  index = index + size_of.appl_id_status

  index = index + size_of.ref_appl_sub_id

  index = index + size_of.var_text_len

  index = index + size_of.ref_appl_id

  index = index + size_of.session_status

  index = index + size_of.pad_4

  -- Parse runtime size of: Var Text
  index = index + buffer(offset + index - 8, 2):le_uint()

  return index
end

-- Display: Broadcast Error Notification
display.broadcast_error_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broadcast Error Notification
dissect.broadcast_error_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out Comp: Struct of 3 fields
  index, message_header_out_comp = dissect.message_header_out_comp(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = dissect.notif_header_comp(buffer, index, packet, parent)

  -- Appl Id Status: 4 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, appl_id_status = dissect.appl_id_status(buffer, index, packet, parent)

  -- Ref Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, ref_appl_sub_id = dissect.ref_appl_sub_id(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = dissect.var_text_len(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, ref_appl_id = dissect.ref_appl_id(buffer, index, packet, parent)

  -- Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, session_status = dissect.session_status(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Broadcast Error Notification
dissect.broadcast_error_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.broadcast_error_notification then
    local length = size_of.broadcast_error_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.broadcast_error_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.broadcast_error_notification, range, display)
  end

  return dissect.broadcast_error_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Approve Tes Trade Request
size_of.approve_tes_trade_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in_comp(buffer, offset + index)

  index = index + size_of.request_header_comp(buffer, offset + index)

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.alloc_qty

  index = index + size_of.package_id

  index = index + size_of.alloc_id

  index = index + size_of.tes_exec_id

  index = index + size_of.market_segment_id

  index = index + size_of.trd_type

  index = index + size_of.trading_capacity

  index = index + size_of.trade_report_type

  index = index + size_of.side

  index = index + size_of.value_check_type_value

  index = index + size_of.value_check_type_quantity

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.order_origination

  index = index + size_of.trade_report_id

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_4

  index = index + size_of.pad_6

  return index
end

-- Display: Approve Tes Trade Request
display.approve_tes_trade_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Approve Tes Trade Request
dissect.approve_tes_trade_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In Comp: Struct of 4 fields
  index, message_header_in_comp = dissect.message_header_in_comp(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = dissect.request_header_comp(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Alloc Qty: 8 Byte Unsigned Fixed Width Integer
  index, alloc_qty = dissect.alloc_qty(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Alloc Id: 4 Byte Unsigned Fixed Width Integer
  index, alloc_id = dissect.alloc_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Order Origination: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_origination = dissect.order_origination(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = dissect.free_text_4(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Approve Tes Trade Request
dissect.approve_tes_trade_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.approve_tes_trade_request then
    local length = size_of.approve_tes_trade_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.approve_tes_trade_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v9_1.fields.approve_tes_trade_request, range, display)
  end

  return dissect.approve_tes_trade_request_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local offset = 0

  -- Dependency element: Template Id
  local template_id = buffer(4, 2):le_uint()

  -- Dissect Approve Tes Trade Request
  if template_id == 10603 then
    return dissect.approve_tes_trade_request(buffer, offset, packet, parent)
  end
  -- Dissect Broadcast Error Notification
  if template_id == 10032 then
    return dissect.broadcast_error_notification(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request
  if template_id == 10118 then
    return dissect.cross_request(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request Response
  if template_id == 10119 then
    return dissect.cross_request_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Broadcast
  if template_id == 10122 then
    return dissect.delete_all_order_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Nr Response
  if template_id == 10124 then
    return dissect.delete_all_order_nr_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Quote Event Broadcast
  if template_id == 10308 then
    return dissect.delete_all_order_quote_event_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Request
  if template_id == 10120 then
    return dissect.delete_all_order_request(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Response
  if template_id == 10121 then
    return dissect.delete_all_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Broadcast
  if template_id == 10410 then
    return dissect.delete_all_quote_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Request
  if template_id == 10408 then
    return dissect.delete_all_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Response
  if template_id == 10409 then
    return dissect.delete_all_quote_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Broadcast
  if template_id == 10112 then
    return dissect.delete_order_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Nr Response
  if template_id == 10111 then
    return dissect.delete_order_nr_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Response
  if template_id == 10110 then
    return dissect.delete_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Single Request
  if template_id == 10109 then
    return dissect.delete_order_single_request(buffer, offset, packet, parent)
  end
  -- Dissect Delete Tes Trade Request
  if template_id == 10602 then
    return dissect.delete_tes_trade_request(buffer, offset, packet, parent)
  end
  -- Dissect Enter Tes Trade Request
  if template_id == 10600 then
    return dissect.enter_tes_trade_request(buffer, offset, packet, parent)
  end
  -- Dissect Extended Deletion Report
  if template_id == 10128 then
    return dissect.extended_deletion_report(buffer, offset, packet, parent)
  end
  -- Dissect Forced Logout Notification
  if template_id == 10012 then
    return dissect.forced_logout_notification(buffer, offset, packet, parent)
  end
  -- Dissect Forced User Logout Notification
  if template_id == 10043 then
    return dissect.forced_user_logout_notification(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if template_id == 10011 then
    return dissect.heartbeat(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Notification
  if template_id == 10023 then
    return dissect.heartbeat_notification(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Enrichment Rule Id List Request
  if template_id == 10040 then
    return dissect.inquire_enrichment_rule_id_list_request(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Enrichment Rule Id List Response
  if template_id == 10041 then
    return dissect.inquire_enrichment_rule_id_list_response(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Session List Request
  if template_id == 10035 then
    return dissect.inquire_session_list_request(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Session List Response
  if template_id == 10036 then
    return dissect.inquire_session_list_response(buffer, offset, packet, parent)
  end
  -- Dissect Inquire User Request
  if template_id == 10038 then
    return dissect.inquire_user_request(buffer, offset, packet, parent)
  end
  -- Dissect Inquire User Response
  if template_id == 10039 then
    return dissect.inquire_user_response(buffer, offset, packet, parent)
  end
  -- Dissect Issuer Notification
  if template_id == 10316 then
    return dissect.issuer_notification(buffer, offset, packet, parent)
  end
  -- Dissect Issuer Security State Change Request
  if template_id == 10314 then
    return dissect.issuer_security_state_change_request(buffer, offset, packet, parent)
  end
  -- Dissect Issuer Security State Change Response
  if template_id == 10315 then
    return dissect.issuer_security_state_change_response(buffer, offset, packet, parent)
  end
  -- Dissect Legal Notification Broadcast
  if template_id == 10037 then
    return dissect.legal_notification_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Logon Request
  if template_id == 10000 then
    return dissect.logon_request(buffer, offset, packet, parent)
  end
  -- Dissect Logon Response
  if template_id == 10001 then
    return dissect.logon_response(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if template_id == 10002 then
    return dissect.logout_request(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response
  if template_id == 10003 then
    return dissect.logout_response(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Request
  if template_id == 10405 then
    return dissect.mass_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Response
  if template_id == 10406 then
    return dissect.mass_quote_response(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Nr Response
  if template_id == 10108 then
    return dissect.modify_order_nr_response(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if template_id == 10107 then
    return dissect.modify_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Single Request
  if template_id == 10106 then
    return dissect.modify_order_single_request(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Single Short Request
  if template_id == 10126 then
    return dissect.modify_order_single_short_request(buffer, offset, packet, parent)
  end
  -- Dissect Modify Tes Trade Request
  if template_id == 10601 then
    return dissect.modify_tes_trade_request(buffer, offset, packet, parent)
  end
  -- Dissect New Order Nr Response
  if template_id == 10102 then
    return dissect.new_order_nr_response(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response
  if template_id == 10101 then
    return dissect.new_order_response(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single Request
  if template_id == 10100 then
    return dissect.new_order_single_request(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single Short Request
  if template_id == 10125 then
    return dissect.new_order_single_short_request(buffer, offset, packet, parent)
  end
  -- Dissect News Broadcast
  if template_id == 10031 then
    return dissect.news_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Notification
  if template_id == 10104 then
    return dissect.order_exec_notification(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Report Broadcast
  if template_id == 10117 then
    return dissect.order_exec_report_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Response
  if template_id == 10103 then
    return dissect.order_exec_response(buffer, offset, packet, parent)
  end
  -- Dissect Party Action Report
  if template_id == 10042 then
    return dissect.party_action_report(buffer, offset, packet, parent)
  end
  -- Dissect Party Entitlements Update Report
  if template_id == 10034 then
    return dissect.party_entitlements_update_report(buffer, offset, packet, parent)
  end
  -- Dissect Ping Request
  if template_id == 10320 then
    return dissect.ping_request(buffer, offset, packet, parent)
  end
  -- Dissect Ping Response
  if template_id == 10321 then
    return dissect.ping_response(buffer, offset, packet, parent)
  end
  -- Dissect Quote Activation Notification
  if template_id == 10411 then
    return dissect.quote_activation_notification(buffer, offset, packet, parent)
  end
  -- Dissect Quote Activation Request
  if template_id == 10403 then
    return dissect.quote_activation_request(buffer, offset, packet, parent)
  end
  -- Dissect Quote Activation Response
  if template_id == 10404 then
    return dissect.quote_activation_response(buffer, offset, packet, parent)
  end
  -- Dissect Quote Execution Report
  if template_id == 10407 then
    return dissect.quote_execution_report(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Broadcast
  if template_id == 10415 then
    return dissect.rfq_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Reject Notification
  if template_id == 10420 then
    return dissect.rfq_reject_notification(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Request
  if template_id == 10401 then
    return dissect.rfq_request(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Response
  if template_id == 10402 then
    return dissect.rfq_response(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Specialist Broadcast
  if template_id == 10419 then
    return dissect.rfq_specialist_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Reject
  if template_id == 10010 then
    return dissect.reject(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Me Message Request
  if template_id == 10026 then
    return dissect.retransmit_me_message_request(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Me Message Response
  if template_id == 10027 then
    return dissect.retransmit_me_message_response(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request
  if template_id == 10008 then
    return dissect.retransmit_request(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Response
  if template_id == 10009 then
    return dissect.retransmit_response(buffer, offset, packet, parent)
  end
  -- Dissect Service Availability Broadcast
  if template_id == 10030 then
    return dissect.service_availability_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Service Availability Market Broadcast
  if template_id == 10044 then
    return dissect.service_availability_market_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Single Quote Request
  if template_id == 10418 then
    return dissect.single_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Specialist Delete All Order Broadcast
  if template_id == 10137 then
    return dissect.specialist_delete_all_order_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Specialist Instrument Event Notification
  if template_id == 10319 then
    return dissect.specialist_instrument_event_notification(buffer, offset, packet, parent)
  end
  -- Dissect Specialist Order Book Notification
  if template_id == 10136 then
    return dissect.specialist_order_book_notification(buffer, offset, packet, parent)
  end
  -- Dissect Specialist Rfq Reject Request
  if template_id == 10421 then
    return dissect.specialist_rfq_reject_request(buffer, offset, packet, parent)
  end
  -- Dissect Specialist Rfq Reply Notification
  if template_id == 10424 then
    return dissect.specialist_rfq_reply_notification(buffer, offset, packet, parent)
  end
  -- Dissect Specialist Rfq Reply Request
  if template_id == 10422 then
    return dissect.specialist_rfq_reply_request(buffer, offset, packet, parent)
  end
  -- Dissect Specialist Rfq Reply Response
  if template_id == 10423 then
    return dissect.specialist_rfq_reply_response(buffer, offset, packet, parent)
  end
  -- Dissect Specialist Security State Change Request
  if template_id == 10317 then
    return dissect.specialist_security_state_change_request(buffer, offset, packet, parent)
  end
  -- Dissect Specialist Security State Change Response
  if template_id == 10318 then
    return dissect.specialist_security_state_change_response(buffer, offset, packet, parent)
  end
  -- Dissect Subscribe Request
  if template_id == 10025 then
    return dissect.subscribe_request(buffer, offset, packet, parent)
  end
  -- Dissect Subscribe Response
  if template_id == 10005 then
    return dissect.subscribe_response(buffer, offset, packet, parent)
  end
  -- Dissect Tes Approve Broadcast
  if template_id == 10607 then
    return dissect.tes_approve_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Tes Broadcast
  if template_id == 10604 then
    return dissect.tes_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Tes Delete Broadcast
  if template_id == 10606 then
    return dissect.tes_delete_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Tes Execution Broadcast
  if template_id == 10610 then
    return dissect.tes_execution_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Tes Response
  if template_id == 10611 then
    return dissect.tes_response(buffer, offset, packet, parent)
  end
  -- Dissect Tes Trade Broadcast
  if template_id == 10614 then
    return dissect.tes_trade_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Tes Trading Session Status Broadcast
  if template_id == 10615 then
    return dissect.tes_trading_session_status_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Tm Trading Session Status Broadcast
  if template_id == 10501 then
    return dissect.tm_trading_session_status_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Throttle Update Notification
  if template_id == 10028 then
    return dissect.throttle_update_notification(buffer, offset, packet, parent)
  end
  -- Dissect Trade Broadcast
  if template_id == 10500 then
    return dissect.trade_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Broadcast
  if template_id == 10307 then
    return dissect.trading_session_status_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Trailing Stop Update Notification
  if template_id == 10127 then
    return dissect.trailing_stop_update_notification(buffer, offset, packet, parent)
  end
  -- Dissect Unsubscribe Request
  if template_id == 10006 then
    return dissect.unsubscribe_request(buffer, offset, packet, parent)
  end
  -- Dissect Unsubscribe Response
  if template_id == 10007 then
    return dissect.unsubscribe_response(buffer, offset, packet, parent)
  end
  -- Dissect User Login Request
  if template_id == 10018 then
    return dissect.user_login_request(buffer, offset, packet, parent)
  end
  -- Dissect User Login Response
  if template_id == 10019 then
    return dissect.user_login_response(buffer, offset, packet, parent)
  end
  -- Dissect User Logout Request
  if template_id == 10029 then
    return dissect.user_logout_request(buffer, offset, packet, parent)
  end
  -- Dissect User Logout Response
  if template_id == 10024 then
    return dissect.user_logout_response(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Create Deal Notification
  if template_id == 10808 then
    return dissect.xetra_en_light_create_deal_notification(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Deal Response
  if template_id == 10805 then
    return dissect.xetra_en_light_deal_response(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Enter Quote Request
  if template_id == 10802 then
    return dissect.xetra_en_light_enter_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Hit Quote Request
  if template_id == 10804 then
    return dissect.xetra_en_light_hit_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Negotiation Notification
  if template_id == 10813 then
    return dissect.xetra_en_light_negotiation_notification(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Negotiation Requester Notification
  if template_id == 10812 then
    return dissect.xetra_en_light_negotiation_requester_notification(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Negotiation Status Notification
  if template_id == 10815 then
    return dissect.xetra_en_light_negotiation_status_notification(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Open Negotiation Notification
  if template_id == 10811 then
    return dissect.xetra_en_light_open_negotiation_notification(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Open Negotiation Request
  if template_id == 10800 then
    return dissect.xetra_en_light_open_negotiation_request(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Open Negotiation Requester Notification
  if template_id == 10810 then
    return dissect.xetra_en_light_open_negotiation_requester_notification(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Quote Notification
  if template_id == 10807 then
    return dissect.xetra_en_light_quote_notification(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Quote Requester Notification
  if template_id == 10816 then
    return dissect.xetra_en_light_quote_requester_notification(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Quote Response
  if template_id == 10803 then
    return dissect.xetra_en_light_quote_response(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Quoting Status Request
  if template_id == 10817 then
    return dissect.xetra_en_light_quoting_status_request(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Status Broadcast
  if template_id == 10814 then
    return dissect.xetra_en_light_status_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Xetra En Light Update Negotiation Request
  if template_id == 10801 then
    return dissect.xetra_en_light_update_negotiation_request(buffer, offset, packet, parent)
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function eurex_cash_eti_t7_v9_1.init()
end

-- Dissector for Eurex Cash Eti T7 9.1
function eurex_cash_eti_t7_v9_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = eurex_cash_eti_t7_v9_1.name

  -- Dissect protocol
  local protocol = parent:add(eurex_cash_eti_t7_v9_1, buffer(), eurex_cash_eti_t7_v9_1.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, eurex_cash_eti_t7_v9_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.eurex_cash_eti_t7_v9_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Eurex Cash Eti T7 9.1
local function eurex_cash_eti_t7_v9_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.eurex_cash_eti_t7_v9_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = eurex_cash_eti_t7_v9_1
  eurex_cash_eti_t7_v9_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Eurex Cash Eti T7 9.1
eurex_cash_eti_t7_v9_1:register_heuristic("tcp", eurex_cash_eti_t7_v9_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 9.1
--   Date: Tuesday, April 6, 2021
--   Specification: T7_Enhanced_Trading_Interface_-_Cash_Message_Reference_v.9.1-C0002.pdf
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
