-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex Derivatives Eti T7 6.1 Protocol
local eurex_derivatives_eti_t7_v6_1 = Proto("Eurex.Derivatives.Eti.T7.v6.1.Lua", "Eurex Derivatives Eti T7 6.1")

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

-- Eurex Derivatives Eti T7 6.1 Fields
eurex_derivatives_eti_t7_v6_1.fields.account = ProtoField.new("Account", "eurex.derivatives.eti.t7.v6.1.account", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.add_complex_instrument_request = ProtoField.new("Add Complex Instrument Request", "eurex.derivatives.eti.t7.v6.1.addcomplexinstrumentrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.add_complex_instrument_response = ProtoField.new("Add Complex Instrument Response", "eurex.derivatives.eti.t7.v6.1.addcomplexinstrumentresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.add_flexible_instrument_request = ProtoField.new("Add Flexible Instrument Request", "eurex.derivatives.eti.t7.v6.1.addflexibleinstrumentrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.add_flexible_instrument_response = ProtoField.new("Add Flexible Instrument Response", "eurex.derivatives.eti.t7.v6.1.addflexibleinstrumentresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.alloc_id = ProtoField.new("Alloc Id", "eurex.derivatives.eti.t7.v6.1.allocid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.alloc_qty = ProtoField.new("Alloc Qty", "eurex.derivatives.eti.t7.v6.1.allocqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.appl_beg_msg_id = ProtoField.new("Appl Beg Msg Id", "eurex.derivatives.eti.t7.v6.1.applbegmsgid", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.appl_beg_seq_num = ProtoField.new("Appl Beg Seq Num", "eurex.derivatives.eti.t7.v6.1.applbegseqnum", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.appl_end_msg_id = ProtoField.new("Appl End Msg Id", "eurex.derivatives.eti.t7.v6.1.applendmsgid", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.appl_end_seq_num = ProtoField.new("Appl End Seq Num", "eurex.derivatives.eti.t7.v6.1.applendseqnum", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.appl_id = ProtoField.new("Appl Id", "eurex.derivatives.eti.t7.v6.1.applid", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.appl_id_status = ProtoField.new("Appl Id Status", "eurex.derivatives.eti.t7.v6.1.applidstatus", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.appl_msg_id = ProtoField.new("Appl Msg Id", "eurex.derivatives.eti.t7.v6.1.applmsgid", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.appl_resend_flag = ProtoField.new("Appl Resend Flag", "eurex.derivatives.eti.t7.v6.1.applresendflag", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.appl_seq_indicator = ProtoField.new("Appl Seq Indicator", "eurex.derivatives.eti.t7.v6.1.applseqindicator", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "eurex.derivatives.eti.t7.v6.1.applseqnum", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.appl_seq_status = ProtoField.new("Appl Seq Status", "eurex.derivatives.eti.t7.v6.1.applseqstatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.appl_seq_trade_date = ProtoField.new("Appl Seq Trade Date", "eurex.derivatives.eti.t7.v6.1.applseqtradedate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.appl_sub_id = ProtoField.new("Appl Sub Id", "eurex.derivatives.eti.t7.v6.1.applsubid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.appl_total_message_count = ProtoField.new("Appl Total Message Count", "eurex.derivatives.eti.t7.v6.1.appltotalmessagecount", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.appl_usage_orders = ProtoField.new("Appl Usage Orders", "eurex.derivatives.eti.t7.v6.1.applusageorders", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.appl_usage_quotes = ProtoField.new("Appl Usage Quotes", "eurex.derivatives.eti.t7.v6.1.applusagequotes", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.application_system_name = ProtoField.new("Application System Name", "eurex.derivatives.eti.t7.v6.1.applicationsystemname", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.application_system_vendor = ProtoField.new("Application System Vendor", "eurex.derivatives.eti.t7.v6.1.applicationsystemvendor", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.application_system_version = ProtoField.new("Application System Version", "eurex.derivatives.eti.t7.v6.1.applicationsystemversion", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.approve_tes_trade_request = ProtoField.new("Approve Tes Trade Request", "eurex.derivatives.eti.t7.v6.1.approvetestraderequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.best_bid_px = ProtoField.new("Best Bid Px", "eurex.derivatives.eti.t7.v6.1.bestbidpx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.best_bid_size = ProtoField.new("Best Bid Size", "eurex.derivatives.eti.t7.v6.1.bestbidsize", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.best_offer_px = ProtoField.new("Best Offer Px", "eurex.derivatives.eti.t7.v6.1.bestofferpx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.best_offer_size = ProtoField.new("Best Offer Size", "eurex.derivatives.eti.t7.v6.1.bestoffersize", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.bid_cxl_size = ProtoField.new("Bid Cxl Size", "eurex.derivatives.eti.t7.v6.1.bidcxlsize", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.bid_px = ProtoField.new("Bid Px", "eurex.derivatives.eti.t7.v6.1.bidpx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.bid_size = ProtoField.new("Bid Size", "eurex.derivatives.eti.t7.v6.1.bidsize", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.body_len = ProtoField.new("Body Len", "eurex.derivatives.eti.t7.v6.1.bodylen", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.broadcast_error_notification = ProtoField.new("Broadcast Error Notification", "eurex.derivatives.eti.t7.v6.1.broadcasterrornotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "eurex.derivatives.eti.t7.v6.1.clordid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.clearing_trade_price = ProtoField.new("Clearing Trade Price", "eurex.derivatives.eti.t7.v6.1.clearingtradeprice", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.clearing_trade_qty = ProtoField.new("Clearing Trade Qty", "eurex.derivatives.eti.t7.v6.1.clearingtradeqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.compliance_text = ProtoField.new("Compliance Text", "eurex.derivatives.eti.t7.v6.1.compliancetext", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.cross_request = ProtoField.new("Cross Request", "eurex.derivatives.eti.t7.v6.1.crossrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.cross_request_response = ProtoField.new("Cross Request Response", "eurex.derivatives.eti.t7.v6.1.crossrequestresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.crossed_indicator = ProtoField.new("Crossed Indicator", "eurex.derivatives.eti.t7.v6.1.crossedindicator", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.cum_qty = ProtoField.new("Cum Qty", "eurex.derivatives.eti.t7.v6.1.cumqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "eurex.derivatives.eti.t7.v6.1.custorderhandlinginst", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.cxl_qty = ProtoField.new("Cxl Qty", "eurex.derivatives.eti.t7.v6.1.cxlqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.default_cstm_appl_ver_id = ProtoField.new("Default Cstm Appl Ver Id", "eurex.derivatives.eti.t7.v6.1.defaultcstmapplverid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.default_cstm_appl_ver_sub_id = ProtoField.new("Default Cstm Appl Ver Sub Id", "eurex.derivatives.eti.t7.v6.1.defaultcstmapplversubid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_all_order_broadcast = ProtoField.new("Delete All Order Broadcast", "eurex.derivatives.eti.t7.v6.1.deleteallorderbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_all_order_nr_response = ProtoField.new("Delete All Order Nr Response", "eurex.derivatives.eti.t7.v6.1.deleteallordernrresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_all_order_quote_event_broadcast = ProtoField.new("Delete All Order Quote Event Broadcast", "eurex.derivatives.eti.t7.v6.1.deleteallorderquoteeventbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_all_order_request = ProtoField.new("Delete All Order Request", "eurex.derivatives.eti.t7.v6.1.deleteallorderrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_all_order_response = ProtoField.new("Delete All Order Response", "eurex.derivatives.eti.t7.v6.1.deleteallorderresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_all_quote_broadcast = ProtoField.new("Delete All Quote Broadcast", "eurex.derivatives.eti.t7.v6.1.deleteallquotebroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_all_quote_request = ProtoField.new("Delete All Quote Request", "eurex.derivatives.eti.t7.v6.1.deleteallquoterequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_all_quote_response = ProtoField.new("Delete All Quote Response", "eurex.derivatives.eti.t7.v6.1.deleteallquoteresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_order_broadcast = ProtoField.new("Delete Order Broadcast", "eurex.derivatives.eti.t7.v6.1.deleteorderbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_order_complex_request = ProtoField.new("Delete Order Complex Request", "eurex.derivatives.eti.t7.v6.1.deleteordercomplexrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_order_nr_response = ProtoField.new("Delete Order Nr Response", "eurex.derivatives.eti.t7.v6.1.deleteordernrresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_order_response = ProtoField.new("Delete Order Response", "eurex.derivatives.eti.t7.v6.1.deleteorderresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_order_single_request = ProtoField.new("Delete Order Single Request", "eurex.derivatives.eti.t7.v6.1.deleteordersinglerequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delete_reason = ProtoField.new("Delete Reason", "eurex.derivatives.eti.t7.v6.1.deletereason", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.delete_tes_trade_request = ProtoField.new("Delete Tes Trade Request", "eurex.derivatives.eti.t7.v6.1.deletetestraderequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.delta = ProtoField.new("Delta", "eurex.derivatives.eti.t7.v6.1.delta", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.enrichment_rule_id = ProtoField.new("Enrichment Rule Id", "eurex.derivatives.eti.t7.v6.1.enrichmentruleid", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.enrichment_rules_grp = ProtoField.new("Enrichment Rules Grp", "eurex.derivatives.eti.t7.v6.1.enrichmentrulesgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.enter_tes_trade_request = ProtoField.new("Enter Tes Trade Request", "eurex.derivatives.eti.t7.v6.1.entertestraderequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.event_date = ProtoField.new("Event Date", "eurex.derivatives.eti.t7.v6.1.eventdate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.event_type = ProtoField.new("Event Type", "eurex.derivatives.eti.t7.v6.1.eventtype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.exec_id = ProtoField.new("Exec Id", "eurex.derivatives.eti.t7.v6.1.execid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.exec_inst = ProtoField.new("Exec Inst", "eurex.derivatives.eti.t7.v6.1.execinst", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "eurex.derivatives.eti.t7.v6.1.execrestatementreason", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.exec_type = ProtoField.new("Exec Type", "eurex.derivatives.eti.t7.v6.1.exectype", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.executing_trader = ProtoField.new("Executing Trader", "eurex.derivatives.eti.t7.v6.1.executingtrader", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.executing_trader_qualifier = ProtoField.new("Executing Trader Qualifier", "eurex.derivatives.eti.t7.v6.1.executingtraderqualifier", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.exercise_style = ProtoField.new("Exercise Style", "eurex.derivatives.eti.t7.v6.1.exercisestyle", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.expire_date = ProtoField.new("Expire Date", "eurex.derivatives.eti.t7.v6.1.expiredate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.expire_time = ProtoField.new("Expire Time", "eurex.derivatives.eti.t7.v6.1.expiretime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.exposure_duration = ProtoField.new("Exposure Duration", "eurex.derivatives.eti.t7.v6.1.exposureduration", ftypes.INT64)
eurex_derivatives_eti_t7_v6_1.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "eurex.derivatives.eti.t7.v6.1.fillexecid", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.fill_liquidity_ind = ProtoField.new("Fill Liquidity Ind", "eurex.derivatives.eti.t7.v6.1.fillliquidityind", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.fill_match_id = ProtoField.new("Fill Match Id", "eurex.derivatives.eti.t7.v6.1.fillmatchid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.fill_px = ProtoField.new("Fill Px", "eurex.derivatives.eti.t7.v6.1.fillpx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.fill_qty = ProtoField.new("Fill Qty", "eurex.derivatives.eti.t7.v6.1.fillqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.fill_ref_id = ProtoField.new("Fill Ref Id", "eurex.derivatives.eti.t7.v6.1.fillrefid", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.fills_grp = ProtoField.new("Fills Grp", "eurex.derivatives.eti.t7.v6.1.fillsgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.firm_negotiation_id = ProtoField.new("Firm Negotiation Id", "eurex.derivatives.eti.t7.v6.1.firmnegotiationid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.firm_trade_id = ProtoField.new("Firm Trade Id", "eurex.derivatives.eti.t7.v6.1.firmtradeid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.fix_cl_ord_id = ProtoField.new("Fix Cl Ord Id", "eurex.derivatives.eti.t7.v6.1.fixclordid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.fix_engine_name = ProtoField.new("Fix Engine Name", "eurex.derivatives.eti.t7.v6.1.fixenginename", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.fix_engine_vendor = ProtoField.new("Fix Engine Vendor", "eurex.derivatives.eti.t7.v6.1.fixenginevendor", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.fix_engine_version = ProtoField.new("Fix Engine Version", "eurex.derivatives.eti.t7.v6.1.fixengineversion", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.forced_logout_notification = ProtoField.new("Forced Logout Notification", "eurex.derivatives.eti.t7.v6.1.forcedlogoutnotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.forced_user_logout_notification = ProtoField.new("Forced User Logout Notification", "eurex.derivatives.eti.t7.v6.1.forceduserlogoutnotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.free_text_1 = ProtoField.new("Free Text 1", "eurex.derivatives.eti.t7.v6.1.freetext1", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.free_text_2 = ProtoField.new("Free Text 2", "eurex.derivatives.eti.t7.v6.1.freetext2", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.free_text_3 = ProtoField.new("Free Text 3", "eurex.derivatives.eti.t7.v6.1.freetext3", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.gateway_id = ProtoField.new("Gateway Id", "eurex.derivatives.eti.t7.v6.1.gatewayid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.gateway_request = ProtoField.new("Gateway Request", "eurex.derivatives.eti.t7.v6.1.gatewayrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.gateway_response = ProtoField.new("Gateway Response", "eurex.derivatives.eti.t7.v6.1.gatewayresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.gateway_status = ProtoField.new("Gateway Status", "eurex.derivatives.eti.t7.v6.1.gatewaystatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.gateway_sub_id = ProtoField.new("Gateway Sub Id", "eurex.derivatives.eti.t7.v6.1.gatewaysubid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.headline = ProtoField.new("Headline", "eurex.derivatives.eti.t7.v6.1.headline", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "eurex.derivatives.eti.t7.v6.1.heartbtint", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.heartbeat = ProtoField.new("Heartbeat", "eurex.derivatives.eti.t7.v6.1.heartbeat", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.heartbeat_notification = ProtoField.new("Heartbeat Notification", "eurex.derivatives.eti.t7.v6.1.heartbeatnotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.hedge_type = ProtoField.new("Hedge Type", "eurex.derivatives.eti.t7.v6.1.hedgetype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.high_limit_price = ProtoField.new("High Limit Price", "eurex.derivatives.eti.t7.v6.1.highlimitprice", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "eurex.derivatives.eti.t7.v6.1.impliedmarketindicator", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.individual_alloc_id = ProtoField.new("Individual Alloc Id", "eurex.derivatives.eti.t7.v6.1.individualallocid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.inquire_enrichment_rule_id_list_request = ProtoField.new("Inquire Enrichment Rule Id List Request", "eurex.derivatives.eti.t7.v6.1.inquireenrichmentruleidlistrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.inquire_enrichment_rule_id_list_response = ProtoField.new("Inquire Enrichment Rule Id List Response", "eurex.derivatives.eti.t7.v6.1.inquireenrichmentruleidlistresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.inquire_mm_parameter_request = ProtoField.new("Inquire Mm Parameter Request", "eurex.derivatives.eti.t7.v6.1.inquiremmparameterrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.inquire_mm_parameter_response = ProtoField.new("Inquire Mm Parameter Response", "eurex.derivatives.eti.t7.v6.1.inquiremmparameterresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.inquire_session_list_request = ProtoField.new("Inquire Session List Request", "eurex.derivatives.eti.t7.v6.1.inquiresessionlistrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.inquire_session_list_response = ProtoField.new("Inquire Session List Response", "eurex.derivatives.eti.t7.v6.1.inquiresessionlistresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.inquire_user_request = ProtoField.new("Inquire User Request", "eurex.derivatives.eti.t7.v6.1.inquireuserrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.inquire_user_response = ProtoField.new("Inquire User Response", "eurex.derivatives.eti.t7.v6.1.inquireuserresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.instr_attrib_type = ProtoField.new("Instr Attrib Type", "eurex.derivatives.eti.t7.v6.1.instrattribtype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.instr_attrib_value = ProtoField.new("Instr Attrib Value", "eurex.derivatives.eti.t7.v6.1.instrattribvalue", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.instrmnt_leg_exec_grp = ProtoField.new("Instrmnt Leg Exec Grp", "eurex.derivatives.eti.t7.v6.1.instrmntlegexecgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "eurex.derivatives.eti.t7.v6.1.instrmtleggrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.instrument_attribute_grp = ProtoField.new("Instrument Attribute Grp", "eurex.derivatives.eti.t7.v6.1.instrumentattributegrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.instrument_event_grp = ProtoField.new("Instrument Event Grp", "eurex.derivatives.eti.t7.v6.1.instrumenteventgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.last_entity_processed = ProtoField.new("Last Entity Processed", "eurex.derivatives.eti.t7.v6.1.lastentityprocessed", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.last_fragment = ProtoField.new("Last Fragment", "eurex.derivatives.eti.t7.v6.1.lastfragment", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.last_px = ProtoField.new("Last Px", "eurex.derivatives.eti.t7.v6.1.lastpx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.last_px_disclosure_instruction = ProtoField.new("Last Px Disclosure Instruction", "eurex.derivatives.eti.t7.v6.1.lastpxdisclosureinstruction", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.last_qty = ProtoField.new("Last Qty", "eurex.derivatives.eti.t7.v6.1.lastqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.last_qty_disclosure_instruction = ProtoField.new("Last Qty Disclosure Instruction", "eurex.derivatives.eti.t7.v6.1.lastqtydisclosureinstruction", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.last_update_time = ProtoField.new("Last Update Time", "eurex.derivatives.eti.t7.v6.1.lastupdatetime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.leaves_qty = ProtoField.new("Leaves Qty", "eurex.derivatives.eti.t7.v6.1.leavesqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.leaves_qty_disclosure_instruction = ProtoField.new("Leaves Qty Disclosure Instruction", "eurex.derivatives.eti.t7.v6.1.leavesqtydisclosureinstruction", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.leg_account = ProtoField.new("Leg Account", "eurex.derivatives.eti.t7.v6.1.legaccount", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.leg_exec_id = ProtoField.new("Leg Exec Id", "eurex.derivatives.eti.t7.v6.1.legexecid", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.leg_last_px = ProtoField.new("Leg Last Px", "eurex.derivatives.eti.t7.v6.1.leglastpx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "eurex.derivatives.eti.t7.v6.1.leglastqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.leg_ord_grp = ProtoField.new("Leg Ord Grp", "eurex.derivatives.eti.t7.v6.1.legordgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.leg_position_effect = ProtoField.new("Leg Position Effect", "eurex.derivatives.eti.t7.v6.1.legpositioneffect", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.leg_price = ProtoField.new("Leg Price", "eurex.derivatives.eti.t7.v6.1.legprice", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "eurex.derivatives.eti.t7.v6.1.legratioqty", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.leg_security_id = ProtoField.new("Leg Security Id", "eurex.derivatives.eti.t7.v6.1.legsecurityid", ftypes.INT64)
eurex_derivatives_eti_t7_v6_1.fields.leg_security_type = ProtoField.new("Leg Security Type", "eurex.derivatives.eti.t7.v6.1.legsecuritytype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.leg_side = ProtoField.new("Leg Side", "eurex.derivatives.eti.t7.v6.1.legside", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.leg_symbol = ProtoField.new("Leg Symbol", "eurex.derivatives.eti.t7.v6.1.legsymbol", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.legal_notification_broadcast = ProtoField.new("Legal Notification Broadcast", "eurex.derivatives.eti.t7.v6.1.legalnotificationbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.list_update_action = ProtoField.new("List Update Action", "eurex.derivatives.eti.t7.v6.1.listupdateaction", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.logon_request = ProtoField.new("Logon Request", "eurex.derivatives.eti.t7.v6.1.logonrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.logon_response = ProtoField.new("Logon Response", "eurex.derivatives.eti.t7.v6.1.logonresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.logout_request = ProtoField.new("Logout Request", "eurex.derivatives.eti.t7.v6.1.logoutrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.logout_response = ProtoField.new("Logout Response", "eurex.derivatives.eti.t7.v6.1.logoutresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.low_limit_price = ProtoField.new("Low Limit Price", "eurex.derivatives.eti.t7.v6.1.lowlimitprice", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.market_id = ProtoField.new("Market Id", "eurex.derivatives.eti.t7.v6.1.marketid", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.derivatives.eti.t7.v6.1.marketsegmentid", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.mass_action_reason = ProtoField.new("Mass Action Reason", "eurex.derivatives.eti.t7.v6.1.massactionreason", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "eurex.derivatives.eti.t7.v6.1.massactionreportid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.mass_action_sub_type = ProtoField.new("Mass Action Sub Type", "eurex.derivatives.eti.t7.v6.1.massactionsubtype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.mass_action_type = ProtoField.new("Mass Action Type", "eurex.derivatives.eti.t7.v6.1.massactiontype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.mass_quote_request = ProtoField.new("Mass Quote Request", "eurex.derivatives.eti.t7.v6.1.massquoterequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.mass_quote_response = ProtoField.new("Mass Quote Response", "eurex.derivatives.eti.t7.v6.1.massquoteresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.match_date = ProtoField.new("Match Date", "eurex.derivatives.eti.t7.v6.1.matchdate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.match_inst_cross_id = ProtoField.new("Match Inst Cross Id", "eurex.derivatives.eti.t7.v6.1.matchinstcrossid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.match_sub_type = ProtoField.new("Match Sub Type", "eurex.derivatives.eti.t7.v6.1.matchsubtype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.match_type = ProtoField.new("Match Type", "eurex.derivatives.eti.t7.v6.1.matchtype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.matching_engine_status = ProtoField.new("Matching Engine Status", "eurex.derivatives.eti.t7.v6.1.matchingenginestatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.matching_engine_trade_date = ProtoField.new("Matching Engine Trade Date", "eurex.derivatives.eti.t7.v6.1.matchingenginetradedate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.maturity_date = ProtoField.new("Maturity Date", "eurex.derivatives.eti.t7.v6.1.maturitydate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.md_book_type = ProtoField.new("Md Book Type", "eurex.derivatives.eti.t7.v6.1.mdbooktype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.md_sub_book_type = ProtoField.new("Md Sub Book Type", "eurex.derivatives.eti.t7.v6.1.mdsubbooktype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.message_event_source = ProtoField.new("Message Event Source", "eurex.derivatives.eti.t7.v6.1.messageeventsource", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.message_header_in = ProtoField.new("Message Header In", "eurex.derivatives.eti.t7.v6.1.messageheaderin", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.message_header_out = ProtoField.new("Message Header Out", "eurex.derivatives.eti.t7.v6.1.messageheaderout", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.mm_parameter_definition_request = ProtoField.new("Mm Parameter Definition Request", "eurex.derivatives.eti.t7.v6.1.mmparameterdefinitionrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.mm_parameter_definition_response = ProtoField.new("Mm Parameter Definition Response", "eurex.derivatives.eti.t7.v6.1.mmparameterdefinitionresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.mm_parameter_grp = ProtoField.new("Mm Parameter Grp", "eurex.derivatives.eti.t7.v6.1.mmparametergrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.mm_parameter_report_id = ProtoField.new("Mm Parameter Report Id", "eurex.derivatives.eti.t7.v6.1.mmparameterreportid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.modify_order_complex_request = ProtoField.new("Modify Order Complex Request", "eurex.derivatives.eti.t7.v6.1.modifyordercomplexrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.modify_order_complex_short_request = ProtoField.new("Modify Order Complex Short Request", "eurex.derivatives.eti.t7.v6.1.modifyordercomplexshortrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.modify_order_nr_response = ProtoField.new("Modify Order Nr Response", "eurex.derivatives.eti.t7.v6.1.modifyordernrresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.modify_order_response = ProtoField.new("Modify Order Response", "eurex.derivatives.eti.t7.v6.1.modifyorderresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.modify_order_single_request = ProtoField.new("Modify Order Single Request", "eurex.derivatives.eti.t7.v6.1.modifyordersinglerequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.modify_order_single_short_request = ProtoField.new("Modify Order Single Short Request", "eurex.derivatives.eti.t7.v6.1.modifyordersingleshortrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.modify_tes_trade_request = ProtoField.new("Modify Tes Trade Request", "eurex.derivatives.eti.t7.v6.1.modifytestraderequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.derivatives.eti.t7.v6.1.msgseqnum", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.multi_leg_reporting_type = ProtoField.new("Multi Leg Reporting Type", "eurex.derivatives.eti.t7.v6.1.multilegreportingtype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.multileg_model = ProtoField.new("Multileg Model", "eurex.derivatives.eti.t7.v6.1.multilegmodel", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.multileg_price_model = ProtoField.new("Multileg Price Model", "eurex.derivatives.eti.t7.v6.1.multilegpricemodel", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.negotiate_underlying = ProtoField.new("Negotiate Underlying", "eurex.derivatives.eti.t7.v6.1.negotiateunderlying", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.negotiation_id = ProtoField.new("Negotiation Id", "eurex.derivatives.eti.t7.v6.1.negotiationid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.negotiation_start_time = ProtoField.new("Negotiation Start Time", "eurex.derivatives.eti.t7.v6.1.negotiationstarttime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.network_msg_id = ProtoField.new("Network Msg Id", "eurex.derivatives.eti.t7.v6.1.networkmsgid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.new_order_complex_request = ProtoField.new("New Order Complex Request", "eurex.derivatives.eti.t7.v6.1.newordercomplexrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.new_order_complex_short_request = ProtoField.new("New Order Complex Short Request", "eurex.derivatives.eti.t7.v6.1.newordercomplexshortrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.new_order_nr_response = ProtoField.new("New Order Nr Response", "eurex.derivatives.eti.t7.v6.1.newordernrresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.new_order_response = ProtoField.new("New Order Response", "eurex.derivatives.eti.t7.v6.1.neworderresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.new_order_single_request = ProtoField.new("New Order Single Request", "eurex.derivatives.eti.t7.v6.1.newordersinglerequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.new_order_single_short_request = ProtoField.new("New Order Single Short Request", "eurex.derivatives.eti.t7.v6.1.newordersingleshortrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.news_broadcast = ProtoField.new("News Broadcast", "eurex.derivatives.eti.t7.v6.1.newsbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.no_enrichment_rules = ProtoField.new("No Enrichment Rules", "eurex.derivatives.eti.t7.v6.1.noenrichmentrules", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.no_events = ProtoField.new("No Events", "eurex.derivatives.eti.t7.v6.1.noevents", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_fills = ProtoField.new("No Fills", "eurex.derivatives.eti.t7.v6.1.nofills", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_instr_attrib = ProtoField.new("No Instr Attrib", "eurex.derivatives.eti.t7.v6.1.noinstrattrib", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_leg_execs = ProtoField.new("No Leg Execs", "eurex.derivatives.eti.t7.v6.1.nolegexecs", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.no_legs = ProtoField.new("No Legs", "eurex.derivatives.eti.t7.v6.1.nolegs", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_mm_parameters = ProtoField.new("No Mm Parameters", "eurex.derivatives.eti.t7.v6.1.nommparameters", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_not_affected_orders = ProtoField.new("No Not Affected Orders", "eurex.derivatives.eti.t7.v6.1.nonotaffectedorders", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.no_not_affected_securities = ProtoField.new("No Not Affected Securities", "eurex.derivatives.eti.t7.v6.1.nonotaffectedsecurities", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.no_order_book_items = ProtoField.new("No Order Book Items", "eurex.derivatives.eti.t7.v6.1.noorderbookitems", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_party_details = ProtoField.new("No Party Details", "eurex.derivatives.eti.t7.v6.1.nopartydetails", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.no_quote_entries = ProtoField.new("No Quote Entries", "eurex.derivatives.eti.t7.v6.1.noquoteentries", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_quote_events = ProtoField.new("No Quote Events", "eurex.derivatives.eti.t7.v6.1.noquoteevents", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_quote_events_index = ProtoField.new("No Quote Events Index", "eurex.derivatives.eti.t7.v6.1.noquoteeventsindex", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_sessions = ProtoField.new("No Sessions", "eurex.derivatives.eti.t7.v6.1.nosessions", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.no_side_allocs = ProtoField.new("No Side Allocs", "eurex.derivatives.eti.t7.v6.1.nosideallocs", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_target_party_i_ds = ProtoField.new("No Target Party I Ds", "eurex.derivatives.eti.t7.v6.1.notargetpartyids", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.no_underlying_stips = ProtoField.new("No Underlying Stips", "eurex.derivatives.eti.t7.v6.1.nounderlyingstips", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.not_aff_orig_cl_ord_id = ProtoField.new("Not Aff Orig Cl Ord Id", "eurex.derivatives.eti.t7.v6.1.notafforigclordid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.not_affected_order_id = ProtoField.new("Not Affected Order Id", "eurex.derivatives.eti.t7.v6.1.notaffectedorderid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.not_affected_orders_grp = ProtoField.new("Not Affected Orders Grp", "eurex.derivatives.eti.t7.v6.1.notaffectedordersgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.not_affected_securities_grp = ProtoField.new("Not Affected Securities Grp", "eurex.derivatives.eti.t7.v6.1.notaffectedsecuritiesgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.not_affected_security_id = ProtoField.new("Not Affected Security Id", "eurex.derivatives.eti.t7.v6.1.notaffectedsecurityid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.notif_header = ProtoField.new("Notif Header", "eurex.derivatives.eti.t7.v6.1.notifheader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.notification_in = ProtoField.new("Notification In", "eurex.derivatives.eti.t7.v6.1.notificationin", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.nr_response_header_me = ProtoField.new("Nr Response Header Me", "eurex.derivatives.eti.t7.v6.1.nrresponseheaderme", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.nrbc_header = ProtoField.new("Nrbc Header", "eurex.derivatives.eti.t7.v6.1.nrbcheader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.number_of_resp_disclosure_instruction = ProtoField.new("Number Of Resp Disclosure Instruction", "eurex.derivatives.eti.t7.v6.1.numberofrespdisclosureinstruction", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.number_of_respondents = ProtoField.new("Number Of Respondents", "eurex.derivatives.eti.t7.v6.1.numberofrespondents", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.number_of_securities = ProtoField.new("Number Of Securities", "eurex.derivatives.eti.t7.v6.1.numberofsecurities", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.offer_cxl_size = ProtoField.new("Offer Cxl Size", "eurex.derivatives.eti.t7.v6.1.offercxlsize", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.offer_px = ProtoField.new("Offer Px", "eurex.derivatives.eti.t7.v6.1.offerpx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.offer_size = ProtoField.new("Offer Size", "eurex.derivatives.eti.t7.v6.1.offersize", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.opt_attribute = ProtoField.new("Opt Attribute", "eurex.derivatives.eti.t7.v6.1.optattribute", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.ord_status = ProtoField.new("Ord Status", "eurex.derivatives.eti.t7.v6.1.ordstatus", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.ord_type = ProtoField.new("Ord Type", "eurex.derivatives.eti.t7.v6.1.ordtype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.order_attribute_liquidity_provision = ProtoField.new("Order Attribute Liquidity Provision", "eurex.derivatives.eti.t7.v6.1.orderattributeliquidityprovision", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.order_attribute_risk_reduction = ProtoField.new("Order Attribute Risk Reduction", "eurex.derivatives.eti.t7.v6.1.orderattributeriskreduction", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.order_book_item_grp = ProtoField.new("Order Book Item Grp", "eurex.derivatives.eti.t7.v6.1.orderbookitemgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.order_category = ProtoField.new("Order Category", "eurex.derivatives.eti.t7.v6.1.ordercategory", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.order_exec_notification = ProtoField.new("Order Exec Notification", "eurex.derivatives.eti.t7.v6.1.orderexecnotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.order_exec_report_broadcast = ProtoField.new("Order Exec Report Broadcast", "eurex.derivatives.eti.t7.v6.1.orderexecreportbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.order_exec_response = ProtoField.new("Order Exec Response", "eurex.derivatives.eti.t7.v6.1.orderexecresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.order_id = ProtoField.new("Order Id", "eurex.derivatives.eti.t7.v6.1.orderid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.order_qty = ProtoField.new("Order Qty", "eurex.derivatives.eti.t7.v6.1.orderqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.order_routing_indicator = ProtoField.new("Order Routing Indicator", "eurex.derivatives.eti.t7.v6.1.orderroutingindicator", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.order_side = ProtoField.new("Order Side", "eurex.derivatives.eti.t7.v6.1.orderside", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "eurex.derivatives.eti.t7.v6.1.origclordid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.orig_time = ProtoField.new("Orig Time", "eurex.derivatives.eti.t7.v6.1.origtime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.orig_trade_id = ProtoField.new("Orig Trade Id", "eurex.derivatives.eti.t7.v6.1.origtradeid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.ownership_indicator = ProtoField.new("Ownership Indicator", "eurex.derivatives.eti.t7.v6.1.ownershipindicator", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.package_id = ProtoField.new("Package Id", "eurex.derivatives.eti.t7.v6.1.packageid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.packet = ProtoField.new("Packet", "eurex.derivatives.eti.t7.v6.1.packet", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.pad_1 = ProtoField.new("Pad 1", "eurex.derivatives.eti.t7.v6.1.pad1", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.pad_2 = ProtoField.new("Pad 2", "eurex.derivatives.eti.t7.v6.1.pad2", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.pad_3 = ProtoField.new("Pad 3", "eurex.derivatives.eti.t7.v6.1.pad3", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.pad_4 = ProtoField.new("Pad 4", "eurex.derivatives.eti.t7.v6.1.pad4", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.pad_5 = ProtoField.new("Pad 5", "eurex.derivatives.eti.t7.v6.1.pad5", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.pad_6 = ProtoField.new("Pad 6", "eurex.derivatives.eti.t7.v6.1.pad6", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.pad_7 = ProtoField.new("Pad 7", "eurex.derivatives.eti.t7.v6.1.pad7", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.partition_id = ProtoField.new("Partition Id", "eurex.derivatives.eti.t7.v6.1.partitionid", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.party_action_report = ProtoField.new("Party Action Report", "eurex.derivatives.eti.t7.v6.1.partyactionreport", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_action_type = ProtoField.new("Party Action Type", "eurex.derivatives.eti.t7.v6.1.partyactiontype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.party_detail_desk_id = ProtoField.new("Party Detail Desk Id", "eurex.derivatives.eti.t7.v6.1.partydetaildeskid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_detail_executing_trader = ProtoField.new("Party Detail Executing Trader", "eurex.derivatives.eti.t7.v6.1.partydetailexecutingtrader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_detail_id_executing_trader = ProtoField.new("Party Detail Id Executing Trader", "eurex.derivatives.eti.t7.v6.1.partydetailidexecutingtrader", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.party_detail_id_executing_unit = ProtoField.new("Party Detail Id Executing Unit", "eurex.derivatives.eti.t7.v6.1.partydetailidexecutingunit", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.party_detail_role_qualifier = ProtoField.new("Party Detail Role Qualifier", "eurex.derivatives.eti.t7.v6.1.partydetailrolequalifier", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.party_detail_status = ProtoField.new("Party Detail Status", "eurex.derivatives.eti.t7.v6.1.partydetailstatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.party_details_grp = ProtoField.new("Party Details Grp", "eurex.derivatives.eti.t7.v6.1.partydetailsgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_entering_trader = ProtoField.new("Party Entering Trader", "eurex.derivatives.eti.t7.v6.1.partyenteringtrader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_entitlements_update_report = ProtoField.new("Party Entitlements Update Report", "eurex.derivatives.eti.t7.v6.1.partyentitlementsupdatereport", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_executing_firm = ProtoField.new("Party Executing Firm", "eurex.derivatives.eti.t7.v6.1.partyexecutingfirm", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_executing_trader = ProtoField.new("Party Executing Trader", "eurex.derivatives.eti.t7.v6.1.partyexecutingtrader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_id_beneficiary = ProtoField.new("Party Id Beneficiary", "eurex.derivatives.eti.t7.v6.1.partyidbeneficiary", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_id_client_id = ProtoField.new("Party Id Client Id", "eurex.derivatives.eti.t7.v6.1.partyidclientid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.party_id_entering_firm = ProtoField.new("Party Id Entering Firm", "eurex.derivatives.eti.t7.v6.1.partyidenteringfirm", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.party_id_entering_trader = ProtoField.new("Party Id Entering Trader", "eurex.derivatives.eti.t7.v6.1.partyidenteringtrader", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.party_id_executing_trader = ProtoField.new("Party Id Executing Trader", "eurex.derivatives.eti.t7.v6.1.partyidexecutingtrader", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.party_id_executing_unit = ProtoField.new("Party Id Executing Unit", "eurex.derivatives.eti.t7.v6.1.partyidexecutingunit", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.party_id_investment_decision_maker = ProtoField.new("Party Id Investment Decision Maker", "eurex.derivatives.eti.t7.v6.1.partyidinvestmentdecisionmaker", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.party_id_investment_decision_maker_qualifier = ProtoField.new("Party Id Investment Decision Maker Qualifier", "eurex.derivatives.eti.t7.v6.1.partyidinvestmentdecisionmakerqualifier", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.party_id_location_id = ProtoField.new("Party Id Location Id", "eurex.derivatives.eti.t7.v6.1.partyidlocationid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_id_order_origination_firm = ProtoField.new("Party Id Order Origination Firm", "eurex.derivatives.eti.t7.v6.1.partyidorderoriginationfirm", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_id_origination_market = ProtoField.new("Party Id Origination Market", "eurex.derivatives.eti.t7.v6.1.partyidoriginationmarket", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.party_id_position_account = ProtoField.new("Party Id Position Account", "eurex.derivatives.eti.t7.v6.1.partyidpositionaccount", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.party_id_session_id = ProtoField.new("Party Id Session Id", "eurex.derivatives.eti.t7.v6.1.partyidsessionid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.party_id_settlement_location = ProtoField.new("Party Id Settlement Location", "eurex.derivatives.eti.t7.v6.1.partyidsettlementlocation", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.party_id_take_up_trading_firm = ProtoField.new("Party Id Take Up Trading Firm", "eurex.derivatives.eti.t7.v6.1.partyidtakeuptradingfirm", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.password = ProtoField.new("Password", "eurex.derivatives.eti.t7.v6.1.password", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.pct_count = ProtoField.new("Pct Count", "eurex.derivatives.eti.t7.v6.1.pctcount", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.position_effect = ProtoField.new("Position Effect", "eurex.derivatives.eti.t7.v6.1.positioneffect", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.price = ProtoField.new("Price", "eurex.derivatives.eti.t7.v6.1.price", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.price_disclosure_instruction = ProtoField.new("Price Disclosure Instruction", "eurex.derivatives.eti.t7.v6.1.pricedisclosureinstruction", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.price_validity_check_type = ProtoField.new("Price Validity Check Type", "eurex.derivatives.eti.t7.v6.1.pricevaliditychecktype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.product_complex = ProtoField.new("Product Complex", "eurex.derivatives.eti.t7.v6.1.productcomplex", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.put_or_call = ProtoField.new("Put Or Call", "eurex.derivatives.eti.t7.v6.1.putorcall", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quot_req_legs_grp = ProtoField.new("Quot Req Legs Grp", "eurex.derivatives.eti.t7.v6.1.quotreqlegsgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.quote_activation_notification = ProtoField.new("Quote Activation Notification", "eurex.derivatives.eti.t7.v6.1.quoteactivationnotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.quote_activation_request = ProtoField.new("Quote Activation Request", "eurex.derivatives.eti.t7.v6.1.quoteactivationrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.quote_activation_response = ProtoField.new("Quote Activation Response", "eurex.derivatives.eti.t7.v6.1.quoteactivationresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.quote_cancel_type = ProtoField.new("Quote Cancel Type", "eurex.derivatives.eti.t7.v6.1.quotecanceltype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quote_entry_ack_grp = ProtoField.new("Quote Entry Ack Grp", "eurex.derivatives.eti.t7.v6.1.quoteentryackgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.quote_entry_grp = ProtoField.new("Quote Entry Grp", "eurex.derivatives.eti.t7.v6.1.quoteentrygrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.quote_entry_reject_reason = ProtoField.new("Quote Entry Reject Reason", "eurex.derivatives.eti.t7.v6.1.quoteentryrejectreason", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.quote_entry_status = ProtoField.new("Quote Entry Status", "eurex.derivatives.eti.t7.v6.1.quoteentrystatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quote_event_exec_id = ProtoField.new("Quote Event Exec Id", "eurex.derivatives.eti.t7.v6.1.quoteeventexecid", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.quote_event_grp = ProtoField.new("Quote Event Grp", "eurex.derivatives.eti.t7.v6.1.quoteeventgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.quote_event_liquidity_ind = ProtoField.new("Quote Event Liquidity Ind", "eurex.derivatives.eti.t7.v6.1.quoteeventliquidityind", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quote_event_match_id = ProtoField.new("Quote Event Match Id", "eurex.derivatives.eti.t7.v6.1.quoteeventmatchid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.quote_event_px = ProtoField.new("Quote Event Px", "eurex.derivatives.eti.t7.v6.1.quoteeventpx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.quote_event_qty = ProtoField.new("Quote Event Qty", "eurex.derivatives.eti.t7.v6.1.quoteeventqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.quote_event_reason = ProtoField.new("Quote Event Reason", "eurex.derivatives.eti.t7.v6.1.quoteeventreason", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quote_event_side = ProtoField.new("Quote Event Side", "eurex.derivatives.eti.t7.v6.1.quoteeventside", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quote_event_type = ProtoField.new("Quote Event Type", "eurex.derivatives.eti.t7.v6.1.quoteeventtype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quote_execution_report = ProtoField.new("Quote Execution Report", "eurex.derivatives.eti.t7.v6.1.quoteexecutionreport", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.quote_id = ProtoField.new("Quote Id", "eurex.derivatives.eti.t7.v6.1.quoteid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.quote_instruction = ProtoField.new("Quote Instruction", "eurex.derivatives.eti.t7.v6.1.quoteinstruction", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quote_leg_exec_grp = ProtoField.new("Quote Leg Exec Grp", "eurex.derivatives.eti.t7.v6.1.quotelegexecgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.quote_msg_id = ProtoField.new("Quote Msg Id", "eurex.derivatives.eti.t7.v6.1.quotemsgid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.quote_ref_price = ProtoField.new("Quote Ref Price", "eurex.derivatives.eti.t7.v6.1.quoterefprice", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.quote_ref_price_source = ProtoField.new("Quote Ref Price Source", "eurex.derivatives.eti.t7.v6.1.quoterefpricesource", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quote_req_id = ProtoField.new("Quote Req Id", "eurex.derivatives.eti.t7.v6.1.quotereqid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.quote_response_id = ProtoField.new("Quote Response Id", "eurex.derivatives.eti.t7.v6.1.quoteresponseid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.quote_size_type = ProtoField.new("Quote Size Type", "eurex.derivatives.eti.t7.v6.1.quotesizetype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quote_status = ProtoField.new("Quote Status", "eurex.derivatives.eti.t7.v6.1.quotestatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.quote_type = ProtoField.new("Quote Type", "eurex.derivatives.eti.t7.v6.1.quotetype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.rbc_header = ProtoField.new("Rbc Header", "eurex.derivatives.eti.t7.v6.1.rbcheader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.rbc_header_me = ProtoField.new("Rbc Header Me", "eurex.derivatives.eti.t7.v6.1.rbcheaderme", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.ref_appl_id = ProtoField.new("Ref Appl Id", "eurex.derivatives.eti.t7.v6.1.refapplid", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.ref_appl_last_msg_id = ProtoField.new("Ref Appl Last Msg Id", "eurex.derivatives.eti.t7.v6.1.refappllastmsgid", ftypes.BYTES)
eurex_derivatives_eti_t7_v6_1.fields.ref_appl_last_seq_num = ProtoField.new("Ref Appl Last Seq Num", "eurex.derivatives.eti.t7.v6.1.refappllastseqnum", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.ref_appl_sub_id = ProtoField.new("Ref Appl Sub Id", "eurex.derivatives.eti.t7.v6.1.refapplsubid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.reject = ProtoField.new("Reject", "eurex.derivatives.eti.t7.v6.1.reject", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.related_close_price = ProtoField.new("Related Close Price", "eurex.derivatives.eti.t7.v6.1.relatedcloseprice", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.related_market_segment_id = ProtoField.new("Related Market Segment Id", "eurex.derivatives.eti.t7.v6.1.relatedmarketsegmentid", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.related_product_complex = ProtoField.new("Related Product Complex", "eurex.derivatives.eti.t7.v6.1.relatedproductcomplex", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.related_security_id = ProtoField.new("Related Security Id", "eurex.derivatives.eti.t7.v6.1.relatedsecurityid", ftypes.INT64)
eurex_derivatives_eti_t7_v6_1.fields.related_symbol = ProtoField.new("Related Symbol", "eurex.derivatives.eti.t7.v6.1.relatedsymbol", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.related_trade_id = ProtoField.new("Related Trade Id", "eurex.derivatives.eti.t7.v6.1.relatedtradeid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.related_trade_quantity = ProtoField.new("Related Trade Quantity", "eurex.derivatives.eti.t7.v6.1.relatedtradequantity", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.request_header = ProtoField.new("Request Header", "eurex.derivatives.eti.t7.v6.1.requestheader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.request_out = ProtoField.new("Request Out", "eurex.derivatives.eti.t7.v6.1.requestout", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.request_time = ProtoField.new("Request Time", "eurex.derivatives.eti.t7.v6.1.requesttime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.requesting_party_clearing_firm = ProtoField.new("Requesting Party Clearing Firm", "eurex.derivatives.eti.t7.v6.1.requestingpartyclearingfirm", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.requesting_party_entering_firm = ProtoField.new("Requesting Party Entering Firm", "eurex.derivatives.eti.t7.v6.1.requestingpartyenteringfirm", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.requesting_party_id_entering_firm = ProtoField.new("Requesting Party Id Entering Firm", "eurex.derivatives.eti.t7.v6.1.requestingpartyidenteringfirm", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.requesting_party_id_executing_system = ProtoField.new("Requesting Party Id Executing System", "eurex.derivatives.eti.t7.v6.1.requestingpartyidexecutingsystem", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.requesting_party_id_executing_trader = ProtoField.new("Requesting Party Id Executing Trader", "eurex.derivatives.eti.t7.v6.1.requestingpartyidexecutingtrader", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.response_header = ProtoField.new("Response Header", "eurex.derivatives.eti.t7.v6.1.responseheader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.response_header_me = ProtoField.new("Response Header Me", "eurex.derivatives.eti.t7.v6.1.responseheaderme", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.response_in = ProtoField.new("Response In", "eurex.derivatives.eti.t7.v6.1.responsein", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.retransmit_me_message_request = ProtoField.new("Retransmit Me Message Request", "eurex.derivatives.eti.t7.v6.1.retransmitmemessagerequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.retransmit_me_message_response = ProtoField.new("Retransmit Me Message Response", "eurex.derivatives.eti.t7.v6.1.retransmitmemessageresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.retransmit_request = ProtoField.new("Retransmit Request", "eurex.derivatives.eti.t7.v6.1.retransmitrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.retransmit_response = ProtoField.new("Retransmit Response", "eurex.derivatives.eti.t7.v6.1.retransmitresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.rfq_request = ProtoField.new("Rfq Request", "eurex.derivatives.eti.t7.v6.1.rfqrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.rfq_response = ProtoField.new("Rfq Response", "eurex.derivatives.eti.t7.v6.1.rfqresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.risk_limit_action = ProtoField.new("Risk Limit Action", "eurex.derivatives.eti.t7.v6.1.risklimitaction", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.risk_notification_broadcast = ProtoField.new("Risk Notification Broadcast", "eurex.derivatives.eti.t7.v6.1.risknotificationbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.root_party_clearing_firm = ProtoField.new("Root Party Clearing Firm", "eurex.derivatives.eti.t7.v6.1.rootpartyclearingfirm", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.root_party_clearing_organization = ProtoField.new("Root Party Clearing Organization", "eurex.derivatives.eti.t7.v6.1.rootpartyclearingorganization", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.root_party_entering_trader = ProtoField.new("Root Party Entering Trader", "eurex.derivatives.eti.t7.v6.1.rootpartyenteringtrader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.root_party_executing_firm = ProtoField.new("Root Party Executing Firm", "eurex.derivatives.eti.t7.v6.1.rootpartyexecutingfirm", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.root_party_executing_trader = ProtoField.new("Root Party Executing Trader", "eurex.derivatives.eti.t7.v6.1.rootpartyexecutingtrader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.root_party_id_beneficiary = ProtoField.new("Root Party Id Beneficiary", "eurex.derivatives.eti.t7.v6.1.rootpartyidbeneficiary", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.root_party_id_clearing_unit = ProtoField.new("Root Party Id Clearing Unit", "eurex.derivatives.eti.t7.v6.1.rootpartyidclearingunit", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.root_party_id_executing_trader = ProtoField.new("Root Party Id Executing Trader", "eurex.derivatives.eti.t7.v6.1.rootpartyidexecutingtrader", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.root_party_id_executing_unit = ProtoField.new("Root Party Id Executing Unit", "eurex.derivatives.eti.t7.v6.1.rootpartyidexecutingunit", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.root_party_id_order_origination_firm = ProtoField.new("Root Party Id Order Origination Firm", "eurex.derivatives.eti.t7.v6.1.rootpartyidorderoriginationfirm", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.root_party_id_position_account = ProtoField.new("Root Party Id Position Account", "eurex.derivatives.eti.t7.v6.1.rootpartyidpositionaccount", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.root_party_id_session_id = ProtoField.new("Root Party Id Session Id", "eurex.derivatives.eti.t7.v6.1.rootpartyidsessionid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.root_party_id_take_up_trading_firm = ProtoField.new("Root Party Id Take Up Trading Firm", "eurex.derivatives.eti.t7.v6.1.rootpartyidtakeuptradingfirm", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.secondary_gateway_id = ProtoField.new("Secondary Gateway Id", "eurex.derivatives.eti.t7.v6.1.secondarygatewayid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.secondary_gateway_status = ProtoField.new("Secondary Gateway Status", "eurex.derivatives.eti.t7.v6.1.secondarygatewaystatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.secondary_gateway_sub_id = ProtoField.new("Secondary Gateway Sub Id", "eurex.derivatives.eti.t7.v6.1.secondarygatewaysubid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.secondary_quote_id = ProtoField.new("Secondary Quote Id", "eurex.derivatives.eti.t7.v6.1.secondaryquoteid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.secondary_trade_id = ProtoField.new("Secondary Trade Id", "eurex.derivatives.eti.t7.v6.1.secondarytradeid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.security_id = ProtoField.new("Security Id", "eurex.derivatives.eti.t7.v6.1.securityid", ftypes.INT64)
eurex_derivatives_eti_t7_v6_1.fields.security_response_id = ProtoField.new("Security Response Id", "eurex.derivatives.eti.t7.v6.1.securityresponseid", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.security_sub_type = ProtoField.new("Security Sub Type", "eurex.derivatives.eti.t7.v6.1.securitysubtype", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.selective_request_for_quote_service_status = ProtoField.new("Selective Request For Quote Service Status", "eurex.derivatives.eti.t7.v6.1.selectiverequestforquoteservicestatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.selective_request_for_quote_service_trade_date = ProtoField.new("Selective Request For Quote Service Trade Date", "eurex.derivatives.eti.t7.v6.1.selectiverequestforquoteservicetradedate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.sender_sub_id = ProtoField.new("Sender Sub Id", "eurex.derivatives.eti.t7.v6.1.sendersubid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.sending_time = ProtoField.new("Sending Time", "eurex.derivatives.eti.t7.v6.1.sendingtime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.service_availability_broadcast = ProtoField.new("Service Availability Broadcast", "eurex.derivatives.eti.t7.v6.1.serviceavailabilitybroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.service_availability_market_broadcast = ProtoField.new("Service Availability Market Broadcast", "eurex.derivatives.eti.t7.v6.1.serviceavailabilitymarketbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.session_instance_id = ProtoField.new("Session Instance Id", "eurex.derivatives.eti.t7.v6.1.sessioninstanceid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.session_mode = ProtoField.new("Session Mode", "eurex.derivatives.eti.t7.v6.1.sessionmode", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "eurex.derivatives.eti.t7.v6.1.sessionrejectreason", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.session_status = ProtoField.new("Session Status", "eurex.derivatives.eti.t7.v6.1.sessionstatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.session_sub_mode = ProtoField.new("Session Sub Mode", "eurex.derivatives.eti.t7.v6.1.sessionsubmode", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.sessions_grp = ProtoField.new("Sessions Grp", "eurex.derivatives.eti.t7.v6.1.sessionsgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.settl_method = ProtoField.new("Settl Method", "eurex.derivatives.eti.t7.v6.1.settlmethod", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.side = ProtoField.new("Side", "eurex.derivatives.eti.t7.v6.1.side", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.side_alloc_ext_grp = ProtoField.new("Side Alloc Ext Grp", "eurex.derivatives.eti.t7.v6.1.sideallocextgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.side_alloc_grp = ProtoField.new("Side Alloc Grp", "eurex.derivatives.eti.t7.v6.1.sideallocgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.side_alloc_grp_bc = ProtoField.new("Side Alloc Grp Bc", "eurex.derivatives.eti.t7.v6.1.sideallocgrpbc", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.side_disclosure_instruction = ProtoField.new("Side Disclosure Instruction", "eurex.derivatives.eti.t7.v6.1.sidedisclosureinstruction", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.side_last_px = ProtoField.new("Side Last Px", "eurex.derivatives.eti.t7.v6.1.sidelastpx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.side_last_qty = ProtoField.new("Side Last Qty", "eurex.derivatives.eti.t7.v6.1.sidelastqty", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.side_liquidity_ind = ProtoField.new("Side Liquidity Ind", "eurex.derivatives.eti.t7.v6.1.sideliquidityind", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.side_trade_id = ProtoField.new("Side Trade Id", "eurex.derivatives.eti.t7.v6.1.sidetradeid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.simple_security_id = ProtoField.new("Simple Security Id", "eurex.derivatives.eti.t7.v6.1.simplesecurityid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.skip_validations = ProtoField.new("Skip Validations", "eurex.derivatives.eti.t7.v6.1.skipvalidations", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.srqs_create_deal_notification = ProtoField.new("Srqs Create Deal Notification", "eurex.derivatives.eti.t7.v6.1.srqscreatedealnotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_deal_notification = ProtoField.new("Srqs Deal Notification", "eurex.derivatives.eti.t7.v6.1.srqsdealnotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_deal_response = ProtoField.new("Srqs Deal Response", "eurex.derivatives.eti.t7.v6.1.srqsdealresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_enter_quote_request = ProtoField.new("Srqs Enter Quote Request", "eurex.derivatives.eti.t7.v6.1.srqsenterquoterequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_hit_quote_request = ProtoField.new("Srqs Hit Quote Request", "eurex.derivatives.eti.t7.v6.1.srqshitquoterequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_negotiation_notification = ProtoField.new("Srqs Negotiation Notification", "eurex.derivatives.eti.t7.v6.1.srqsnegotiationnotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_negotiation_requester_notification = ProtoField.new("Srqs Negotiation Requester Notification", "eurex.derivatives.eti.t7.v6.1.srqsnegotiationrequesternotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_negotiation_status_notification = ProtoField.new("Srqs Negotiation Status Notification", "eurex.derivatives.eti.t7.v6.1.srqsnegotiationstatusnotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_open_negotiation_notification = ProtoField.new("Srqs Open Negotiation Notification", "eurex.derivatives.eti.t7.v6.1.srqsopennegotiationnotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_open_negotiation_request = ProtoField.new("Srqs Open Negotiation Request", "eurex.derivatives.eti.t7.v6.1.srqsopennegotiationrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_open_negotiation_requester_notification = ProtoField.new("Srqs Open Negotiation Requester Notification", "eurex.derivatives.eti.t7.v6.1.srqsopennegotiationrequesternotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_quote_notification = ProtoField.new("Srqs Quote Notification", "eurex.derivatives.eti.t7.v6.1.srqsquotenotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_quote_response = ProtoField.new("Srqs Quote Response", "eurex.derivatives.eti.t7.v6.1.srqsquoteresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_related_trade_id = ProtoField.new("Srqs Related Trade Id", "eurex.derivatives.eti.t7.v6.1.srqsrelatedtradeid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.srqs_status_broadcast = ProtoField.new("Srqs Status Broadcast", "eurex.derivatives.eti.t7.v6.1.srqsstatusbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_update_deal_status_request = ProtoField.new("Srqs Update Deal Status Request", "eurex.derivatives.eti.t7.v6.1.srqsupdatedealstatusrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.srqs_update_negotiation_request = ProtoField.new("Srqs Update Negotiation Request", "eurex.derivatives.eti.t7.v6.1.srqsupdatenegotiationrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.stop_px = ProtoField.new("Stop Px", "eurex.derivatives.eti.t7.v6.1.stoppx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.strategy_link_id = ProtoField.new("Strategy Link Id", "eurex.derivatives.eti.t7.v6.1.strategylinkid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.strike_price = ProtoField.new("Strike Price", "eurex.derivatives.eti.t7.v6.1.strikeprice", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.subscribe_request = ProtoField.new("Subscribe Request", "eurex.derivatives.eti.t7.v6.1.subscriberequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.subscribe_response = ProtoField.new("Subscribe Response", "eurex.derivatives.eti.t7.v6.1.subscriberesponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.subscription_scope = ProtoField.new("Subscription Scope", "eurex.derivatives.eti.t7.v6.1.subscriptionscope", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.symbol = ProtoField.new("Symbol", "eurex.derivatives.eti.t7.v6.1.symbol", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.t_7_entry_service_rtm_status = ProtoField.new("T 7 Entry Service Rtm Status", "eurex.derivatives.eti.t7.v6.1.t7entryservicertmstatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.t_7_entry_service_rtm_trade_date = ProtoField.new("T 7 Entry Service Rtm Trade Date", "eurex.derivatives.eti.t7.v6.1.t7entryservicertmtradedate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.t_7_entry_service_status = ProtoField.new("T 7 Entry Service Status", "eurex.derivatives.eti.t7.v6.1.t7entryservicestatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.t_7_entry_service_trade_date = ProtoField.new("T 7 Entry Service Trade Date", "eurex.derivatives.eti.t7.v6.1.t7entryservicetradedate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.target_parties = ProtoField.new("Target Parties", "eurex.derivatives.eti.t7.v6.1.targetparties", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.target_party_entering_trader = ProtoField.new("Target Party Entering Trader", "eurex.derivatives.eti.t7.v6.1.targetpartyenteringtrader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.target_party_executing_firm = ProtoField.new("Target Party Executing Firm", "eurex.derivatives.eti.t7.v6.1.targetpartyexecutingfirm", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.target_party_executing_trader = ProtoField.new("Target Party Executing Trader", "eurex.derivatives.eti.t7.v6.1.targetpartyexecutingtrader", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.target_party_id_desk_id = ProtoField.new("Target Party Id Desk Id", "eurex.derivatives.eti.t7.v6.1.targetpartyiddeskid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.target_party_id_executing_trader = ProtoField.new("Target Party Id Executing Trader", "eurex.derivatives.eti.t7.v6.1.targetpartyidexecutingtrader", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.target_party_id_session_id = ProtoField.new("Target Party Id Session Id", "eurex.derivatives.eti.t7.v6.1.targetpartyidsessionid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.template_id = ProtoField.new("Template Id", "eurex.derivatives.eti.t7.v6.1.templateid", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.tes_approve_broadcast = ProtoField.new("Tes Approve Broadcast", "eurex.derivatives.eti.t7.v6.1.tesapprovebroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.tes_broadcast = ProtoField.new("Tes Broadcast", "eurex.derivatives.eti.t7.v6.1.tesbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.tes_delete_broadcast = ProtoField.new("Tes Delete Broadcast", "eurex.derivatives.eti.t7.v6.1.tesdeletebroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.tes_exec_id = ProtoField.new("Tes Exec Id", "eurex.derivatives.eti.t7.v6.1.tesexecid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.tes_execution_broadcast = ProtoField.new("Tes Execution Broadcast", "eurex.derivatives.eti.t7.v6.1.tesexecutionbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.tes_response = ProtoField.new("Tes Response", "eurex.derivatives.eti.t7.v6.1.tesresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.tes_trade_broadcast = ProtoField.new("Tes Trade Broadcast", "eurex.derivatives.eti.t7.v6.1.testradebroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.tes_trading_session_status_broadcast = ProtoField.new("Tes Trading Session Status Broadcast", "eurex.derivatives.eti.t7.v6.1.testradingsessionstatusbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.tes_upload_broadcast = ProtoField.new("Tes Upload Broadcast", "eurex.derivatives.eti.t7.v6.1.tesuploadbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.throttle_disconnect_limit = ProtoField.new("Throttle Disconnect Limit", "eurex.derivatives.eti.t7.v6.1.throttledisconnectlimit", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.throttle_no_msgs = ProtoField.new("Throttle No Msgs", "eurex.derivatives.eti.t7.v6.1.throttlenomsgs", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.throttle_time_interval = ProtoField.new("Throttle Time Interval", "eurex.derivatives.eti.t7.v6.1.throttletimeinterval", ftypes.INT64)
eurex_derivatives_eti_t7_v6_1.fields.throttle_update_notification = ProtoField.new("Throttle Update Notification", "eurex.derivatives.eti.t7.v6.1.throttleupdatenotification", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.time_in_force = ProtoField.new("Time In Force", "eurex.derivatives.eti.t7.v6.1.timeinforce", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.tm_trading_session_status_broadcast = ProtoField.new("Tm Trading Session Status Broadcast", "eurex.derivatives.eti.t7.v6.1.tmtradingsessionstatusbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.tot_num_trade_reports = ProtoField.new("Tot Num Trade Reports", "eurex.derivatives.eti.t7.v6.1.totnumtradereports", ftypes.INT32)
eurex_derivatives_eti_t7_v6_1.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "eurex.derivatives.eti.t7.v6.1.tradsesevent", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trad_ses_mode = ProtoField.new("Trad Ses Mode", "eurex.derivatives.eti.t7.v6.1.tradsesmode", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trade_alloc_status = ProtoField.new("Trade Alloc Status", "eurex.derivatives.eti.t7.v6.1.tradeallocstatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trade_broadcast = ProtoField.new("Trade Broadcast", "eurex.derivatives.eti.t7.v6.1.tradebroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.trade_date = ProtoField.new("Trade Date", "eurex.derivatives.eti.t7.v6.1.tradedate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.trade_id = ProtoField.new("Trade Id", "eurex.derivatives.eti.t7.v6.1.tradeid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.trade_manager_status = ProtoField.new("Trade Manager Status", "eurex.derivatives.eti.t7.v6.1.trademanagerstatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trade_manager_trade_date = ProtoField.new("Trade Manager Trade Date", "eurex.derivatives.eti.t7.v6.1.trademanagertradedate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.trade_publish_indicator = ProtoField.new("Trade Publish Indicator", "eurex.derivatives.eti.t7.v6.1.tradepublishindicator", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trade_report_id = ProtoField.new("Trade Report Id", "eurex.derivatives.eti.t7.v6.1.tradereportid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.trade_report_text = ProtoField.new("Trade Report Text", "eurex.derivatives.eti.t7.v6.1.tradereporttext", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.trade_report_type = ProtoField.new("Trade Report Type", "eurex.derivatives.eti.t7.v6.1.tradereporttype", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trade_underlying = ProtoField.new("Trade Underlying", "eurex.derivatives.eti.t7.v6.1.tradeunderlying", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trading_capacity = ProtoField.new("Trading Capacity", "eurex.derivatives.eti.t7.v6.1.tradingcapacity", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trading_session_status_broadcast = ProtoField.new("Trading Session Status Broadcast", "eurex.derivatives.eti.t7.v6.1.tradingsessionstatusbroadcast", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.derivatives.eti.t7.v6.1.tradingsessionsubid", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trans_bkd_time = ProtoField.new("Trans Bkd Time", "eurex.derivatives.eti.t7.v6.1.transbkdtime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.transact_time = ProtoField.new("Transact Time", "eurex.derivatives.eti.t7.v6.1.transacttime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.transfer_reason = ProtoField.new("Transfer Reason", "eurex.derivatives.eti.t7.v6.1.transferreason", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trd_instrmnt_leg_grp = ProtoField.new("Trd Instrmnt Leg Grp", "eurex.derivatives.eti.t7.v6.1.trdinstrmntleggrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.trd_match_id = ProtoField.new("Trd Match Id", "eurex.derivatives.eti.t7.v6.1.trdmatchid", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.trd_reg_ts_entry_time = ProtoField.new("Trd Reg Ts Entry Time", "eurex.derivatives.eti.t7.v6.1.trdregtsentrytime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.trd_reg_ts_execution_time = ProtoField.new("Trd Reg Ts Execution Time", "eurex.derivatives.eti.t7.v6.1.trdregtsexecutiontime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg Ts Time In", "eurex.derivatives.eti.t7.v6.1.trdregtstimein", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.trd_reg_ts_time_out = ProtoField.new("Trd Reg Ts Time Out", "eurex.derivatives.eti.t7.v6.1.trdregtstimeout", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg Ts Time Priority", "eurex.derivatives.eti.t7.v6.1.trdregtstimepriority", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.trd_rpt_status = ProtoField.new("Trd Rpt Status", "eurex.derivatives.eti.t7.v6.1.trdrptstatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.trd_type = ProtoField.new("Trd Type", "eurex.derivatives.eti.t7.v6.1.trdtype", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.triggered = ProtoField.new("Triggered", "eurex.derivatives.eti.t7.v6.1.triggered", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.underlying_currency = ProtoField.new("Underlying Currency", "eurex.derivatives.eti.t7.v6.1.underlyingcurrency", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.underlying_delta_percentage = ProtoField.new("Underlying Delta Percentage", "eurex.derivatives.eti.t7.v6.1.underlyingdeltapercentage", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.underlying_effective_delta_percentage = ProtoField.new("Underlying Effective Delta Percentage", "eurex.derivatives.eti.t7.v6.1.underlyingeffectivedeltapercentage", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.underlying_issuer = ProtoField.new("Underlying Issuer", "eurex.derivatives.eti.t7.v6.1.underlyingissuer", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.underlying_maturity_date = ProtoField.new("Underlying Maturity Date", "eurex.derivatives.eti.t7.v6.1.underlyingmaturitydate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.underlying_px = ProtoField.new("Underlying Px", "eurex.derivatives.eti.t7.v6.1.underlyingpx", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.underlying_qty = ProtoField.new("Underlying Qty", "eurex.derivatives.eti.t7.v6.1.underlyingqty", ftypes.INT64)
eurex_derivatives_eti_t7_v6_1.fields.underlying_security_desc = ProtoField.new("Underlying Security Desc", "eurex.derivatives.eti.t7.v6.1.underlyingsecuritydesc", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "eurex.derivatives.eti.t7.v6.1.underlyingsecurityid", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.underlying_settlement_date = ProtoField.new("Underlying Settlement Date", "eurex.derivatives.eti.t7.v6.1.underlyingsettlementdate", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.underlying_stip_grp = ProtoField.new("Underlying Stip Grp", "eurex.derivatives.eti.t7.v6.1.underlyingstipgrp", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.underlying_stip_type = ProtoField.new("Underlying Stip Type", "eurex.derivatives.eti.t7.v6.1.underlyingstiptype", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.underlying_stip_value = ProtoField.new("Underlying Stip Value", "eurex.derivatives.eti.t7.v6.1.underlyingstipvalue", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.unsubscribe_request = ProtoField.new("Unsubscribe Request", "eurex.derivatives.eti.t7.v6.1.unsubscriberequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.unsubscribe_response = ProtoField.new("Unsubscribe Response", "eurex.derivatives.eti.t7.v6.1.unsubscriberesponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.upload_tes_trade_request = ProtoField.new("Upload Tes Trade Request", "eurex.derivatives.eti.t7.v6.1.uploadtestraderequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.user_login_request = ProtoField.new("User Login Request", "eurex.derivatives.eti.t7.v6.1.userloginrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.user_login_response = ProtoField.new("User Login Response", "eurex.derivatives.eti.t7.v6.1.userloginresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.user_logout_request = ProtoField.new("User Logout Request", "eurex.derivatives.eti.t7.v6.1.userlogoutrequest", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.user_logout_response = ProtoField.new("User Logout Response", "eurex.derivatives.eti.t7.v6.1.userlogoutresponse", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.user_status = ProtoField.new("User Status", "eurex.derivatives.eti.t7.v6.1.userstatus", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.username = ProtoField.new("Username", "eurex.derivatives.eti.t7.v6.1.username", ftypes.UINT32)
eurex_derivatives_eti_t7_v6_1.fields.valid_until_time = ProtoField.new("Valid Until Time", "eurex.derivatives.eti.t7.v6.1.validuntiltime", ftypes.UINT64)
eurex_derivatives_eti_t7_v6_1.fields.value_check_type_quantity = ProtoField.new("Value Check Type Quantity", "eurex.derivatives.eti.t7.v6.1.valuechecktypequantity", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.value_check_type_value = ProtoField.new("Value Check Type Value", "eurex.derivatives.eti.t7.v6.1.valuechecktypevalue", ftypes.UINT8)
eurex_derivatives_eti_t7_v6_1.fields.var_text = ProtoField.new("Var Text", "eurex.derivatives.eti.t7.v6.1.vartext", ftypes.STRING)
eurex_derivatives_eti_t7_v6_1.fields.var_text_len = ProtoField.new("Var Text Len", "eurex.derivatives.eti.t7.v6.1.vartextlen", ftypes.UINT16)
eurex_derivatives_eti_t7_v6_1.fields.vega = ProtoField.new("Vega", "eurex.derivatives.eti.t7.v6.1.vega", ftypes.INT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Eurex Derivatives Eti T7 6.1 Element Dissection Options
show.add_complex_instrument_request = true
show.add_complex_instrument_response = true
show.add_flexible_instrument_request = true
show.add_flexible_instrument_response = true
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
show.delete_order_complex_request = true
show.delete_order_nr_response = true
show.delete_order_response = true
show.delete_order_single_request = true
show.delete_tes_trade_request = true
show.enrichment_rules_grp = true
show.enter_tes_trade_request = true
show.fills_grp = true
show.forced_logout_notification = true
show.forced_user_logout_notification = true
show.gateway_request = true
show.gateway_response = true
show.heartbeat = true
show.heartbeat_notification = true
show.inquire_enrichment_rule_id_list_request = true
show.inquire_enrichment_rule_id_list_response = true
show.inquire_mm_parameter_request = true
show.inquire_mm_parameter_response = true
show.inquire_session_list_request = true
show.inquire_session_list_response = true
show.inquire_user_request = true
show.inquire_user_response = true
show.instrmnt_leg_exec_grp = true
show.instrmt_leg_grp = true
show.instrument_attribute_grp = true
show.instrument_event_grp = true
show.leg_ord_grp = true
show.legal_notification_broadcast = true
show.logon_request = true
show.logon_response = true
show.logout_request = true
show.logout_response = true
show.mass_quote_request = true
show.mass_quote_response = true
show.message_header_in = true
show.message_header_out = true
show.mm_parameter_definition_request = true
show.mm_parameter_definition_response = true
show.mm_parameter_grp = true
show.modify_order_complex_request = true
show.modify_order_complex_short_request = true
show.modify_order_nr_response = true
show.modify_order_response = true
show.modify_order_single_request = true
show.modify_order_single_short_request = true
show.modify_tes_trade_request = true
show.new_order_complex_request = true
show.new_order_complex_short_request = true
show.new_order_nr_response = true
show.new_order_response = true
show.new_order_single_request = true
show.new_order_single_short_request = true
show.news_broadcast = true
show.not_affected_orders_grp = true
show.not_affected_securities_grp = true
show.notif_header = true
show.nr_response_header_me = true
show.nrbc_header = true
show.order_book_item_grp = true
show.order_exec_notification = true
show.order_exec_report_broadcast = true
show.order_exec_response = true
show.party_action_report = true
show.party_details_grp = true
show.party_entitlements_update_report = true
show.quot_req_legs_grp = true
show.quote_activation_notification = true
show.quote_activation_request = true
show.quote_activation_response = true
show.quote_entry_ack_grp = true
show.quote_entry_grp = true
show.quote_event_grp = true
show.quote_execution_report = true
show.quote_leg_exec_grp = true
show.rbc_header = true
show.rbc_header_me = true
show.reject = true
show.request_header = true
show.response_header = true
show.response_header_me = true
show.retransmit_me_message_request = true
show.retransmit_me_message_response = true
show.retransmit_request = true
show.retransmit_response = true
show.rfq_request = true
show.rfq_response = true
show.risk_notification_broadcast = true
show.service_availability_broadcast = true
show.service_availability_market_broadcast = true
show.sessions_grp = true
show.side_alloc_ext_grp = true
show.side_alloc_grp = true
show.side_alloc_grp_bc = true
show.srqs_create_deal_notification = true
show.srqs_deal_notification = true
show.srqs_deal_response = true
show.srqs_enter_quote_request = true
show.srqs_hit_quote_request = true
show.srqs_negotiation_notification = true
show.srqs_negotiation_requester_notification = true
show.srqs_negotiation_status_notification = true
show.srqs_open_negotiation_notification = true
show.srqs_open_negotiation_request = true
show.srqs_open_negotiation_requester_notification = true
show.srqs_quote_notification = true
show.srqs_quote_response = true
show.srqs_status_broadcast = true
show.srqs_update_deal_status_request = true
show.srqs_update_negotiation_request = true
show.subscribe_request = true
show.subscribe_response = true
show.target_parties = true
show.tes_approve_broadcast = true
show.tes_broadcast = true
show.tes_delete_broadcast = true
show.tes_execution_broadcast = true
show.tes_response = true
show.tes_trade_broadcast = true
show.tes_trading_session_status_broadcast = true
show.tes_upload_broadcast = true
show.throttle_update_notification = true
show.tm_trading_session_status_broadcast = true
show.trade_broadcast = true
show.trading_session_status_broadcast = true
show.trd_instrmnt_leg_grp = true
show.underlying_stip_grp = true
show.unsubscribe_request = true
show.unsubscribe_response = true
show.upload_tes_trade_request = true
show.user_login_request = true
show.user_login_response = true
show.user_logout_request = true
show.user_logout_response = true
show.packet = false

-- Register Eurex Derivatives Eti T7 6.1 Show Options
eurex_derivatives_eti_t7_v6_1.prefs.show_add_complex_instrument_request = Pref.bool("Show Add Complex Instrument Request", show.add_complex_instrument_request, "Parse and add Add Complex Instrument Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_add_complex_instrument_response = Pref.bool("Show Add Complex Instrument Response", show.add_complex_instrument_response, "Parse and add Add Complex Instrument Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_add_flexible_instrument_request = Pref.bool("Show Add Flexible Instrument Request", show.add_flexible_instrument_request, "Parse and add Add Flexible Instrument Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_add_flexible_instrument_response = Pref.bool("Show Add Flexible Instrument Response", show.add_flexible_instrument_response, "Parse and add Add Flexible Instrument Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_approve_tes_trade_request = Pref.bool("Show Approve Tes Trade Request", show.approve_tes_trade_request, "Parse and add Approve Tes Trade Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_broadcast_error_notification = Pref.bool("Show Broadcast Error Notification", show.broadcast_error_notification, "Parse and add Broadcast Error Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_cross_request = Pref.bool("Show Cross Request", show.cross_request, "Parse and add Cross Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_cross_request_response = Pref.bool("Show Cross Request Response", show.cross_request_response, "Parse and add Cross Request Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_broadcast = Pref.bool("Show Delete All Order Broadcast", show.delete_all_order_broadcast, "Parse and add Delete All Order Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_nr_response = Pref.bool("Show Delete All Order Nr Response", show.delete_all_order_nr_response, "Parse and add Delete All Order Nr Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_quote_event_broadcast = Pref.bool("Show Delete All Order Quote Event Broadcast", show.delete_all_order_quote_event_broadcast, "Parse and add Delete All Order Quote Event Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_request = Pref.bool("Show Delete All Order Request", show.delete_all_order_request, "Parse and add Delete All Order Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_response = Pref.bool("Show Delete All Order Response", show.delete_all_order_response, "Parse and add Delete All Order Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_quote_broadcast = Pref.bool("Show Delete All Quote Broadcast", show.delete_all_quote_broadcast, "Parse and add Delete All Quote Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_quote_request = Pref.bool("Show Delete All Quote Request", show.delete_all_quote_request, "Parse and add Delete All Quote Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_quote_response = Pref.bool("Show Delete All Quote Response", show.delete_all_quote_response, "Parse and add Delete All Quote Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_broadcast = Pref.bool("Show Delete Order Broadcast", show.delete_order_broadcast, "Parse and add Delete Order Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_complex_request = Pref.bool("Show Delete Order Complex Request", show.delete_order_complex_request, "Parse and add Delete Order Complex Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_nr_response = Pref.bool("Show Delete Order Nr Response", show.delete_order_nr_response, "Parse and add Delete Order Nr Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_response = Pref.bool("Show Delete Order Response", show.delete_order_response, "Parse and add Delete Order Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_single_request = Pref.bool("Show Delete Order Single Request", show.delete_order_single_request, "Parse and add Delete Order Single Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_delete_tes_trade_request = Pref.bool("Show Delete Tes Trade Request", show.delete_tes_trade_request, "Parse and add Delete Tes Trade Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_enrichment_rules_grp = Pref.bool("Show Enrichment Rules Grp", show.enrichment_rules_grp, "Parse and add Enrichment Rules Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_enter_tes_trade_request = Pref.bool("Show Enter Tes Trade Request", show.enter_tes_trade_request, "Parse and add Enter Tes Trade Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_fills_grp = Pref.bool("Show Fills Grp", show.fills_grp, "Parse and add Fills Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_forced_logout_notification = Pref.bool("Show Forced Logout Notification", show.forced_logout_notification, "Parse and add Forced Logout Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_forced_user_logout_notification = Pref.bool("Show Forced User Logout Notification", show.forced_user_logout_notification, "Parse and add Forced User Logout Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_gateway_request = Pref.bool("Show Gateway Request", show.gateway_request, "Parse and add Gateway Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_gateway_response = Pref.bool("Show Gateway Response", show.gateway_response, "Parse and add Gateway Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_heartbeat_notification = Pref.bool("Show Heartbeat Notification", show.heartbeat_notification, "Parse and add Heartbeat Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_enrichment_rule_id_list_request = Pref.bool("Show Inquire Enrichment Rule Id List Request", show.inquire_enrichment_rule_id_list_request, "Parse and add Inquire Enrichment Rule Id List Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_enrichment_rule_id_list_response = Pref.bool("Show Inquire Enrichment Rule Id List Response", show.inquire_enrichment_rule_id_list_response, "Parse and add Inquire Enrichment Rule Id List Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_mm_parameter_request = Pref.bool("Show Inquire Mm Parameter Request", show.inquire_mm_parameter_request, "Parse and add Inquire Mm Parameter Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_mm_parameter_response = Pref.bool("Show Inquire Mm Parameter Response", show.inquire_mm_parameter_response, "Parse and add Inquire Mm Parameter Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_session_list_request = Pref.bool("Show Inquire Session List Request", show.inquire_session_list_request, "Parse and add Inquire Session List Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_session_list_response = Pref.bool("Show Inquire Session List Response", show.inquire_session_list_response, "Parse and add Inquire Session List Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_user_request = Pref.bool("Show Inquire User Request", show.inquire_user_request, "Parse and add Inquire User Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_user_response = Pref.bool("Show Inquire User Response", show.inquire_user_response, "Parse and add Inquire User Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_instrmnt_leg_exec_grp = Pref.bool("Show Instrmnt Leg Exec Grp", show.instrmnt_leg_exec_grp, "Parse and add Instrmnt Leg Exec Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_instrmt_leg_grp = Pref.bool("Show Instrmt Leg Grp", show.instrmt_leg_grp, "Parse and add Instrmt Leg Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_instrument_attribute_grp = Pref.bool("Show Instrument Attribute Grp", show.instrument_attribute_grp, "Parse and add Instrument Attribute Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_instrument_event_grp = Pref.bool("Show Instrument Event Grp", show.instrument_event_grp, "Parse and add Instrument Event Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_leg_ord_grp = Pref.bool("Show Leg Ord Grp", show.leg_ord_grp, "Parse and add Leg Ord Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_legal_notification_broadcast = Pref.bool("Show Legal Notification Broadcast", show.legal_notification_broadcast, "Parse and add Legal Notification Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_logon_request = Pref.bool("Show Logon Request", show.logon_request, "Parse and add Logon Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_logon_response = Pref.bool("Show Logon Response", show.logon_response, "Parse and add Logon Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_logout_response = Pref.bool("Show Logout Response", show.logout_response, "Parse and add Logout Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_mass_quote_request = Pref.bool("Show Mass Quote Request", show.mass_quote_request, "Parse and add Mass Quote Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_mass_quote_response = Pref.bool("Show Mass Quote Response", show.mass_quote_response, "Parse and add Mass Quote Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_message_header_in = Pref.bool("Show Message Header In", show.message_header_in, "Parse and add Message Header In to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_message_header_out = Pref.bool("Show Message Header Out", show.message_header_out, "Parse and add Message Header Out to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_mm_parameter_definition_request = Pref.bool("Show Mm Parameter Definition Request", show.mm_parameter_definition_request, "Parse and add Mm Parameter Definition Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_mm_parameter_definition_response = Pref.bool("Show Mm Parameter Definition Response", show.mm_parameter_definition_response, "Parse and add Mm Parameter Definition Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_mm_parameter_grp = Pref.bool("Show Mm Parameter Grp", show.mm_parameter_grp, "Parse and add Mm Parameter Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_complex_request = Pref.bool("Show Modify Order Complex Request", show.modify_order_complex_request, "Parse and add Modify Order Complex Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_complex_short_request = Pref.bool("Show Modify Order Complex Short Request", show.modify_order_complex_short_request, "Parse and add Modify Order Complex Short Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_nr_response = Pref.bool("Show Modify Order Nr Response", show.modify_order_nr_response, "Parse and add Modify Order Nr Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_response = Pref.bool("Show Modify Order Response", show.modify_order_response, "Parse and add Modify Order Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_single_request = Pref.bool("Show Modify Order Single Request", show.modify_order_single_request, "Parse and add Modify Order Single Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_single_short_request = Pref.bool("Show Modify Order Single Short Request", show.modify_order_single_short_request, "Parse and add Modify Order Single Short Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_modify_tes_trade_request = Pref.bool("Show Modify Tes Trade Request", show.modify_tes_trade_request, "Parse and add Modify Tes Trade Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_complex_request = Pref.bool("Show New Order Complex Request", show.new_order_complex_request, "Parse and add New Order Complex Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_complex_short_request = Pref.bool("Show New Order Complex Short Request", show.new_order_complex_short_request, "Parse and add New Order Complex Short Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_nr_response = Pref.bool("Show New Order Nr Response", show.new_order_nr_response, "Parse and add New Order Nr Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_response = Pref.bool("Show New Order Response", show.new_order_response, "Parse and add New Order Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_single_request = Pref.bool("Show New Order Single Request", show.new_order_single_request, "Parse and add New Order Single Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_single_short_request = Pref.bool("Show New Order Single Short Request", show.new_order_single_short_request, "Parse and add New Order Single Short Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_news_broadcast = Pref.bool("Show News Broadcast", show.news_broadcast, "Parse and add News Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_not_affected_orders_grp = Pref.bool("Show Not Affected Orders Grp", show.not_affected_orders_grp, "Parse and add Not Affected Orders Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_not_affected_securities_grp = Pref.bool("Show Not Affected Securities Grp", show.not_affected_securities_grp, "Parse and add Not Affected Securities Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_notif_header = Pref.bool("Show Notif Header", show.notif_header, "Parse and add Notif Header to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_nr_response_header_me = Pref.bool("Show Nr Response Header Me", show.nr_response_header_me, "Parse and add Nr Response Header Me to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_nrbc_header = Pref.bool("Show Nrbc Header", show.nrbc_header, "Parse and add Nrbc Header to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_order_book_item_grp = Pref.bool("Show Order Book Item Grp", show.order_book_item_grp, "Parse and add Order Book Item Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_order_exec_notification = Pref.bool("Show Order Exec Notification", show.order_exec_notification, "Parse and add Order Exec Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_order_exec_report_broadcast = Pref.bool("Show Order Exec Report Broadcast", show.order_exec_report_broadcast, "Parse and add Order Exec Report Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_order_exec_response = Pref.bool("Show Order Exec Response", show.order_exec_response, "Parse and add Order Exec Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_party_action_report = Pref.bool("Show Party Action Report", show.party_action_report, "Parse and add Party Action Report to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_party_details_grp = Pref.bool("Show Party Details Grp", show.party_details_grp, "Parse and add Party Details Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_party_entitlements_update_report = Pref.bool("Show Party Entitlements Update Report", show.party_entitlements_update_report, "Parse and add Party Entitlements Update Report to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_quot_req_legs_grp = Pref.bool("Show Quot Req Legs Grp", show.quot_req_legs_grp, "Parse and add Quot Req Legs Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_quote_activation_notification = Pref.bool("Show Quote Activation Notification", show.quote_activation_notification, "Parse and add Quote Activation Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_quote_activation_request = Pref.bool("Show Quote Activation Request", show.quote_activation_request, "Parse and add Quote Activation Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_quote_activation_response = Pref.bool("Show Quote Activation Response", show.quote_activation_response, "Parse and add Quote Activation Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_quote_entry_ack_grp = Pref.bool("Show Quote Entry Ack Grp", show.quote_entry_ack_grp, "Parse and add Quote Entry Ack Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_quote_entry_grp = Pref.bool("Show Quote Entry Grp", show.quote_entry_grp, "Parse and add Quote Entry Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_quote_event_grp = Pref.bool("Show Quote Event Grp", show.quote_event_grp, "Parse and add Quote Event Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_quote_execution_report = Pref.bool("Show Quote Execution Report", show.quote_execution_report, "Parse and add Quote Execution Report to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_quote_leg_exec_grp = Pref.bool("Show Quote Leg Exec Grp", show.quote_leg_exec_grp, "Parse and add Quote Leg Exec Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_rbc_header = Pref.bool("Show Rbc Header", show.rbc_header, "Parse and add Rbc Header to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_rbc_header_me = Pref.bool("Show Rbc Header Me", show.rbc_header_me, "Parse and add Rbc Header Me to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_reject = Pref.bool("Show Reject", show.reject, "Parse and add Reject to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_request_header = Pref.bool("Show Request Header", show.request_header, "Parse and add Request Header to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_response_header = Pref.bool("Show Response Header", show.response_header, "Parse and add Response Header to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_response_header_me = Pref.bool("Show Response Header Me", show.response_header_me, "Parse and add Response Header Me to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_me_message_request = Pref.bool("Show Retransmit Me Message Request", show.retransmit_me_message_request, "Parse and add Retransmit Me Message Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_me_message_response = Pref.bool("Show Retransmit Me Message Response", show.retransmit_me_message_response, "Parse and add Retransmit Me Message Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_request = Pref.bool("Show Retransmit Request", show.retransmit_request, "Parse and add Retransmit Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_response = Pref.bool("Show Retransmit Response", show.retransmit_response, "Parse and add Retransmit Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_rfq_request = Pref.bool("Show Rfq Request", show.rfq_request, "Parse and add Rfq Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_rfq_response = Pref.bool("Show Rfq Response", show.rfq_response, "Parse and add Rfq Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_risk_notification_broadcast = Pref.bool("Show Risk Notification Broadcast", show.risk_notification_broadcast, "Parse and add Risk Notification Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_service_availability_broadcast = Pref.bool("Show Service Availability Broadcast", show.service_availability_broadcast, "Parse and add Service Availability Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_service_availability_market_broadcast = Pref.bool("Show Service Availability Market Broadcast", show.service_availability_market_broadcast, "Parse and add Service Availability Market Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_sessions_grp = Pref.bool("Show Sessions Grp", show.sessions_grp, "Parse and add Sessions Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_side_alloc_ext_grp = Pref.bool("Show Side Alloc Ext Grp", show.side_alloc_ext_grp, "Parse and add Side Alloc Ext Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_side_alloc_grp = Pref.bool("Show Side Alloc Grp", show.side_alloc_grp, "Parse and add Side Alloc Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_side_alloc_grp_bc = Pref.bool("Show Side Alloc Grp Bc", show.side_alloc_grp_bc, "Parse and add Side Alloc Grp Bc to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_create_deal_notification = Pref.bool("Show Srqs Create Deal Notification", show.srqs_create_deal_notification, "Parse and add Srqs Create Deal Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_deal_notification = Pref.bool("Show Srqs Deal Notification", show.srqs_deal_notification, "Parse and add Srqs Deal Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_deal_response = Pref.bool("Show Srqs Deal Response", show.srqs_deal_response, "Parse and add Srqs Deal Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_enter_quote_request = Pref.bool("Show Srqs Enter Quote Request", show.srqs_enter_quote_request, "Parse and add Srqs Enter Quote Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_hit_quote_request = Pref.bool("Show Srqs Hit Quote Request", show.srqs_hit_quote_request, "Parse and add Srqs Hit Quote Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_negotiation_notification = Pref.bool("Show Srqs Negotiation Notification", show.srqs_negotiation_notification, "Parse and add Srqs Negotiation Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_negotiation_requester_notification = Pref.bool("Show Srqs Negotiation Requester Notification", show.srqs_negotiation_requester_notification, "Parse and add Srqs Negotiation Requester Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_negotiation_status_notification = Pref.bool("Show Srqs Negotiation Status Notification", show.srqs_negotiation_status_notification, "Parse and add Srqs Negotiation Status Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_open_negotiation_notification = Pref.bool("Show Srqs Open Negotiation Notification", show.srqs_open_negotiation_notification, "Parse and add Srqs Open Negotiation Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_open_negotiation_request = Pref.bool("Show Srqs Open Negotiation Request", show.srqs_open_negotiation_request, "Parse and add Srqs Open Negotiation Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_open_negotiation_requester_notification = Pref.bool("Show Srqs Open Negotiation Requester Notification", show.srqs_open_negotiation_requester_notification, "Parse and add Srqs Open Negotiation Requester Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_quote_notification = Pref.bool("Show Srqs Quote Notification", show.srqs_quote_notification, "Parse and add Srqs Quote Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_quote_response = Pref.bool("Show Srqs Quote Response", show.srqs_quote_response, "Parse and add Srqs Quote Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_status_broadcast = Pref.bool("Show Srqs Status Broadcast", show.srqs_status_broadcast, "Parse and add Srqs Status Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_update_deal_status_request = Pref.bool("Show Srqs Update Deal Status Request", show.srqs_update_deal_status_request, "Parse and add Srqs Update Deal Status Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_update_negotiation_request = Pref.bool("Show Srqs Update Negotiation Request", show.srqs_update_negotiation_request, "Parse and add Srqs Update Negotiation Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_subscribe_request = Pref.bool("Show Subscribe Request", show.subscribe_request, "Parse and add Subscribe Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_subscribe_response = Pref.bool("Show Subscribe Response", show.subscribe_response, "Parse and add Subscribe Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_target_parties = Pref.bool("Show Target Parties", show.target_parties, "Parse and add Target Parties to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_tes_approve_broadcast = Pref.bool("Show Tes Approve Broadcast", show.tes_approve_broadcast, "Parse and add Tes Approve Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_tes_broadcast = Pref.bool("Show Tes Broadcast", show.tes_broadcast, "Parse and add Tes Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_tes_delete_broadcast = Pref.bool("Show Tes Delete Broadcast", show.tes_delete_broadcast, "Parse and add Tes Delete Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_tes_execution_broadcast = Pref.bool("Show Tes Execution Broadcast", show.tes_execution_broadcast, "Parse and add Tes Execution Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_tes_response = Pref.bool("Show Tes Response", show.tes_response, "Parse and add Tes Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_tes_trade_broadcast = Pref.bool("Show Tes Trade Broadcast", show.tes_trade_broadcast, "Parse and add Tes Trade Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_tes_trading_session_status_broadcast = Pref.bool("Show Tes Trading Session Status Broadcast", show.tes_trading_session_status_broadcast, "Parse and add Tes Trading Session Status Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_tes_upload_broadcast = Pref.bool("Show Tes Upload Broadcast", show.tes_upload_broadcast, "Parse and add Tes Upload Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_throttle_update_notification = Pref.bool("Show Throttle Update Notification", show.throttle_update_notification, "Parse and add Throttle Update Notification to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_tm_trading_session_status_broadcast = Pref.bool("Show Tm Trading Session Status Broadcast", show.tm_trading_session_status_broadcast, "Parse and add Tm Trading Session Status Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_trade_broadcast = Pref.bool("Show Trade Broadcast", show.trade_broadcast, "Parse and add Trade Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_trading_session_status_broadcast = Pref.bool("Show Trading Session Status Broadcast", show.trading_session_status_broadcast, "Parse and add Trading Session Status Broadcast to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_trd_instrmnt_leg_grp = Pref.bool("Show Trd Instrmnt Leg Grp", show.trd_instrmnt_leg_grp, "Parse and add Trd Instrmnt Leg Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_underlying_stip_grp = Pref.bool("Show Underlying Stip Grp", show.underlying_stip_grp, "Parse and add Underlying Stip Grp to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_unsubscribe_request = Pref.bool("Show Unsubscribe Request", show.unsubscribe_request, "Parse and add Unsubscribe Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_unsubscribe_response = Pref.bool("Show Unsubscribe Response", show.unsubscribe_response, "Parse and add Unsubscribe Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_upload_tes_trade_request = Pref.bool("Show Upload Tes Trade Request", show.upload_tes_trade_request, "Parse and add Upload Tes Trade Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_user_login_request = Pref.bool("Show User Login Request", show.user_login_request, "Parse and add User Login Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_user_login_response = Pref.bool("Show User Login Response", show.user_login_response, "Parse and add User Login Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_user_logout_request = Pref.bool("Show User Logout Request", show.user_logout_request, "Parse and add User Logout Request to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_user_logout_response = Pref.bool("Show User Logout Response", show.user_logout_response, "Parse and add User Logout Response to protocol tree")
eurex_derivatives_eti_t7_v6_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function eurex_derivatives_eti_t7_v6_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_complex_instrument_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_add_complex_instrument_request then
    show.add_complex_instrument_request = eurex_derivatives_eti_t7_v6_1.prefs.show_add_complex_instrument_request
    changed = true
  end
  if show.add_complex_instrument_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_add_complex_instrument_response then
    show.add_complex_instrument_response = eurex_derivatives_eti_t7_v6_1.prefs.show_add_complex_instrument_response
    changed = true
  end
  if show.add_flexible_instrument_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_add_flexible_instrument_request then
    show.add_flexible_instrument_request = eurex_derivatives_eti_t7_v6_1.prefs.show_add_flexible_instrument_request
    changed = true
  end
  if show.add_flexible_instrument_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_add_flexible_instrument_response then
    show.add_flexible_instrument_response = eurex_derivatives_eti_t7_v6_1.prefs.show_add_flexible_instrument_response
    changed = true
  end
  if show.approve_tes_trade_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_approve_tes_trade_request then
    show.approve_tes_trade_request = eurex_derivatives_eti_t7_v6_1.prefs.show_approve_tes_trade_request
    changed = true
  end
  if show.broadcast_error_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_broadcast_error_notification then
    show.broadcast_error_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_broadcast_error_notification
    changed = true
  end
  if show.cross_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_cross_request then
    show.cross_request = eurex_derivatives_eti_t7_v6_1.prefs.show_cross_request
    changed = true
  end
  if show.cross_request_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_cross_request_response then
    show.cross_request_response = eurex_derivatives_eti_t7_v6_1.prefs.show_cross_request_response
    changed = true
  end
  if show.delete_all_order_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_broadcast then
    show.delete_all_order_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_broadcast
    changed = true
  end
  if show.delete_all_order_nr_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_nr_response then
    show.delete_all_order_nr_response = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_nr_response
    changed = true
  end
  if show.delete_all_order_quote_event_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_quote_event_broadcast then
    show.delete_all_order_quote_event_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_quote_event_broadcast
    changed = true
  end
  if show.delete_all_order_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_request then
    show.delete_all_order_request = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_request
    changed = true
  end
  if show.delete_all_order_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_response then
    show.delete_all_order_response = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_order_response
    changed = true
  end
  if show.delete_all_quote_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_quote_broadcast then
    show.delete_all_quote_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_quote_broadcast
    changed = true
  end
  if show.delete_all_quote_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_quote_request then
    show.delete_all_quote_request = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_quote_request
    changed = true
  end
  if show.delete_all_quote_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_quote_response then
    show.delete_all_quote_response = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_all_quote_response
    changed = true
  end
  if show.delete_order_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_broadcast then
    show.delete_order_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_broadcast
    changed = true
  end
  if show.delete_order_complex_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_complex_request then
    show.delete_order_complex_request = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_complex_request
    changed = true
  end
  if show.delete_order_nr_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_nr_response then
    show.delete_order_nr_response = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_nr_response
    changed = true
  end
  if show.delete_order_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_response then
    show.delete_order_response = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_response
    changed = true
  end
  if show.delete_order_single_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_single_request then
    show.delete_order_single_request = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_order_single_request
    changed = true
  end
  if show.delete_tes_trade_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_delete_tes_trade_request then
    show.delete_tes_trade_request = eurex_derivatives_eti_t7_v6_1.prefs.show_delete_tes_trade_request
    changed = true
  end
  if show.enrichment_rules_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_enrichment_rules_grp then
    show.enrichment_rules_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_enrichment_rules_grp
    changed = true
  end
  if show.enter_tes_trade_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_enter_tes_trade_request then
    show.enter_tes_trade_request = eurex_derivatives_eti_t7_v6_1.prefs.show_enter_tes_trade_request
    changed = true
  end
  if show.fills_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_fills_grp then
    show.fills_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_fills_grp
    changed = true
  end
  if show.forced_logout_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_forced_logout_notification then
    show.forced_logout_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_forced_logout_notification
    changed = true
  end
  if show.forced_user_logout_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_forced_user_logout_notification then
    show.forced_user_logout_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_forced_user_logout_notification
    changed = true
  end
  if show.gateway_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_gateway_request then
    show.gateway_request = eurex_derivatives_eti_t7_v6_1.prefs.show_gateway_request
    changed = true
  end
  if show.gateway_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_gateway_response then
    show.gateway_response = eurex_derivatives_eti_t7_v6_1.prefs.show_gateway_response
    changed = true
  end
  if show.heartbeat ~= eurex_derivatives_eti_t7_v6_1.prefs.show_heartbeat then
    show.heartbeat = eurex_derivatives_eti_t7_v6_1.prefs.show_heartbeat
    changed = true
  end
  if show.heartbeat_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_heartbeat_notification then
    show.heartbeat_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_heartbeat_notification
    changed = true
  end
  if show.inquire_enrichment_rule_id_list_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_enrichment_rule_id_list_request then
    show.inquire_enrichment_rule_id_list_request = eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_enrichment_rule_id_list_request
    changed = true
  end
  if show.inquire_enrichment_rule_id_list_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_enrichment_rule_id_list_response then
    show.inquire_enrichment_rule_id_list_response = eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_enrichment_rule_id_list_response
    changed = true
  end
  if show.inquire_mm_parameter_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_mm_parameter_request then
    show.inquire_mm_parameter_request = eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_mm_parameter_request
    changed = true
  end
  if show.inquire_mm_parameter_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_mm_parameter_response then
    show.inquire_mm_parameter_response = eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_mm_parameter_response
    changed = true
  end
  if show.inquire_session_list_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_session_list_request then
    show.inquire_session_list_request = eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_session_list_request
    changed = true
  end
  if show.inquire_session_list_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_session_list_response then
    show.inquire_session_list_response = eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_session_list_response
    changed = true
  end
  if show.inquire_user_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_user_request then
    show.inquire_user_request = eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_user_request
    changed = true
  end
  if show.inquire_user_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_user_response then
    show.inquire_user_response = eurex_derivatives_eti_t7_v6_1.prefs.show_inquire_user_response
    changed = true
  end
  if show.instrmnt_leg_exec_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_instrmnt_leg_exec_grp then
    show.instrmnt_leg_exec_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_instrmnt_leg_exec_grp
    changed = true
  end
  if show.instrmt_leg_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_instrmt_leg_grp then
    show.instrmt_leg_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_instrmt_leg_grp
    changed = true
  end
  if show.instrument_attribute_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_instrument_attribute_grp then
    show.instrument_attribute_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_instrument_attribute_grp
    changed = true
  end
  if show.instrument_event_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_instrument_event_grp then
    show.instrument_event_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_instrument_event_grp
    changed = true
  end
  if show.leg_ord_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_leg_ord_grp then
    show.leg_ord_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_leg_ord_grp
    changed = true
  end
  if show.legal_notification_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_legal_notification_broadcast then
    show.legal_notification_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_legal_notification_broadcast
    changed = true
  end
  if show.logon_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_logon_request then
    show.logon_request = eurex_derivatives_eti_t7_v6_1.prefs.show_logon_request
    changed = true
  end
  if show.logon_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_logon_response then
    show.logon_response = eurex_derivatives_eti_t7_v6_1.prefs.show_logon_response
    changed = true
  end
  if show.logout_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_logout_request then
    show.logout_request = eurex_derivatives_eti_t7_v6_1.prefs.show_logout_request
    changed = true
  end
  if show.logout_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_logout_response then
    show.logout_response = eurex_derivatives_eti_t7_v6_1.prefs.show_logout_response
    changed = true
  end
  if show.mass_quote_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_mass_quote_request then
    show.mass_quote_request = eurex_derivatives_eti_t7_v6_1.prefs.show_mass_quote_request
    changed = true
  end
  if show.mass_quote_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_mass_quote_response then
    show.mass_quote_response = eurex_derivatives_eti_t7_v6_1.prefs.show_mass_quote_response
    changed = true
  end
  if show.message_header_in ~= eurex_derivatives_eti_t7_v6_1.prefs.show_message_header_in then
    show.message_header_in = eurex_derivatives_eti_t7_v6_1.prefs.show_message_header_in
    changed = true
  end
  if show.message_header_out ~= eurex_derivatives_eti_t7_v6_1.prefs.show_message_header_out then
    show.message_header_out = eurex_derivatives_eti_t7_v6_1.prefs.show_message_header_out
    changed = true
  end
  if show.mm_parameter_definition_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_mm_parameter_definition_request then
    show.mm_parameter_definition_request = eurex_derivatives_eti_t7_v6_1.prefs.show_mm_parameter_definition_request
    changed = true
  end
  if show.mm_parameter_definition_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_mm_parameter_definition_response then
    show.mm_parameter_definition_response = eurex_derivatives_eti_t7_v6_1.prefs.show_mm_parameter_definition_response
    changed = true
  end
  if show.mm_parameter_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_mm_parameter_grp then
    show.mm_parameter_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_mm_parameter_grp
    changed = true
  end
  if show.modify_order_complex_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_complex_request then
    show.modify_order_complex_request = eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_complex_request
    changed = true
  end
  if show.modify_order_complex_short_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_complex_short_request then
    show.modify_order_complex_short_request = eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_complex_short_request
    changed = true
  end
  if show.modify_order_nr_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_nr_response then
    show.modify_order_nr_response = eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_nr_response
    changed = true
  end
  if show.modify_order_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_response then
    show.modify_order_response = eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_response
    changed = true
  end
  if show.modify_order_single_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_single_request then
    show.modify_order_single_request = eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_single_request
    changed = true
  end
  if show.modify_order_single_short_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_single_short_request then
    show.modify_order_single_short_request = eurex_derivatives_eti_t7_v6_1.prefs.show_modify_order_single_short_request
    changed = true
  end
  if show.modify_tes_trade_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_modify_tes_trade_request then
    show.modify_tes_trade_request = eurex_derivatives_eti_t7_v6_1.prefs.show_modify_tes_trade_request
    changed = true
  end
  if show.new_order_complex_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_complex_request then
    show.new_order_complex_request = eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_complex_request
    changed = true
  end
  if show.new_order_complex_short_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_complex_short_request then
    show.new_order_complex_short_request = eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_complex_short_request
    changed = true
  end
  if show.new_order_nr_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_nr_response then
    show.new_order_nr_response = eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_nr_response
    changed = true
  end
  if show.new_order_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_response then
    show.new_order_response = eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_response
    changed = true
  end
  if show.new_order_single_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_single_request then
    show.new_order_single_request = eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_single_request
    changed = true
  end
  if show.new_order_single_short_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_single_short_request then
    show.new_order_single_short_request = eurex_derivatives_eti_t7_v6_1.prefs.show_new_order_single_short_request
    changed = true
  end
  if show.news_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_news_broadcast then
    show.news_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_news_broadcast
    changed = true
  end
  if show.not_affected_orders_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_not_affected_orders_grp then
    show.not_affected_orders_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_not_affected_orders_grp
    changed = true
  end
  if show.not_affected_securities_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_not_affected_securities_grp then
    show.not_affected_securities_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_not_affected_securities_grp
    changed = true
  end
  if show.notif_header ~= eurex_derivatives_eti_t7_v6_1.prefs.show_notif_header then
    show.notif_header = eurex_derivatives_eti_t7_v6_1.prefs.show_notif_header
    changed = true
  end
  if show.nr_response_header_me ~= eurex_derivatives_eti_t7_v6_1.prefs.show_nr_response_header_me then
    show.nr_response_header_me = eurex_derivatives_eti_t7_v6_1.prefs.show_nr_response_header_me
    changed = true
  end
  if show.nrbc_header ~= eurex_derivatives_eti_t7_v6_1.prefs.show_nrbc_header then
    show.nrbc_header = eurex_derivatives_eti_t7_v6_1.prefs.show_nrbc_header
    changed = true
  end
  if show.order_book_item_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_order_book_item_grp then
    show.order_book_item_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_order_book_item_grp
    changed = true
  end
  if show.order_exec_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_order_exec_notification then
    show.order_exec_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_order_exec_notification
    changed = true
  end
  if show.order_exec_report_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_order_exec_report_broadcast then
    show.order_exec_report_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_order_exec_report_broadcast
    changed = true
  end
  if show.order_exec_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_order_exec_response then
    show.order_exec_response = eurex_derivatives_eti_t7_v6_1.prefs.show_order_exec_response
    changed = true
  end
  if show.party_action_report ~= eurex_derivatives_eti_t7_v6_1.prefs.show_party_action_report then
    show.party_action_report = eurex_derivatives_eti_t7_v6_1.prefs.show_party_action_report
    changed = true
  end
  if show.party_details_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_party_details_grp then
    show.party_details_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_party_details_grp
    changed = true
  end
  if show.party_entitlements_update_report ~= eurex_derivatives_eti_t7_v6_1.prefs.show_party_entitlements_update_report then
    show.party_entitlements_update_report = eurex_derivatives_eti_t7_v6_1.prefs.show_party_entitlements_update_report
    changed = true
  end
  if show.quot_req_legs_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_quot_req_legs_grp then
    show.quot_req_legs_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_quot_req_legs_grp
    changed = true
  end
  if show.quote_activation_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_quote_activation_notification then
    show.quote_activation_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_quote_activation_notification
    changed = true
  end
  if show.quote_activation_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_quote_activation_request then
    show.quote_activation_request = eurex_derivatives_eti_t7_v6_1.prefs.show_quote_activation_request
    changed = true
  end
  if show.quote_activation_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_quote_activation_response then
    show.quote_activation_response = eurex_derivatives_eti_t7_v6_1.prefs.show_quote_activation_response
    changed = true
  end
  if show.quote_entry_ack_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_quote_entry_ack_grp then
    show.quote_entry_ack_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_quote_entry_ack_grp
    changed = true
  end
  if show.quote_entry_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_quote_entry_grp then
    show.quote_entry_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_quote_entry_grp
    changed = true
  end
  if show.quote_event_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_quote_event_grp then
    show.quote_event_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_quote_event_grp
    changed = true
  end
  if show.quote_execution_report ~= eurex_derivatives_eti_t7_v6_1.prefs.show_quote_execution_report then
    show.quote_execution_report = eurex_derivatives_eti_t7_v6_1.prefs.show_quote_execution_report
    changed = true
  end
  if show.quote_leg_exec_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_quote_leg_exec_grp then
    show.quote_leg_exec_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_quote_leg_exec_grp
    changed = true
  end
  if show.rbc_header ~= eurex_derivatives_eti_t7_v6_1.prefs.show_rbc_header then
    show.rbc_header = eurex_derivatives_eti_t7_v6_1.prefs.show_rbc_header
    changed = true
  end
  if show.rbc_header_me ~= eurex_derivatives_eti_t7_v6_1.prefs.show_rbc_header_me then
    show.rbc_header_me = eurex_derivatives_eti_t7_v6_1.prefs.show_rbc_header_me
    changed = true
  end
  if show.reject ~= eurex_derivatives_eti_t7_v6_1.prefs.show_reject then
    show.reject = eurex_derivatives_eti_t7_v6_1.prefs.show_reject
    changed = true
  end
  if show.request_header ~= eurex_derivatives_eti_t7_v6_1.prefs.show_request_header then
    show.request_header = eurex_derivatives_eti_t7_v6_1.prefs.show_request_header
    changed = true
  end
  if show.response_header ~= eurex_derivatives_eti_t7_v6_1.prefs.show_response_header then
    show.response_header = eurex_derivatives_eti_t7_v6_1.prefs.show_response_header
    changed = true
  end
  if show.response_header_me ~= eurex_derivatives_eti_t7_v6_1.prefs.show_response_header_me then
    show.response_header_me = eurex_derivatives_eti_t7_v6_1.prefs.show_response_header_me
    changed = true
  end
  if show.retransmit_me_message_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_me_message_request then
    show.retransmit_me_message_request = eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_me_message_request
    changed = true
  end
  if show.retransmit_me_message_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_me_message_response then
    show.retransmit_me_message_response = eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_me_message_response
    changed = true
  end
  if show.retransmit_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_request then
    show.retransmit_request = eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_request
    changed = true
  end
  if show.retransmit_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_response then
    show.retransmit_response = eurex_derivatives_eti_t7_v6_1.prefs.show_retransmit_response
    changed = true
  end
  if show.rfq_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_rfq_request then
    show.rfq_request = eurex_derivatives_eti_t7_v6_1.prefs.show_rfq_request
    changed = true
  end
  if show.rfq_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_rfq_response then
    show.rfq_response = eurex_derivatives_eti_t7_v6_1.prefs.show_rfq_response
    changed = true
  end
  if show.risk_notification_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_risk_notification_broadcast then
    show.risk_notification_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_risk_notification_broadcast
    changed = true
  end
  if show.service_availability_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_service_availability_broadcast then
    show.service_availability_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_service_availability_broadcast
    changed = true
  end
  if show.service_availability_market_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_service_availability_market_broadcast then
    show.service_availability_market_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_service_availability_market_broadcast
    changed = true
  end
  if show.sessions_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_sessions_grp then
    show.sessions_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_sessions_grp
    changed = true
  end
  if show.side_alloc_ext_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_side_alloc_ext_grp then
    show.side_alloc_ext_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_side_alloc_ext_grp
    changed = true
  end
  if show.side_alloc_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_side_alloc_grp then
    show.side_alloc_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_side_alloc_grp
    changed = true
  end
  if show.side_alloc_grp_bc ~= eurex_derivatives_eti_t7_v6_1.prefs.show_side_alloc_grp_bc then
    show.side_alloc_grp_bc = eurex_derivatives_eti_t7_v6_1.prefs.show_side_alloc_grp_bc
    changed = true
  end
  if show.srqs_create_deal_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_create_deal_notification then
    show.srqs_create_deal_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_create_deal_notification
    changed = true
  end
  if show.srqs_deal_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_deal_notification then
    show.srqs_deal_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_deal_notification
    changed = true
  end
  if show.srqs_deal_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_deal_response then
    show.srqs_deal_response = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_deal_response
    changed = true
  end
  if show.srqs_enter_quote_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_enter_quote_request then
    show.srqs_enter_quote_request = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_enter_quote_request
    changed = true
  end
  if show.srqs_hit_quote_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_hit_quote_request then
    show.srqs_hit_quote_request = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_hit_quote_request
    changed = true
  end
  if show.srqs_negotiation_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_negotiation_notification then
    show.srqs_negotiation_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_negotiation_notification
    changed = true
  end
  if show.srqs_negotiation_requester_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_negotiation_requester_notification then
    show.srqs_negotiation_requester_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_negotiation_requester_notification
    changed = true
  end
  if show.srqs_negotiation_status_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_negotiation_status_notification then
    show.srqs_negotiation_status_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_negotiation_status_notification
    changed = true
  end
  if show.srqs_open_negotiation_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_open_negotiation_notification then
    show.srqs_open_negotiation_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_open_negotiation_notification
    changed = true
  end
  if show.srqs_open_negotiation_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_open_negotiation_request then
    show.srqs_open_negotiation_request = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_open_negotiation_request
    changed = true
  end
  if show.srqs_open_negotiation_requester_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_open_negotiation_requester_notification then
    show.srqs_open_negotiation_requester_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_open_negotiation_requester_notification
    changed = true
  end
  if show.srqs_quote_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_quote_notification then
    show.srqs_quote_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_quote_notification
    changed = true
  end
  if show.srqs_quote_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_quote_response then
    show.srqs_quote_response = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_quote_response
    changed = true
  end
  if show.srqs_status_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_status_broadcast then
    show.srqs_status_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_status_broadcast
    changed = true
  end
  if show.srqs_update_deal_status_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_update_deal_status_request then
    show.srqs_update_deal_status_request = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_update_deal_status_request
    changed = true
  end
  if show.srqs_update_negotiation_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_update_negotiation_request then
    show.srqs_update_negotiation_request = eurex_derivatives_eti_t7_v6_1.prefs.show_srqs_update_negotiation_request
    changed = true
  end
  if show.subscribe_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_subscribe_request then
    show.subscribe_request = eurex_derivatives_eti_t7_v6_1.prefs.show_subscribe_request
    changed = true
  end
  if show.subscribe_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_subscribe_response then
    show.subscribe_response = eurex_derivatives_eti_t7_v6_1.prefs.show_subscribe_response
    changed = true
  end
  if show.target_parties ~= eurex_derivatives_eti_t7_v6_1.prefs.show_target_parties then
    show.target_parties = eurex_derivatives_eti_t7_v6_1.prefs.show_target_parties
    changed = true
  end
  if show.tes_approve_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_tes_approve_broadcast then
    show.tes_approve_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_tes_approve_broadcast
    changed = true
  end
  if show.tes_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_tes_broadcast then
    show.tes_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_tes_broadcast
    changed = true
  end
  if show.tes_delete_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_tes_delete_broadcast then
    show.tes_delete_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_tes_delete_broadcast
    changed = true
  end
  if show.tes_execution_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_tes_execution_broadcast then
    show.tes_execution_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_tes_execution_broadcast
    changed = true
  end
  if show.tes_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_tes_response then
    show.tes_response = eurex_derivatives_eti_t7_v6_1.prefs.show_tes_response
    changed = true
  end
  if show.tes_trade_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_tes_trade_broadcast then
    show.tes_trade_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_tes_trade_broadcast
    changed = true
  end
  if show.tes_trading_session_status_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_tes_trading_session_status_broadcast then
    show.tes_trading_session_status_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_tes_trading_session_status_broadcast
    changed = true
  end
  if show.tes_upload_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_tes_upload_broadcast then
    show.tes_upload_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_tes_upload_broadcast
    changed = true
  end
  if show.throttle_update_notification ~= eurex_derivatives_eti_t7_v6_1.prefs.show_throttle_update_notification then
    show.throttle_update_notification = eurex_derivatives_eti_t7_v6_1.prefs.show_throttle_update_notification
    changed = true
  end
  if show.tm_trading_session_status_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_tm_trading_session_status_broadcast then
    show.tm_trading_session_status_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_tm_trading_session_status_broadcast
    changed = true
  end
  if show.trade_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_trade_broadcast then
    show.trade_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_trade_broadcast
    changed = true
  end
  if show.trading_session_status_broadcast ~= eurex_derivatives_eti_t7_v6_1.prefs.show_trading_session_status_broadcast then
    show.trading_session_status_broadcast = eurex_derivatives_eti_t7_v6_1.prefs.show_trading_session_status_broadcast
    changed = true
  end
  if show.trd_instrmnt_leg_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_trd_instrmnt_leg_grp then
    show.trd_instrmnt_leg_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_trd_instrmnt_leg_grp
    changed = true
  end
  if show.underlying_stip_grp ~= eurex_derivatives_eti_t7_v6_1.prefs.show_underlying_stip_grp then
    show.underlying_stip_grp = eurex_derivatives_eti_t7_v6_1.prefs.show_underlying_stip_grp
    changed = true
  end
  if show.unsubscribe_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_unsubscribe_request then
    show.unsubscribe_request = eurex_derivatives_eti_t7_v6_1.prefs.show_unsubscribe_request
    changed = true
  end
  if show.unsubscribe_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_unsubscribe_response then
    show.unsubscribe_response = eurex_derivatives_eti_t7_v6_1.prefs.show_unsubscribe_response
    changed = true
  end
  if show.upload_tes_trade_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_upload_tes_trade_request then
    show.upload_tes_trade_request = eurex_derivatives_eti_t7_v6_1.prefs.show_upload_tes_trade_request
    changed = true
  end
  if show.user_login_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_user_login_request then
    show.user_login_request = eurex_derivatives_eti_t7_v6_1.prefs.show_user_login_request
    changed = true
  end
  if show.user_login_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_user_login_response then
    show.user_login_response = eurex_derivatives_eti_t7_v6_1.prefs.show_user_login_response
    changed = true
  end
  if show.user_logout_request ~= eurex_derivatives_eti_t7_v6_1.prefs.show_user_logout_request then
    show.user_logout_request = eurex_derivatives_eti_t7_v6_1.prefs.show_user_logout_request
    changed = true
  end
  if show.user_logout_response ~= eurex_derivatives_eti_t7_v6_1.prefs.show_user_logout_response then
    show.user_logout_response = eurex_derivatives_eti_t7_v6_1.prefs.show_user_logout_response
    changed = true
  end
  if show.packet ~= eurex_derivatives_eti_t7_v6_1.prefs.show_packet then
    show.packet = eurex_derivatives_eti_t7_v6_1.prefs.show_packet
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Eurex Derivatives Eti T7 6.1
-----------------------------------------------------------------------

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.pad_4, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.msg_seq_num, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.sending_time, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.request_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Response Header
size_of.response_header = function(buffer, offset)
  local index = 0

  index = index + size_of.request_time

  index = index + size_of.sending_time

  index = index + size_of.msg_seq_num

  index = index + size_of.pad_4

  return index
end

-- Display: Response Header
display.response_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Response Header
dissect.response_header_fields = function(buffer, offset, packet, parent)
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

-- Dissect: Response Header
dissect.response_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.response_header then
    local length = size_of.response_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.response_header(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.response_header, range, display)
  end

  return dissect.response_header_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.pad_2, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.template_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.body_len, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header Out
size_of.message_header_out = function(buffer, offset)
  local index = 0

  index = index + size_of.body_len

  index = index + size_of.template_id

  index = index + size_of.pad_2

  return index
end

-- Display: Message Header Out
display.message_header_out = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header Out
dissect.message_header_out_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 4 Byte Unsigned Fixed Width Integer
  index, body_len = dissect.body_len(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header Out
dissect.message_header_out = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header_out then
    local length = size_of.message_header_out(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header_out(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.message_header_out, range, display)
  end

  return dissect.message_header_out_fields(buffer, offset, packet, parent)
end

-- Calculate size of: User Logout Response
size_of.user_logout_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

  return index
end

-- Display: User Logout Response
display.user_logout_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Logout Response
dissect.user_logout_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

  return index
end

-- Dissect: User Logout Response
dissect.user_logout_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.user_logout_response then
    local length = size_of.user_logout_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.user_logout_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.user_logout_response, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.username, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.sender_sub_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request Header
size_of.request_header = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.sender_sub_id

  return index
end

-- Display: Request Header
display.request_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request Header
dissect.request_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Sender Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, sender_sub_id = dissect.sender_sub_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Header
dissect.request_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_header then
    local length = size_of.request_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.request_header(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.request_header, range, display)
  end

  return dissect.request_header_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.network_msg_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header In
size_of.message_header_in = function(buffer, offset)
  local index = 0

  index = index + size_of.body_len

  index = index + size_of.template_id

  index = index + size_of.network_msg_id

  index = index + size_of.pad_2

  return index
end

-- Display: Message Header In
display.message_header_in = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header In
dissect.message_header_in_fields = function(buffer, offset, packet, parent)
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

-- Dissect: Message Header In
dissect.message_header_in = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header_in then
    local length = size_of.message_header_in(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header_in(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.message_header_in, range, display)
  end

  return dissect.message_header_in_fields(buffer, offset, packet, parent)
end

-- Calculate size of: User Logout Request
size_of.user_logout_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.user_logout_request, range, display)
  end

  return dissect.user_logout_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: User Login Response
size_of.user_login_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

  return index
end

-- Display: User Login Response
display.user_login_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Login Response
dissect.user_login_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

  return index
end

-- Dissect: User Login Response
dissect.user_login_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.user_login_response then
    local length = size_of.user_login_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.user_login_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.user_login_response, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.password, range, value, display)

  return offset + length, value
end

-- Calculate size of: User Login Request
size_of.user_login_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.user_login_request, range, display)
  end

  return dissect.user_login_request_fields(buffer, offset, packet, parent)
end

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.pad_1, range, value, display)

  return offset + length, value
end

-- Size: Underlying Stip Type
size_of.underlying_stip_type = 7

-- Display: Underlying Stip Type
display.underlying_stip_type = function(value)
  if value == "PAYFREQ" then
    return "Underlying Stip Type: Pay Frequency (PAYFREQ)"
  end

  return "Underlying Stip Type: Unknown("..value..")"
end

-- Dissect: Underlying Stip Type
dissect.underlying_stip_type = function(buffer, offset, packet, parent)
  local length = size_of.underlying_stip_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_stip_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_stip_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Stip Value
size_of.underlying_stip_value = 32

-- Display: Underlying Stip Value
display.underlying_stip_value = function(value)
  return "Underlying Stip Value: "..value
end

-- Dissect: Underlying Stip Value
dissect.underlying_stip_value = function(buffer, offset, packet, parent)
  local length = size_of.underlying_stip_value
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_stip_value(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_stip_value, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Stip Grp
size_of.underlying_stip_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.underlying_stip_value

  index = index + size_of.underlying_stip_type

  index = index + size_of.pad_1

  return index
end

-- Display: Underlying Stip Grp
display.underlying_stip_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Stip Grp
dissect.underlying_stip_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Stip Value: 32 Byte Ascii String
  index, underlying_stip_value = dissect.underlying_stip_value(buffer, index, packet, parent)

  -- Underlying Stip Type: 7 Byte Ascii String Enum with 1 values
  index, underlying_stip_type = dissect.underlying_stip_type(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Stip Grp
dissect.underlying_stip_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_stip_grp then
    local length = size_of.underlying_stip_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlying_stip_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_stip_grp, range, display)
  end

  return dissect.underlying_stip_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Size: Instr Attrib Value
size_of.instr_attrib_value = 32

-- Display: Instr Attrib Value
display.instr_attrib_value = function(value)
  return "Instr Attrib Value: "..value
end

-- Dissect: Instr Attrib Value
dissect.instr_attrib_value = function(buffer, offset, packet, parent)
  local length = size_of.instr_attrib_value
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instr_attrib_value(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.instr_attrib_value, range, value, display)

  return offset + length, value
end

-- Size: Instr Attrib Type
size_of.instr_attrib_type = 1

-- Display: Instr Attrib Type
display.instr_attrib_type = function(value)
  if value == 5 then
    return "Instr Attrib Type: Variable Rate (5)"
  end
  if value == 100 then
    return "Instr Attrib Type: Coupon Rate (100)"
  end
  if value == 101 then
    return "Instr Attrib Type: Offsettothevariablecouponrate (101)"
  end
  if value == 102 then
    return "Instr Attrib Type: Swap Customer 1 (102)"
  end
  if value == 103 then
    return "Instr Attrib Type: Swap Customer 2 (103)"
  end
  if value == 104 then
    return "Instr Attrib Type: Cash Basket Reference (104)"
  end

  return "Instr Attrib Type: Unknown("..value..")"
end

-- Dissect: Instr Attrib Type
dissect.instr_attrib_type = function(buffer, offset, packet, parent)
  local length = size_of.instr_attrib_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.instr_attrib_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.instr_attrib_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Attribute Grp
size_of.instrument_attribute_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.instr_attrib_type

  index = index + size_of.instr_attrib_value

  index = index + size_of.pad_7

  return index
end

-- Display: Instrument Attribute Grp
display.instrument_attribute_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Attribute Grp
dissect.instrument_attribute_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Attrib Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, instr_attrib_type = dissect.instr_attrib_type(buffer, index, packet, parent)

  -- Instr Attrib Value: 32 Byte Ascii String
  index, instr_attrib_value = dissect.instr_attrib_value(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Attribute Grp
dissect.instrument_attribute_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_attribute_grp then
    local length = size_of.instrument_attribute_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_attribute_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.instrument_attribute_grp, range, display)
  end

  return dissect.instrument_attribute_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Size: Event Type
size_of.event_type = 1

-- Display: Event Type
display.event_type = function(value)
  if value == 8 then
    return "Event Type: Swap Start Date (8)"
  end
  if value == 9 then
    return "Event Type: Swap End Date (9)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
dissect.event_type = function(buffer, offset, packet, parent)
  local length = size_of.event_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.event_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.event_type, range, value, display)

  return offset + length, value
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.event_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Event Grp
size_of.instrument_event_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.event_date

  index = index + size_of.event_type

  index = index + size_of.pad_3

  return index
end

-- Display: Instrument Event Grp
display.instrument_event_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Event Grp
dissect.instrument_event_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Date: 4 Byte Unsigned Fixed Width Integer
  index, event_date = dissect.event_date(buffer, index, packet, parent)

  -- Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, event_type = dissect.event_type(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Event Grp
dissect.instrument_event_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_event_grp then
    local length = size_of.instrument_event_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_event_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.instrument_event_grp, range, display)
  end

  return dissect.instrument_event_grp_fields(buffer, offset, packet, parent)
end

-- Size: Leg Price
size_of.leg_price = 8

-- Display: Leg Price
display.leg_price = function(value)
  local factor = 100000000
  return "Leg Price: "..value:tonumber()/factor
end

-- Dissect: Leg Price
dissect.leg_price = function(buffer, offset, packet, parent)
  local length = size_of.leg_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.leg_price(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Id
size_of.leg_security_id = 8

-- Display: Leg Security Id
display.leg_security_id = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
dissect.leg_security_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_security_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trd Instrmnt Leg Grp
size_of.trd_instrmnt_leg_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_security_id

  index = index + size_of.leg_price

  return index
end

-- Display: Trd Instrmnt Leg Grp
display.trd_instrmnt_leg_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trd Instrmnt Leg Grp
dissect.trd_instrmnt_leg_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Unsigned Fixed Width Integer
  index, leg_price = dissect.leg_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Trd Instrmnt Leg Grp
dissect.trd_instrmnt_leg_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trd_instrmnt_leg_grp then
    local length = size_of.trd_instrmnt_leg_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trd_instrmnt_leg_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.trd_instrmnt_leg_grp, range, display)
  end

  return dissect.trd_instrmnt_leg_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Size: Compliance Text
size_of.compliance_text = 20

-- Display: Compliance Text
display.compliance_text = function(value)
  return "Compliance Text: "..value
end

-- Dissect: Compliance Text
dissect.compliance_text = function(buffer, offset, packet, parent)
  local length = size_of.compliance_text
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.compliance_text(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.compliance_text, range, value, display)

  return offset + length, value
end

-- Size: Cust Order Handling Inst
size_of.cust_order_handling_inst = 1

-- Display: Cust Order Handling Inst
display.cust_order_handling_inst = function(value)
  return "Cust Order Handling Inst: "..value
end

-- Dissect: Cust Order Handling Inst
dissect.cust_order_handling_inst = function(buffer, offset, packet, parent)
  local length = size_of.cust_order_handling_inst
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cust_order_handling_inst(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Size: Party Id Location Id
size_of.party_id_location_id = 2

-- Display: Party Id Location Id
display.party_id_location_id = function(value)
  return "Party Id Location Id: "..value
end

-- Dissect: Party Id Location Id
dissect.party_id_location_id = function(buffer, offset, packet, parent)
  local length = size_of.party_id_location_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_id_location_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_location_id, range, value, display)

  return offset + length, value
end

-- Size: Party Id Beneficiary
size_of.party_id_beneficiary = 9

-- Display: Party Id Beneficiary
display.party_id_beneficiary = function(value)
  return "Party Id Beneficiary: "..value
end

-- Dissect: Party Id Beneficiary
dissect.party_id_beneficiary = function(buffer, offset, packet, parent)
  local length = size_of.party_id_beneficiary
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_id_beneficiary(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_beneficiary, range, value, display)

  return offset + length, value
end

-- Size: Party Id Order Origination Firm
size_of.party_id_order_origination_firm = 7

-- Display: Party Id Order Origination Firm
display.party_id_order_origination_firm = function(value)
  return "Party Id Order Origination Firm: "..value
end

-- Dissect: Party Id Order Origination Firm
dissect.party_id_order_origination_firm = function(buffer, offset, packet, parent)
  local length = size_of.party_id_order_origination_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_id_order_origination_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_order_origination_firm, range, value, display)

  return offset + length, value
end

-- Size: Free Text 3
size_of.free_text_3 = 12

-- Display: Free Text 3
display.free_text_3 = function(value)
  return "Free Text 3: "..value
end

-- Dissect: Free Text 3
dissect.free_text_3 = function(buffer, offset, packet, parent)
  local length = size_of.free_text_3
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.free_text_3(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.free_text_3, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.free_text_2, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.free_text_1, range, value, display)

  return offset + length, value
end

-- Size: Party Id Take Up Trading Firm
size_of.party_id_take_up_trading_firm = 5

-- Display: Party Id Take Up Trading Firm
display.party_id_take_up_trading_firm = function(value)
  return "Party Id Take Up Trading Firm: "..value
end

-- Dissect: Party Id Take Up Trading Firm
dissect.party_id_take_up_trading_firm = function(buffer, offset, packet, parent)
  local length = size_of.party_id_take_up_trading_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_id_take_up_trading_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_take_up_trading_firm, range, value, display)

  return offset + length, value
end

-- Size: Party Id Position Account
size_of.party_id_position_account = 32

-- Display: Party Id Position Account
display.party_id_position_account = function(value)
  return "Party Id Position Account: "..value
end

-- Dissect: Party Id Position Account
dissect.party_id_position_account = function(buffer, offset, packet, parent)
  local length = size_of.party_id_position_account
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.party_id_position_account(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_position_account, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.account, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_attribute_liquidity_provision, range, value, display)

  return offset + length, value
end

-- Size: Position Effect
size_of.position_effect = 1

-- Display: Position Effect
display.position_effect = function(value)
  if value == "C" then
    return "Position Effect: Close (C)"
  end
  if value == "O" then
    return "Position Effect: Open (O)"
  end

  return "Position Effect: Unknown("..value..")"
end

-- Dissect: Position Effect
dissect.position_effect = function(buffer, offset, packet, parent)
  local length = size_of.position_effect
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.position_effect(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.position_effect, range, value, display)

  return offset + length, value
end

-- Size: Trading Capacity
size_of.trading_capacity = 1

-- Display: Trading Capacity
display.trading_capacity = function(value)
  if value == 1 then
    return "Trading Capacity: Customer (1)"
  end
  if value == 5 then
    return "Trading Capacity: Principal (5)"
  end
  if value == 6 then
    return "Trading Capacity: Market Maker (6)"
  end

  return "Trading Capacity: Unknown("..value..")"
end

-- Dissect: Trading Capacity
dissect.trading_capacity = function(buffer, offset, packet, parent)
  local length = size_of.trading_capacity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_capacity(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trading_capacity, range, value, display)

  return offset + length, value
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_alloc_status, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.side, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_executing_trader, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_executing_firm, range, value, display)

  return offset + length, value
end

-- Size: Alloc Qty
size_of.alloc_qty = 4

-- Display: Alloc Qty
display.alloc_qty = function(value)
  return "Alloc Qty: "..value
end

-- Dissect: Alloc Qty
dissect.alloc_qty = function(buffer, offset, packet, parent)
  local length = size_of.alloc_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.alloc_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.alloc_qty, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.individual_alloc_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Side Alloc Ext Grp
size_of.side_alloc_ext_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.individual_alloc_id

  index = index + size_of.alloc_qty

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.side

  index = index + size_of.trade_alloc_status

  index = index + size_of.trading_capacity

  index = index + size_of.position_effect

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.account

  index = index + size_of.party_id_position_account

  index = index + size_of.party_id_take_up_trading_firm

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.party_id_order_origination_firm

  index = index + size_of.party_id_beneficiary

  index = index + size_of.party_id_location_id

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.compliance_text

  index = index + size_of.pad_6

  return index
end

-- Display: Side Alloc Ext Grp
display.side_alloc_ext_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Side Alloc Ext Grp
dissect.side_alloc_ext_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Individual Alloc Id: 4 Byte Unsigned Fixed Width Integer
  index, individual_alloc_id = dissect.individual_alloc_id(buffer, index, packet, parent)

  -- Alloc Qty: 4 Byte Signed Fixed Width Integer
  index, alloc_qty = dissect.alloc_qty(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Trade Alloc Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trade_alloc_status = dissect.trade_alloc_status(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = dissect.position_effect(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Party Id Position Account: 32 Byte Ascii String
  index, party_id_position_account = dissect.party_id_position_account(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, party_id_take_up_trading_firm = dissect.party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String
  index, party_id_order_origination_firm = dissect.party_id_order_origination_firm(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String
  index, party_id_beneficiary = dissect.party_id_beneficiary(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String
  index, party_id_location_id = dissect.party_id_location_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Side Alloc Ext Grp
dissect.side_alloc_ext_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.side_alloc_ext_grp then
    local length = size_of.side_alloc_ext_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.side_alloc_ext_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.side_alloc_ext_grp, range, display)
  end

  return dissect.side_alloc_ext_grp_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Issuer
size_of.underlying_issuer = 30

-- Display: Underlying Issuer
display.underlying_issuer = function(value)
  return "Underlying Issuer: "..value
end

-- Dissect: Underlying Issuer
dissect.underlying_issuer = function(buffer, offset, packet, parent)
  local length = size_of.underlying_issuer
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_issuer(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_issuer, range, value, display)

  return offset + length, value
end

-- Size: Underlying Currency
size_of.underlying_currency = 3

-- Display: Underlying Currency
display.underlying_currency = function(value)
  return "Underlying Currency: "..value
end

-- Dissect: Underlying Currency
dissect.underlying_currency = function(buffer, offset, packet, parent)
  local length = size_of.underlying_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_currency(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_currency, range, value, display)

  return offset + length, value
end

-- Size: Underlying Security Desc
size_of.underlying_security_desc = 30

-- Display: Underlying Security Desc
display.underlying_security_desc = function(value)
  return "Underlying Security Desc: "..value
end

-- Dissect: Underlying Security Desc
dissect.underlying_security_desc = function(buffer, offset, packet, parent)
  local length = size_of.underlying_security_desc
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_security_desc(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_security_desc, range, value, display)

  return offset + length, value
end

-- Size: Underlying Security Id
size_of.underlying_security_id = 12

-- Display: Underlying Security Id
display.underlying_security_id = function(value)
  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
dissect.underlying_security_id = function(buffer, offset, packet, parent)
  local length = size_of.underlying_security_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_security_id, range, value, display)

  return offset + length, value
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_report_text, range, value, display)

  return offset + length, value
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_report_id, range, value, display)

  return offset + length, value
end

-- Size: Party Id Settlement Location
size_of.party_id_settlement_location = 1

-- Display: Party Id Settlement Location
display.party_id_settlement_location = function(value)
  if value == 1 then
    return "Party Id Settlement Location: Clearstrem Banking Frankfurt (1)"
  end
  if value == 2 then
    return "Party Id Settlement Location: Clearstrem Banking Luxemburg (2)"
  end
  if value == 3 then
    return "Party Id Settlement Location: Cls Group (3)"
  end
  if value == 4 then
    return "Party Id Settlement Location: Euroclear (4)"
  end

  return "Party Id Settlement Location: Unknown("..value..")"
end

-- Dissect: Party Id Settlement Location
dissect.party_id_settlement_location = function(buffer, offset, packet, parent)
  local length = size_of.party_id_settlement_location
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_id_settlement_location(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_settlement_location, range, value, display)

  return offset + length, value
end

-- Size: Hedge Type
size_of.hedge_type = 1

-- Display: Hedge Type
display.hedge_type = function(value)
  if value == 0 then
    return "Hedge Type: Duration Hedge (0)"
  end
  if value == 1 then
    return "Hedge Type: Nominal Hedge (1)"
  end
  if value == 2 then
    return "Hedge Type: Price Factor Hedge (2)"
  end

  return "Hedge Type: Unknown("..value..")"
end

-- Dissect: Hedge Type
dissect.hedge_type = function(buffer, offset, packet, parent)
  local length = size_of.hedge_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.hedge_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.hedge_type, range, value, display)

  return offset + length, value
end

-- Size: Skip Validations
size_of.skip_validations = 1

-- Display: Skip Validations
display.skip_validations = function(value)
  if value == 0 then
    return "Skip Validations: False (0)"
  end
  if value == 1 then
    return "Skip Validations: True (1)"
  end

  return "Skip Validations: Unknown("..value..")"
end

-- Dissect: Skip Validations
dissect.skip_validations = function(buffer, offset, packet, parent)
  local length = size_of.skip_validations
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.skip_validations(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.skip_validations, range, value, display)

  return offset + length, value
end

-- Size: No Underlying Stips
size_of.no_underlying_stips = 1

-- Display: No Underlying Stips
display.no_underlying_stips = function(value)
  return "No Underlying Stips: "..value
end

-- Dissect: No Underlying Stips
dissect.no_underlying_stips = function(buffer, offset, packet, parent)
  local length = size_of.no_underlying_stips
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_underlying_stips(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_underlying_stips, range, value, display)

  return offset + length, value
end

-- Size: No Instr Attrib
size_of.no_instr_attrib = 1

-- Display: No Instr Attrib
display.no_instr_attrib = function(value)
  return "No Instr Attrib: "..value
end

-- Dissect: No Instr Attrib
dissect.no_instr_attrib = function(buffer, offset, packet, parent)
  local length = size_of.no_instr_attrib
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_instr_attrib(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_instr_attrib, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_events, range, value, display)

  return offset + length, value
end

-- Size: No Legs
size_of.no_legs = 1

-- Display: No Legs
display.no_legs = function(value)
  return "No Legs: "..value
end

-- Dissect: No Legs
dissect.no_legs = function(buffer, offset, packet, parent)
  local length = size_of.no_legs
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_legs(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_legs, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_side_allocs, range, value, display)

  return offset + length, value
end

-- Size: Trade Publish Indicator
size_of.trade_publish_indicator = 1

-- Display: Trade Publish Indicator
display.trade_publish_indicator = function(value)
  if value == 0 then
    return "Trade Publish Indicator: Do Not Publish Trade (0)"
  end
  if value == 1 then
    return "Trade Publish Indicator: Publish Trade (1)"
  end

  return "Trade Publish Indicator: Unknown("..value..")"
end

-- Dissect: Trade Publish Indicator
dissect.trade_publish_indicator = function(buffer, offset, packet, parent)
  local length = size_of.trade_publish_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_publish_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_publish_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trade Report Type
size_of.trade_report_type = 1

-- Display: Trade Report Type
display.trade_report_type = function(value)
  if value == 0 then
    return "Trade Report Type: Submit (0)"
  end
  if value == 1 then
    return "Trade Report Type: Alleged (1)"
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_report_type, range, value, display)

  return offset + length, value
end

-- Size: Product Complex
size_of.product_complex = 1

-- Display: Product Complex
display.product_complex = function(value)
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
  if value == 10 then
    return "Product Complex: Flexiblesimpleinstrument (10)"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
dissect.product_complex = function(buffer, offset, packet, parent)
  local length = size_of.product_complex
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.product_complex(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Size: Trd Type
size_of.trd_type = 2

-- Display: Trd Type
display.trd_type = function(value)
  if value == 1 then
    return "Trd Type: Block Trade (1)"
  end
  if value == 12 then
    return "Trd Type: Exchangefor Swap (12)"
  end
  if value == 55 then
    return "Trd Type: Exchange Basis Facility (55)"
  end
  if value == 1000 then
    return "Trd Type: Vola Trade (1000)"
  end
  if value == 1001 then
    return "Trd Type: Efp Fin Trade (1001)"
  end
  if value == 1002 then
    return "Trd Type: Efp Index Futures Trade (1002)"
  end
  if value == 1004 then
    return "Trd Type: Tradeat Market (1004)"
  end

  return "Trd Type: Unknown("..value..")"
end

-- Dissect: Trd Type
dissect.trd_type = function(buffer, offset, packet, parent)
  local length = size_of.trd_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trd_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trd_type, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_related_trade_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.negotiation_id, range, value, display)

  return offset + length, value
end

-- Size: Underlying Qty
size_of.underlying_qty = 8

-- Display: Underlying Qty
display.underlying_qty = function(value)
  return "Underlying Qty: "..value
end

-- Dissect: Underlying Qty
dissect.underlying_qty = function(buffer, offset, packet, parent)
  local length = size_of.underlying_qty
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.underlying_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_qty, range, value, display)

  return offset + length, value
end

-- Size: Related Trade Quantity
size_of.related_trade_quantity = 4

-- Display: Related Trade Quantity
display.related_trade_quantity = function(value)
  return "Related Trade Quantity: "..value
end

-- Dissect: Related Trade Quantity
dissect.related_trade_quantity = function(buffer, offset, packet, parent)
  local length = size_of.related_trade_quantity
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.related_trade_quantity(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.related_trade_quantity, range, value, display)

  return offset + length, value
end

-- Size: Related Market Segment Id
size_of.related_market_segment_id = 4

-- Display: Related Market Segment Id
display.related_market_segment_id = function(value)
  return "Related Market Segment Id: "..value
end

-- Dissect: Related Market Segment Id
dissect.related_market_segment_id = function(buffer, offset, packet, parent)
  local length = size_of.related_market_segment_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.related_market_segment_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.related_market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Related Trade Id
size_of.related_trade_id = 4

-- Display: Related Trade Id
display.related_trade_id = function(value)
  return "Related Trade Id: "..value
end

-- Dissect: Related Trade Id
dissect.related_trade_id = function(buffer, offset, packet, parent)
  local length = size_of.related_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.related_trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.related_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Underlying Maturity Date
size_of.underlying_maturity_date = 4

-- Display: Underlying Maturity Date
display.underlying_maturity_date = function(value)
  return "Underlying Maturity Date: "..value
end

-- Dissect: Underlying Maturity Date
dissect.underlying_maturity_date = function(buffer, offset, packet, parent)
  local length = size_of.underlying_maturity_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_maturity_date(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Underlying Settlement Date
size_of.underlying_settlement_date = 4

-- Display: Underlying Settlement Date
display.underlying_settlement_date = function(value)
  return "Underlying Settlement Date: "..value
end

-- Dissect: Underlying Settlement Date
dissect.underlying_settlement_date = function(buffer, offset, packet, parent)
  local length = size_of.underlying_settlement_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_settlement_date(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_settlement_date, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Related Close Price
size_of.related_close_price = 8

-- Display: Related Close Price
display.related_close_price = function(value)
  local factor = 1000000
  return "Related Close Price: "..value:tonumber()/factor
end

-- Dissect: Related Close Price
dissect.related_close_price = function(buffer, offset, packet, parent)
  local length = size_of.related_close_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.related_close_price(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.related_close_price, range, value, display)

  return offset + length, value
end

-- Size: Underlying Px
size_of.underlying_px = 8

-- Display: Underlying Px
display.underlying_px = function(value)
  local factor = 100000000
  return "Underlying Px: "..value:tonumber()/factor
end

-- Dissect: Underlying Px
dissect.underlying_px = function(buffer, offset, packet, parent)
  local length = size_of.underlying_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.underlying_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_px, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trans_bkd_time, range, value, display)

  return offset + length, value
end

-- Size: Last Px
size_of.last_px = 8

-- Display: Last Px
display.last_px = function(value)
  local factor = 100000000
  return "Last Px: "..value:tonumber()/factor
end

-- Dissect: Last Px
dissect.last_px = function(buffer, offset, packet, parent)
  local length = size_of.last_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.last_px, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Upload Tes Trade Request
size_of.upload_tes_trade_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.trans_bkd_time

  index = index + size_of.underlying_px

  index = index + size_of.related_close_price

  index = index + size_of.market_segment_id

  index = index + size_of.underlying_settlement_date

  index = index + size_of.underlying_maturity_date

  index = index + size_of.related_trade_id

  index = index + size_of.related_market_segment_id

  index = index + size_of.related_trade_quantity

  index = index + size_of.underlying_qty

  index = index + size_of.negotiation_id

  index = index + size_of.srqs_related_trade_id

  index = index + size_of.trd_type

  index = index + size_of.product_complex

  index = index + size_of.trade_report_type

  index = index + size_of.trade_publish_indicator

  index = index + size_of.no_side_allocs

  index = index + size_of.no_legs

  index = index + size_of.no_events

  index = index + size_of.no_instr_attrib

  index = index + size_of.no_underlying_stips

  index = index + size_of.skip_validations

  index = index + size_of.hedge_type

  index = index + size_of.party_id_settlement_location

  index = index + size_of.trade_report_id

  index = index + size_of.trade_report_text

  index = index + size_of.underlying_security_id

  index = index + size_of.underlying_security_desc

  index = index + size_of.underlying_currency

  index = index + size_of.underlying_issuer

  -- Calculate field size from count
  local side_alloc_ext_grp_count = buffer(offset + index - 123, 1):le_uint()
  index = index + side_alloc_ext_grp_count * 144

  -- Calculate field size from count
  local trd_instrmnt_leg_grp_count = buffer(offset + index - 266, 1):le_uint()
  index = index + trd_instrmnt_leg_grp_count * 16

  -- Calculate field size from count
  local instrument_event_grp_count = buffer(offset + index - 281, 1):le_uint()
  index = index + instrument_event_grp_count * 8

  -- Calculate field size from count
  local instrument_attribute_grp_count = buffer(offset + index - 288, 1):le_uint()
  index = index + instrument_attribute_grp_count * 40

  -- Calculate field size from count
  local underlying_stip_grp_count = buffer(offset + index - 327, 1):le_uint()
  index = index + underlying_stip_grp_count * 40

  return index
end

-- Display: Upload Tes Trade Request
display.upload_tes_trade_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Upload Tes Trade Request
dissect.upload_tes_trade_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Unsigned Fixed Width Integer
  index, underlying_px = dissect.underlying_px(buffer, index, packet, parent)

  -- Related Close Price: 8 Byte Unsigned Fixed Width Integer
  index, related_close_price = dissect.related_close_price(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, underlying_settlement_date = dissect.underlying_settlement_date(buffer, index, packet, parent)

  -- Underlying Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, underlying_maturity_date = dissect.underlying_maturity_date(buffer, index, packet, parent)

  -- Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, related_trade_id = dissect.related_trade_id(buffer, index, packet, parent)

  -- Related Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, related_market_segment_id = dissect.related_market_segment_id(buffer, index, packet, parent)

  -- Related Trade Quantity: 4 Byte Signed Fixed Width Integer
  index, related_trade_quantity = dissect.related_trade_quantity(buffer, index, packet, parent)

  -- Underlying Qty: 8 Byte Signed Fixed Width Integer
  index, underlying_qty = dissect.underlying_qty(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Srqs Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, srqs_related_trade_id = dissect.srqs_related_trade_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Trade Publish Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_publish_indicator = dissect.trade_publish_indicator(buffer, index, packet, parent)

  -- No Side Allocs: 1 Byte Unsigned Fixed Width Integer
  index, no_side_allocs = dissect.no_side_allocs(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- No Events: 1 Byte Unsigned Fixed Width Integer
  index, no_events = dissect.no_events(buffer, index, packet, parent)

  -- No Instr Attrib: 1 Byte Unsigned Fixed Width Integer
  index, no_instr_attrib = dissect.no_instr_attrib(buffer, index, packet, parent)

  -- No Underlying Stips: 1 Byte Unsigned Fixed Width Integer
  index, no_underlying_stips = dissect.no_underlying_stips(buffer, index, packet, parent)

  -- Skip Validations: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, skip_validations = dissect.skip_validations(buffer, index, packet, parent)

  -- Hedge Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, hedge_type = dissect.hedge_type(buffer, index, packet, parent)

  -- Party Id Settlement Location: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, party_id_settlement_location = dissect.party_id_settlement_location(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Trade Report Text: 20 Byte Ascii String
  index, trade_report_text = dissect.trade_report_text(buffer, index, packet, parent)

  -- Underlying Security Id: 12 Byte Ascii String
  index, underlying_security_id = dissect.underlying_security_id(buffer, index, packet, parent)

  -- Underlying Security Desc: 30 Byte Ascii String
  index, underlying_security_desc = dissect.underlying_security_desc(buffer, index, packet, parent)

  -- Underlying Currency: 3 Byte Ascii String
  index, underlying_currency = dissect.underlying_currency(buffer, index, packet, parent)

  -- Underlying Issuer: 30 Byte Ascii String
  index, underlying_issuer = dissect.underlying_issuer(buffer, index, packet, parent)

  -- Side Alloc Ext Grp: Struct of 21 fields
  for i = 1, no_side_allocs do
    index = dissect.side_alloc_ext_grp(buffer, index, packet, parent)
  end

  -- Trd Instrmnt Leg Grp: Struct of 2 fields
  for i = 1, no_legs do
    index = dissect.trd_instrmnt_leg_grp(buffer, index, packet, parent)
  end

  -- Instrument Event Grp: Struct of 3 fields
  for i = 1, no_events do
    index = dissect.instrument_event_grp(buffer, index, packet, parent)
  end

  -- Instrument Attribute Grp: Struct of 3 fields
  for i = 1, no_instr_attrib do
    index = dissect.instrument_attribute_grp(buffer, index, packet, parent)
  end

  -- Underlying Stip Grp: Struct of 3 fields
  for i = 1, no_underlying_stips do
    index = dissect.underlying_stip_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Upload Tes Trade Request
dissect.upload_tes_trade_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.upload_tes_trade_request then
    local length = size_of.upload_tes_trade_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.upload_tes_trade_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.upload_tes_trade_request, range, display)
  end

  return dissect.upload_tes_trade_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Unsubscribe Response
size_of.unsubscribe_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

  return index
end

-- Display: Unsubscribe Response
display.unsubscribe_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsubscribe Response
dissect.unsubscribe_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsubscribe Response
dissect.unsubscribe_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unsubscribe_response then
    local length = size_of.unsubscribe_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.unsubscribe_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.unsubscribe_response, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.ref_appl_sub_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unsubscribe Request
size_of.unsubscribe_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.unsubscribe_request, range, display)
  end

  return dissect.unsubscribe_request_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.ref_appl_last_msg_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trad_ses_event, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_date, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.last_fragment, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_resend_flag, range, value, display)

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

  return "Appl Id: Unknown("..value..")"
end

-- Dissect: Appl Id
dissect.appl_id = function(buffer, offset, packet, parent)
  local length = size_of.appl_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.appl_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_msg_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.partition_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_sub_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.notification_in, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trd_reg_ts_time_out, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rbc Header Me
size_of.rbc_header_me = function(buffer, offset)
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

-- Display: Rbc Header Me
display.rbc_header_me = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rbc Header Me
dissect.rbc_header_me_fields = function(buffer, offset, packet, parent)
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

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Appl Resend Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_resend_flag = dissect.appl_resend_flag(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Me
dissect.rbc_header_me = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rbc_header_me then
    local length = size_of.rbc_header_me(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rbc_header_me(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.rbc_header_me, range, display)
  end

  return dissect.rbc_header_me_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trading Session Status Broadcast
size_of.trading_session_status_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header_me(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header Me: Struct of 10 fields
  index, rbc_header_me = dissect.rbc_header_me(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.trading_session_status_broadcast, range, display)
  end

  return dissect.trading_session_status_broadcast_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_clearing_firm, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_executing_trader, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_executing_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Clearing Organization
size_of.root_party_clearing_organization = 4

-- Display: Root Party Clearing Organization
display.root_party_clearing_organization = function(value)
  return "Root Party Clearing Organization: "..value
end

-- Dissect: Root Party Clearing Organization
dissect.root_party_clearing_organization = function(buffer, offset, packet, parent)
  local length = size_of.root_party_clearing_organization
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_clearing_organization(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_clearing_organization, range, value, display)

  return offset + length, value
end

-- Size: Order Side
size_of.order_side = 1

-- Display: Order Side
display.order_side = function(value)
  if value == 1 then
    return "Order Side: Buy (1)"
  end
  if value == 2 then
    return "Order Side: Sell (2)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
dissect.order_side = function(buffer, offset, packet, parent)
  local length = size_of.order_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_side(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_side, range, value, display)

  return offset + length, value
end

-- Size: Related Product Complex
size_of.related_product_complex = 1

-- Display: Related Product Complex
display.related_product_complex = function(value)
  if value == 2 then
    return "Related Product Complex: Standardoptionstrategy (2)"
  end
  if value == 3 then
    return "Related Product Complex: Nonstandardoptionstrategy (3)"
  end
  if value == 4 then
    return "Related Product Complex: Volatilitystrategy (4)"
  end
  if value == 5 then
    return "Related Product Complex: Futures Spread (5)"
  end
  if value == 6 then
    return "Related Product Complex: Interproductspread (6)"
  end
  if value == 7 then
    return "Related Product Complex: Standardfuturestrategy (7)"
  end
  if value == 8 then
    return "Related Product Complex: Packandbundle (8)"
  end
  if value == 9 then
    return "Related Product Complex: Strip (9)"
  end

  return "Related Product Complex: Unknown("..value..")"
end

-- Dissect: Related Product Complex
dissect.related_product_complex = function(buffer, offset, packet, parent)
  local length = size_of.related_product_complex
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.related_product_complex(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.related_product_complex, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.ord_type, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_category, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Position Account
size_of.root_party_id_position_account = 32

-- Display: Root Party Id Position Account
display.root_party_id_position_account = function(value)
  return "Root Party Id Position Account: "..value
end

-- Dissect: Root Party Id Position Account
dissect.root_party_id_position_account = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_position_account
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_id_position_account(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_id_position_account, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.side_liquidity_ind, range, value, display)

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

  return "Match Sub Type: Unknown("..value..")"
end

-- Dissect: Match Sub Type
dissect.match_sub_type = function(buffer, offset, packet, parent)
  local length = size_of.match_sub_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.match_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.match_sub_type, range, value, display)

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

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
dissect.match_type = function(buffer, offset, packet, parent)
  local length = size_of.match_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.match_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.match_type, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Order Origination Firm
size_of.root_party_id_order_origination_firm = 7

-- Display: Root Party Id Order Origination Firm
display.root_party_id_order_origination_firm = function(value)
  return "Root Party Id Order Origination Firm: "..value
end

-- Dissect: Root Party Id Order Origination Firm
dissect.root_party_id_order_origination_firm = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_order_origination_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_id_order_origination_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_id_order_origination_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Take Up Trading Firm
size_of.root_party_id_take_up_trading_firm = 5

-- Display: Root Party Id Take Up Trading Firm
display.root_party_id_take_up_trading_firm = function(value)
  return "Root Party Id Take Up Trading Firm: "..value
end

-- Dissect: Root Party Id Take Up Trading Firm
dissect.root_party_id_take_up_trading_firm = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_take_up_trading_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_id_take_up_trading_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_id_take_up_trading_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Beneficiary
size_of.root_party_id_beneficiary = 9

-- Display: Root Party Id Beneficiary
display.root_party_id_beneficiary = function(value)
  return "Root Party Id Beneficiary: "..value
end

-- Dissect: Root Party Id Beneficiary
dissect.root_party_id_beneficiary = function(buffer, offset, packet, parent)
  local length = size_of.root_party_id_beneficiary
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_party_id_beneficiary(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_id_beneficiary, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.transfer_reason, range, value, display)

  return offset + length, value
end

-- Size: Multi Leg Reporting Type
size_of.multi_leg_reporting_type = 1

-- Display: Multi Leg Reporting Type
display.multi_leg_reporting_type = function(value)
  if value == 1 then
    return "Multi Leg Reporting Type: Singlesecurity (1)"
  end
  if value == 2 then
    return "Multi Leg Reporting Type: Individuallegofamultilegsecurity (2)"
  end

  return "Multi Leg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multi Leg Reporting Type
dissect.multi_leg_reporting_type = function(buffer, offset, packet, parent)
  local length = size_of.multi_leg_reporting_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.multi_leg_reporting_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.multi_leg_reporting_type, range, value, display)

  return offset + length, value
end

-- Size: Tot Num Trade Reports
size_of.tot_num_trade_reports = 4

-- Display: Tot Num Trade Reports
display.tot_num_trade_reports = function(value)
  return "Tot Num Trade Reports: "..value
end

-- Dissect: Tot Num Trade Reports
dissect.tot_num_trade_reports = function(buffer, offset, packet, parent)
  local length = size_of.tot_num_trade_reports
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.tot_num_trade_reports(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.tot_num_trade_reports, range, value, display)

  return offset + length, value
end

-- Size: Strategy Link Id
size_of.strategy_link_id = 4

-- Display: Strategy Link Id
display.strategy_link_id = function(value)
  return "Strategy Link Id: "..value
end

-- Dissect: Strategy Link Id
dissect.strategy_link_id = function(buffer, offset, packet, parent)
  local length = size_of.strategy_link_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.strategy_link_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.strategy_link_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trd_match_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.match_date, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.side_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Clearing Trade Qty
size_of.clearing_trade_qty = 4

-- Display: Clearing Trade Qty
display.clearing_trade_qty = function(value)
  return "Clearing Trade Qty: "..value
end

-- Dissect: Clearing Trade Qty
dissect.clearing_trade_qty = function(buffer, offset, packet, parent)
  local length = size_of.clearing_trade_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.clearing_trade_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.clearing_trade_qty, range, value, display)

  return offset + length, value
end

-- Size: Side Last Qty
size_of.side_last_qty = 4

-- Display: Side Last Qty
display.side_last_qty = function(value)
  return "Side Last Qty: "..value
end

-- Dissect: Side Last Qty
dissect.side_last_qty = function(buffer, offset, packet, parent)
  local length = size_of.side_last_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.side_last_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.side_last_qty, range, value, display)

  return offset + length, value
end

-- Size: Last Qty
size_of.last_qty = 4

-- Display: Last Qty
display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
dissect.last_qty = function(buffer, offset, packet, parent)
  local length = size_of.last_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.last_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Size: Related Symbol
size_of.related_symbol = 4

-- Display: Related Symbol
display.related_symbol = function(value)
  return "Related Symbol: "..value
end

-- Dissect: Related Symbol
dissect.related_symbol = function(buffer, offset, packet, parent)
  local length = size_of.related_symbol
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.related_symbol(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.related_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
size_of.leaves_qty = 4

-- Display: Leaves Qty
display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
size_of.cum_qty = 4

-- Display: Cum Qty
display.cum_qty = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = size_of.cum_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.cum_qty, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_id_clearing_unit, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_id_executing_trader, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_id_session_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_id_executing_unit, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.orig_trade_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.cl_ord_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Clearing Trade Price
size_of.clearing_trade_price = 8

-- Display: Clearing Trade Price
display.clearing_trade_price = function(value)
  local factor = 100000000
  return "Clearing Trade Price: "..value:tonumber()/factor
end

-- Dissect: Clearing Trade Price
dissect.clearing_trade_price = function(buffer, offset, packet, parent)
  local length = size_of.clearing_trade_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.clearing_trade_price(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.clearing_trade_price, range, value, display)

  return offset + length, value
end

-- Size: Side Last Px
size_of.side_last_px = 8

-- Display: Side Last Px
display.side_last_px = function(value)
  local factor = 100000000
  return "Side Last Px: "..value:tonumber()/factor
end

-- Dissect: Side Last Px
dissect.side_last_px = function(buffer, offset, packet, parent)
  local length = size_of.side_last_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.side_last_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.side_last_px, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  local factor = 100000000
  return "Price: "..value:tonumber()/factor
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Related Security Id
size_of.related_security_id = 8

-- Display: Related Security Id
display.related_security_id = function(value)
  return "Related Security Id: "..value
end

-- Dissect: Related Security Id
dissect.related_security_id = function(buffer, offset, packet, parent)
  local length = size_of.related_security_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.related_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.related_security_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rbc Header
size_of.rbc_header = function(buffer, offset)
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

-- Display: Rbc Header
display.rbc_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rbc Header
dissect.rbc_header_fields = function(buffer, offset, packet, parent)
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

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header
dissect.rbc_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rbc_header then
    local length = size_of.rbc_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rbc_header(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.rbc_header, range, display)
  end

  return dissect.rbc_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Broadcast
size_of.trade_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.related_security_id

  index = index + size_of.price

  index = index + size_of.last_px

  index = index + size_of.side_last_px

  index = index + size_of.clearing_trade_price

  index = index + size_of.transact_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.trade_id

  index = index + size_of.orig_trade_id

  index = index + size_of.root_party_id_executing_unit

  index = index + size_of.root_party_id_session_id

  index = index + size_of.root_party_id_executing_trader

  index = index + size_of.root_party_id_clearing_unit

  index = index + size_of.cum_qty

  index = index + size_of.leaves_qty

  index = index + size_of.market_segment_id

  index = index + size_of.related_symbol

  index = index + size_of.last_qty

  index = index + size_of.side_last_qty

  index = index + size_of.clearing_trade_qty

  index = index + size_of.side_trade_id

  index = index + size_of.match_date

  index = index + size_of.trd_match_id

  index = index + size_of.strategy_link_id

  index = index + size_of.tot_num_trade_reports

  index = index + size_of.multi_leg_reporting_type

  index = index + size_of.trade_report_type

  index = index + size_of.transfer_reason

  index = index + size_of.root_party_id_beneficiary

  index = index + size_of.root_party_id_take_up_trading_firm

  index = index + size_of.root_party_id_order_origination_firm

  index = index + size_of.match_type

  index = index + size_of.match_sub_type

  index = index + size_of.side

  index = index + size_of.side_liquidity_ind

  index = index + size_of.trading_capacity

  index = index + size_of.account

  index = index + size_of.root_party_id_position_account

  index = index + size_of.position_effect

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.order_category

  index = index + size_of.ord_type

  index = index + size_of.related_product_complex

  index = index + size_of.order_side

  index = index + size_of.root_party_clearing_organization

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.root_party_clearing_firm

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Related Security Id: 8 Byte Signed Fixed Width Integer
  index, related_security_id = dissect.related_security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Side Last Px: 8 Byte Unsigned Fixed Width Integer
  index, side_last_px = dissect.side_last_px(buffer, index, packet, parent)

  -- Clearing Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, clearing_trade_price = dissect.clearing_trade_price(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

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

  -- Root Party Id Clearing Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_clearing_unit = dissect.root_party_id_clearing_unit(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Related Symbol: 4 Byte Signed Fixed Width Integer
  index, related_symbol = dissect.related_symbol(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Side Last Qty: 4 Byte Signed Fixed Width Integer
  index, side_last_qty = dissect.side_last_qty(buffer, index, packet, parent)

  -- Clearing Trade Qty: 4 Byte Signed Fixed Width Integer
  index, clearing_trade_qty = dissect.clearing_trade_qty(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = dissect.side_trade_id(buffer, index, packet, parent)

  -- Match Date: 4 Byte Unsigned Fixed Width Integer
  index, match_date = dissect.match_date(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer
  index, trd_match_id = dissect.trd_match_id(buffer, index, packet, parent)

  -- Strategy Link Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_link_id = dissect.strategy_link_id(buffer, index, packet, parent)

  -- Tot Num Trade Reports: 4 Byte Signed Fixed Width Integer
  index, tot_num_trade_reports = dissect.tot_num_trade_reports(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, multi_leg_reporting_type = dissect.multi_leg_reporting_type(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Transfer Reason: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transfer_reason = dissect.transfer_reason(buffer, index, packet, parent)

  -- Root Party Id Beneficiary: 9 Byte Ascii String
  index, root_party_id_beneficiary = dissect.root_party_id_beneficiary(buffer, index, packet, parent)

  -- Root Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, root_party_id_take_up_trading_firm = dissect.root_party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Root Party Id Order Origination Firm: 7 Byte Ascii String
  index, root_party_id_order_origination_firm = dissect.root_party_id_order_origination_firm(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_type = dissect.match_type(buffer, index, packet, parent)

  -- Match Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, match_sub_type = dissect.match_sub_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Side Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_liquidity_ind = dissect.side_liquidity_ind(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Root Party Id Position Account: 32 Byte Ascii String
  index, root_party_id_position_account = dissect.root_party_id_position_account(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = dissect.position_effect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Order Category: 1 Byte Ascii String Enum with 2 values
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Related Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, related_product_complex = dissect.related_product_complex(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Root Party Clearing Organization: 4 Byte Ascii String
  index, root_party_clearing_organization = dissect.root_party_clearing_organization(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String
  index, root_party_executing_firm = dissect.root_party_executing_firm(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String
  index, root_party_executing_trader = dissect.root_party_executing_trader(buffer, index, packet, parent)

  -- Root Party Clearing Firm: 5 Byte Ascii String
  index, root_party_clearing_firm = dissect.root_party_clearing_firm(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_broadcast, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.throttle_disconnect_limit, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.throttle_no_msgs, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.throttle_time_interval, range, value, display)

  return offset + length, value
end

-- Calculate size of: Notif Header
size_of.notif_header = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  return index
end

-- Display: Notif Header
display.notif_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Notif Header
dissect.notif_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Notif Header
dissect.notif_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.notif_header then
    local length = size_of.notif_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.notif_header(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.notif_header, range, display)
  end

  return dissect.notif_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Throttle Update Notification
size_of.throttle_update_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.notif_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Notif Header: Struct of 1 fields
  index, notif_header = dissect.notif_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.throttle_update_notification, range, display)
  end

  return dissect.throttle_update_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Tm Trading Session Status Broadcast
size_of.tm_trading_session_status_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.tm_trading_session_status_broadcast, range, display)
  end

  return dissect.tm_trading_session_status_broadcast_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.message_event_source, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.tes_exec_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.package_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Upload Broadcast
size_of.tes_upload_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.trans_bkd_time

  index = index + size_of.transact_time

  index = index + size_of.underlying_px

  index = index + size_of.related_close_price

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.underlying_settlement_date

  index = index + size_of.underlying_maturity_date

  index = index + size_of.related_trade_id

  index = index + size_of.related_market_segment_id

  index = index + size_of.related_trade_quantity

  index = index + size_of.underlying_qty

  index = index + size_of.negotiation_id

  index = index + size_of.srqs_related_trade_id

  index = index + size_of.trd_type

  index = index + size_of.product_complex

  index = index + size_of.trade_report_type

  index = index + size_of.trade_publish_indicator

  index = index + size_of.no_side_allocs

  index = index + size_of.no_legs

  index = index + size_of.no_events

  index = index + size_of.no_instr_attrib

  index = index + size_of.no_underlying_stips

  index = index + size_of.hedge_type

  index = index + size_of.party_id_settlement_location

  index = index + size_of.message_event_source

  index = index + size_of.trade_report_id

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.underlying_security_id

  index = index + size_of.underlying_security_desc

  index = index + size_of.underlying_currency

  index = index + size_of.underlying_issuer

  index = index + size_of.pad_1

  -- Calculate field size from count
  local side_alloc_ext_grp_count = buffer(offset + index - 115, 1):le_uint()
  index = index + side_alloc_ext_grp_count * 144

  -- Calculate field size from count
  local trd_instrmnt_leg_grp_count = buffer(offset + index - 258, 1):le_uint()
  index = index + trd_instrmnt_leg_grp_count * 16

  -- Calculate field size from count
  local instrument_event_grp_count = buffer(offset + index - 273, 1):le_uint()
  index = index + instrument_event_grp_count * 8

  -- Calculate field size from count
  local instrument_attribute_grp_count = buffer(offset + index - 280, 1):le_uint()
  index = index + instrument_attribute_grp_count * 40

  -- Calculate field size from count
  local underlying_stip_grp_count = buffer(offset + index - 319, 1):le_uint()
  index = index + underlying_stip_grp_count * 40

  return index
end

-- Display: Tes Upload Broadcast
display.tes_upload_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Upload Broadcast
dissect.tes_upload_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Unsigned Fixed Width Integer
  index, underlying_px = dissect.underlying_px(buffer, index, packet, parent)

  -- Related Close Price: 8 Byte Unsigned Fixed Width Integer
  index, related_close_price = dissect.related_close_price(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Underlying Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, underlying_settlement_date = dissect.underlying_settlement_date(buffer, index, packet, parent)

  -- Underlying Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, underlying_maturity_date = dissect.underlying_maturity_date(buffer, index, packet, parent)

  -- Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, related_trade_id = dissect.related_trade_id(buffer, index, packet, parent)

  -- Related Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, related_market_segment_id = dissect.related_market_segment_id(buffer, index, packet, parent)

  -- Related Trade Quantity: 4 Byte Signed Fixed Width Integer
  index, related_trade_quantity = dissect.related_trade_quantity(buffer, index, packet, parent)

  -- Underlying Qty: 8 Byte Signed Fixed Width Integer
  index, underlying_qty = dissect.underlying_qty(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Srqs Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, srqs_related_trade_id = dissect.srqs_related_trade_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Trade Publish Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_publish_indicator = dissect.trade_publish_indicator(buffer, index, packet, parent)

  -- No Side Allocs: 1 Byte Unsigned Fixed Width Integer
  index, no_side_allocs = dissect.no_side_allocs(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- No Events: 1 Byte Unsigned Fixed Width Integer
  index, no_events = dissect.no_events(buffer, index, packet, parent)

  -- No Instr Attrib: 1 Byte Unsigned Fixed Width Integer
  index, no_instr_attrib = dissect.no_instr_attrib(buffer, index, packet, parent)

  -- No Underlying Stips: 1 Byte Unsigned Fixed Width Integer
  index, no_underlying_stips = dissect.no_underlying_stips(buffer, index, packet, parent)

  -- Hedge Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, hedge_type = dissect.hedge_type(buffer, index, packet, parent)

  -- Party Id Settlement Location: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, party_id_settlement_location = dissect.party_id_settlement_location(buffer, index, packet, parent)

  -- Message Event Source: 1 Byte Ascii String Enum with 4 values
  index, message_event_source = dissect.message_event_source(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String
  index, root_party_executing_firm = dissect.root_party_executing_firm(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String
  index, root_party_executing_trader = dissect.root_party_executing_trader(buffer, index, packet, parent)

  -- Underlying Security Id: 12 Byte Ascii String
  index, underlying_security_id = dissect.underlying_security_id(buffer, index, packet, parent)

  -- Underlying Security Desc: 30 Byte Ascii String
  index, underlying_security_desc = dissect.underlying_security_desc(buffer, index, packet, parent)

  -- Underlying Currency: 3 Byte Ascii String
  index, underlying_currency = dissect.underlying_currency(buffer, index, packet, parent)

  -- Underlying Issuer: 30 Byte Ascii String
  index, underlying_issuer = dissect.underlying_issuer(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Side Alloc Ext Grp: Struct of 21 fields
  for i = 1, no_side_allocs do
    index = dissect.side_alloc_ext_grp(buffer, index, packet, parent)
  end

  -- Trd Instrmnt Leg Grp: Struct of 2 fields
  for i = 1, no_legs do
    index = dissect.trd_instrmnt_leg_grp(buffer, index, packet, parent)
  end

  -- Instrument Event Grp: Struct of 3 fields
  for i = 1, no_events do
    index = dissect.instrument_event_grp(buffer, index, packet, parent)
  end

  -- Instrument Attribute Grp: Struct of 3 fields
  for i = 1, no_instr_attrib do
    index = dissect.instrument_attribute_grp(buffer, index, packet, parent)
  end

  -- Underlying Stip Grp: Struct of 3 fields
  for i = 1, no_underlying_stips do
    index = dissect.underlying_stip_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Tes Upload Broadcast
dissect.tes_upload_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.tes_upload_broadcast then
    local length = size_of.tes_upload_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_upload_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.tes_upload_broadcast, range, display)
  end

  return dissect.tes_upload_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Tes Trading Session Status Broadcast
size_of.tes_trading_session_status_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.tes_trading_session_status_broadcast, range, display)
  end

  return dissect.tes_trading_session_status_broadcast_fields(buffer, offset, packet, parent)
end

-- Size: Multileg Price Model
size_of.multileg_price_model = 1

-- Display: Multileg Price Model
display.multileg_price_model = function(value)
  if value == 0 then
    return "Multileg Price Model: Standard (0)"
  end
  if value == 1 then
    return "Multileg Price Model: User Defined (1)"
  end

  return "Multileg Price Model: Unknown("..value..")"
end

-- Dissect: Multileg Price Model
dissect.multileg_price_model = function(buffer, offset, packet, parent)
  local length = size_of.multileg_price_model
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.multileg_price_model(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.multileg_price_model, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Trade Broadcast
size_of.tes_trade_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.clearing_trade_price

  index = index + size_of.transact_time

  index = index + size_of.related_security_id

  index = index + size_of.package_id

  index = index + size_of.last_qty

  index = index + size_of.market_segment_id

  index = index + size_of.trade_id

  index = index + size_of.trade_date

  index = index + size_of.side_trade_id

  index = index + size_of.root_party_id_session_id

  index = index + size_of.orig_trade_id

  index = index + size_of.clearing_trade_qty

  index = index + size_of.root_party_id_executing_unit

  index = index + size_of.root_party_id_executing_trader

  index = index + size_of.root_party_id_clearing_unit

  index = index + size_of.strategy_link_id

  index = index + size_of.related_symbol

  index = index + size_of.tot_num_trade_reports

  index = index + size_of.trd_type

  index = index + size_of.product_complex

  index = index + size_of.related_product_complex

  index = index + size_of.side

  index = index + size_of.trading_capacity

  index = index + size_of.trade_report_type

  index = index + size_of.transfer_reason

  index = index + size_of.multi_leg_reporting_type

  index = index + size_of.position_effect

  index = index + size_of.multileg_price_model

  index = index + size_of.account

  index = index + size_of.root_party_id_position_account

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.root_party_clearing_firm

  index = index + size_of.root_party_clearing_organization

  index = index + size_of.root_party_id_beneficiary

  index = index + size_of.root_party_id_take_up_trading_firm

  index = index + size_of.root_party_id_order_origination_firm

  index = index + size_of.pad_1

  return index
end

-- Display: Tes Trade Broadcast
display.tes_trade_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Trade Broadcast
dissect.tes_trade_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Clearing Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, clearing_trade_price = dissect.clearing_trade_price(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Related Security Id: 8 Byte Signed Fixed Width Integer
  index, related_security_id = dissect.related_security_id(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

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

  -- Orig Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, orig_trade_id = dissect.orig_trade_id(buffer, index, packet, parent)

  -- Clearing Trade Qty: 4 Byte Signed Fixed Width Integer
  index, clearing_trade_qty = dissect.clearing_trade_qty(buffer, index, packet, parent)

  -- Root Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_executing_unit = dissect.root_party_id_executing_unit(buffer, index, packet, parent)

  -- Root Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_executing_trader = dissect.root_party_id_executing_trader(buffer, index, packet, parent)

  -- Root Party Id Clearing Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_clearing_unit = dissect.root_party_id_clearing_unit(buffer, index, packet, parent)

  -- Strategy Link Id: 4 Byte Unsigned Fixed Width Integer
  index, strategy_link_id = dissect.strategy_link_id(buffer, index, packet, parent)

  -- Related Symbol: 4 Byte Signed Fixed Width Integer
  index, related_symbol = dissect.related_symbol(buffer, index, packet, parent)

  -- Tot Num Trade Reports: 4 Byte Signed Fixed Width Integer
  index, tot_num_trade_reports = dissect.tot_num_trade_reports(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Related Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, related_product_complex = dissect.related_product_complex(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Transfer Reason: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transfer_reason = dissect.transfer_reason(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, multi_leg_reporting_type = dissect.multi_leg_reporting_type(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = dissect.position_effect(buffer, index, packet, parent)

  -- Multileg Price Model: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, multileg_price_model = dissect.multileg_price_model(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Root Party Id Position Account: 32 Byte Ascii String
  index, root_party_id_position_account = dissect.root_party_id_position_account(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String
  index, root_party_executing_firm = dissect.root_party_executing_firm(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String
  index, root_party_executing_trader = dissect.root_party_executing_trader(buffer, index, packet, parent)

  -- Root Party Clearing Firm: 5 Byte Ascii String
  index, root_party_clearing_firm = dissect.root_party_clearing_firm(buffer, index, packet, parent)

  -- Root Party Clearing Organization: 4 Byte Ascii String
  index, root_party_clearing_organization = dissect.root_party_clearing_organization(buffer, index, packet, parent)

  -- Root Party Id Beneficiary: 9 Byte Ascii String
  index, root_party_id_beneficiary = dissect.root_party_id_beneficiary(buffer, index, packet, parent)

  -- Root Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, root_party_id_take_up_trading_firm = dissect.root_party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Root Party Id Order Origination Firm: 7 Byte Ascii String
  index, root_party_id_order_origination_firm = dissect.root_party_id_order_origination_firm(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Tes Trade Broadcast
dissect.tes_trade_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tes_trade_broadcast then
    local length = size_of.tes_trade_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_trade_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.tes_trade_broadcast, range, display)
  end

  return dissect.tes_trade_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Tes Response
size_of.tes_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.tes_response, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.alloc_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Execution Broadcast
size_of.tes_execution_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.alloc_id

  index = index + size_of.trd_type

  index = index + size_of.trade_report_type

  index = index + size_of.message_event_source

  index = index + size_of.pad_4

  return index
end

-- Display: Tes Execution Broadcast
display.tes_execution_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Execution Broadcast
dissect.tes_execution_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

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

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Message Event Source: 1 Byte Ascii String Enum with 4 values
  index, message_event_source = dissect.message_event_source(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Tes Execution Broadcast
dissect.tes_execution_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tes_execution_broadcast then
    local length = size_of.tes_execution_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_execution_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.tes_execution_broadcast, range, display)
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
  if value == 105 then
    return "Delete Reason: Instrument Deletion (105)"
  end
  if value == 106 then
    return "Delete Reason: Instrument Suspension (106)"
  end

  return "Delete Reason: Unknown("..value..")"
end

-- Dissect: Delete Reason
dissect.delete_reason = function(buffer, offset, packet, parent)
  local length = size_of.delete_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.delete_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Delete Broadcast
size_of.tes_delete_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.trd_type

  index = index + size_of.delete_reason

  index = index + size_of.trade_report_type

  index = index + size_of.message_event_source

  index = index + size_of.trade_report_id

  index = index + size_of.pad_3

  return index
end

-- Display: Tes Delete Broadcast
display.tes_delete_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Delete Broadcast
dissect.tes_delete_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Delete Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, delete_reason = dissect.delete_reason(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Message Event Source: 1 Byte Ascii String Enum with 4 values
  index, message_event_source = dissect.message_event_source(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Tes Delete Broadcast
dissect.tes_delete_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tes_delete_broadcast then
    local length = size_of.tes_delete_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_delete_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.tes_delete_broadcast, range, display)
  end

  return dissect.tes_delete_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Side Alloc Grp Bc
size_of.side_alloc_grp_bc = function(buffer, offset)
  local index = 0

  index = index + size_of.individual_alloc_id

  index = index + size_of.alloc_qty

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.side

  index = index + size_of.trade_alloc_status

  index = index + size_of.pad_3

  return index
end

-- Display: Side Alloc Grp Bc
display.side_alloc_grp_bc = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Side Alloc Grp Bc
dissect.side_alloc_grp_bc_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Individual Alloc Id: 4 Byte Unsigned Fixed Width Integer
  index, individual_alloc_id = dissect.individual_alloc_id(buffer, index, packet, parent)

  -- Alloc Qty: 4 Byte Signed Fixed Width Integer
  index, alloc_qty = dissect.alloc_qty(buffer, index, packet, parent)

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

-- Dissect: Side Alloc Grp Bc
dissect.side_alloc_grp_bc = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.side_alloc_grp_bc then
    local length = size_of.side_alloc_grp_bc(buffer, offset)
    local range = buffer(offset, length)
    local display = display.side_alloc_grp_bc(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.side_alloc_grp_bc, range, display)
  end

  return dissect.side_alloc_grp_bc_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.pad_5, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Broadcast
size_of.tes_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.transact_time

  index = index + size_of.underlying_px

  index = index + size_of.trans_bkd_time

  index = index + size_of.related_close_price

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.underlying_settlement_date

  index = index + size_of.underlying_maturity_date

  index = index + size_of.related_trade_id

  index = index + size_of.related_market_segment_id

  index = index + size_of.related_trade_quantity

  index = index + size_of.underlying_qty

  index = index + size_of.negotiation_id

  index = index + size_of.srqs_related_trade_id

  index = index + size_of.trd_type

  index = index + size_of.trade_report_type

  index = index + size_of.product_complex

  index = index + size_of.trade_publish_indicator

  index = index + size_of.no_events

  index = index + size_of.no_instr_attrib

  index = index + size_of.no_underlying_stips

  index = index + size_of.no_side_allocs

  index = index + size_of.no_legs

  index = index + size_of.party_id_settlement_location

  index = index + size_of.hedge_type

  index = index + size_of.message_event_source

  index = index + size_of.trade_report_text

  index = index + size_of.trade_report_id

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.underlying_security_id

  index = index + size_of.underlying_security_desc

  index = index + size_of.underlying_currency

  index = index + size_of.underlying_issuer

  index = index + size_of.pad_5

  -- Calculate field size from count
  local side_alloc_grp_bc_count = buffer(offset + index - 136, 1):le_uint()
  index = index + side_alloc_grp_bc_count * 24

  -- Calculate field size from count
  local trd_instrmnt_leg_grp_count = buffer(offset + index - 159, 1):le_uint()
  index = index + trd_instrmnt_leg_grp_count * 16

  -- Calculate field size from count
  local instrument_event_grp_count = buffer(offset + index - 179, 1):le_uint()
  index = index + instrument_event_grp_count * 8

  -- Calculate field size from count
  local instrument_attribute_grp_count = buffer(offset + index - 186, 1):le_uint()
  index = index + instrument_attribute_grp_count * 40

  -- Calculate field size from count
  local underlying_stip_grp_count = buffer(offset + index - 225, 1):le_uint()
  index = index + underlying_stip_grp_count * 40

  return index
end

-- Display: Tes Broadcast
display.tes_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Broadcast
dissect.tes_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Unsigned Fixed Width Integer
  index, underlying_px = dissect.underlying_px(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Related Close Price: 8 Byte Unsigned Fixed Width Integer
  index, related_close_price = dissect.related_close_price(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Underlying Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, underlying_settlement_date = dissect.underlying_settlement_date(buffer, index, packet, parent)

  -- Underlying Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, underlying_maturity_date = dissect.underlying_maturity_date(buffer, index, packet, parent)

  -- Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, related_trade_id = dissect.related_trade_id(buffer, index, packet, parent)

  -- Related Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, related_market_segment_id = dissect.related_market_segment_id(buffer, index, packet, parent)

  -- Related Trade Quantity: 4 Byte Signed Fixed Width Integer
  index, related_trade_quantity = dissect.related_trade_quantity(buffer, index, packet, parent)

  -- Underlying Qty: 8 Byte Signed Fixed Width Integer
  index, underlying_qty = dissect.underlying_qty(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Srqs Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, srqs_related_trade_id = dissect.srqs_related_trade_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Trade Publish Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_publish_indicator = dissect.trade_publish_indicator(buffer, index, packet, parent)

  -- No Events: 1 Byte Unsigned Fixed Width Integer
  index, no_events = dissect.no_events(buffer, index, packet, parent)

  -- No Instr Attrib: 1 Byte Unsigned Fixed Width Integer
  index, no_instr_attrib = dissect.no_instr_attrib(buffer, index, packet, parent)

  -- No Underlying Stips: 1 Byte Unsigned Fixed Width Integer
  index, no_underlying_stips = dissect.no_underlying_stips(buffer, index, packet, parent)

  -- No Side Allocs: 1 Byte Unsigned Fixed Width Integer
  index, no_side_allocs = dissect.no_side_allocs(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Party Id Settlement Location: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, party_id_settlement_location = dissect.party_id_settlement_location(buffer, index, packet, parent)

  -- Hedge Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, hedge_type = dissect.hedge_type(buffer, index, packet, parent)

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

  -- Underlying Security Id: 12 Byte Ascii String
  index, underlying_security_id = dissect.underlying_security_id(buffer, index, packet, parent)

  -- Underlying Security Desc: 30 Byte Ascii String
  index, underlying_security_desc = dissect.underlying_security_desc(buffer, index, packet, parent)

  -- Underlying Currency: 3 Byte Ascii String
  index, underlying_currency = dissect.underlying_currency(buffer, index, packet, parent)

  -- Underlying Issuer: 30 Byte Ascii String
  index, underlying_issuer = dissect.underlying_issuer(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  -- Side Alloc Grp Bc: Struct of 7 fields
  for i = 1, no_side_allocs do
    index = dissect.side_alloc_grp_bc(buffer, index, packet, parent)
  end

  -- Trd Instrmnt Leg Grp: Struct of 2 fields
  for i = 1, no_legs do
    index = dissect.trd_instrmnt_leg_grp(buffer, index, packet, parent)
  end

  -- Instrument Event Grp: Struct of 3 fields
  for i = 1, no_events do
    index = dissect.instrument_event_grp(buffer, index, packet, parent)
  end

  -- Instrument Attribute Grp: Struct of 3 fields
  for i = 1, no_instr_attrib do
    index = dissect.instrument_attribute_grp(buffer, index, packet, parent)
  end

  -- Underlying Stip Grp: Struct of 3 fields
  for i = 1, no_underlying_stips do
    index = dissect.underlying_stip_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Tes Broadcast
dissect.tes_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.tes_broadcast then
    local length = size_of.tes_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.tes_broadcast, range, display)
  end

  return dissect.tes_broadcast_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_entering_trader, range, value, display)

  return offset + length, value
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_entering_firm, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Approve Broadcast
size_of.tes_approve_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.transact_time

  index = index + size_of.underlying_px

  index = index + size_of.trans_bkd_time

  index = index + size_of.related_close_price

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.alloc_qty

  index = index + size_of.alloc_id

  index = index + size_of.underlying_settlement_date

  index = index + size_of.underlying_maturity_date

  index = index + size_of.related_trade_id

  index = index + size_of.related_market_segment_id

  index = index + size_of.related_trade_quantity

  index = index + size_of.underlying_qty

  index = index + size_of.negotiation_id

  index = index + size_of.srqs_related_trade_id

  index = index + size_of.trd_type

  index = index + size_of.side

  index = index + size_of.trade_publish_indicator

  index = index + size_of.product_complex

  index = index + size_of.trade_report_type

  index = index + size_of.trading_capacity

  index = index + size_of.party_id_settlement_location

  index = index + size_of.trade_alloc_status

  index = index + size_of.hedge_type

  index = index + size_of.no_legs

  index = index + size_of.no_events

  index = index + size_of.no_instr_attrib

  index = index + size_of.no_underlying_stips

  index = index + size_of.message_event_source

  index = index + size_of.trade_report_id

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_id_entering_firm

  index = index + size_of.party_entering_trader

  index = index + size_of.position_effect

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.party_id_take_up_trading_firm

  index = index + size_of.account

  index = index + size_of.party_id_position_account

  index = index + size_of.party_id_order_origination_firm

  index = index + size_of.party_id_beneficiary

  index = index + size_of.party_id_location_id

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.compliance_text

  index = index + size_of.underlying_security_id

  index = index + size_of.underlying_security_desc

  index = index + size_of.underlying_currency

  index = index + size_of.underlying_issuer

  index = index + size_of.pad_2

  -- Calculate field size from count
  local trd_instrmnt_leg_grp_count = buffer(offset + index - 246, 1):le_uint()
  index = index + trd_instrmnt_leg_grp_count * 16

  -- Calculate field size from count
  local instrument_event_grp_count = buffer(offset + index - 261, 1):le_uint()
  index = index + instrument_event_grp_count * 8

  -- Calculate field size from count
  local instrument_attribute_grp_count = buffer(offset + index - 268, 1):le_uint()
  index = index + instrument_attribute_grp_count * 40

  -- Calculate field size from count
  local underlying_stip_grp_count = buffer(offset + index - 307, 1):le_uint()
  index = index + underlying_stip_grp_count * 40

  return index
end

-- Display: Tes Approve Broadcast
display.tes_approve_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Approve Broadcast
dissect.tes_approve_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Unsigned Fixed Width Integer
  index, underlying_px = dissect.underlying_px(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Related Close Price: 8 Byte Unsigned Fixed Width Integer
  index, related_close_price = dissect.related_close_price(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Alloc Qty: 4 Byte Signed Fixed Width Integer
  index, alloc_qty = dissect.alloc_qty(buffer, index, packet, parent)

  -- Alloc Id: 4 Byte Unsigned Fixed Width Integer
  index, alloc_id = dissect.alloc_id(buffer, index, packet, parent)

  -- Underlying Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, underlying_settlement_date = dissect.underlying_settlement_date(buffer, index, packet, parent)

  -- Underlying Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, underlying_maturity_date = dissect.underlying_maturity_date(buffer, index, packet, parent)

  -- Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, related_trade_id = dissect.related_trade_id(buffer, index, packet, parent)

  -- Related Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, related_market_segment_id = dissect.related_market_segment_id(buffer, index, packet, parent)

  -- Related Trade Quantity: 4 Byte Signed Fixed Width Integer
  index, related_trade_quantity = dissect.related_trade_quantity(buffer, index, packet, parent)

  -- Underlying Qty: 8 Byte Signed Fixed Width Integer
  index, underlying_qty = dissect.underlying_qty(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Srqs Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, srqs_related_trade_id = dissect.srqs_related_trade_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Trade Publish Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_publish_indicator = dissect.trade_publish_indicator(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Party Id Settlement Location: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, party_id_settlement_location = dissect.party_id_settlement_location(buffer, index, packet, parent)

  -- Trade Alloc Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trade_alloc_status = dissect.trade_alloc_status(buffer, index, packet, parent)

  -- Hedge Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, hedge_type = dissect.hedge_type(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- No Events: 1 Byte Unsigned Fixed Width Integer
  index, no_events = dissect.no_events(buffer, index, packet, parent)

  -- No Instr Attrib: 1 Byte Unsigned Fixed Width Integer
  index, no_instr_attrib = dissect.no_instr_attrib(buffer, index, packet, parent)

  -- No Underlying Stips: 1 Byte Unsigned Fixed Width Integer
  index, no_underlying_stips = dissect.no_underlying_stips(buffer, index, packet, parent)

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

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = dissect.position_effect(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String
  index, root_party_executing_firm = dissect.root_party_executing_firm(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String
  index, root_party_executing_trader = dissect.root_party_executing_trader(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, party_id_take_up_trading_firm = dissect.party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Party Id Position Account: 32 Byte Ascii String
  index, party_id_position_account = dissect.party_id_position_account(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String
  index, party_id_order_origination_firm = dissect.party_id_order_origination_firm(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String
  index, party_id_beneficiary = dissect.party_id_beneficiary(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String
  index, party_id_location_id = dissect.party_id_location_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

  -- Underlying Security Id: 12 Byte Ascii String
  index, underlying_security_id = dissect.underlying_security_id(buffer, index, packet, parent)

  -- Underlying Security Desc: 30 Byte Ascii String
  index, underlying_security_desc = dissect.underlying_security_desc(buffer, index, packet, parent)

  -- Underlying Currency: 3 Byte Ascii String
  index, underlying_currency = dissect.underlying_currency(buffer, index, packet, parent)

  -- Underlying Issuer: 30 Byte Ascii String
  index, underlying_issuer = dissect.underlying_issuer(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Trd Instrmnt Leg Grp: Struct of 2 fields
  for i = 1, no_legs do
    index = dissect.trd_instrmnt_leg_grp(buffer, index, packet, parent)
  end

  -- Instrument Event Grp: Struct of 3 fields
  for i = 1, no_events do
    index = dissect.instrument_event_grp(buffer, index, packet, parent)
  end

  -- Instrument Attribute Grp: Struct of 3 fields
  for i = 1, no_instr_attrib do
    index = dissect.instrument_attribute_grp(buffer, index, packet, parent)
  end

  -- Underlying Stip Grp: Struct of 3 fields
  for i = 1, no_underlying_stips do
    index = dissect.underlying_stip_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Tes Approve Broadcast
dissect.tes_approve_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.tes_approve_broadcast then
    local length = size_of.tes_approve_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tes_approve_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.tes_approve_broadcast, range, display)
  end

  return dissect.tes_approve_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Subscribe Response
size_of.subscribe_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.subscribe_response, range, display)
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

  return "Ref Appl Id: Unknown("..value..")"
end

-- Dissect: Ref Appl Id
dissect.ref_appl_id = function(buffer, offset, packet, parent)
  local length = size_of.ref_appl_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ref_appl_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.ref_appl_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.subscription_scope, range, value, display)

  return offset + length, value
end

-- Calculate size of: Subscribe Request
size_of.subscribe_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer
  index, subscription_scope = dissect.subscription_scope(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.subscribe_request, range, display)
  end

  return dissect.subscribe_request_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.selective_request_for_quote_service_status, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.selective_request_for_quote_service_trade_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Nrbc Header
size_of.nrbc_header = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.appl_sub_id

  index = index + size_of.appl_id

  index = index + size_of.last_fragment

  index = index + size_of.pad_2

  return index
end

-- Display: Nrbc Header
display.nrbc_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Nrbc Header
dissect.nrbc_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, appl_sub_id = dissect.appl_sub_id(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Nrbc Header
dissect.nrbc_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.nrbc_header then
    local length = size_of.nrbc_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.nrbc_header(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.nrbc_header, range, display)
  end

  return dissect.nrbc_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Service Availability Market Broadcast
size_of.service_availability_market_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nrbc_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nrbc Header: Struct of 5 fields
  index, nrbc_header = dissect.nrbc_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.service_availability_market_broadcast, range, display)
  end

  return dissect.service_availability_market_broadcast_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.t_7_entry_service_rtm_status, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.t_7_entry_service_status, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_seq_status, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_manager_status, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.matching_engine_status, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.t_7_entry_service_rtm_trade_date, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.t_7_entry_service_trade_date, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_seq_trade_date, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_manager_trade_date, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.matching_engine_trade_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Service Availability Broadcast
size_of.service_availability_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nrbc_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nrbc Header: Struct of 5 fields
  index, nrbc_header = dissect.nrbc_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.service_availability_broadcast, range, display)
  end

  return dissect.service_availability_broadcast_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.target_party_executing_trader, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.target_party_executing_firm, range, value, display)

  return offset + length, value
end

-- Size: Quote Instruction
size_of.quote_instruction = 1

-- Display: Quote Instruction
display.quote_instruction = function(value)
  if value == 0 then
    return "Quote Instruction: Do Not Quote (0)"
  end
  if value == 1 then
    return "Quote Instruction: Quote (1)"
  end

  return "Quote Instruction: Unknown("..value..")"
end

-- Dissect: Quote Instruction
dissect.quote_instruction = function(buffer, offset, packet, parent)
  local length = size_of.quote_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_instruction(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_instruction, range, value, display)

  return offset + length, value
end

-- Size: Last Qty Disclosure Instruction
size_of.last_qty_disclosure_instruction = 1

-- Display: Last Qty Disclosure Instruction
display.last_qty_disclosure_instruction = function(value)
  if value == 0 then
    return "Last Qty Disclosure Instruction: No (0)"
  end
  if value == 1 then
    return "Last Qty Disclosure Instruction: Yes (1)"
  end

  return "Last Qty Disclosure Instruction: Unknown("..value..")"
end

-- Dissect: Last Qty Disclosure Instruction
dissect.last_qty_disclosure_instruction = function(buffer, offset, packet, parent)
  local length = size_of.last_qty_disclosure_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_qty_disclosure_instruction(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.last_qty_disclosure_instruction, range, value, display)

  return offset + length, value
end

-- Size: Last Px Disclosure Instruction
size_of.last_px_disclosure_instruction = 1

-- Display: Last Px Disclosure Instruction
display.last_px_disclosure_instruction = function(value)
  if value == 0 then
    return "Last Px Disclosure Instruction: No (0)"
  end
  if value == 1 then
    return "Last Px Disclosure Instruction: Yes (1)"
  end

  return "Last Px Disclosure Instruction: Unknown("..value..")"
end

-- Dissect: Last Px Disclosure Instruction
dissect.last_px_disclosure_instruction = function(buffer, offset, packet, parent)
  local length = size_of.last_px_disclosure_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_px_disclosure_instruction(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.last_px_disclosure_instruction, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty Disclosure Instruction
size_of.leaves_qty_disclosure_instruction = 1

-- Display: Leaves Qty Disclosure Instruction
display.leaves_qty_disclosure_instruction = function(value)
  if value == 0 then
    return "Leaves Qty Disclosure Instruction: No (0)"
  end
  if value == 1 then
    return "Leaves Qty Disclosure Instruction: Yes (1)"
  end

  return "Leaves Qty Disclosure Instruction: Unknown("..value..")"
end

-- Dissect: Leaves Qty Disclosure Instruction
dissect.leaves_qty_disclosure_instruction = function(buffer, offset, packet, parent)
  local length = size_of.leaves_qty_disclosure_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leaves_qty_disclosure_instruction(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leaves_qty_disclosure_instruction, range, value, display)

  return offset + length, value
end

-- Size: Price Disclosure Instruction
size_of.price_disclosure_instruction = 1

-- Display: Price Disclosure Instruction
display.price_disclosure_instruction = function(value)
  if value == 0 then
    return "Price Disclosure Instruction: No (0)"
  end
  if value == 1 then
    return "Price Disclosure Instruction: Yes (1)"
  end

  return "Price Disclosure Instruction: Unknown("..value..")"
end

-- Dissect: Price Disclosure Instruction
dissect.price_disclosure_instruction = function(buffer, offset, packet, parent)
  local length = size_of.price_disclosure_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_disclosure_instruction(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.price_disclosure_instruction, range, value, display)

  return offset + length, value
end

-- Size: Side Disclosure Instruction
size_of.side_disclosure_instruction = 1

-- Display: Side Disclosure Instruction
display.side_disclosure_instruction = function(value)
  if value == 0 then
    return "Side Disclosure Instruction: No (0)"
  end
  if value == 1 then
    return "Side Disclosure Instruction: Yes (1)"
  end

  return "Side Disclosure Instruction: Unknown("..value..")"
end

-- Dissect: Side Disclosure Instruction
dissect.side_disclosure_instruction = function(buffer, offset, packet, parent)
  local length = size_of.side_disclosure_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side_disclosure_instruction(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.side_disclosure_instruction, range, value, display)

  return offset + length, value
end

-- Calculate size of: Target Parties
size_of.target_parties = function(buffer, offset)
  local index = 0

  index = index + size_of.side_disclosure_instruction

  index = index + size_of.price_disclosure_instruction

  index = index + size_of.leaves_qty_disclosure_instruction

  index = index + size_of.last_px_disclosure_instruction

  index = index + size_of.last_qty_disclosure_instruction

  index = index + size_of.quote_instruction

  index = index + size_of.target_party_executing_firm

  index = index + size_of.target_party_executing_trader

  index = index + size_of.pad_7

  return index
end

-- Display: Target Parties
display.target_parties = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Target Parties
dissect.target_parties_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side_disclosure_instruction = dissect.side_disclosure_instruction(buffer, index, packet, parent)

  -- Price Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_disclosure_instruction = dissect.price_disclosure_instruction(buffer, index, packet, parent)

  -- Leaves Qty Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leaves_qty_disclosure_instruction = dissect.leaves_qty_disclosure_instruction(buffer, index, packet, parent)

  -- Last Px Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_px_disclosure_instruction = dissect.last_px_disclosure_instruction(buffer, index, packet, parent)

  -- Last Qty Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_qty_disclosure_instruction = dissect.last_qty_disclosure_instruction(buffer, index, packet, parent)

  -- Quote Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_instruction = dissect.quote_instruction(buffer, index, packet, parent)

  -- Target Party Executing Firm: 5 Byte Ascii String
  index, target_party_executing_firm = dissect.target_party_executing_firm(buffer, index, packet, parent)

  -- Target Party Executing Trader: 6 Byte Ascii String
  index, target_party_executing_trader = dissect.target_party_executing_trader(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Target Parties
dissect.target_parties = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.target_parties then
    local length = size_of.target_parties(buffer, offset)
    local range = buffer(offset, length)
    local display = display.target_parties(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.target_parties, range, display)
  end

  return dissect.target_parties_fields(buffer, offset, packet, parent)
end

-- Size: Quote Ref Price Source
size_of.quote_ref_price_source = 1

-- Display: Quote Ref Price Source
display.quote_ref_price_source = function(value)
  if value == 1 then
    return "Quote Ref Price Source: Underlying (1)"
  end
  if value == 2 then
    return "Quote Ref Price Source: Custom Index (2)"
  end

  return "Quote Ref Price Source: Unknown("..value..")"
end

-- Dissect: Quote Ref Price Source
dissect.quote_ref_price_source = function(buffer, offset, packet, parent)
  local length = size_of.quote_ref_price_source
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_ref_price_source(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_ref_price_source, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_cancel_type, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.number_of_resp_disclosure_instruction, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_target_party_i_ds, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
size_of.order_qty = 4

-- Display: Order Qty
display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
dissect.order_qty = function(buffer, offset, packet, parent)
  local length = size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.order_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Offer Px
size_of.offer_px = 8

-- Display: Offer Px
display.offer_px = function(value)
  local factor = 100000000
  return "Offer Px: "..value:tonumber()/factor
end

-- Dissect: Offer Px
dissect.offer_px = function(buffer, offset, packet, parent)
  local length = size_of.offer_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.offer_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Size: Bid Px
size_of.bid_px = 8

-- Display: Bid Px
display.bid_px = function(value)
  local factor = 100000000
  return "Bid Px: "..value:tonumber()/factor
end

-- Dissect: Bid Px
dissect.bid_px = function(buffer, offset, packet, parent)
  local length = size_of.bid_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.bid_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Size: Underlying Delta Percentage
size_of.underlying_delta_percentage = 8

-- Display: Underlying Delta Percentage
display.underlying_delta_percentage = function(value)
  local factor = 10000
  return "Underlying Delta Percentage: "..value:tonumber()/factor
end

-- Dissect: Underlying Delta Percentage
dissect.underlying_delta_percentage = function(buffer, offset, packet, parent)
  local length = size_of.underlying_delta_percentage
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.underlying_delta_percentage(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_delta_percentage, range, value, display)

  return offset + length, value
end

-- Size: Quote Ref Price
size_of.quote_ref_price = 8

-- Display: Quote Ref Price
display.quote_ref_price = function(value)
  local factor = 100000000
  return "Quote Ref Price: "..value:tonumber()/factor
end

-- Dissect: Quote Ref Price
dissect.quote_ref_price = function(buffer, offset, packet, parent)
  local length = size_of.quote_ref_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quote_ref_price(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_ref_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Update Negotiation Request
size_of.srqs_update_negotiation_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.quote_ref_price

  index = index + size_of.underlying_delta_percentage

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.market_segment_id

  index = index + size_of.negotiation_id

  index = index + size_of.order_qty

  index = index + size_of.no_target_party_i_ds

  index = index + size_of.number_of_resp_disclosure_instruction

  index = index + size_of.side

  index = index + size_of.quote_cancel_type

  index = index + size_of.quote_ref_price_source

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.pad_4

  -- Calculate field size from count
  local target_parties_count = buffer(offset + index - 20, 1):le_uint()
  index = index + target_parties_count * 24

  return index
end

-- Display: Srqs Update Negotiation Request
display.srqs_update_negotiation_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Update Negotiation Request
dissect.srqs_update_negotiation_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Quote Ref Price: 8 Byte Unsigned Fixed Width Integer
  index, quote_ref_price = dissect.quote_ref_price(buffer, index, packet, parent)

  -- Underlying Delta Percentage: 8 Byte Unsigned Fixed Width Integer
  index, underlying_delta_percentage = dissect.underlying_delta_percentage(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- No Target Party I Ds: 1 Byte Unsigned Fixed Width Integer
  index, no_target_party_i_ds = dissect.no_target_party_i_ds(buffer, index, packet, parent)

  -- Number Of Resp Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, number_of_resp_disclosure_instruction = dissect.number_of_resp_disclosure_instruction(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quote Cancel Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, quote_cancel_type = dissect.quote_cancel_type(buffer, index, packet, parent)

  -- Quote Ref Price Source: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_ref_price_source = dissect.quote_ref_price_source(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Target Parties: Struct of 9 fields
  for i = 1, no_target_party_i_ds do
    index = dissect.target_parties(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Srqs Update Negotiation Request
dissect.srqs_update_negotiation_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.srqs_update_negotiation_request then
    local length = size_of.srqs_update_negotiation_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_update_negotiation_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_update_negotiation_request, range, display)
  end

  return dissect.srqs_update_negotiation_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Srqs Update Deal Status Request
size_of.srqs_update_deal_status_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.market_segment_id

  index = index + size_of.negotiation_id

  index = index + size_of.trade_id

  index = index + size_of.trade_report_type

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  return index
end

-- Display: Srqs Update Deal Status Request
display.srqs_update_deal_status_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Update Deal Status Request
dissect.srqs_update_deal_status_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  return index
end

-- Dissect: Srqs Update Deal Status Request
dissect.srqs_update_deal_status_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_update_deal_status_request then
    local length = size_of.srqs_update_deal_status_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_update_deal_status_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_update_deal_status_request, range, display)
  end

  return dissect.srqs_update_deal_status_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Srqs Status Broadcast
size_of.srqs_status_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.trade_date

  index = index + size_of.trad_ses_event

  index = index + size_of.pad_3

  return index
end

-- Display: Srqs Status Broadcast
display.srqs_status_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Status Broadcast
dissect.srqs_status_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_event = dissect.trad_ses_event(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Srqs Status Broadcast
dissect.srqs_status_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_status_broadcast then
    local length = size_of.srqs_status_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_status_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_status_broadcast, range, display)
  end

  return dissect.srqs_status_broadcast_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_req_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Quote Response
size_of.srqs_quote_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

  index = index + size_of.quote_id

  index = index + size_of.negotiation_id

  index = index + size_of.quote_req_id

  return index
end

-- Display: Srqs Quote Response
display.srqs_quote_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Quote Response
dissect.srqs_quote_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Quote Req Id: 20 Byte Ascii String
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Srqs Quote Response
dissect.srqs_quote_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_quote_response then
    local length = size_of.srqs_quote_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_quote_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_quote_response, range, display)
  end

  return dissect.srqs_quote_response_fields(buffer, offset, packet, parent)
end

-- Size: Offer Size
size_of.offer_size = 4

-- Display: Offer Size
display.offer_size = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
dissect.offer_size = function(buffer, offset, packet, parent)
  local length = size_of.offer_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 4

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.bid_size, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.secondary_quote_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Quote Notification
size_of.srqs_quote_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.quote_id

  index = index + size_of.secondary_quote_id

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.underlying_px

  index = index + size_of.underlying_delta_percentage

  index = index + size_of.negotiation_id

  index = index + size_of.bid_size

  index = index + size_of.offer_size

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.quote_req_id

  index = index + size_of.free_text_1

  index = index + size_of.pad_3

  return index
end

-- Display: Srqs Quote Notification
display.srqs_quote_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Quote Notification
dissect.srqs_quote_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Secondary Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_quote_id = dissect.secondary_quote_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Unsigned Fixed Width Integer
  index, underlying_px = dissect.underlying_px(buffer, index, packet, parent)

  -- Underlying Delta Percentage: 8 Byte Unsigned Fixed Width Integer
  index, underlying_delta_percentage = dissect.underlying_delta_percentage(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Signed Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Signed Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

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

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Srqs Quote Notification
dissect.srqs_quote_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_quote_notification then
    local length = size_of.srqs_quote_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_quote_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_quote_notification, range, display)
  end

  return dissect.srqs_quote_notification_fields(buffer, offset, packet, parent)
end

-- Size: Leg Side
size_of.leg_side = 1

-- Display: Leg Side
display.leg_side = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local length = size_of.leg_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Type
size_of.leg_security_type = 1

-- Display: Leg Security Type
display.leg_security_type = function(value)
  if value == 1 then
    return "Leg Security Type: Multileg Instrument (1)"
  end
  if value == 2 then
    return "Leg Security Type: Underlying Leg (2)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
dissect.leg_security_type = function(buffer, offset, packet, parent)
  local length = size_of.leg_security_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol
size_of.leg_symbol = 4

-- Display: Leg Symbol
display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = size_of.leg_symbol
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 4

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quot Req Legs Grp
size_of.quot_req_legs_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_security_id

  index = index + size_of.leg_ratio_qty

  index = index + size_of.leg_symbol

  index = index + size_of.leg_security_type

  index = index + size_of.leg_side

  index = index + size_of.pad_6

  return index
end

-- Display: Quot Req Legs Grp
display.quot_req_legs_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quot Req Legs Grp
dissect.quot_req_legs_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Ratio Qty: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio_qty = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Symbol: 4 Byte Signed Fixed Width Integer
  index, leg_symbol = dissect.leg_symbol(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_security_type = dissect.leg_security_type(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Quot Req Legs Grp
dissect.quot_req_legs_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quot_req_legs_grp then
    local length = size_of.quot_req_legs_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quot_req_legs_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.quot_req_legs_grp, range, display)
  end

  return dissect.quot_req_legs_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.firm_negotiation_id, range, value, display)

  return offset + length, value
end

-- Size: Negotiate Underlying
size_of.negotiate_underlying = 1

-- Display: Negotiate Underlying
display.negotiate_underlying = function(value)
  if value == 0 then
    return "Negotiate Underlying: No (0)"
  end
  if value == 1 then
    return "Negotiate Underlying: Yes (1)"
  end

  return "Negotiate Underlying: Unknown("..value..")"
end

-- Dissect: Negotiate Underlying
dissect.negotiate_underlying = function(buffer, offset, packet, parent)
  local length = size_of.negotiate_underlying
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.negotiate_underlying(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.negotiate_underlying, range, value, display)

  return offset + length, value
end

-- Size: Trade Underlying
size_of.trade_underlying = 1

-- Display: Trade Underlying
display.trade_underlying = function(value)
  if value == 1 then
    return "Trade Underlying: No (1)"
  end
  if value == 2 then
    return "Trade Underlying: Yes (2)"
  end

  return "Trade Underlying: Unknown("..value..")"
end

-- Dissect: Trade Underlying
dissect.trade_underlying = function(buffer, offset, packet, parent)
  local length = size_of.trade_underlying
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_underlying(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trade_underlying, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_status, range, value, display)

  return offset + length, value
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
  if value == 100 then
    return "Quote Type: Tradeable Boc (100)"
  end

  return "Quote Type: Unknown("..value..")"
end

-- Dissect: Quote Type
dissect.quote_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_type, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.number_of_respondents, range, value, display)

  return offset + length, value
end

-- Size: Security Sub Type
size_of.security_sub_type = 4

-- Display: Security Sub Type
display.security_sub_type = function(value)
  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local length = size_of.security_sub_type
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Open Negotiation Requester Notification
size_of.srqs_open_negotiation_requester_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.security_id

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.last_px

  index = index + size_of.quote_ref_price

  index = index + size_of.underlying_delta_percentage

  index = index + size_of.negotiation_id

  index = index + size_of.market_segment_id

  index = index + size_of.order_qty

  index = index + size_of.last_qty

  index = index + size_of.security_sub_type

  index = index + size_of.number_of_respondents

  index = index + size_of.quote_type

  index = index + size_of.quote_status

  index = index + size_of.no_legs

  index = index + size_of.no_target_party_i_ds

  index = index + size_of.side

  index = index + size_of.quote_ref_price_source

  index = index + size_of.trade_underlying

  index = index + size_of.negotiate_underlying

  index = index + size_of.product_complex

  index = index + size_of.number_of_resp_disclosure_instruction

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.firm_negotiation_id

  index = index + size_of.pad_1

  -- Calculate field size from count
  local quot_req_legs_grp_count = buffer(offset + index - 46, 1):le_uint()
  index = index + quot_req_legs_grp_count * 24

  -- Calculate field size from count
  local target_parties_count = buffer(offset + index - 69, 1):le_uint()
  index = index + target_parties_count * 24

  return index
end

-- Display: Srqs Open Negotiation Requester Notification
display.srqs_open_negotiation_requester_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Open Negotiation Requester Notification
dissect.srqs_open_negotiation_requester_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Quote Ref Price: 8 Byte Unsigned Fixed Width Integer
  index, quote_ref_price = dissect.quote_ref_price(buffer, index, packet, parent)

  -- Underlying Delta Percentage: 8 Byte Unsigned Fixed Width Integer
  index, underlying_delta_percentage = dissect.underlying_delta_percentage(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer
  index, security_sub_type = dissect.security_sub_type(buffer, index, packet, parent)

  -- Number Of Respondents: 4 Byte Unsigned Fixed Width Integer
  index, number_of_respondents = dissect.number_of_respondents(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_type = dissect.quote_type(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_status = dissect.quote_status(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- No Target Party I Ds: 1 Byte Unsigned Fixed Width Integer
  index, no_target_party_i_ds = dissect.no_target_party_i_ds(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quote Ref Price Source: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_ref_price_source = dissect.quote_ref_price_source(buffer, index, packet, parent)

  -- Trade Underlying: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_underlying = dissect.trade_underlying(buffer, index, packet, parent)

  -- Negotiate Underlying: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, negotiate_underlying = dissect.negotiate_underlying(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Number Of Resp Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, number_of_resp_disclosure_instruction = dissect.number_of_resp_disclosure_instruction(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Firm Negotiation Id: 20 Byte Ascii String
  index, firm_negotiation_id = dissect.firm_negotiation_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Quot Req Legs Grp: Struct of 6 fields
  for i = 1, no_legs do
    index = dissect.quot_req_legs_grp(buffer, index, packet, parent)
  end

  -- Target Parties: Struct of 9 fields
  for i = 1, no_target_party_i_ds do
    index = dissect.target_parties(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Srqs Open Negotiation Requester Notification
dissect.srqs_open_negotiation_requester_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.srqs_open_negotiation_requester_notification then
    local length = size_of.srqs_open_negotiation_requester_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_open_negotiation_requester_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_open_negotiation_requester_notification, range, display)
  end

  return dissect.srqs_open_negotiation_requester_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Srqs Open Negotiation Request
size_of.srqs_open_negotiation_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.quote_ref_price

  index = index + size_of.underlying_delta_percentage

  index = index + size_of.market_segment_id

  index = index + size_of.order_qty

  index = index + size_of.security_sub_type

  index = index + size_of.quote_type

  index = index + size_of.no_legs

  index = index + size_of.no_target_party_i_ds

  index = index + size_of.number_of_resp_disclosure_instruction

  index = index + size_of.side

  index = index + size_of.quote_ref_price_source

  index = index + size_of.trade_underlying

  index = index + size_of.negotiate_underlying

  index = index + size_of.product_complex

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.quote_req_id

  index = index + size_of.pad_4

  -- Calculate field size from count
  local quot_req_legs_grp_count = buffer(offset + index - 43, 1):le_uint()
  index = index + quot_req_legs_grp_count * 24

  -- Calculate field size from count
  local target_parties_count = buffer(offset + index - 66, 1):le_uint()
  index = index + target_parties_count * 24

  return index
end

-- Display: Srqs Open Negotiation Request
display.srqs_open_negotiation_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Open Negotiation Request
dissect.srqs_open_negotiation_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Quote Ref Price: 8 Byte Unsigned Fixed Width Integer
  index, quote_ref_price = dissect.quote_ref_price(buffer, index, packet, parent)

  -- Underlying Delta Percentage: 8 Byte Unsigned Fixed Width Integer
  index, underlying_delta_percentage = dissect.underlying_delta_percentage(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer
  index, security_sub_type = dissect.security_sub_type(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_type = dissect.quote_type(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- No Target Party I Ds: 1 Byte Unsigned Fixed Width Integer
  index, no_target_party_i_ds = dissect.no_target_party_i_ds(buffer, index, packet, parent)

  -- Number Of Resp Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, number_of_resp_disclosure_instruction = dissect.number_of_resp_disclosure_instruction(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quote Ref Price Source: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_ref_price_source = dissect.quote_ref_price_source(buffer, index, packet, parent)

  -- Trade Underlying: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_underlying = dissect.trade_underlying(buffer, index, packet, parent)

  -- Negotiate Underlying: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, negotiate_underlying = dissect.negotiate_underlying(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Quote Req Id: 20 Byte Ascii String
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  -- Quot Req Legs Grp: Struct of 6 fields
  for i = 1, no_legs do
    index = dissect.quot_req_legs_grp(buffer, index, packet, parent)
  end

  -- Target Parties: Struct of 9 fields
  for i = 1, no_target_party_i_ds do
    index = dissect.target_parties(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Srqs Open Negotiation Request
dissect.srqs_open_negotiation_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.srqs_open_negotiation_request then
    local length = size_of.srqs_open_negotiation_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_open_negotiation_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_open_negotiation_request, range, display)
  end

  return dissect.srqs_open_negotiation_request_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.negotiation_start_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Open Negotiation Notification
size_of.srqs_open_negotiation_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.negotiation_start_time

  index = index + size_of.security_id

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.last_px

  index = index + size_of.quote_ref_price

  index = index + size_of.underlying_delta_percentage

  index = index + size_of.negotiation_id

  index = index + size_of.market_segment_id

  index = index + size_of.leaves_qty

  index = index + size_of.last_qty

  index = index + size_of.security_sub_type

  index = index + size_of.number_of_respondents

  index = index + size_of.quote_type

  index = index + size_of.quote_status

  index = index + size_of.no_legs

  index = index + size_of.side

  index = index + size_of.quote_ref_price_source

  index = index + size_of.trade_underlying

  index = index + size_of.product_complex

  index = index + size_of.negotiate_underlying

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.target_party_executing_firm

  index = index + size_of.target_party_executing_trader

  index = index + size_of.firm_negotiation_id

  -- Calculate field size from count
  local quot_req_legs_grp_count = buffer(offset + index - 54, 1):le_uint()
  index = index + quot_req_legs_grp_count * 24

  return index
end

-- Display: Srqs Open Negotiation Notification
display.srqs_open_negotiation_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Open Negotiation Notification
dissect.srqs_open_negotiation_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

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

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Quote Ref Price: 8 Byte Unsigned Fixed Width Integer
  index, quote_ref_price = dissect.quote_ref_price(buffer, index, packet, parent)

  -- Underlying Delta Percentage: 8 Byte Unsigned Fixed Width Integer
  index, underlying_delta_percentage = dissect.underlying_delta_percentage(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer
  index, security_sub_type = dissect.security_sub_type(buffer, index, packet, parent)

  -- Number Of Respondents: 4 Byte Unsigned Fixed Width Integer
  index, number_of_respondents = dissect.number_of_respondents(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_type = dissect.quote_type(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_status = dissect.quote_status(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quote Ref Price Source: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_ref_price_source = dissect.quote_ref_price_source(buffer, index, packet, parent)

  -- Trade Underlying: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_underlying = dissect.trade_underlying(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Negotiate Underlying: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, negotiate_underlying = dissect.negotiate_underlying(buffer, index, packet, parent)

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

  -- Quot Req Legs Grp: Struct of 6 fields
  for i = 1, no_legs do
    index = dissect.quot_req_legs_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Srqs Open Negotiation Notification
dissect.srqs_open_negotiation_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.srqs_open_negotiation_notification then
    local length = size_of.srqs_open_negotiation_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_open_negotiation_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_open_negotiation_notification, range, display)
  end

  return dissect.srqs_open_negotiation_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Srqs Negotiation Status Notification
size_of.srqs_negotiation_status_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.negotiation_id

  index = index + size_of.quote_status

  index = index + size_of.firm_negotiation_id

  index = index + size_of.pad_7

  return index
end

-- Display: Srqs Negotiation Status Notification
display.srqs_negotiation_status_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Negotiation Status Notification
dissect.srqs_negotiation_status_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

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

-- Dissect: Srqs Negotiation Status Notification
dissect.srqs_negotiation_status_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_negotiation_status_notification then
    local length = size_of.srqs_negotiation_status_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_negotiation_status_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_negotiation_status_notification, range, display)
  end

  return dissect.srqs_negotiation_status_notification_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trd_reg_ts_execution_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Negotiation Requester Notification
size_of.srqs_negotiation_requester_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.trd_reg_ts_execution_time

  index = index + size_of.quote_ref_price

  index = index + size_of.underlying_delta_percentage

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.last_px

  index = index + size_of.negotiation_id

  index = index + size_of.order_qty

  index = index + size_of.leaves_qty

  index = index + size_of.last_qty

  index = index + size_of.number_of_respondents

  index = index + size_of.quote_type

  index = index + size_of.quote_status

  index = index + size_of.no_target_party_i_ds

  index = index + size_of.number_of_resp_disclosure_instruction

  index = index + size_of.side

  index = index + size_of.quote_ref_price_source

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.firm_negotiation_id

  index = index + size_of.pad_1

  -- Calculate field size from count
  local target_parties_count = buffer(offset + index - 42, 1):le_uint()
  index = index + target_parties_count * 24

  return index
end

-- Display: Srqs Negotiation Requester Notification
display.srqs_negotiation_requester_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Negotiation Requester Notification
dissect.srqs_negotiation_requester_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_execution_time = dissect.trd_reg_ts_execution_time(buffer, index, packet, parent)

  -- Quote Ref Price: 8 Byte Unsigned Fixed Width Integer
  index, quote_ref_price = dissect.quote_ref_price(buffer, index, packet, parent)

  -- Underlying Delta Percentage: 8 Byte Unsigned Fixed Width Integer
  index, underlying_delta_percentage = dissect.underlying_delta_percentage(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Number Of Respondents: 4 Byte Unsigned Fixed Width Integer
  index, number_of_respondents = dissect.number_of_respondents(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_type = dissect.quote_type(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_status = dissect.quote_status(buffer, index, packet, parent)

  -- No Target Party I Ds: 1 Byte Unsigned Fixed Width Integer
  index, no_target_party_i_ds = dissect.no_target_party_i_ds(buffer, index, packet, parent)

  -- Number Of Resp Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, number_of_resp_disclosure_instruction = dissect.number_of_resp_disclosure_instruction(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quote Ref Price Source: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_ref_price_source = dissect.quote_ref_price_source(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Party Entering Trader: 6 Byte Ascii String
  index, party_entering_trader = dissect.party_entering_trader(buffer, index, packet, parent)

  -- Firm Negotiation Id: 20 Byte Ascii String
  index, firm_negotiation_id = dissect.firm_negotiation_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Target Parties: Struct of 9 fields
  for i = 1, no_target_party_i_ds do
    index = dissect.target_parties(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Srqs Negotiation Requester Notification
dissect.srqs_negotiation_requester_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.srqs_negotiation_requester_notification then
    local length = size_of.srqs_negotiation_requester_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_negotiation_requester_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_negotiation_requester_notification, range, display)
  end

  return dissect.srqs_negotiation_requester_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Srqs Negotiation Notification
size_of.srqs_negotiation_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.quote_ref_price

  index = index + size_of.underlying_delta_percentage

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.last_px

  index = index + size_of.negotiation_id

  index = index + size_of.leaves_qty

  index = index + size_of.last_qty

  index = index + size_of.number_of_respondents

  index = index + size_of.quote_type

  index = index + size_of.quote_status

  index = index + size_of.quote_instruction

  index = index + size_of.side

  index = index + size_of.quote_ref_price_source

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.party_entering_trader

  index = index + size_of.target_party_executing_firm

  index = index + size_of.target_party_executing_trader

  index = index + size_of.firm_negotiation_id

  index = index + size_of.pad_3

  return index
end

-- Display: Srqs Negotiation Notification
display.srqs_negotiation_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Negotiation Notification
dissect.srqs_negotiation_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Quote Ref Price: 8 Byte Unsigned Fixed Width Integer
  index, quote_ref_price = dissect.quote_ref_price(buffer, index, packet, parent)

  -- Underlying Delta Percentage: 8 Byte Unsigned Fixed Width Integer
  index, underlying_delta_percentage = dissect.underlying_delta_percentage(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Number Of Respondents: 4 Byte Unsigned Fixed Width Integer
  index, number_of_respondents = dissect.number_of_respondents(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_type = dissect.quote_type(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_status = dissect.quote_status(buffer, index, packet, parent)

  -- Quote Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_instruction = dissect.quote_instruction(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quote Ref Price Source: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_ref_price_source = dissect.quote_ref_price_source(buffer, index, packet, parent)

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

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Srqs Negotiation Notification
dissect.srqs_negotiation_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_negotiation_notification then
    local length = size_of.srqs_negotiation_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_negotiation_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_negotiation_notification, range, display)
  end

  return dissect.srqs_negotiation_notification_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.firm_trade_id, range, value, display)

  return offset + length, value
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.value_check_type_quantity, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.valid_until_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Hit Quote Request
size_of.srqs_hit_quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.quote_id

  index = index + size_of.valid_until_time

  index = index + size_of.underlying_qty

  index = index + size_of.market_segment_id

  index = index + size_of.negotiation_id

  index = index + size_of.order_qty

  index = index + size_of.side

  index = index + size_of.value_check_type_quantity

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.firm_trade_id

  index = index + size_of.free_text_1

  index = index + size_of.pad_7

  return index
end

-- Display: Srqs Hit Quote Request
display.srqs_hit_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Hit Quote Request
dissect.srqs_hit_quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Valid Until Time: 8 Byte Unsigned Fixed Width Integer
  index, valid_until_time = dissect.valid_until_time(buffer, index, packet, parent)

  -- Underlying Qty: 8 Byte Signed Fixed Width Integer
  index, underlying_qty = dissect.underlying_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Firm Trade Id: 20 Byte Ascii String
  index, firm_trade_id = dissect.firm_trade_id(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Srqs Hit Quote Request
dissect.srqs_hit_quote_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_hit_quote_request then
    local length = size_of.srqs_hit_quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_hit_quote_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_hit_quote_request, range, display)
  end

  return dissect.srqs_hit_quote_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Srqs Enter Quote Request
size_of.srqs_enter_quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.underlying_px

  index = index + size_of.underlying_delta_percentage

  index = index + size_of.market_segment_id

  index = index + size_of.negotiation_id

  index = index + size_of.bid_size

  index = index + size_of.offer_size

  index = index + size_of.value_check_type_quantity

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.free_text_1

  return index
end

-- Display: Srqs Enter Quote Request
display.srqs_enter_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Enter Quote Request
dissect.srqs_enter_quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Unsigned Fixed Width Integer
  index, underlying_px = dissect.underlying_px(buffer, index, packet, parent)

  -- Underlying Delta Percentage: 8 Byte Unsigned Fixed Width Integer
  index, underlying_delta_percentage = dissect.underlying_delta_percentage(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Signed Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Signed Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Srqs Enter Quote Request
dissect.srqs_enter_quote_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_enter_quote_request then
    local length = size_of.srqs_enter_quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_enter_quote_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_enter_quote_request, range, display)
  end

  return dissect.srqs_enter_quote_request_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.secondary_trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Deal Response
size_of.srqs_deal_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

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

-- Display: Srqs Deal Response
display.srqs_deal_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Deal Response
dissect.srqs_deal_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

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

-- Dissect: Srqs Deal Response
dissect.srqs_deal_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_deal_response then
    local length = size_of.srqs_deal_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_deal_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_deal_response, range, display)
  end

  return dissect.srqs_deal_response_fields(buffer, offset, packet, parent)
end

-- Size: Target Party Entering Trader
size_of.target_party_entering_trader = 6

-- Display: Target Party Entering Trader
display.target_party_entering_trader = function(value)
  return "Target Party Entering Trader: "..value
end

-- Dissect: Target Party Entering Trader
dissect.target_party_entering_trader = function(buffer, offset, packet, parent)
  local length = size_of.target_party_entering_trader
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.target_party_entering_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.target_party_entering_trader, range, value, display)

  return offset + length, value
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.root_party_entering_trader, range, value, display)

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

  return "Trd Rpt Status: Unknown("..value..")"
end

-- Dissect: Trd Rpt Status
dissect.trd_rpt_status = function(buffer, offset, packet, parent)
  local length = size_of.trd_rpt_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trd_rpt_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trd_rpt_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Deal Notification
size_of.srqs_deal_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.negotiation_id

  index = index + size_of.trade_id

  index = index + size_of.trd_rpt_status

  index = index + size_of.message_event_source

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.root_party_entering_trader

  index = index + size_of.target_party_executing_firm

  index = index + size_of.target_party_executing_trader

  index = index + size_of.target_party_entering_trader

  index = index + size_of.firm_trade_id

  index = index + size_of.firm_negotiation_id

  index = index + size_of.pad_4

  return index
end

-- Display: Srqs Deal Notification
display.srqs_deal_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Deal Notification
dissect.srqs_deal_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Trd Rpt Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trd_rpt_status = dissect.trd_rpt_status(buffer, index, packet, parent)

  -- Message Event Source: 1 Byte Ascii String Enum with 4 values
  index, message_event_source = dissect.message_event_source(buffer, index, packet, parent)

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

  -- Target Party Entering Trader: 6 Byte Ascii String
  index, target_party_entering_trader = dissect.target_party_entering_trader(buffer, index, packet, parent)

  -- Firm Trade Id: 20 Byte Ascii String
  index, firm_trade_id = dissect.firm_trade_id(buffer, index, packet, parent)

  -- Firm Negotiation Id: 20 Byte Ascii String
  index, firm_negotiation_id = dissect.firm_negotiation_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Srqs Deal Notification
dissect.srqs_deal_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.srqs_deal_notification then
    local length = size_of.srqs_deal_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_deal_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_deal_notification, range, display)
  end

  return dissect.srqs_deal_notification_fields(buffer, offset, packet, parent)
end

-- Size: Md Sub Book Type
size_of.md_sub_book_type = 1

-- Display: Md Sub Book Type
display.md_sub_book_type = function(value)
  if value == 1 then
    return "Md Sub Book Type: Implied (1)"
  end

  return "Md Sub Book Type: Unknown("..value..")"
end

-- Dissect: Md Sub Book Type
dissect.md_sub_book_type = function(buffer, offset, packet, parent)
  local length = size_of.md_sub_book_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_sub_book_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.md_sub_book_type, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.md_book_type, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Size
size_of.best_offer_size = 4

-- Display: Best Offer Size
display.best_offer_size = function(value)
  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
dissect.best_offer_size = function(buffer, offset, packet, parent)
  local length = size_of.best_offer_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.best_offer_size(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Size
size_of.best_bid_size = 4

-- Display: Best Bid Size
display.best_bid_size = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
dissect.best_bid_size = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.best_bid_size(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Px
size_of.best_offer_px = 8

-- Display: Best Offer Px
display.best_offer_px = function(value)
  local factor = 100000000
  return "Best Offer Px: "..value:tonumber()/factor
end

-- Dissect: Best Offer Px
dissect.best_offer_px = function(buffer, offset, packet, parent)
  local length = size_of.best_offer_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.best_offer_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.best_offer_px, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Px
size_of.best_bid_px = 8

-- Display: Best Bid Px
display.best_bid_px = function(value)
  local factor = 100000000
  return "Best Bid Px: "..value:tonumber()/factor
end

-- Dissect: Best Bid Px
dissect.best_bid_px = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.best_bid_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.best_bid_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Book Item Grp
size_of.order_book_item_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.best_bid_px

  index = index + size_of.best_offer_px

  index = index + size_of.best_bid_size

  index = index + size_of.best_offer_size

  index = index + size_of.md_book_type

  index = index + size_of.md_sub_book_type

  index = index + size_of.pad_6

  return index
end

-- Display: Order Book Item Grp
display.order_book_item_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Item Grp
dissect.order_book_item_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Best Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, best_bid_px = dissect.best_bid_px(buffer, index, packet, parent)

  -- Best Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, best_offer_px = dissect.best_offer_px(buffer, index, packet, parent)

  -- Best Bid Size: 4 Byte Signed Fixed Width Integer
  index, best_bid_size = dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Offer Size: 4 Byte Signed Fixed Width Integer
  index, best_offer_size = dissect.best_offer_size(buffer, index, packet, parent)

  -- Md Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, md_book_type = dissect.md_book_type(buffer, index, packet, parent)

  -- Md Sub Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, md_sub_book_type = dissect.md_sub_book_type(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Item Grp
dissect.order_book_item_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_item_grp then
    local length = size_of.order_book_item_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_book_item_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_book_item_grp, range, display)
  end

  return dissect.order_book_item_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_order_book_items, range, value, display)

  return offset + length, value
end

-- Size: Underlying Effective Delta Percentage
size_of.underlying_effective_delta_percentage = 8

-- Display: Underlying Effective Delta Percentage
display.underlying_effective_delta_percentage = function(value)
  local factor = 10000
  return "Underlying Effective Delta Percentage: "..value:tonumber()/factor
end

-- Dissect: Underlying Effective Delta Percentage
dissect.underlying_effective_delta_percentage = function(buffer, offset, packet, parent)
  local length = size_of.underlying_effective_delta_percentage
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.underlying_effective_delta_percentage(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.underlying_effective_delta_percentage, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Srqs Create Deal Notification
size_of.srqs_create_deal_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.last_px

  index = index + size_of.quote_id

  index = index + size_of.security_id

  index = index + size_of.expire_time

  index = index + size_of.underlying_px

  index = index + size_of.underlying_delta_percentage

  index = index + size_of.underlying_effective_delta_percentage

  index = index + size_of.underlying_qty

  index = index + size_of.negotiation_id

  index = index + size_of.trade_id

  index = index + size_of.last_qty

  index = index + size_of.trd_rpt_status

  index = index + size_of.message_event_source

  index = index + size_of.side

  index = index + size_of.no_order_book_items

  index = index + size_of.root_party_executing_firm

  index = index + size_of.root_party_executing_trader

  index = index + size_of.root_party_entering_trader

  index = index + size_of.target_party_executing_firm

  index = index + size_of.target_party_executing_trader

  index = index + size_of.firm_trade_id

  index = index + size_of.firm_negotiation_id

  index = index + size_of.free_text_1

  -- Calculate field size from count
  local order_book_item_grp_count = buffer(offset + index - 81, 1):le_uint()
  index = index + order_book_item_grp_count * 40

  return index
end

-- Display: Srqs Create Deal Notification
display.srqs_create_deal_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Srqs Create Deal Notification
dissect.srqs_create_deal_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer
  index, expire_time = dissect.expire_time(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Unsigned Fixed Width Integer
  index, underlying_px = dissect.underlying_px(buffer, index, packet, parent)

  -- Underlying Delta Percentage: 8 Byte Unsigned Fixed Width Integer
  index, underlying_delta_percentage = dissect.underlying_delta_percentage(buffer, index, packet, parent)

  -- Underlying Effective Delta Percentage: 8 Byte Unsigned Fixed Width Integer
  index, underlying_effective_delta_percentage = dissect.underlying_effective_delta_percentage(buffer, index, packet, parent)

  -- Underlying Qty: 8 Byte Signed Fixed Width Integer
  index, underlying_qty = dissect.underlying_qty(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Trd Rpt Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trd_rpt_status = dissect.trd_rpt_status(buffer, index, packet, parent)

  -- Message Event Source: 1 Byte Ascii String Enum with 4 values
  index, message_event_source = dissect.message_event_source(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- No Order Book Items: 1 Byte Unsigned Fixed Width Integer
  index, no_order_book_items = dissect.no_order_book_items(buffer, index, packet, parent)

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

  -- Order Book Item Grp: Struct of 8 fields
  for i = 1, no_order_book_items do
    index = dissect.order_book_item_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Srqs Create Deal Notification
dissect.srqs_create_deal_notification = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.srqs_create_deal_notification then
    local length = size_of.srqs_create_deal_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.srqs_create_deal_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.srqs_create_deal_notification, range, display)
  end

  return dissect.srqs_create_deal_notification_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.requesting_party_clearing_firm, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.requesting_party_entering_firm, range, value, display)

  return offset + length, value
end

-- Size: Risk Limit Action
size_of.risk_limit_action = 1

-- Display: Risk Limit Action
display.risk_limit_action = function(value)
  if value == 0 then
    return "Risk Limit Action: Queue Inbound (0)"
  end
  if value == 2 then
    return "Risk Limit Action: Reject (2)"
  end
  if value == 4 then
    return "Risk Limit Action: Warning (4)"
  end

  return "Risk Limit Action: Unknown("..value..")"
end

-- Dissect: Risk Limit Action
dissect.risk_limit_action = function(buffer, offset, packet, parent)
  local length = size_of.risk_limit_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.risk_limit_action(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.risk_limit_action, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.list_update_action, range, value, display)

  return offset + length, value
end

-- Size: Market Id
size_of.market_id = 2

-- Display: Market Id
display.market_id = function(value)
  if value == 1 then
    return "Market Id: Xeur (1)"
  end
  if value == 2 then
    return "Market Id: Xeee (2)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
dissect.market_id = function(buffer, offset, packet, parent)
  local length = size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.market_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Id Executing System
size_of.requesting_party_id_executing_system = 4

-- Display: Requesting Party Id Executing System
display.requesting_party_id_executing_system = function(value)
  if value == 1 then
    return "Requesting Party Id Executing System: Eurex Clearing (1)"
  end
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.requesting_party_id_executing_system, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_detail_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Calculate size of: Risk Notification Broadcast
size_of.risk_notification_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

  index = index + size_of.transact_time

  index = index + size_of.trade_date

  index = index + size_of.party_detail_id_executing_unit

  index = index + size_of.requesting_party_id_executing_system

  index = index + size_of.market_id

  index = index + size_of.list_update_action

  index = index + size_of.risk_limit_action

  index = index + size_of.requesting_party_entering_firm

  index = index + size_of.requesting_party_clearing_firm

  index = index + size_of.pad_6

  return index
end

-- Display: Risk Notification Broadcast
display.risk_notification_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Risk Notification Broadcast
dissect.risk_notification_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Party Detail Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_detail_id_executing_unit = dissect.party_detail_id_executing_unit(buffer, index, packet, parent)

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, requesting_party_id_executing_system = dissect.requesting_party_id_executing_system(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, market_id = dissect.market_id(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String Enum with 2 values
  index, list_update_action = dissect.list_update_action(buffer, index, packet, parent)

  -- Risk Limit Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, risk_limit_action = dissect.risk_limit_action(buffer, index, packet, parent)

  -- Requesting Party Entering Firm: 9 Byte Ascii String
  index, requesting_party_entering_firm = dissect.requesting_party_entering_firm(buffer, index, packet, parent)

  -- Requesting Party Clearing Firm: 9 Byte Ascii String
  index, requesting_party_clearing_firm = dissect.requesting_party_clearing_firm(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Notification Broadcast
dissect.risk_notification_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.risk_notification_broadcast then
    local length = size_of.risk_notification_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.risk_notification_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.risk_notification_broadcast, range, display)
  end

  return dissect.risk_notification_broadcast_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_total_message_count, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.ref_appl_last_seq_num, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_end_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Response
size_of.retransmit_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.retransmit_response, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_beg_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Request
size_of.retransmit_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Appl Beg Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, appl_beg_seq_num = dissect.appl_beg_seq_num(buffer, index, packet, parent)

  -- Appl End Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, appl_end_seq_num = dissect.appl_end_seq_num(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.retransmit_request, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_end_msg_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Me Message Response
size_of.retransmit_me_message_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.retransmit_me_message_response, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_beg_msg_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Me Message Request
size_of.retransmit_me_message_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer
  index, subscription_scope = dissect.subscription_scope(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.retransmit_me_message_request, range, display)
  end

  return dissect.retransmit_me_message_request_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.var_text, range, value, display)

  return offset + size
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.session_status, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.var_text_len, range, value, display)

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
  if value == 10010 then
    return "Session Reject Reason: Create Ci Throttle Exceeded (10010)"
  end
  if value == 10011 then
    return "Session Reject Reason: Transaction Not Allowed In Current State (10011)"
  end

  return "Session Reject Reason: Unknown("..value..")"
end

-- Dissect: Session Reject Reason
dissect.session_reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.session_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_reject_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.session_reject_reason, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.response_in, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trd_reg_ts_time_in, range, value, display)

  return offset + length, value
end

-- Size: Request Out
size_of.request_out = 8

-- Display: Request Out
display.request_out = function(value)
  return "Request Out: "..value
end

-- Dissect: Request Out
dissect.request_out = function(buffer, offset, packet, parent)
  local length = size_of.request_out
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.request_out(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.request_out, range, value, display)

  return offset + length, value
end

-- Calculate size of: Nr Response Header Me
size_of.nr_response_header_me = function(buffer, offset)
  local index = 0

  index = index + size_of.request_time

  index = index + size_of.request_out

  index = index + size_of.trd_reg_ts_time_in

  index = index + size_of.trd_reg_ts_time_out

  index = index + size_of.response_in

  index = index + size_of.sending_time

  index = index + size_of.msg_seq_num

  index = index + size_of.last_fragment

  index = index + size_of.pad_3

  return index
end

-- Display: Nr Response Header Me
display.nr_response_header_me = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Nr Response Header Me
dissect.nr_response_header_me_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = dissect.request_time(buffer, index, packet, parent)

  -- Request Out: 8 Byte Unsigned Fixed Width Integer
  index, request_out = dissect.request_out(buffer, index, packet, parent)

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

-- Dissect: Nr Response Header Me
dissect.nr_response_header_me = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.nr_response_header_me then
    local length = size_of.nr_response_header_me(buffer, offset)
    local range = buffer(offset, length)
    local display = display.nr_response_header_me(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.nr_response_header_me, range, display)
  end

  return dissect.nr_response_header_me_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Reject
size_of.reject = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

  -- Session Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 35 values
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.reject, range, display)
  end

  return dissect.reject_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rfq Response
size_of.rfq_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.rfq_response, range, display)
  end

  return dissect.rfq_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Rfq Request
size_of.rfq_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.market_segment_id

  index = index + size_of.order_qty

  index = index + size_of.side

  index = index + size_of.compliance_text

  index = index + size_of.pad_3

  return index
end

-- Display: Rfq Request
display.rfq_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Request
dissect.rfq_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Request
dissect.rfq_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_request then
    local length = size_of.rfq_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rfq_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.rfq_request, range, display)
  end

  return dissect.rfq_request_fields(buffer, offset, packet, parent)
end

-- Size: No Quote Events Index
size_of.no_quote_events_index = 1

-- Display: No Quote Events Index
display.no_quote_events_index = function(value)
  return "No Quote Events Index: "..value
end

-- Dissect: No Quote Events Index
dissect.no_quote_events_index = function(buffer, offset, packet, parent)
  local length = size_of.no_quote_events_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_quote_events_index(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_quote_events_index, range, value, display)

  return offset + length, value
end

-- Size: Leg Exec Id
size_of.leg_exec_id = 4

-- Display: Leg Exec Id
display.leg_exec_id = function(value)
  return "Leg Exec Id: "..value
end

-- Dissect: Leg Exec Id
dissect.leg_exec_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_exec_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Last Qty
size_of.leg_last_qty = 4

-- Display: Leg Last Qty
display.leg_last_qty = function(value)
  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
dissect.leg_last_qty = function(buffer, offset, packet, parent)
  local length = size_of.leg_last_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_last_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Last Px
size_of.leg_last_px = 8

-- Display: Leg Last Px
display.leg_last_px = function(value)
  local factor = 100000000
  return "Leg Last Px: "..value:tonumber()/factor
end

-- Dissect: Leg Last Px
dissect.leg_last_px = function(buffer, offset, packet, parent)
  local length = size_of.leg_last_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.leg_last_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Leg Exec Grp
size_of.quote_leg_exec_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_security_id

  index = index + size_of.leg_last_px

  index = index + size_of.leg_last_qty

  index = index + size_of.leg_exec_id

  index = index + size_of.leg_side

  index = index + size_of.no_quote_events_index

  index = index + size_of.pad_6

  return index
end

-- Display: Quote Leg Exec Grp
display.quote_leg_exec_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Leg Exec Grp
dissect.quote_leg_exec_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Unsigned Fixed Width Integer
  index, leg_last_px = dissect.leg_last_px(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Signed Fixed Width Integer
  index, leg_last_qty = dissect.leg_last_qty(buffer, index, packet, parent)

  -- Leg Exec Id: 4 Byte Signed Fixed Width Integer
  index, leg_exec_id = dissect.leg_exec_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- No Quote Events Index: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_events_index = dissect.no_quote_events_index(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Leg Exec Grp
dissect.quote_leg_exec_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_leg_exec_grp then
    local length = size_of.quote_leg_exec_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_leg_exec_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_leg_exec_grp, range, display)
  end

  return dissect.quote_leg_exec_grp_fields(buffer, offset, packet, parent)
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
  if value == 17 then
    return "Quote Event Reason: Bookor Cancel (17)"
  end

  return "Quote Event Reason: Unknown("..value..")"
end

-- Dissect: Quote Event Reason
dissect.quote_event_reason = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_event_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_event_reason, range, value, display)

  return offset + length, value
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

  return "Quote Event Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Quote Event Liquidity Ind
dissect.quote_event_liquidity_ind = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_liquidity_ind
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_event_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_event_liquidity_ind, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_event_side, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_event_type, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Qty
size_of.quote_event_qty = 4

-- Display: Quote Event Qty
display.quote_event_qty = function(value)
  return "Quote Event Qty: "..value
end

-- Dissect: Quote Event Qty
dissect.quote_event_qty = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.quote_event_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_event_qty, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_event_exec_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_event_match_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_msg_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Px
size_of.quote_event_px = 8

-- Display: Quote Event Px
display.quote_event_px = function(value)
  local factor = 100000000
  return "Quote Event Px: "..value:tonumber()/factor
end

-- Dissect: Quote Event Px
dissect.quote_event_px = function(buffer, offset, packet, parent)
  local length = size_of.quote_event_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quote_event_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_event_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Event Grp
size_of.quote_event_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.quote_event_px

  index = index + size_of.quote_msg_id

  index = index + size_of.quote_event_match_id

  index = index + size_of.quote_event_exec_id

  index = index + size_of.quote_event_qty

  index = index + size_of.quote_event_type

  index = index + size_of.quote_event_side

  index = index + size_of.quote_event_liquidity_ind

  index = index + size_of.quote_event_reason

  return index
end

-- Display: Quote Event Grp
display.quote_event_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Event Grp
dissect.quote_event_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Quote Event Px: 8 Byte Unsigned Fixed Width Integer
  index, quote_event_px = dissect.quote_event_px(buffer, index, packet, parent)

  -- Quote Msg Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_msg_id = dissect.quote_msg_id(buffer, index, packet, parent)

  -- Quote Event Match Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_event_match_id = dissect.quote_event_match_id(buffer, index, packet, parent)

  -- Quote Event Exec Id: 4 Byte Signed Fixed Width Integer
  index, quote_event_exec_id = dissect.quote_event_exec_id(buffer, index, packet, parent)

  -- Quote Event Qty: 4 Byte Signed Fixed Width Integer
  index, quote_event_qty = dissect.quote_event_qty(buffer, index, packet, parent)

  -- Quote Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_event_type = dissect.quote_event_type(buffer, index, packet, parent)

  -- Quote Event Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_event_side = dissect.quote_event_side(buffer, index, packet, parent)

  -- Quote Event Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_event_liquidity_ind = dissect.quote_event_liquidity_ind(buffer, index, packet, parent)

  -- Quote Event Reason: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_event_reason = dissect.quote_event_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Event Grp
dissect.quote_event_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_event_grp then
    local length = size_of.quote_event_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_event_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_event_grp, range, display)
  end

  return dissect.quote_event_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_quote_events, range, value, display)

  return offset + length, value
end

-- Size: No Leg Execs
size_of.no_leg_execs = 2

-- Display: No Leg Execs
display.no_leg_execs = function(value)
  return "No Leg Execs: "..value
end

-- Dissect: No Leg Execs
dissect.no_leg_execs = function(buffer, offset, packet, parent)
  local length = size_of.no_leg_execs
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_leg_execs(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_leg_execs, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Execution Report
size_of.quote_execution_report = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header_me(buffer, offset + index)

  index = index + size_of.exec_id

  index = index + size_of.market_segment_id

  index = index + size_of.no_leg_execs

  index = index + size_of.no_quote_events

  index = index + size_of.pad_1

  -- Calculate field size from count
  local quote_event_grp_count = buffer(offset + index - 2, 1):le_uint()
  index = index + quote_event_grp_count * 40

  -- Calculate field size from count
  local quote_leg_exec_grp_count = buffer(offset + index - 44, 2):le_uint()
  index = index + quote_leg_exec_grp_count * 32

  return index
end

-- Display: Quote Execution Report
display.quote_execution_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Execution Report
dissect.quote_execution_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header Me: Struct of 10 fields
  index, rbc_header_me = dissect.rbc_header_me(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer
  index, no_leg_execs = dissect.no_leg_execs(buffer, index, packet, parent)

  -- No Quote Events: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_events = dissect.no_quote_events(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Quote Event Grp: Struct of 10 fields
  for i = 1, no_quote_events do
    index = dissect.quote_event_grp(buffer, index, packet, parent)
  end

  -- Quote Leg Exec Grp: Struct of 7 fields
  for i = 1, no_leg_execs do
    index = dissect.quote_leg_exec_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_execution_report, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.not_affected_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Not Affected Securities Grp
size_of.not_affected_securities_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.not_affected_security_id

  return index
end

-- Display: Not Affected Securities Grp
display.not_affected_securities_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Affected Securities Grp
dissect.not_affected_securities_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Not Affected Security Id: 8 Byte Unsigned Fixed Width Integer
  index, not_affected_security_id = dissect.not_affected_security_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Affected Securities Grp
dissect.not_affected_securities_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.not_affected_securities_grp then
    local length = size_of.not_affected_securities_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.not_affected_securities_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.not_affected_securities_grp, range, display)
  end

  return dissect.not_affected_securities_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_not_affected_securities, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.mass_action_report_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Activation Response
size_of.quote_activation_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.no_not_affected_securities

  index = index + size_of.pad_6

  -- Calculate field size from count
  local not_affected_securities_grp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_securities_grp_count * 8

  return index
end

-- Display: Quote Activation Response
display.quote_activation_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Activation Response
dissect.quote_activation_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_securities = dissect.no_not_affected_securities(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Not Affected Securities Grp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = dissect.not_affected_securities_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_activation_response, range, display)
  end

  return dissect.quote_activation_response_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.executing_trader_qualifier, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_investment_decision_maker_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Sub Type
size_of.mass_action_sub_type = 1

-- Display: Mass Action Sub Type
display.mass_action_sub_type = function(value)
  if value == 1 then
    return "Mass Action Sub Type: Bookor Cancel (1)"
  end

  return "Mass Action Sub Type: Unknown("..value..")"
end

-- Dissect: Mass Action Sub Type
dissect.mass_action_sub_type = function(buffer, offset, packet, parent)
  local length = size_of.mass_action_sub_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_action_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.mass_action_sub_type, range, value, display)

  return offset + length, value
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.mass_action_type, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.target_party_id_session_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.executing_trader, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_investment_decision_maker, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Activation Request
size_of.quote_activation_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.mass_action_type

  index = index + size_of.mass_action_sub_type

  index = index + size_of.product_complex

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.pad_3

  return index
end

-- Display: Quote Activation Request
display.quote_activation_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Activation Request
dissect.quote_activation_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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

  -- Mass Action Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, mass_action_sub_type = dissect.mass_action_sub_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Activation Request
dissect.quote_activation_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_activation_request then
    local length = size_of.quote_activation_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_activation_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_activation_request, range, display)
  end

  return dissect.quote_activation_request_fields(buffer, offset, packet, parent)
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
  if value == 3 then
    return "Mass Action Reason: Market Maker Protection (3)"
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
  if value == 109 then
    return "Mass Action Reason: Complex Instrument Deletion (109)"
  end
  if value == 110 then
    return "Mass Action Reason: Volatility Interruption (110)"
  end
  if value == 111 then
    return "Mass Action Reason: Producttemporarilynottradeable (111)"
  end

  return "Mass Action Reason: Unknown("..value..")"
end

-- Dissect: Mass Action Reason
dissect.mass_action_reason = function(buffer, offset, packet, parent)
  local length = size_of.mass_action_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_action_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.mass_action_reason, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_entering_trader, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Activation Notification
size_of.quote_activation_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header_me(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.market_segment_id

  index = index + size_of.party_id_entering_trader

  index = index + size_of.no_not_affected_securities

  index = index + size_of.party_id_entering_firm

  index = index + size_of.product_complex

  index = index + size_of.mass_action_type

  index = index + size_of.mass_action_sub_type

  index = index + size_of.mass_action_reason

  index = index + size_of.pad_1

  -- Calculate field size from count
  local not_affected_securities_grp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_securities_grp_count * 8

  return index
end

-- Display: Quote Activation Notification
display.quote_activation_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Activation Notification
dissect.quote_activation_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header Me: Struct of 10 fields
  index, rbc_header_me = dissect.rbc_header_me(buffer, index, packet, parent)

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

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_type = dissect.mass_action_type(buffer, index, packet, parent)

  -- Mass Action Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, mass_action_sub_type = dissect.mass_action_sub_type(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, mass_action_reason = dissect.mass_action_reason(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Not Affected Securities Grp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = dissect.not_affected_securities_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_activation_notification, range, display)
  end

  return dissect.quote_activation_notification_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_detail_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party Entitlements Update Report
size_of.party_entitlements_update_report = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Party Detail Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_detail_id_executing_unit = dissect.party_detail_id_executing_unit(buffer, index, packet, parent)

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, requesting_party_id_executing_system = dissect.requesting_party_id_executing_system(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 2 values
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_entitlements_update_report, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.requesting_party_id_entering_firm, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_action_type, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_executing_trader, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_executing_unit, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.requesting_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party Action Report
size_of.party_action_report = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

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

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, requesting_party_id_executing_system = dissect.requesting_party_id_executing_system(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 2 values
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_action_report, range, display)
  end

  return dissect.party_action_report_fields(buffer, offset, packet, parent)
end

-- Size: Fill Ref Id
size_of.fill_ref_id = 1

-- Display: Fill Ref Id
display.fill_ref_id = function(value)
  return "Fill Ref Id: "..value
end

-- Dissect: Fill Ref Id
dissect.fill_ref_id = function(buffer, offset, packet, parent)
  local length = size_of.fill_ref_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.fill_ref_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.fill_ref_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrmnt Leg Exec Grp
size_of.instrmnt_leg_exec_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_security_id

  index = index + size_of.leg_last_px

  index = index + size_of.leg_last_qty

  index = index + size_of.leg_exec_id

  index = index + size_of.leg_side

  index = index + size_of.fill_ref_id

  index = index + size_of.pad_6

  return index
end

-- Display: Instrmnt Leg Exec Grp
display.instrmnt_leg_exec_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrmnt Leg Exec Grp
dissect.instrmnt_leg_exec_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Unsigned Fixed Width Integer
  index, leg_last_px = dissect.leg_last_px(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Signed Fixed Width Integer
  index, leg_last_qty = dissect.leg_last_qty(buffer, index, packet, parent)

  -- Leg Exec Id: 4 Byte Signed Fixed Width Integer
  index, leg_exec_id = dissect.leg_exec_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Fill Ref Id: 1 Byte Unsigned Fixed Width Integer
  index, fill_ref_id = dissect.fill_ref_id(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmnt Leg Exec Grp
dissect.instrmnt_leg_exec_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrmnt_leg_exec_grp then
    local length = size_of.instrmnt_leg_exec_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrmnt_leg_exec_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.instrmnt_leg_exec_grp, range, display)
  end

  return dissect.instrmnt_leg_exec_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.fill_liquidity_ind, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.fill_exec_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.fill_match_id, range, value, display)

  return offset + length, value
end

-- Size: Fill Qty
size_of.fill_qty = 4

-- Display: Fill Qty
display.fill_qty = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
dissect.fill_qty = function(buffer, offset, packet, parent)
  local length = size_of.fill_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.fill_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Size: Fill Px
size_of.fill_px = 8

-- Display: Fill Px
display.fill_px = function(value)
  local factor = 100000000
  return "Fill Px: "..value:tonumber()/factor
end

-- Dissect: Fill Px
dissect.fill_px = function(buffer, offset, packet, parent)
  local length = size_of.fill_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.fill_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.fill_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fills Grp
size_of.fills_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.fill_px

  index = index + size_of.fill_qty

  index = index + size_of.fill_match_id

  index = index + size_of.fill_exec_id

  index = index + size_of.fill_liquidity_ind

  index = index + size_of.pad_3

  return index
end

-- Display: Fills Grp
display.fills_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fills Grp
dissect.fills_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Fill Px: 8 Byte Unsigned Fixed Width Integer
  index, fill_px = dissect.fill_px(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Signed Fixed Width Integer
  index, fill_qty = dissect.fill_qty(buffer, index, packet, parent)

  -- Fill Match Id: 4 Byte Unsigned Fixed Width Integer
  index, fill_match_id = dissect.fill_match_id(buffer, index, packet, parent)

  -- Fill Exec Id: 4 Byte Signed Fixed Width Integer
  index, fill_exec_id = dissect.fill_exec_id(buffer, index, packet, parent)

  -- Fill Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, fill_liquidity_ind = dissect.fill_liquidity_ind(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Grp
dissect.fills_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fills_grp then
    local length = size_of.fills_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.fills_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.fills_grp, range, display)
  end

  return dissect.fills_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_fills, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.crossed_indicator, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.triggered, range, value, display)

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

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
dissect.exec_type = function(buffer, offset, packet, parent)
  local length = size_of.exec_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.exec_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.exec_type, range, value, display)

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

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
dissect.ord_status = function(buffer, offset, packet, parent)
  local length = size_of.ord_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ord_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Size: Exec Restatement Reason
size_of.exec_restatement_reason = 2

-- Display: Exec Restatement Reason
display.exec_restatement_reason = function(value)
  if value == 1 then
    return "Exec Restatement Reason: Order Book Restatement (1)"
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
  if value == 108 then
    return "Exec Restatement Reason: Book Order Executed (108)"
  end
  if value == 135 then
    return "Exec Restatement Reason: Market Order Triggered (135)"
  end
  if value == 149 then
    return "Exec Restatement Reason: Cao Order Activated (149)"
  end
  if value == 150 then
    return "Exec Restatement Reason: Cao Order Inactivated (150)"
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

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
dissect.exec_restatement_reason = function(buffer, offset, packet, parent)
  local length = size_of.exec_restatement_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.exec_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Cxl Qty
size_of.cxl_qty = 4

-- Display: Cxl Qty
display.cxl_qty = function(value)
  return "Cxl Qty: "..value
end

-- Dissect: Cxl Qty
dissect.cxl_qty = function(buffer, offset, packet, parent)
  local length = size_of.cxl_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.cxl_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.cxl_qty, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trd_reg_ts_time_priority, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trd_reg_ts_entry_time, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Response Header Me
size_of.response_header_me = function(buffer, offset)
  local index = 0

  index = index + size_of.request_time

  index = index + size_of.request_out

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

-- Display: Response Header Me
display.response_header_me = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Response Header Me
dissect.response_header_me_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = dissect.request_time(buffer, index, packet, parent)

  -- Request Out: 8 Byte Unsigned Fixed Width Integer
  index, request_out = dissect.request_out(buffer, index, packet, parent)

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

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Appl Msg Id: 16 Byte
  index, appl_msg_id = dissect.appl_msg_id(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Me
dissect.response_header_me = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.response_header_me then
    local length = size_of.response_header_me(buffer, offset)
    local range = buffer(offset, length)
    local display = display.response_header_me(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.response_header_me, range, display)
  end

  return dissect.response_header_me_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Exec Response
size_of.order_exec_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header_me(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.trd_reg_ts_entry_time

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.market_segment_id

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.no_leg_execs

  index = index + size_of.exec_restatement_reason

  index = index + size_of.side

  index = index + size_of.product_complex

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.triggered

  index = index + size_of.crossed_indicator

  index = index + size_of.no_fills

  index = index + size_of.pad_5

  -- Calculate field size from count
  local fills_grp_count = buffer(offset + index - 6, 1):le_uint()
  index = index + fills_grp_count * 24

  -- Calculate field size from count
  local instrmnt_leg_exec_grp_count = buffer(offset + index - 40, 2):le_uint()
  index = index + instrmnt_leg_exec_grp_count * 32

  return index
end

-- Display: Order Exec Response
display.order_exec_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Exec Response
dissect.order_exec_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header Me: Struct of 11 fields
  index, response_header_me = dissect.response_header_me(buffer, index, packet, parent)

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

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer
  index, no_leg_execs = dissect.no_leg_execs(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer
  index, no_fills = dissect.no_fills(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  -- Fills Grp: Struct of 6 fields
  for i = 1, no_fills do
    index = dissect.fills_grp(buffer, index, packet, parent)
  end

  -- Instrmnt Leg Exec Grp: Struct of 7 fields
  for i = 1, no_leg_execs do
    index = dissect.instrmnt_leg_exec_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_exec_response, range, display)
  end

  return dissect.order_exec_response_fields(buffer, offset, packet, parent)
end

-- Size: Leg Position Effect
size_of.leg_position_effect = 1

-- Display: Leg Position Effect
display.leg_position_effect = function(value)
  if value == "C" then
    return "Leg Position Effect: Close (C)"
  end
  if value == "O" then
    return "Leg Position Effect: Open (O)"
  end

  return "Leg Position Effect: Unknown("..value..")"
end

-- Dissect: Leg Position Effect
dissect.leg_position_effect = function(buffer, offset, packet, parent)
  local length = size_of.leg_position_effect
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_position_effect(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_position_effect, range, value, display)

  return offset + length, value
end

-- Size: Leg Account
size_of.leg_account = 2

-- Display: Leg Account
display.leg_account = function(value)
  return "Leg Account: "..value
end

-- Dissect: Leg Account
dissect.leg_account = function(buffer, offset, packet, parent)
  local length = size_of.leg_account
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_account(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_account, range, value, display)

  return offset + length, value
end

-- Calculate size of: Leg Ord Grp
size_of.leg_ord_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_account

  index = index + size_of.leg_position_effect

  index = index + size_of.pad_5

  return index
end

-- Display: Leg Ord Grp
display.leg_ord_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Leg Ord Grp
dissect.leg_ord_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Account: 2 Byte Ascii String
  index, leg_account = dissect.leg_account(buffer, index, packet, parent)

  -- Leg Position Effect: 1 Byte Ascii String Enum with 2 values
  index, leg_position_effect = dissect.leg_position_effect(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Ord Grp
dissect.leg_ord_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.leg_ord_grp then
    local length = size_of.leg_ord_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.leg_ord_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.leg_ord_grp, range, display)
  end

  return dissect.leg_ord_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.fix_cl_ord_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_seq_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Sub Id
size_of.trading_session_sub_id = 1

-- Display: Trading Session Sub Id
display.trading_session_sub_id = function(value)
  if value == 4 then
    return "Trading Session Sub Id: Closingauction (4)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
dissect.trading_session_sub_id = function(buffer, offset, packet, parent)
  local length = size_of.trading_session_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_session_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trading_session_sub_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.exec_inst, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.time_in_force, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_session_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.match_inst_cross_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
size_of.stop_px = 8

-- Display: Stop Px
display.stop_px = function(value)
  local factor = 100000000
  return "Stop Px: "..value:tonumber()/factor
end

-- Dissect: Stop Px
dissect.stop_px = function(buffer, offset, packet, parent)
  local length = size_of.stop_px
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.stop_px(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Exec Report Broadcast
size_of.order_exec_report_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header_me(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.trd_reg_ts_entry_time

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.price

  index = index + size_of.stop_px

  index = index + size_of.market_segment_id

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.order_qty

  index = index + size_of.expire_date

  index = index + size_of.match_inst_cross_id

  index = index + size_of.party_id_executing_unit

  index = index + size_of.party_id_session_id

  index = index + size_of.party_id_executing_trader

  index = index + size_of.party_id_entering_trader

  index = index + size_of.no_leg_execs

  index = index + size_of.exec_restatement_reason

  index = index + size_of.party_id_entering_firm

  index = index + size_of.product_complex

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.trading_capacity

  index = index + size_of.time_in_force

  index = index + size_of.exec_inst

  index = index + size_of.trading_session_sub_id

  index = index + size_of.appl_seq_indicator

  index = index + size_of.account

  index = index + size_of.party_id_position_account

  index = index + size_of.position_effect

  index = index + size_of.party_id_take_up_trading_firm

  index = index + size_of.party_id_order_origination_firm

  index = index + size_of.party_id_beneficiary

  index = index + size_of.party_id_location_id

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.compliance_text

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.no_fills

  index = index + size_of.no_legs

  index = index + size_of.triggered

  index = index + size_of.crossed_indicator

  index = index + size_of.pad_2

  -- Calculate field size from count
  local leg_ord_grp_count = buffer(offset + index - 5, 1):le_uint()
  index = index + leg_ord_grp_count * 8

  -- Calculate field size from count
  local fills_grp_count = buffer(offset + index - 14, 1):le_uint()
  index = index + fills_grp_count * 24

  -- Calculate field size from count
  local instrmnt_leg_exec_grp_count = buffer(offset + index - 188, 2):le_uint()
  index = index + instrmnt_leg_exec_grp_count * 32

  return index
end

-- Display: Order Exec Report Broadcast
display.order_exec_report_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Exec Report Broadcast
dissect.order_exec_report_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header Me: Struct of 10 fields
  index, rbc_header_me = dissect.rbc_header_me(buffer, index, packet, parent)

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

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

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

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer
  index, no_leg_execs = dissect.no_leg_execs(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, trading_session_sub_id = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Party Id Position Account: 32 Byte Ascii String
  index, party_id_position_account = dissect.party_id_position_account(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = dissect.position_effect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, party_id_take_up_trading_firm = dissect.party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String
  index, party_id_order_origination_firm = dissect.party_id_order_origination_firm(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String
  index, party_id_beneficiary = dissect.party_id_beneficiary(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String
  index, party_id_location_id = dissect.party_id_location_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer
  index, no_fills = dissect.no_fills(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Leg Ord Grp: Struct of 3 fields
  for i = 1, no_legs do
    index = dissect.leg_ord_grp(buffer, index, packet, parent)
  end

  -- Fills Grp: Struct of 6 fields
  for i = 1, no_fills do
    index = dissect.fills_grp(buffer, index, packet, parent)
  end

  -- Instrmnt Leg Exec Grp: Struct of 7 fields
  for i = 1, no_leg_execs do
    index = dissect.instrmnt_leg_exec_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_exec_report_broadcast, range, display)
  end

  return dissect.order_exec_report_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Exec Notification
size_of.order_exec_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header_me(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.market_segment_id

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.no_leg_execs

  index = index + size_of.exec_restatement_reason

  index = index + size_of.side

  index = index + size_of.product_complex

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.triggered

  index = index + size_of.crossed_indicator

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.no_fills

  index = index + size_of.pad_1

  -- Calculate field size from count
  local fills_grp_count = buffer(offset + index - 2, 1):le_uint()
  index = index + fills_grp_count * 24

  -- Calculate field size from count
  local instrmnt_leg_exec_grp_count = buffer(offset + index - 56, 2):le_uint()
  index = index + instrmnt_leg_exec_grp_count * 32

  return index
end

-- Display: Order Exec Notification
display.order_exec_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Exec Notification
dissect.order_exec_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header Me: Struct of 10 fields
  index, rbc_header_me = dissect.rbc_header_me(buffer, index, packet, parent)

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

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer
  index, no_leg_execs = dissect.no_leg_execs(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer
  index, no_fills = dissect.no_fills(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Fills Grp: Struct of 6 fields
  for i = 1, no_fills do
    index = dissect.fills_grp(buffer, index, packet, parent)
  end

  -- Instrmnt Leg Exec Grp: Struct of 7 fields
  for i = 1, no_leg_execs do
    index = dissect.instrmnt_leg_exec_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_exec_notification, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.headline, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: News Broadcast
size_of.news_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.news_broadcast, range, display)
  end

  return dissect.news_broadcast_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.value_check_type_value, range, value, display)

  return offset + length, value
end

-- Size: Price Validity Check Type
size_of.price_validity_check_type = 1

-- Display: Price Validity Check Type
display.price_validity_check_type = function(value)
  if value == 0 then
    return "Price Validity Check Type: None (0)"
  end
  if value == 1 then
    return "Price Validity Check Type: Optional (1)"
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.price_validity_check_type, range, value, display)

  return offset + length, value
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.enrichment_rule_id, range, value, display)

  return offset + length, value
end

-- Size: Simple Security Id
size_of.simple_security_id = 4

-- Display: Simple Security Id
display.simple_security_id = function(value)
  return "Simple Security Id: "..value
end

-- Dissect: Simple Security Id
dissect.simple_security_id = function(buffer, offset, packet, parent)
  local length = size_of.simple_security_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.simple_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.simple_security_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_client_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Single Short Request
size_of.new_order_single_short_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.price

  index = index + size_of.cl_ord_id

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.order_qty

  index = index + size_of.simple_security_id

  index = index + size_of.match_inst_cross_id

  index = index + size_of.enrichment_rule_id

  index = index + size_of.side

  index = index + size_of.appl_seq_indicator

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.time_in_force

  index = index + size_of.exec_inst

  index = index + size_of.trading_capacity

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  return index
end

-- Display: New Order Single Short Request
display.new_order_single_short_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single Short Request
dissect.new_order_single_short_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer
  index, simple_security_id = dissect.simple_security_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Short Request
dissect.new_order_single_short_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_single_short_request then
    local length = size_of.new_order_single_short_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_single_short_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.new_order_single_short_request, range, display)
  end

  return dissect.new_order_single_short_request_fields(buffer, offset, packet, parent)
end

-- Size: Order Attribute Risk Reduction
size_of.order_attribute_risk_reduction = 1

-- Display: Order Attribute Risk Reduction
display.order_attribute_risk_reduction = function(value)
  if value == 1 then
    return "Order Attribute Risk Reduction: Y (1)"
  end
  if value == 0 then
    return "Order Attribute Risk Reduction: N (0)"
  end

  return "Order Attribute Risk Reduction: Unknown("..value..")"
end

-- Dissect: Order Attribute Risk Reduction
dissect.order_attribute_risk_reduction = function(buffer, offset, packet, parent)
  local length = size_of.order_attribute_risk_reduction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_attribute_risk_reduction(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_attribute_risk_reduction, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Single Request
size_of.new_order_single_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.price

  index = index + size_of.stop_px

  index = index + size_of.cl_ord_id

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.order_qty

  index = index + size_of.expire_date

  index = index + size_of.market_segment_id

  index = index + size_of.simple_security_id

  index = index + size_of.match_inst_cross_id

  index = index + size_of.party_id_take_up_trading_firm

  index = index + size_of.party_id_order_origination_firm

  index = index + size_of.party_id_beneficiary

  index = index + size_of.appl_seq_indicator

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.order_attribute_risk_reduction

  index = index + size_of.time_in_force

  index = index + size_of.exec_inst

  index = index + size_of.trading_session_sub_id

  index = index + size_of.trading_capacity

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.account

  index = index + size_of.party_id_position_account

  index = index + size_of.position_effect

  index = index + size_of.party_id_location_id

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.compliance_text

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.fix_cl_ord_id

  return index
end

-- Display: New Order Single Request
display.new_order_single_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single Request
dissect.new_order_single_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer
  index, simple_security_id = dissect.simple_security_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, party_id_take_up_trading_firm = dissect.party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String
  index, party_id_order_origination_firm = dissect.party_id_order_origination_firm(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String
  index, party_id_beneficiary = dissect.party_id_beneficiary(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Order Attribute Risk Reduction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_risk_reduction = dissect.order_attribute_risk_reduction(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, trading_session_sub_id = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Party Id Position Account: 32 Byte Ascii String
  index, party_id_position_account = dissect.party_id_position_account(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = dissect.position_effect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String
  index, party_id_location_id = dissect.party_id_location_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Request
dissect.new_order_single_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_single_request then
    local length = size_of.new_order_single_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_single_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.new_order_single_request, range, display)
  end

  return dissect.new_order_single_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Response
size_of.new_order_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header_me(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.trd_reg_ts_entry_time

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.crossed_indicator

  index = index + size_of.product_complex

  index = index + size_of.triggered

  index = index + size_of.pad_1

  return index
end

-- Display: New Order Response
display.new_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Response
dissect.new_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header Me: Struct of 11 fields
  index, response_header_me = dissect.response_header_me(buffer, index, packet, parent)

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

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response
dissect.new_order_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_response then
    local length = size_of.new_order_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.new_order_response, range, display)
  end

  return dissect.new_order_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Nr Response
size_of.new_order_nr_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.crossed_indicator

  index = index + size_of.product_complex

  index = index + size_of.triggered

  index = index + size_of.pad_1

  return index
end

-- Display: New Order Nr Response
display.new_order_nr_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Nr Response
dissect.new_order_nr_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Nr Response
dissect.new_order_nr_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_nr_response then
    local length = size_of.new_order_nr_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_nr_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.new_order_nr_response, range, display)
  end

  return dissect.new_order_nr_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Complex Short Request
size_of.new_order_complex_short_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.cl_ord_id

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.order_qty

  index = index + size_of.match_inst_cross_id

  index = index + size_of.enrichment_rule_id

  index = index + size_of.appl_seq_indicator

  index = index + size_of.product_complex

  index = index + size_of.side

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.exec_inst

  index = index + size_of.time_in_force

  index = index + size_of.trading_capacity

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.pad_7

  return index
end

-- Display: New Order Complex Short Request
display.new_order_complex_short_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Complex Short Request
dissect.new_order_complex_short_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Complex Short Request
dissect.new_order_complex_short_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_complex_short_request then
    local length = size_of.new_order_complex_short_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_complex_short_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.new_order_complex_short_request, range, display)
  end

  return dissect.new_order_complex_short_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Complex Request
size_of.new_order_complex_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.order_qty

  index = index + size_of.expire_date

  index = index + size_of.match_inst_cross_id

  index = index + size_of.party_id_take_up_trading_firm

  index = index + size_of.party_id_order_origination_firm

  index = index + size_of.party_id_beneficiary

  index = index + size_of.appl_seq_indicator

  index = index + size_of.product_complex

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.order_attribute_risk_reduction

  index = index + size_of.exec_inst

  index = index + size_of.time_in_force

  index = index + size_of.trading_capacity

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.party_id_location_id

  index = index + size_of.compliance_text

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.party_id_position_account

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.no_legs

  index = index + size_of.pad_6

  -- Calculate field size from count
  local leg_ord_grp_count = buffer(offset + index - 7, 1):le_uint()
  index = index + leg_ord_grp_count * 8

  return index
end

-- Display: New Order Complex Request
display.new_order_complex_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Complex Request
dissect.new_order_complex_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

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

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, party_id_take_up_trading_firm = dissect.party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String
  index, party_id_order_origination_firm = dissect.party_id_order_origination_firm(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String
  index, party_id_beneficiary = dissect.party_id_beneficiary(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Order Attribute Risk Reduction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_risk_reduction = dissect.order_attribute_risk_reduction(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String
  index, party_id_location_id = dissect.party_id_location_id(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Party Id Position Account: 32 Byte Ascii String
  index, party_id_position_account = dissect.party_id_position_account(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Leg Ord Grp: Struct of 3 fields
  for i = 1, no_legs do
    index = dissect.leg_ord_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Complex Request
dissect.new_order_complex_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_complex_request then
    local length = size_of.new_order_complex_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_complex_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.new_order_complex_request, range, display)
  end

  return dissect.new_order_complex_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Side Alloc Grp
size_of.side_alloc_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.individual_alloc_id

  index = index + size_of.alloc_qty

  index = index + size_of.side

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.pad_4

  return index
end

-- Display: Side Alloc Grp
display.side_alloc_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Side Alloc Grp
dissect.side_alloc_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Individual Alloc Id: 4 Byte Unsigned Fixed Width Integer
  index, individual_alloc_id = dissect.individual_alloc_id(buffer, index, packet, parent)

  -- Alloc Qty: 4 Byte Signed Fixed Width Integer
  index, alloc_qty = dissect.alloc_qty(buffer, index, packet, parent)

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

-- Dissect: Side Alloc Grp
dissect.side_alloc_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.side_alloc_grp then
    local length = size_of.side_alloc_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.side_alloc_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.side_alloc_grp, range, display)
  end

  return dissect.side_alloc_grp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Tes Trade Request
size_of.modify_tes_trade_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.last_px

  index = index + size_of.trans_bkd_time

  index = index + size_of.market_segment_id

  index = index + size_of.package_id

  index = index + size_of.tes_exec_id

  index = index + size_of.related_market_segment_id

  index = index + size_of.negotiation_id

  index = index + size_of.srqs_related_trade_id

  index = index + size_of.trd_type

  index = index + size_of.trade_report_type

  index = index + size_of.trade_publish_indicator

  index = index + size_of.no_side_allocs

  index = index + size_of.no_legs

  index = index + size_of.trade_report_text

  index = index + size_of.trade_report_id

  index = index + size_of.pad_2

  -- Calculate field size from count
  local side_alloc_grp_count = buffer(offset + index - 44, 1):le_uint()
  index = index + side_alloc_grp_count * 24

  -- Calculate field size from count
  local trd_instrmnt_leg_grp_count = buffer(offset + index - 67, 1):le_uint()
  index = index + trd_instrmnt_leg_grp_count * 16

  return index
end

-- Display: Modify Tes Trade Request
display.modify_tes_trade_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Tes Trade Request
dissect.modify_tes_trade_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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

  -- Related Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, related_market_segment_id = dissect.related_market_segment_id(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Srqs Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, srqs_related_trade_id = dissect.srqs_related_trade_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Trade Publish Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_publish_indicator = dissect.trade_publish_indicator(buffer, index, packet, parent)

  -- No Side Allocs: 1 Byte Unsigned Fixed Width Integer
  index, no_side_allocs = dissect.no_side_allocs(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Trade Report Text: 20 Byte Ascii String
  index, trade_report_text = dissect.trade_report_text(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Side Alloc Grp: Struct of 6 fields
  for i = 1, no_side_allocs do
    index = dissect.side_alloc_grp(buffer, index, packet, parent)
  end

  -- Trd Instrmnt Leg Grp: Struct of 2 fields
  for i = 1, no_legs do
    index = dissect.trd_instrmnt_leg_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.modify_tes_trade_request, range, display)
  end

  return dissect.modify_tes_trade_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Single Short Request
size_of.modify_order_single_short_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.price

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.order_qty

  index = index + size_of.simple_security_id

  index = index + size_of.match_inst_cross_id

  index = index + size_of.enrichment_rule_id

  index = index + size_of.side

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.time_in_force

  index = index + size_of.appl_seq_indicator

  index = index + size_of.exec_inst

  index = index + size_of.trading_capacity

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  return index
end

-- Display: Modify Order Single Short Request
display.modify_order_single_short_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Single Short Request
dissect.modify_order_single_short_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer
  index, simple_security_id = dissect.simple_security_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Single Short Request
dissect.modify_order_single_short_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_single_short_request then
    local length = size_of.modify_order_single_short_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_single_short_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.modify_order_single_short_request, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.ownership_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Single Request
size_of.modify_order_single_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.price

  index = index + size_of.stop_px

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.order_qty

  index = index + size_of.expire_date

  index = index + size_of.market_segment_id

  index = index + size_of.simple_security_id

  index = index + size_of.match_inst_cross_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.party_id_take_up_trading_firm

  index = index + size_of.party_id_order_origination_firm

  index = index + size_of.party_id_beneficiary

  index = index + size_of.appl_seq_indicator

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.time_in_force

  index = index + size_of.exec_inst

  index = index + size_of.trading_session_sub_id

  index = index + size_of.trading_capacity

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.account

  index = index + size_of.party_id_position_account

  index = index + size_of.position_effect

  index = index + size_of.ownership_indicator

  index = index + size_of.party_id_location_id

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.compliance_text

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.pad_4

  return index
end

-- Display: Modify Order Single Request
display.modify_order_single_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Single Request
dissect.modify_order_single_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer
  index, simple_security_id = dissect.simple_security_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, party_id_take_up_trading_firm = dissect.party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String
  index, party_id_order_origination_firm = dissect.party_id_order_origination_firm(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String
  index, party_id_beneficiary = dissect.party_id_beneficiary(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, trading_session_sub_id = dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Party Id Position Account: 32 Byte Ascii String
  index, party_id_position_account = dissect.party_id_position_account(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = dissect.position_effect(buffer, index, packet, parent)

  -- Ownership Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ownership_indicator = dissect.ownership_indicator(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String
  index, party_id_location_id = dissect.party_id_location_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Single Request
dissect.modify_order_single_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_single_request then
    local length = size_of.modify_order_single_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_single_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.modify_order_single_request, range, display)
  end

  return dissect.modify_order_single_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Response
size_of.modify_order_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header_me(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.trd_reg_ts_time_priority

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.crossed_indicator

  index = index + size_of.product_complex

  index = index + size_of.triggered

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header Me: Struct of 11 fields
  index, response_header_me = dissect.response_header_me(buffer, index, packet, parent)

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

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.modify_order_response, range, display)
  end

  return dissect.modify_order_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Nr Response
size_of.modify_order_nr_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.crossed_indicator

  index = index + size_of.product_complex

  index = index + size_of.triggered

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

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

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = dissect.crossed_indicator(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = dissect.triggered(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.modify_order_nr_response, range, display)
  end

  return dissect.modify_order_nr_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Complex Short Request
size_of.modify_order_complex_short_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.order_qty

  index = index + size_of.match_inst_cross_id

  index = index + size_of.enrichment_rule_id

  index = index + size_of.appl_seq_indicator

  index = index + size_of.product_complex

  index = index + size_of.side

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.exec_inst

  index = index + size_of.time_in_force

  index = index + size_of.trading_capacity

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.pad_7

  return index
end

-- Display: Modify Order Complex Short Request
display.modify_order_complex_short_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Complex Short Request
dissect.modify_order_complex_short_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

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

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Complex Short Request
dissect.modify_order_complex_short_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_complex_short_request then
    local length = size_of.modify_order_complex_short_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_complex_short_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.modify_order_complex_short_request, range, display)
  end

  return dissect.modify_order_complex_short_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Complex Request
size_of.modify_order_complex_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.order_qty

  index = index + size_of.expire_date

  index = index + size_of.match_inst_cross_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.party_id_take_up_trading_firm

  index = index + size_of.party_id_order_origination_firm

  index = index + size_of.party_id_beneficiary

  index = index + size_of.appl_seq_indicator

  index = index + size_of.product_complex

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.exec_inst

  index = index + size_of.time_in_force

  index = index + size_of.trading_capacity

  index = index + size_of.ownership_indicator

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.party_id_location_id

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.compliance_text

  index = index + size_of.party_id_position_account

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.no_legs

  index = index + size_of.pad_2

  -- Calculate field size from count
  local leg_ord_grp_count = buffer(offset + index - 3, 1):le_uint()
  index = index + leg_ord_grp_count * 8

  return index
end

-- Display: Modify Order Complex Request
display.modify_order_complex_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Complex Request
dissect.modify_order_complex_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, party_id_take_up_trading_firm = dissect.party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String
  index, party_id_order_origination_firm = dissect.party_id_order_origination_firm(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String
  index, party_id_beneficiary = dissect.party_id_beneficiary(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Ownership Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ownership_indicator = dissect.ownership_indicator(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String
  index, party_id_location_id = dissect.party_id_location_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

  -- Party Id Position Account: 32 Byte Ascii String
  index, party_id_position_account = dissect.party_id_position_account(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Leg Ord Grp: Struct of 3 fields
  for i = 1, no_legs do
    index = dissect.leg_ord_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Modify Order Complex Request
dissect.modify_order_complex_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.modify_order_complex_request then
    local length = size_of.modify_order_complex_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_complex_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.modify_order_complex_request, range, display)
  end

  return dissect.modify_order_complex_request_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_entry_status, range, value, display)

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
  if value == 107 then
    return "Quote Entry Reject Reason: Invalid Underlying Price (107)"
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
  if value == 119 then
    return "Quote Entry Reject Reason: Entitlement Not Assigned For Underlying (119)"
  end
  if value == 124 then
    return "Quote Entry Reject Reason: Currently Not Tradeable On Book (124)"
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
  if value == 128 then
    return "Quote Entry Reject Reason: Bookor Cancel (128)"
  end
  if value == 131 then
    return "Quote Entry Reject Reason: Cant Proc In Curr Instr State (131)"
  end

  return "Quote Entry Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Entry Reject Reason
dissect.quote_entry_reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.quote_entry_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_entry_reject_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_entry_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Offer Cxl Size
size_of.offer_cxl_size = 4

-- Display: Offer Cxl Size
display.offer_cxl_size = function(value)
  return "Offer Cxl Size: "..value
end

-- Dissect: Offer Cxl Size
dissect.offer_cxl_size = function(buffer, offset, packet, parent)
  local length = size_of.offer_cxl_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.offer_cxl_size(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.offer_cxl_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Cxl Size
size_of.bid_cxl_size = 4

-- Display: Bid Cxl Size
display.bid_cxl_size = function(value)
  return "Bid Cxl Size: "..value
end

-- Dissect: Bid Cxl Size
dissect.bid_cxl_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_cxl_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.bid_cxl_size(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.bid_cxl_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Entry Ack Grp
size_of.quote_entry_ack_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.bid_cxl_size

  index = index + size_of.offer_cxl_size

  index = index + size_of.quote_entry_reject_reason

  index = index + size_of.quote_entry_status

  index = index + size_of.pad_3

  return index
end

-- Display: Quote Entry Ack Grp
display.quote_entry_ack_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Entry Ack Grp
dissect.quote_entry_ack_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Cxl Size: 4 Byte Signed Fixed Width Integer
  index, bid_cxl_size = dissect.bid_cxl_size(buffer, index, packet, parent)

  -- Offer Cxl Size: 4 Byte Signed Fixed Width Integer
  index, offer_cxl_size = dissect.offer_cxl_size(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 23 values
  index, quote_entry_reject_reason = dissect.quote_entry_reject_reason(buffer, index, packet, parent)

  -- Quote Entry Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_entry_status = dissect.quote_entry_status(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entry Ack Grp
dissect.quote_entry_ack_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_entry_ack_grp then
    local length = size_of.quote_entry_ack_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_entry_ack_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_entry_ack_grp, range, display)
  end

  return dissect.quote_entry_ack_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_quote_entries, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_response_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Quote Response
size_of.mass_quote_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

  index = index + size_of.quote_id

  index = index + size_of.quote_response_id

  index = index + size_of.market_segment_id

  index = index + size_of.no_quote_entries

  index = index + size_of.pad_3

  -- Calculate field size from count
  local quote_entry_ack_grp_count = buffer(offset + index - 4, 1):le_uint()
  index = index + quote_entry_ack_grp_count * 24

  return index
end

-- Display: Mass Quote Response
display.mass_quote_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Response
dissect.mass_quote_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Quote Response Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_response_id = dissect.quote_response_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_entries = dissect.no_quote_entries(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  -- Quote Entry Ack Grp: Struct of 6 fields
  for i = 1, no_quote_entries do
    index = dissect.quote_entry_ack_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.mass_quote_response, range, display)
  end

  return dissect.mass_quote_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Entry Grp
size_of.quote_entry_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.bid_size

  index = index + size_of.offer_size

  return index
end

-- Display: Quote Entry Grp
display.quote_entry_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Entry Grp
dissect.quote_entry_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Signed Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Signed Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entry Grp
dissect.quote_entry_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_entry_grp then
    local length = size_of.quote_entry_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_entry_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_entry_grp, range, display)
  end

  return dissect.quote_entry_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.quote_size_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Quote Request
size_of.mass_quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.quote_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.match_inst_cross_id

  index = index + size_of.enrichment_rule_id

  index = index + size_of.price_validity_check_type

  index = index + size_of.value_check_type_value

  index = index + size_of.quote_size_type

  index = index + size_of.quote_type

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.no_quote_entries

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.pad_6

  -- Calculate field size from count
  local quote_entry_grp_count = buffer(offset + index - 9, 1):le_uint()
  index = index + quote_entry_grp_count * 32

  return index
end

-- Display: Mass Quote Request
display.mass_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Request
dissect.mass_quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_validity_check_type = dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = dissect.value_check_type_value(buffer, index, packet, parent)

  -- Quote Size Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_size_type = dissect.quote_size_type(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_type = dissect.quote_type(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_entries = dissect.no_quote_entries(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Quote Entry Grp: Struct of 5 fields
  for i = 1, no_quote_entries do
    index = dissect.quote_entry_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.mass_quote_request, range, display)
  end

  return dissect.mass_quote_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mm Parameter Definition Response
size_of.mm_parameter_definition_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

  index = index + size_of.exec_id

  return index
end

-- Display: Mm Parameter Definition Response
display.mm_parameter_definition_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Parameter Definition Response
dissect.mm_parameter_definition_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Parameter Definition Response
dissect.mm_parameter_definition_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_parameter_definition_response then
    local length = size_of.mm_parameter_definition_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_parameter_definition_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.mm_parameter_definition_response, range, display)
  end

  return dissect.mm_parameter_definition_response_fields(buffer, offset, packet, parent)
end

-- Size: Vega
size_of.vega = 4

-- Display: Vega
display.vega = function(value)
  return "Vega: "..value
end

-- Dissect: Vega
dissect.vega = function(buffer, offset, packet, parent)
  local length = size_of.vega
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.vega(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.vega, range, value, display)

  return offset + length, value
end

-- Size: Delta
size_of.delta = 4

-- Display: Delta
display.delta = function(value)
  return "Delta: "..value
end

-- Dissect: Delta
dissect.delta = function(buffer, offset, packet, parent)
  local length = size_of.delta
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.delta(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.delta, range, value, display)

  return offset + length, value
end

-- Size: Pct Count
size_of.pct_count = 4

-- Display: Pct Count
display.pct_count = function(value)
  return "Pct Count: "..value
end

-- Dissect: Pct Count
dissect.pct_count = function(buffer, offset, packet, parent)
  local length = size_of.pct_count
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.pct_count(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.pct_count, range, value, display)

  return offset + length, value
end

-- Size: Exposure Duration
size_of.exposure_duration = 8

-- Display: Exposure Duration
display.exposure_duration = function(value)
  return "Exposure Duration: "..value
end

-- Dissect: Exposure Duration
dissect.exposure_duration = function(buffer, offset, packet, parent)
  local length = size_of.exposure_duration
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.exposure_duration(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.exposure_duration, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mm Parameter Definition Request
size_of.mm_parameter_definition_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.exposure_duration

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.cum_qty

  index = index + size_of.pct_count

  index = index + size_of.delta

  index = index + size_of.vega

  index = index + size_of.product_complex

  index = index + size_of.pad_7

  return index
end

-- Display: Mm Parameter Definition Request
display.mm_parameter_definition_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Parameter Definition Request
dissect.mm_parameter_definition_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Exposure Duration: 8 Byte Signed Fixed Width Integer
  index, exposure_duration = dissect.exposure_duration(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Pct Count: 4 Byte Signed Fixed Width Integer
  index, pct_count = dissect.pct_count(buffer, index, packet, parent)

  -- Delta: 4 Byte Signed Fixed Width Integer
  index, delta = dissect.delta(buffer, index, packet, parent)

  -- Vega: 4 Byte Signed Fixed Width Integer
  index, vega = dissect.vega(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Parameter Definition Request
dissect.mm_parameter_definition_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_parameter_definition_request then
    local length = size_of.mm_parameter_definition_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_parameter_definition_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.mm_parameter_definition_request, range, display)
  end

  return dissect.mm_parameter_definition_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logout Response
size_of.logout_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

  return index
end

-- Display: Logout Response
display.logout_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Response
dissect.logout_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response
dissect.logout_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout_response then
    local length = size_of.logout_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logout_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.logout_response, range, display)
  end

  return dissect.logout_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logout Request
size_of.logout_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  return index
end

-- Display: Logout Request
display.logout_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Request
dissect.logout_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Request
dissect.logout_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout_request then
    local length = size_of.logout_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logout_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.logout_request, range, display)
  end

  return dissect.logout_request_fields(buffer, offset, packet, parent)
end

-- Size: Default Cstm Appl Ver Sub Id
size_of.default_cstm_appl_ver_sub_id = 5

-- Display: Default Cstm Appl Ver Sub Id
display.default_cstm_appl_ver_sub_id = function(value)
  if value == "D0002" then
    return "Default Cstm Appl Ver Sub Id: Derivatives (D0002)"
  end

  return "Default Cstm Appl Ver Sub Id: Unknown("..value..")"
end

-- Dissect: Default Cstm Appl Ver Sub Id
dissect.default_cstm_appl_ver_sub_id = function(buffer, offset, packet, parent)
  local length = size_of.default_cstm_appl_ver_sub_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.default_cstm_appl_ver_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.default_cstm_appl_ver_sub_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.default_cstm_appl_ver_id, range, value, display)

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

  return "Trad Ses Mode: Unknown("..value..")"
end

-- Dissect: Trad Ses Mode
dissect.trad_ses_mode = function(buffer, offset, packet, parent)
  local length = size_of.trad_ses_mode
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trad_ses_mode(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.trad_ses_mode, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.session_instance_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Response
size_of.logon_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

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

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, market_id = dissect.market_id(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.logon_response, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.application_system_vendor, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.application_system_version, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.application_system_name, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.fix_engine_vendor, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.fix_engine_version, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.fix_engine_name, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.order_routing_indicator, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_usage_quotes, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_usage_orders, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Request
size_of.logon_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.logon_request, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.user_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Legal Notification Broadcast
size_of.legal_notification_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header: Struct of 8 fields
  index, rbc_header = dissect.rbc_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.legal_notification_broadcast, range, display)
  end

  return dissect.legal_notification_broadcast_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_detail_desk_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_detail_role_qualifier, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_detail_executing_trader, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_detail_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party Details Grp
size_of.party_details_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.party_detail_id_executing_trader

  index = index + size_of.party_detail_executing_trader

  index = index + size_of.party_detail_role_qualifier

  index = index + size_of.party_detail_status

  index = index + size_of.party_detail_desk_id

  index = index + size_of.pad_1

  return index
end

-- Display: Party Details Grp
display.party_details_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details Grp
dissect.party_details_grp_fields = function(buffer, offset, packet, parent)
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

-- Dissect: Party Details Grp
dissect.party_details_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.party_details_grp then
    local length = size_of.party_details_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_details_grp, range, display)
  end

  return dissect.party_details_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_party_details, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.last_entity_processed, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inquire User Response
size_of.inquire_user_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

  index = index + size_of.last_entity_processed

  index = index + size_of.no_party_details

  index = index + size_of.pad_6

  -- Calculate field size from count
  local party_details_grp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + party_details_grp_count * 16

  return index
end

-- Display: Inquire User Response
display.inquire_user_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire User Response
dissect.inquire_user_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = dissect.last_entity_processed(buffer, index, packet, parent)

  -- No Party Details: 2 Byte Unsigned Fixed Width Integer
  index, no_party_details = dissect.no_party_details(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Party Details Grp: Struct of 6 fields
  for i = 1, no_party_details do
    index = dissect.party_details_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.inquire_user_response, range, display)
  end

  return dissect.inquire_user_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Inquire User Request
size_of.inquire_user_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.inquire_user_request, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.session_sub_mode, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.session_mode, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sessions Grp
size_of.sessions_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.party_id_session_id

  index = index + size_of.session_mode

  index = index + size_of.session_sub_mode

  index = index + size_of.pad_2

  return index
end

-- Display: Sessions Grp
display.sessions_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sessions Grp
dissect.sessions_grp_fields = function(buffer, offset, packet, parent)
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

-- Dissect: Sessions Grp
dissect.sessions_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sessions_grp then
    local length = size_of.sessions_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sessions_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.sessions_grp, range, display)
  end

  return dissect.sessions_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_sessions, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inquire Session List Response
size_of.inquire_session_list_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

  index = index + size_of.no_sessions

  index = index + size_of.pad_6

  -- Calculate field size from count
  local sessions_grp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + sessions_grp_count * 8

  return index
end

-- Display: Inquire Session List Response
display.inquire_session_list_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Session List Response
dissect.inquire_session_list_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

  -- No Sessions: 2 Byte Unsigned Fixed Width Integer
  index, no_sessions = dissect.no_sessions(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Sessions Grp: Struct of 4 fields
  for i = 1, no_sessions do
    index = dissect.sessions_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.inquire_session_list_response, range, display)
  end

  return dissect.inquire_session_list_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Inquire Session List Request
size_of.inquire_session_list_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  return index
end

-- Display: Inquire Session List Request
display.inquire_session_list_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Session List Request
dissect.inquire_session_list_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire Session List Request
dissect.inquire_session_list_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inquire_session_list_request then
    local length = size_of.inquire_session_list_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inquire_session_list_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.inquire_session_list_request, range, display)
  end

  return dissect.inquire_session_list_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mm Parameter Grp
size_of.mm_parameter_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.exposure_duration

  index = index + size_of.cum_qty

  index = index + size_of.pct_count

  index = index + size_of.delta

  index = index + size_of.vega

  index = index + size_of.product_complex

  index = index + size_of.pad_7

  return index
end

-- Display: Mm Parameter Grp
display.mm_parameter_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Parameter Grp
dissect.mm_parameter_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exposure Duration: 8 Byte Signed Fixed Width Integer
  index, exposure_duration = dissect.exposure_duration(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Pct Count: 4 Byte Signed Fixed Width Integer
  index, pct_count = dissect.pct_count(buffer, index, packet, parent)

  -- Delta: 4 Byte Signed Fixed Width Integer
  index, delta = dissect.delta(buffer, index, packet, parent)

  -- Vega: 4 Byte Signed Fixed Width Integer
  index, vega = dissect.vega(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Parameter Grp
dissect.mm_parameter_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_parameter_grp then
    local length = size_of.mm_parameter_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_parameter_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.mm_parameter_grp, range, display)
  end

  return dissect.mm_parameter_grp_fields(buffer, offset, packet, parent)
end

-- Size: No Mm Parameters
size_of.no_mm_parameters = 1

-- Display: No Mm Parameters
display.no_mm_parameters = function(value)
  return "No Mm Parameters: "..value
end

-- Dissect: No Mm Parameters
dissect.no_mm_parameters = function(buffer, offset, packet, parent)
  local length = size_of.no_mm_parameters
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_mm_parameters(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_mm_parameters, range, value, display)

  return offset + length, value
end

-- Size: Mm Parameter Report Id
size_of.mm_parameter_report_id = 8

-- Display: Mm Parameter Report Id
display.mm_parameter_report_id = function(value)
  return "Mm Parameter Report Id: "..value
end

-- Dissect: Mm Parameter Report Id
dissect.mm_parameter_report_id = function(buffer, offset, packet, parent)
  local length = size_of.mm_parameter_report_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.mm_parameter_report_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.mm_parameter_report_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inquire Mm Parameter Response
size_of.inquire_mm_parameter_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

  index = index + size_of.mm_parameter_report_id

  index = index + size_of.market_segment_id

  index = index + size_of.no_mm_parameters

  index = index + size_of.pad_3

  -- Calculate field size from count
  local mm_parameter_grp_count = buffer(offset + index - 4, 1):le_uint()
  index = index + mm_parameter_grp_count * 32

  return index
end

-- Display: Inquire Mm Parameter Response
display.inquire_mm_parameter_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Mm Parameter Response
dissect.inquire_mm_parameter_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

  -- Mm Parameter Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mm_parameter_report_id = dissect.mm_parameter_report_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- No Mm Parameters: 1 Byte Unsigned Fixed Width Integer
  index, no_mm_parameters = dissect.no_mm_parameters(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  -- Mm Parameter Grp: Struct of 7 fields
  for i = 1, no_mm_parameters do
    index = dissect.mm_parameter_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Inquire Mm Parameter Response
dissect.inquire_mm_parameter_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.inquire_mm_parameter_response then
    local length = size_of.inquire_mm_parameter_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inquire_mm_parameter_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.inquire_mm_parameter_response, range, display)
  end

  return dissect.inquire_mm_parameter_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Inquire Mm Parameter Request
size_of.inquire_mm_parameter_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  return index
end

-- Display: Inquire Mm Parameter Request
display.inquire_mm_parameter_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Mm Parameter Request
dissect.inquire_mm_parameter_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire Mm Parameter Request
dissect.inquire_mm_parameter_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inquire_mm_parameter_request then
    local length = size_of.inquire_mm_parameter_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inquire_mm_parameter_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.inquire_mm_parameter_request, range, display)
  end

  return dissect.inquire_mm_parameter_request_fields(buffer, offset, packet, parent)
end

-- Size: Party Id Origination Market
size_of.party_id_origination_market = 1

-- Display: Party Id Origination Market
display.party_id_origination_market = function(value)
  if value == 1 then
    return "Party Id Origination Market: Xkfe (1)"
  end

  return "Party Id Origination Market: Unknown("..value..")"
end

-- Dissect: Party Id Origination Market
dissect.party_id_origination_market = function(buffer, offset, packet, parent)
  local length = size_of.party_id_origination_market
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_id_origination_market(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.party_id_origination_market, range, value, display)

  return offset + length, value
end

-- Calculate size of: Enrichment Rules Grp
size_of.enrichment_rules_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.enrichment_rule_id

  index = index + size_of.party_id_origination_market

  index = index + size_of.account

  index = index + size_of.position_effect

  index = index + size_of.party_id_take_up_trading_firm

  index = index + size_of.party_id_order_origination_firm

  index = index + size_of.party_id_beneficiary

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.pad_1

  return index
end

-- Display: Enrichment Rules Grp
display.enrichment_rules_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Enrichment Rules Grp
dissect.enrichment_rules_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Party Id Origination Market: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, party_id_origination_market = dissect.party_id_origination_market(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = dissect.position_effect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, party_id_take_up_trading_firm = dissect.party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String
  index, party_id_order_origination_firm = dissect.party_id_order_origination_firm(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String
  index, party_id_beneficiary = dissect.party_id_beneficiary(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Enrichment Rules Grp
dissect.enrichment_rules_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.enrichment_rules_grp then
    local length = size_of.enrichment_rules_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.enrichment_rules_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.enrichment_rules_grp, range, display)
  end

  return dissect.enrichment_rules_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_enrichment_rules, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inquire Enrichment Rule Id List Response
size_of.inquire_enrichment_rule_id_list_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

  index = index + size_of.last_entity_processed

  index = index + size_of.no_enrichment_rules

  index = index + size_of.pad_6

  -- Calculate field size from count
  local enrichment_rules_grp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + enrichment_rules_grp_count * 64

  return index
end

-- Display: Inquire Enrichment Rule Id List Response
display.inquire_enrichment_rule_id_list_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Enrichment Rule Id List Response
dissect.inquire_enrichment_rule_id_list_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = dissect.last_entity_processed(buffer, index, packet, parent)

  -- No Enrichment Rules: 2 Byte Unsigned Fixed Width Integer
  index, no_enrichment_rules = dissect.no_enrichment_rules(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Enrichment Rules Grp: Struct of 11 fields
  for i = 1, no_enrichment_rules do
    index = dissect.enrichment_rules_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.inquire_enrichment_rule_id_list_response, range, display)
  end

  return dissect.inquire_enrichment_rule_id_list_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Inquire Enrichment Rule Id List Request
size_of.inquire_enrichment_rule_id_list_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.inquire_enrichment_rule_id_list_request, range, display)
  end

  return dissect.inquire_enrichment_rule_id_list_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat Notification
size_of.heartbeat_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.notif_header(buffer, offset + index)

  return index
end

-- Display: Heartbeat Notification
display.heartbeat_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat Notification
dissect.heartbeat_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Notif Header: Struct of 1 fields
  index, notif_header = dissect.notif_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Notification
dissect.heartbeat_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat_notification then
    local length = size_of.heartbeat_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = display.heartbeat_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.heartbeat_notification, range, display)
  end

  return dissect.heartbeat_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat
size_of.heartbeat = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  return index
end

-- Display: Heartbeat
display.heartbeat = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat
dissect.heartbeat_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
dissect.heartbeat = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local length = size_of.heartbeat(buffer, offset)
    local range = buffer(offset, length)
    local display = display.heartbeat(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.heartbeat, range, display)
  end

  return dissect.heartbeat_fields(buffer, offset, packet, parent)
end

-- Size: Secondary Gateway Status
size_of.secondary_gateway_status = 1

-- Display: Secondary Gateway Status
display.secondary_gateway_status = function(value)
  if value == 0 then
    return "Secondary Gateway Status: Standby (0)"
  end
  if value == 1 then
    return "Secondary Gateway Status: Active (1)"
  end

  return "Secondary Gateway Status: Unknown("..value..")"
end

-- Dissect: Secondary Gateway Status
dissect.secondary_gateway_status = function(buffer, offset, packet, parent)
  local length = size_of.secondary_gateway_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.secondary_gateway_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.secondary_gateway_status, range, value, display)

  return offset + length, value
end

-- Size: Gateway Status
size_of.gateway_status = 1

-- Display: Gateway Status
display.gateway_status = function(value)
  if value == 0 then
    return "Gateway Status: Standby (0)"
  end
  if value == 1 then
    return "Gateway Status: Active (1)"
  end

  return "Gateway Status: Unknown("..value..")"
end

-- Dissect: Gateway Status
dissect.gateway_status = function(buffer, offset, packet, parent)
  local length = size_of.gateway_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.gateway_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.gateway_status, range, value, display)

  return offset + length, value
end

-- Size: Secondary Gateway Sub Id
size_of.secondary_gateway_sub_id = 4

-- Display: Secondary Gateway Sub Id
display.secondary_gateway_sub_id = function(value)
  return "Secondary Gateway Sub Id: "..value
end

-- Dissect: Secondary Gateway Sub Id
dissect.secondary_gateway_sub_id = function(buffer, offset, packet, parent)
  local length = size_of.secondary_gateway_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.secondary_gateway_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.secondary_gateway_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Secondary Gateway Id
size_of.secondary_gateway_id = 4

-- Display: Secondary Gateway Id
display.secondary_gateway_id = function(value)
  return "Secondary Gateway Id: "..value
end

-- Dissect: Secondary Gateway Id
dissect.secondary_gateway_id = function(buffer, offset, packet, parent)
  local length = size_of.secondary_gateway_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.secondary_gateway_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.secondary_gateway_id, range, value, display)

  return offset + length, value
end

-- Size: Gateway Sub Id
size_of.gateway_sub_id = 4

-- Display: Gateway Sub Id
display.gateway_sub_id = function(value)
  return "Gateway Sub Id: "..value
end

-- Dissect: Gateway Sub Id
dissect.gateway_sub_id = function(buffer, offset, packet, parent)
  local length = size_of.gateway_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.gateway_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.gateway_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Gateway Id
size_of.gateway_id = 4

-- Display: Gateway Id
display.gateway_id = function(value)
  return "Gateway Id: "..value
end

-- Dissect: Gateway Id
dissect.gateway_id = function(buffer, offset, packet, parent)
  local length = size_of.gateway_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.gateway_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.gateway_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Gateway Response
size_of.gateway_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header(buffer, offset + index)

  index = index + size_of.gateway_id

  index = index + size_of.gateway_sub_id

  index = index + size_of.secondary_gateway_id

  index = index + size_of.secondary_gateway_sub_id

  index = index + size_of.gateway_status

  index = index + size_of.secondary_gateway_status

  index = index + size_of.session_mode

  index = index + size_of.trad_ses_mode

  index = index + size_of.pad_4

  return index
end

-- Display: Gateway Response
display.gateway_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Gateway Response
dissect.gateway_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header: Struct of 4 fields
  index, response_header = dissect.response_header(buffer, index, packet, parent)

  -- Gateway Id: 4 Byte Unsigned Fixed Width Integer
  index, gateway_id = dissect.gateway_id(buffer, index, packet, parent)

  -- Gateway Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, gateway_sub_id = dissect.gateway_sub_id(buffer, index, packet, parent)

  -- Secondary Gateway Id: 4 Byte Unsigned Fixed Width Integer
  index, secondary_gateway_id = dissect.secondary_gateway_id(buffer, index, packet, parent)

  -- Secondary Gateway Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, secondary_gateway_sub_id = dissect.secondary_gateway_sub_id(buffer, index, packet, parent)

  -- Gateway Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, gateway_status = dissect.gateway_status(buffer, index, packet, parent)

  -- Secondary Gateway Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, secondary_gateway_status = dissect.secondary_gateway_status(buffer, index, packet, parent)

  -- Session Mode: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_mode = dissect.session_mode(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trad_ses_mode = dissect.trad_ses_mode(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Response
dissect.gateway_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.gateway_response then
    local length = size_of.gateway_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.gateway_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.gateway_response, range, display)
  end

  return dissect.gateway_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Gateway Request
size_of.gateway_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.party_id_session_id

  index = index + size_of.partition_id

  index = index + size_of.default_cstm_appl_ver_id

  index = index + size_of.password

  index = index + size_of.pad_4

  return index
end

-- Display: Gateway Request
display.gateway_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Gateway Request
dissect.gateway_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = dissect.party_id_session_id(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = dissect.partition_id(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String
  index, default_cstm_appl_ver_id = dissect.default_cstm_appl_ver_id(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = dissect.password(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Request
dissect.gateway_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.gateway_request then
    local length = size_of.gateway_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.gateway_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.gateway_request, range, display)
  end

  return dissect.gateway_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Forced User Logout Notification
size_of.forced_user_logout_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.notif_header(buffer, offset + index)

  index = index + size_of.user_status

  index = index + size_of.pad_3

  index = index + size_of.username

  index = index + size_of.var_text_len

  index = index + size_of.pad_6

  -- Parse runtime size of: Var Text
  index = index + buffer(offset + index - 8, 2):le_uint()

  return index
end

-- Display: Forced User Logout Notification
display.forced_user_logout_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Forced User Logout Notification
dissect.forced_user_logout_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Notif Header: Struct of 1 fields
  index, notif_header = dissect.notif_header(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_status = dissect.user_status(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer
  index, username = dissect.username(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = dissect.var_text_len(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.forced_user_logout_notification, range, display)
  end

  return dissect.forced_user_logout_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Forced Logout Notification
size_of.forced_logout_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.notif_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Notif Header: Struct of 1 fields
  index, notif_header = dissect.notif_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.forced_logout_notification, range, display)
  end

  return dissect.forced_logout_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Enter Tes Trade Request
size_of.enter_tes_trade_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_px

  index = index + size_of.trans_bkd_time

  index = index + size_of.underlying_px

  index = index + size_of.related_close_price

  index = index + size_of.market_segment_id

  index = index + size_of.underlying_settlement_date

  index = index + size_of.underlying_maturity_date

  index = index + size_of.related_trade_id

  index = index + size_of.related_market_segment_id

  index = index + size_of.related_trade_quantity

  index = index + size_of.underlying_qty

  index = index + size_of.negotiation_id

  index = index + size_of.srqs_related_trade_id

  index = index + size_of.trd_type

  index = index + size_of.product_complex

  index = index + size_of.trade_report_type

  index = index + size_of.trade_publish_indicator

  index = index + size_of.no_side_allocs

  index = index + size_of.no_events

  index = index + size_of.no_legs

  index = index + size_of.no_instr_attrib

  index = index + size_of.no_underlying_stips

  index = index + size_of.party_id_settlement_location

  index = index + size_of.hedge_type

  index = index + size_of.trade_report_text

  index = index + size_of.trade_report_id

  index = index + size_of.underlying_security_id

  index = index + size_of.underlying_security_desc

  index = index + size_of.underlying_currency

  index = index + size_of.underlying_issuer

  index = index + size_of.pad_1

  -- Calculate field size from count
  local side_alloc_grp_count = buffer(offset + index - 123, 1):le_uint()
  index = index + side_alloc_grp_count * 24

  -- Calculate field size from count
  local trd_instrmnt_leg_grp_count = buffer(offset + index - 145, 1):le_uint()
  index = index + trd_instrmnt_leg_grp_count * 16

  -- Calculate field size from count
  local instrument_event_grp_count = buffer(offset + index - 162, 1):le_uint()
  index = index + instrument_event_grp_count * 8

  -- Calculate field size from count
  local instrument_attribute_grp_count = buffer(offset + index - 168, 1):le_uint()
  index = index + instrument_attribute_grp_count * 40

  -- Calculate field size from count
  local underlying_stip_grp_count = buffer(offset + index - 207, 1):le_uint()
  index = index + underlying_stip_grp_count * 40

  return index
end

-- Display: Enter Tes Trade Request
display.enter_tes_trade_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Enter Tes Trade Request
dissect.enter_tes_trade_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Unsigned Fixed Width Integer
  index, underlying_px = dissect.underlying_px(buffer, index, packet, parent)

  -- Related Close Price: 8 Byte Unsigned Fixed Width Integer
  index, related_close_price = dissect.related_close_price(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Settlement Date: 4 Byte Unsigned Fixed Width Integer
  index, underlying_settlement_date = dissect.underlying_settlement_date(buffer, index, packet, parent)

  -- Underlying Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, underlying_maturity_date = dissect.underlying_maturity_date(buffer, index, packet, parent)

  -- Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, related_trade_id = dissect.related_trade_id(buffer, index, packet, parent)

  -- Related Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, related_market_segment_id = dissect.related_market_segment_id(buffer, index, packet, parent)

  -- Related Trade Quantity: 4 Byte Signed Fixed Width Integer
  index, related_trade_quantity = dissect.related_trade_quantity(buffer, index, packet, parent)

  -- Underlying Qty: 8 Byte Signed Fixed Width Integer
  index, underlying_qty = dissect.underlying_qty(buffer, index, packet, parent)

  -- Negotiation Id: 4 Byte Unsigned Fixed Width Integer
  index, negotiation_id = dissect.negotiation_id(buffer, index, packet, parent)

  -- Srqs Related Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, srqs_related_trade_id = dissect.srqs_related_trade_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Trade Publish Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_publish_indicator = dissect.trade_publish_indicator(buffer, index, packet, parent)

  -- No Side Allocs: 1 Byte Unsigned Fixed Width Integer
  index, no_side_allocs = dissect.no_side_allocs(buffer, index, packet, parent)

  -- No Events: 1 Byte Unsigned Fixed Width Integer
  index, no_events = dissect.no_events(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- No Instr Attrib: 1 Byte Unsigned Fixed Width Integer
  index, no_instr_attrib = dissect.no_instr_attrib(buffer, index, packet, parent)

  -- No Underlying Stips: 1 Byte Unsigned Fixed Width Integer
  index, no_underlying_stips = dissect.no_underlying_stips(buffer, index, packet, parent)

  -- Party Id Settlement Location: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, party_id_settlement_location = dissect.party_id_settlement_location(buffer, index, packet, parent)

  -- Hedge Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, hedge_type = dissect.hedge_type(buffer, index, packet, parent)

  -- Trade Report Text: 20 Byte Ascii String
  index, trade_report_text = dissect.trade_report_text(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Underlying Security Id: 12 Byte Ascii String
  index, underlying_security_id = dissect.underlying_security_id(buffer, index, packet, parent)

  -- Underlying Security Desc: 30 Byte Ascii String
  index, underlying_security_desc = dissect.underlying_security_desc(buffer, index, packet, parent)

  -- Underlying Currency: 3 Byte Ascii String
  index, underlying_currency = dissect.underlying_currency(buffer, index, packet, parent)

  -- Underlying Issuer: 30 Byte Ascii String
  index, underlying_issuer = dissect.underlying_issuer(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Side Alloc Grp: Struct of 6 fields
  for i = 1, no_side_allocs do
    index = dissect.side_alloc_grp(buffer, index, packet, parent)
  end

  -- Trd Instrmnt Leg Grp: Struct of 2 fields
  for i = 1, no_legs do
    index = dissect.trd_instrmnt_leg_grp(buffer, index, packet, parent)
  end

  -- Instrument Event Grp: Struct of 3 fields
  for i = 1, no_events do
    index = dissect.instrument_event_grp(buffer, index, packet, parent)
  end

  -- Instrument Attribute Grp: Struct of 3 fields
  for i = 1, no_instr_attrib do
    index = dissect.instrument_attribute_grp(buffer, index, packet, parent)
  end

  -- Underlying Stip Grp: Struct of 3 fields
  for i = 1, no_underlying_stips do
    index = dissect.underlying_stip_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.enter_tes_trade_request, range, display)
  end

  return dissect.enter_tes_trade_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Tes Trade Request
size_of.delete_tes_trade_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.package_id

  index = index + size_of.market_segment_id

  index = index + size_of.tes_exec_id

  index = index + size_of.related_market_segment_id

  index = index + size_of.trd_type

  index = index + size_of.trade_report_type

  index = index + size_of.trade_report_id

  index = index + size_of.pad_1

  return index
end

-- Display: Delete Tes Trade Request
display.delete_tes_trade_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Tes Trade Request
dissect.delete_tes_trade_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Related Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, related_market_segment_id = dissect.related_market_segment_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Tes Trade Request
dissect.delete_tes_trade_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_tes_trade_request then
    local length = size_of.delete_tes_trade_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_tes_trade_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_tes_trade_request, range, display)
  end

  return dissect.delete_tes_trade_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Single Request
size_of.delete_order_single_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.simple_security_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.fix_cl_ord_id

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer
  index, simple_security_id = dissect.simple_security_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_order_single_request, range, display)
  end

  return dissect.delete_order_single_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Response
size_of.delete_order_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header_me(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.product_complex

  index = index + size_of.pad_3

  return index
end

-- Display: Delete Order Response
display.delete_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Response
dissect.delete_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header Me: Struct of 11 fields
  index, response_header_me = dissect.response_header_me(buffer, index, packet, parent)

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

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Response
dissect.delete_order_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_response then
    local length = size_of.delete_order_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_order_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_order_response, range, display)
  end

  return dissect.delete_order_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Nr Response
size_of.delete_order_nr_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.product_complex

  index = index + size_of.pad_3

  return index
end

-- Display: Delete Order Nr Response
display.delete_order_nr_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Nr Response
dissect.delete_order_nr_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

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

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Nr Response
dissect.delete_order_nr_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_nr_response then
    local length = size_of.delete_order_nr_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_order_nr_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_order_nr_response, range, display)
  end

  return dissect.delete_order_nr_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Complex Request
size_of.delete_order_complex_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.pad_2

  return index
end

-- Display: Delete Order Complex Request
display.delete_order_complex_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Complex Request
dissect.delete_order_complex_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Complex Request
dissect.delete_order_complex_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_complex_request then
    local length = size_of.delete_order_complex_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_order_complex_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_order_complex_request, range, display)
  end

  return dissect.delete_order_complex_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Broadcast
size_of.delete_order_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header_me(buffer, offset + index)

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.security_id

  index = index + size_of.exec_id

  index = index + size_of.cum_qty

  index = index + size_of.cxl_qty

  index = index + size_of.market_segment_id

  index = index + size_of.party_id_entering_trader

  index = index + size_of.party_id_session_id

  index = index + size_of.exec_restatement_reason

  index = index + size_of.party_id_entering_firm

  index = index + size_of.ord_status

  index = index + size_of.exec_type

  index = index + size_of.product_complex

  index = index + size_of.side

  index = index + size_of.fix_cl_ord_id

  index = index + size_of.pad_1

  return index
end

-- Display: Delete Order Broadcast
display.delete_order_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Broadcast
dissect.delete_order_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header Me: Struct of 10 fields
  index, rbc_header_me = dissect.rbc_header_me(buffer, index, packet, parent)

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

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = dissect.cxl_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = dissect.party_id_session_id(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Broadcast
dissect.delete_order_broadcast = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_broadcast then
    local length = size_of.delete_order_broadcast(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_order_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_order_broadcast, range, display)
  end

  return dissect.delete_order_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Quote Response
size_of.delete_all_quote_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.no_not_affected_securities

  index = index + size_of.pad_6

  -- Calculate field size from count
  local not_affected_securities_grp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_securities_grp_count * 8

  return index
end

-- Display: Delete All Quote Response
display.delete_all_quote_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Quote Response
dissect.delete_all_quote_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_securities = dissect.no_not_affected_securities(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Not Affected Securities Grp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = dissect.not_affected_securities_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_all_quote_response, range, display)
  end

  return dissect.delete_all_quote_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Quote Request
size_of.delete_all_quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_all_quote_request, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.target_party_id_desk_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.target_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Calculate size of: Delete All Quote Broadcast
size_of.delete_all_quote_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header_me(buffer, offset + index)

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
  local not_affected_securities_grp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_securities_grp_count * 8

  return index
end

-- Display: Delete All Quote Broadcast
display.delete_all_quote_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Quote Broadcast
dissect.delete_all_quote_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header Me: Struct of 10 fields
  index, rbc_header_me = dissect.rbc_header_me(buffer, index, packet, parent)

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

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, mass_action_reason = dissect.mass_action_reason(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Target Party Id Desk Id: 3 Byte Ascii String
  index, target_party_id_desk_id = dissect.target_party_id_desk_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  -- Not Affected Securities Grp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = dissect.not_affected_securities_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_all_quote_broadcast, range, display)
  end

  return dissect.delete_all_quote_broadcast_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.not_aff_orig_cl_ord_id, range, value, display)

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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.not_affected_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Not Affected Orders Grp
size_of.not_affected_orders_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.not_affected_order_id

  index = index + size_of.not_aff_orig_cl_ord_id

  return index
end

-- Display: Not Affected Orders Grp
display.not_affected_orders_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Affected Orders Grp
dissect.not_affected_orders_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Not Affected Order Id: 8 Byte Unsigned Fixed Width Integer
  index, not_affected_order_id = dissect.not_affected_order_id(buffer, index, packet, parent)

  -- Not Aff Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, not_aff_orig_cl_ord_id = dissect.not_aff_orig_cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Affected Orders Grp
dissect.not_affected_orders_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.not_affected_orders_grp then
    local length = size_of.not_affected_orders_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.not_affected_orders_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.not_affected_orders_grp, range, display)
  end

  return dissect.not_affected_orders_grp_fields(buffer, offset, packet, parent)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.no_not_affected_orders, range, value, display)

  return offset + length, value
end

-- Calculate size of: Delete All Order Response
size_of.delete_all_order_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.response_header_me(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.no_not_affected_orders

  index = index + size_of.pad_6

  -- Calculate field size from count
  local not_affected_orders_grp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_orders_grp_count * 16

  return index
end

-- Display: Delete All Order Response
display.delete_all_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Response
dissect.delete_all_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Response Header Me: Struct of 11 fields
  index, response_header_me = dissect.response_header_me(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- No Not Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_orders = dissect.no_not_affected_orders(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  -- Not Affected Orders Grp: Struct of 2 fields
  for i = 1, no_not_affected_orders do
    index = dissect.not_affected_orders_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_all_order_response, range, display)
  end

  return dissect.delete_all_order_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Order Request
size_of.delete_all_order_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.target_party_id_executing_trader

  index = index + size_of.side

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.pad_1

  return index
end

-- Display: Delete All Order Request
display.delete_all_order_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Request
dissect.delete_all_order_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

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

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Request
dissect.delete_all_order_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_all_order_request then
    local length = size_of.delete_all_order_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_all_order_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_all_order_request, range, display)
  end

  return dissect.delete_all_order_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Order Quote Event Broadcast
size_of.delete_all_order_quote_event_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header_me(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header Me: Struct of 10 fields
  index, rbc_header_me = dissect.rbc_header_me(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_all_order_quote_event_broadcast, range, display)
  end

  return dissect.delete_all_order_quote_event_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Order Nr Response
size_of.delete_all_order_nr_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_all_order_nr_response, range, display)
  end

  return dissect.delete_all_order_nr_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete All Order Broadcast
size_of.delete_all_order_broadcast = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.rbc_header_me(buffer, offset + index)

  index = index + size_of.mass_action_report_id

  index = index + size_of.security_id

  index = index + size_of.price

  index = index + size_of.market_segment_id

  index = index + size_of.target_party_id_session_id

  index = index + size_of.target_party_id_executing_trader

  index = index + size_of.party_id_entering_trader

  index = index + size_of.no_not_affected_orders

  index = index + size_of.party_id_entering_firm

  index = index + size_of.mass_action_reason

  index = index + size_of.exec_inst

  index = index + size_of.side

  index = index + size_of.pad_2

  -- Calculate field size from count
  local not_affected_orders_grp_count = buffer(offset + index - 8, 2):le_uint()
  index = index + not_affected_orders_grp_count * 16

  return index
end

-- Display: Delete All Order Broadcast
display.delete_all_order_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Broadcast
dissect.delete_all_order_broadcast_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Rbc Header Me: Struct of 10 fields
  index, rbc_header_me = dissect.rbc_header_me(buffer, index, packet, parent)

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

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, mass_action_reason = dissect.mass_action_reason(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Not Affected Orders Grp: Struct of 2 fields
  for i = 1, no_not_affected_orders do
    index = dissect.not_affected_orders_grp(buffer, index, packet, parent)
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.delete_all_order_broadcast, range, display)
  end

  return dissect.delete_all_order_broadcast_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cross Request Response
size_of.cross_request_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.cross_request_response, range, display)
  end

  return dissect.cross_request_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cross Request
size_of.cross_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.market_segment_id

  index = index + size_of.order_qty

  index = index + size_of.compliance_text

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.cross_request, range, display)
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

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.appl_id_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broadcast Error Notification
size_of.broadcast_error_notification = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.notif_header(buffer, offset + index)

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

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Notif Header: Struct of 1 fields
  index, notif_header = dissect.notif_header(buffer, index, packet, parent)

  -- Appl Id Status: 4 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, appl_id_status = dissect.appl_id_status(buffer, index, packet, parent)

  -- Ref Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, ref_appl_sub_id = dissect.ref_appl_sub_id(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = dissect.var_text_len(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.broadcast_error_notification, range, display)
  end

  return dissect.broadcast_error_notification_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Approve Tes Trade Request
size_of.approve_tes_trade_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.party_id_client_id

  index = index + size_of.party_id_investment_decision_maker

  index = index + size_of.executing_trader

  index = index + size_of.package_id

  index = index + size_of.alloc_id

  index = index + size_of.alloc_qty

  index = index + size_of.tes_exec_id

  index = index + size_of.market_segment_id

  index = index + size_of.related_market_segment_id

  index = index + size_of.trd_type

  index = index + size_of.trading_capacity

  index = index + size_of.trade_report_type

  index = index + size_of.side

  index = index + size_of.order_attribute_liquidity_provision

  index = index + size_of.party_id_investment_decision_maker_qualifier

  index = index + size_of.executing_trader_qualifier

  index = index + size_of.trade_report_id

  index = index + size_of.position_effect

  index = index + size_of.party_executing_firm

  index = index + size_of.party_executing_trader

  index = index + size_of.account

  index = index + size_of.free_text_1

  index = index + size_of.free_text_2

  index = index + size_of.free_text_3

  index = index + size_of.party_id_take_up_trading_firm

  index = index + size_of.party_id_position_account

  index = index + size_of.party_id_order_origination_firm

  index = index + size_of.party_id_beneficiary

  index = index + size_of.party_id_location_id

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.compliance_text

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

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = dissect.executing_trader(buffer, index, packet, parent)

  -- Package Id: 4 Byte Unsigned Fixed Width Integer
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Alloc Id: 4 Byte Unsigned Fixed Width Integer
  index, alloc_id = dissect.alloc_id(buffer, index, packet, parent)

  -- Alloc Qty: 4 Byte Signed Fixed Width Integer
  index, alloc_qty = dissect.alloc_qty(buffer, index, packet, parent)

  -- Tes Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, tes_exec_id = dissect.tes_exec_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Related Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, related_market_segment_id = dissect.related_market_segment_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trade_report_type = dissect.trade_report_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Trade Report Id: 20 Byte Ascii String
  index, trade_report_id = dissect.trade_report_id(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = dissect.position_effect(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = dissect.party_executing_firm(buffer, index, packet, parent)

  -- Party Executing Trader: 6 Byte Ascii String
  index, party_executing_trader = dissect.party_executing_trader(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = dissect.account(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String
  index, free_text_3 = dissect.free_text_3(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String
  index, party_id_take_up_trading_firm = dissect.party_id_take_up_trading_firm(buffer, index, packet, parent)

  -- Party Id Position Account: 32 Byte Ascii String
  index, party_id_position_account = dissect.party_id_position_account(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String
  index, party_id_order_origination_firm = dissect.party_id_order_origination_firm(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String
  index, party_id_beneficiary = dissect.party_id_beneficiary(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String
  index, party_id_location_id = dissect.party_id_location_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

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
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.approve_tes_trade_request, range, display)
  end

  return dissect.approve_tes_trade_request_fields(buffer, offset, packet, parent)
end

-- Size: Symbol
size_of.symbol = 4

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Exercise Style
size_of.exercise_style = 1

-- Display: Exercise Style
display.exercise_style = function(value)
  if value == 0 then
    return "Exercise Style: European (0)"
  end
  if value == 1 then
    return "Exercise Style: American (1)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
dissect.exercise_style = function(buffer, offset, packet, parent)
  local length = size_of.exercise_style
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.exercise_style(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Size: Put Or Call
size_of.put_or_call = 1

-- Display: Put Or Call
display.put_or_call = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Opt Attribute
size_of.opt_attribute = 1

-- Display: Opt Attribute
display.opt_attribute = function(value)
  return "Opt Attribute: "..value
end

-- Dissect: Opt Attribute
dissect.opt_attribute = function(buffer, offset, packet, parent)
  local length = size_of.opt_attribute
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.opt_attribute(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.opt_attribute, range, value, display)

  return offset + length, value
end

-- Size: Settl Method
size_of.settl_method = 1

-- Display: Settl Method
display.settl_method = function(value)
  if value == "C" then
    return "Settl Method: Cash Settlement (C)"
  end
  if value == "P" then
    return "Settl Method: Physical Settlement (P)"
  end

  return "Settl Method: Unknown("..value..")"
end

-- Dissect: Settl Method
dissect.settl_method = function(buffer, offset, packet, parent)
  local length = size_of.settl_method
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.settl_method(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.settl_method, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
size_of.maturity_date = 4

-- Display: Maturity Date
display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
size_of.strike_price = 8

-- Display: Strike Price
display.strike_price = function(value)
  local factor = 100000000
  return "Strike Price: "..value:tonumber()/factor
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local length = size_of.strike_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Security Response Id
size_of.security_response_id = 8

-- Display: Security Response Id
display.security_response_id = function(value)
  return "Security Response Id: "..value
end

-- Dissect: Security Response Id
dissect.security_response_id = function(buffer, offset, packet, parent)
  local length = size_of.security_response_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.security_response_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.security_response_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Flexible Instrument Response
size_of.add_flexible_instrument_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

  index = index + size_of.security_response_id

  index = index + size_of.security_id

  index = index + size_of.strike_price

  index = index + size_of.market_segment_id

  index = index + size_of.maturity_date

  index = index + size_of.product_complex

  index = index + size_of.settl_method

  index = index + size_of.opt_attribute

  index = index + size_of.put_or_call

  index = index + size_of.exercise_style

  index = index + size_of.symbol

  index = index + size_of.pad_7

  return index
end

-- Display: Add Flexible Instrument Response
display.add_flexible_instrument_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Flexible Instrument Response
dissect.add_flexible_instrument_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

  -- Security Response Id: 8 Byte Unsigned Fixed Width Integer
  index, security_response_id = dissect.security_response_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- Settl Method: 1 Byte Ascii String Enum with 2 values
  index, settl_method = dissect.settl_method(buffer, index, packet, parent)

  -- Opt Attribute: 1 Byte Unsigned Fixed Width Integer
  index, opt_attribute = dissect.opt_attribute(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = dissect.put_or_call(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, exercise_style = dissect.exercise_style(buffer, index, packet, parent)

  -- Symbol: 4 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Flexible Instrument Response
dissect.add_flexible_instrument_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_flexible_instrument_response then
    local length = size_of.add_flexible_instrument_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_flexible_instrument_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.add_flexible_instrument_response, range, display)
  end

  return dissect.add_flexible_instrument_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Flexible Instrument Request
size_of.add_flexible_instrument_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.strike_price

  index = index + size_of.market_segment_id

  index = index + size_of.maturity_date

  index = index + size_of.settl_method

  index = index + size_of.opt_attribute

  index = index + size_of.put_or_call

  index = index + size_of.exercise_style

  index = index + size_of.compliance_text

  return index
end

-- Display: Add Flexible Instrument Request
display.add_flexible_instrument_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Flexible Instrument Request
dissect.add_flexible_instrument_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Settl Method: 1 Byte Ascii String Enum with 2 values
  index, settl_method = dissect.settl_method(buffer, index, packet, parent)

  -- Opt Attribute: 1 Byte Unsigned Fixed Width Integer
  index, opt_attribute = dissect.opt_attribute(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = dissect.put_or_call(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, exercise_style = dissect.exercise_style(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Flexible Instrument Request
dissect.add_flexible_instrument_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_flexible_instrument_request then
    local length = size_of.add_flexible_instrument_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_flexible_instrument_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.add_flexible_instrument_request, range, display)
  end

  return dissect.add_flexible_instrument_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrmt Leg Grp
size_of.instrmt_leg_grp = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_security_id

  index = index + size_of.leg_price

  index = index + size_of.leg_symbol

  index = index + size_of.leg_ratio_qty

  index = index + size_of.leg_side

  index = index + size_of.leg_security_type

  index = index + size_of.pad_6

  return index
end

-- Display: Instrmt Leg Grp
display.instrmt_leg_grp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrmt Leg Grp
dissect.instrmt_leg_grp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Unsigned Fixed Width Integer
  index, leg_price = dissect.leg_price(buffer, index, packet, parent)

  -- Leg Symbol: 4 Byte Signed Fixed Width Integer
  index, leg_symbol = dissect.leg_symbol(buffer, index, packet, parent)

  -- Leg Ratio Qty: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio_qty = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_security_type = dissect.leg_security_type(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmt Leg Grp
dissect.instrmt_leg_grp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrmt_leg_grp then
    local length = size_of.instrmt_leg_grp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrmt_leg_grp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.instrmt_leg_grp, range, display)
  end

  return dissect.instrmt_leg_grp_fields(buffer, offset, packet, parent)
end

-- Size: Implied Market Indicator
size_of.implied_market_indicator = 1

-- Display: Implied Market Indicator
display.implied_market_indicator = function(value)
  if value == 0 then
    return "Implied Market Indicator: Notimplied (0)"
  end
  if value == 3 then
    return "Implied Market Indicator: Impliedinout (3)"
  end

  return "Implied Market Indicator: Unknown("..value..")"
end

-- Dissect: Implied Market Indicator
dissect.implied_market_indicator = function(buffer, offset, packet, parent)
  local length = size_of.implied_market_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.implied_market_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.implied_market_indicator, range, value, display)

  return offset + length, value
end

-- Size: Multileg Model
size_of.multileg_model = 1

-- Display: Multileg Model
display.multileg_model = function(value)
  if value == 0 then
    return "Multileg Model: Predefined Multileg Security (0)"
  end
  if value == 1 then
    return "Multileg Model: Userdefined Multleg (1)"
  end

  return "Multileg Model: Unknown("..value..")"
end

-- Dissect: Multileg Model
dissect.multileg_model = function(buffer, offset, packet, parent)
  local length = size_of.multileg_model
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.multileg_model(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.multileg_model, range, value, display)

  return offset + length, value
end

-- Size: Number Of Securities
size_of.number_of_securities = 4

-- Display: Number Of Securities
display.number_of_securities = function(value)
  return "Number Of Securities: "..value
end

-- Dissect: Number Of Securities
dissect.number_of_securities = function(buffer, offset, packet, parent)
  local length = size_of.number_of_securities
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.number_of_securities(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.number_of_securities, range, value, display)

  return offset + length, value
end

-- Size: Last Update Time
size_of.last_update_time = 8

-- Display: Last Update Time
display.last_update_time = function(value)
  return "Last Update Time: "..value
end

-- Dissect: Last Update Time
dissect.last_update_time = function(buffer, offset, packet, parent)
  local length = size_of.last_update_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_update_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Size: High Limit Price
size_of.high_limit_price = 8

-- Display: High Limit Price
display.high_limit_price = function(value)
  local factor = 100000000
  return "High Limit Price: "..value:tonumber()/factor
end

-- Dissect: High Limit Price
dissect.high_limit_price = function(buffer, offset, packet, parent)
  local length = size_of.high_limit_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.high_limit_price(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Size: Low Limit Price
size_of.low_limit_price = 8

-- Display: Low Limit Price
display.low_limit_price = function(value)
  local factor = 100000000
  return "Low Limit Price: "..value:tonumber()/factor
end

-- Dissect: Low Limit Price
dissect.low_limit_price = function(buffer, offset, packet, parent)
  local length = size_of.low_limit_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.low_limit_price(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eti_t7_v6_1.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Complex Instrument Response
size_of.add_complex_instrument_response = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_out(buffer, offset + index)

  index = index + size_of.nr_response_header_me(buffer, offset + index)

  index = index + size_of.low_limit_price

  index = index + size_of.high_limit_price

  index = index + size_of.security_id

  index = index + size_of.last_update_time

  index = index + size_of.security_response_id

  index = index + size_of.market_segment_id

  index = index + size_of.number_of_securities

  index = index + size_of.security_sub_type

  index = index + size_of.multileg_model

  index = index + size_of.implied_market_indicator

  index = index + size_of.product_complex

  index = index + size_of.no_legs

  -- Calculate field size from count
  local instrmt_leg_grp_count = buffer(offset + index - 1, 1):le_uint()
  index = index + instrmt_leg_grp_count * 32

  return index
end

-- Display: Add Complex Instrument Response
display.add_complex_instrument_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Complex Instrument Response
dissect.add_complex_instrument_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header Out: Struct of 3 fields
  index, message_header_out = dissect.message_header_out(buffer, index, packet, parent)

  -- Nr Response Header Me: Struct of 9 fields
  index, nr_response_header_me = dissect.nr_response_header_me(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Unsigned Fixed Width Integer
  index, low_limit_price = dissect.low_limit_price(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Unsigned Fixed Width Integer
  index, high_limit_price = dissect.high_limit_price(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = dissect.last_update_time(buffer, index, packet, parent)

  -- Security Response Id: 8 Byte Unsigned Fixed Width Integer
  index, security_response_id = dissect.security_response_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Number Of Securities: 4 Byte Signed Fixed Width Integer
  index, number_of_securities = dissect.number_of_securities(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer
  index, security_sub_type = dissect.security_sub_type(buffer, index, packet, parent)

  -- Multileg Model: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, multileg_model = dissect.multileg_model(buffer, index, packet, parent)

  -- Implied Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, implied_market_indicator = dissect.implied_market_indicator(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Instrmt Leg Grp: Struct of 7 fields
  for i = 1, no_legs do
    index = dissect.instrmt_leg_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Add Complex Instrument Response
dissect.add_complex_instrument_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.add_complex_instrument_response then
    local length = size_of.add_complex_instrument_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_complex_instrument_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.add_complex_instrument_response, range, display)
  end

  return dissect.add_complex_instrument_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Complex Instrument Request
size_of.add_complex_instrument_request = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header_in(buffer, offset + index)

  index = index + size_of.request_header(buffer, offset + index)

  index = index + size_of.market_segment_id

  index = index + size_of.security_sub_type

  index = index + size_of.product_complex

  index = index + size_of.no_legs

  index = index + size_of.compliance_text

  index = index + size_of.pad_2

  -- Calculate field size from count
  local instrmt_leg_grp_count = buffer(offset + index - 23, 1):le_uint()
  index = index + instrmt_leg_grp_count * 32

  return index
end

-- Display: Add Complex Instrument Request
display.add_complex_instrument_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Complex Instrument Request
dissect.add_complex_instrument_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header In: Struct of 4 fields
  index, message_header_in = dissect.message_header_in(buffer, index, packet, parent)

  -- Request Header: Struct of 2 fields
  index, request_header = dissect.request_header(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer
  index, security_sub_type = dissect.security_sub_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = dissect.product_complex(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String
  index, compliance_text = dissect.compliance_text(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = dissect.pad_2(buffer, index, packet, parent)

  -- Instrmt Leg Grp: Struct of 7 fields
  for i = 1, no_legs do
    index = dissect.instrmt_leg_grp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Add Complex Instrument Request
dissect.add_complex_instrument_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.add_complex_instrument_request then
    local length = size_of.add_complex_instrument_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_complex_instrument_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eti_t7_v6_1.fields.add_complex_instrument_request, range, display)
  end

  return dissect.add_complex_instrument_request_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local offset = 0

  -- Dependency element: Template Id
  local template_id = buffer(4, 2):le_uint()

  -- Dissect Add Complex Instrument Request
  if template_id == 10301 then
    return dissect.add_complex_instrument_request(buffer, offset, packet, parent)
  end
  -- Dissect Add Complex Instrument Response
  if template_id == 10302 then
    return dissect.add_complex_instrument_response(buffer, offset, packet, parent)
  end
  -- Dissect Add Flexible Instrument Request
  if template_id == 10309 then
    return dissect.add_flexible_instrument_request(buffer, offset, packet, parent)
  end
  -- Dissect Add Flexible Instrument Response
  if template_id == 10310 then
    return dissect.add_flexible_instrument_response(buffer, offset, packet, parent)
  end
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
  -- Dissect Delete Order Complex Request
  if template_id == 10123 then
    return dissect.delete_order_complex_request(buffer, offset, packet, parent)
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
  -- Dissect Forced Logout Notification
  if template_id == 10012 then
    return dissect.forced_logout_notification(buffer, offset, packet, parent)
  end
  -- Dissect Forced User Logout Notification
  if template_id == 10043 then
    return dissect.forced_user_logout_notification(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Request
  if template_id == 10020 then
    return dissect.gateway_request(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Response
  if template_id == 10021 then
    return dissect.gateway_response(buffer, offset, packet, parent)
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
  -- Dissect Inquire Mm Parameter Request
  if template_id == 10305 then
    return dissect.inquire_mm_parameter_request(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Mm Parameter Response
  if template_id == 10306 then
    return dissect.inquire_mm_parameter_response(buffer, offset, packet, parent)
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
  -- Dissect Mm Parameter Definition Request
  if template_id == 10303 then
    return dissect.mm_parameter_definition_request(buffer, offset, packet, parent)
  end
  -- Dissect Mm Parameter Definition Response
  if template_id == 10304 then
    return dissect.mm_parameter_definition_response(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Request
  if template_id == 10405 then
    return dissect.mass_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Response
  if template_id == 10406 then
    return dissect.mass_quote_response(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Complex Request
  if template_id == 10114 then
    return dissect.modify_order_complex_request(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Complex Short Request
  if template_id == 10130 then
    return dissect.modify_order_complex_short_request(buffer, offset, packet, parent)
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
  -- Dissect New Order Complex Request
  if template_id == 10113 then
    return dissect.new_order_complex_request(buffer, offset, packet, parent)
  end
  -- Dissect New Order Complex Short Request
  if template_id == 10129 then
    return dissect.new_order_complex_short_request(buffer, offset, packet, parent)
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
  -- Dissect Rfq Request
  if template_id == 10401 then
    return dissect.rfq_request(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Response
  if template_id == 10402 then
    return dissect.rfq_response(buffer, offset, packet, parent)
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
  -- Dissect Risk Notification Broadcast
  if template_id == 10033 then
    return dissect.risk_notification_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Create Deal Notification
  if template_id == 10708 then
    return dissect.srqs_create_deal_notification(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Deal Notification
  if template_id == 10709 then
    return dissect.srqs_deal_notification(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Deal Response
  if template_id == 10705 then
    return dissect.srqs_deal_response(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Enter Quote Request
  if template_id == 10702 then
    return dissect.srqs_enter_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Hit Quote Request
  if template_id == 10704 then
    return dissect.srqs_hit_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Negotiation Notification
  if template_id == 10713 then
    return dissect.srqs_negotiation_notification(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Negotiation Requester Notification
  if template_id == 10712 then
    return dissect.srqs_negotiation_requester_notification(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Negotiation Status Notification
  if template_id == 10715 then
    return dissect.srqs_negotiation_status_notification(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Open Negotiation Notification
  if template_id == 10711 then
    return dissect.srqs_open_negotiation_notification(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Open Negotiation Request
  if template_id == 10700 then
    return dissect.srqs_open_negotiation_request(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Open Negotiation Requester Notification
  if template_id == 10710 then
    return dissect.srqs_open_negotiation_requester_notification(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Quote Notification
  if template_id == 10707 then
    return dissect.srqs_quote_notification(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Quote Response
  if template_id == 10703 then
    return dissect.srqs_quote_response(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Status Broadcast
  if template_id == 10714 then
    return dissect.srqs_status_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Update Deal Status Request
  if template_id == 10706 then
    return dissect.srqs_update_deal_status_request(buffer, offset, packet, parent)
  end
  -- Dissect Srqs Update Negotiation Request
  if template_id == 10701 then
    return dissect.srqs_update_negotiation_request(buffer, offset, packet, parent)
  end
  -- Dissect Service Availability Broadcast
  if template_id == 10030 then
    return dissect.service_availability_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Service Availability Market Broadcast
  if template_id == 10044 then
    return dissect.service_availability_market_broadcast(buffer, offset, packet, parent)
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
  -- Dissect Tes Upload Broadcast
  if template_id == 10613 then
    return dissect.tes_upload_broadcast(buffer, offset, packet, parent)
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
  -- Dissect Unsubscribe Request
  if template_id == 10006 then
    return dissect.unsubscribe_request(buffer, offset, packet, parent)
  end
  -- Dissect Unsubscribe Response
  if template_id == 10007 then
    return dissect.unsubscribe_response(buffer, offset, packet, parent)
  end
  -- Dissect Upload Tes Trade Request
  if template_id == 10612 then
    return dissect.upload_tes_trade_request(buffer, offset, packet, parent)
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

  return offset
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function eurex_derivatives_eti_t7_v6_1.init()
end

-- Dissector for Eurex Derivatives Eti T7 6.1
function eurex_derivatives_eti_t7_v6_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = eurex_derivatives_eti_t7_v6_1.name

  -- Dissect protocol
  local protocol = parent:add(eurex_derivatives_eti_t7_v6_1, buffer(), eurex_derivatives_eti_t7_v6_1.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, eurex_derivatives_eti_t7_v6_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.eurex_derivatives_eti_t7_v6_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Eurex Derivatives Eti T7 6.1
local function eurex_derivatives_eti_t7_v6_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.eurex_derivatives_eti_t7_v6_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = eurex_derivatives_eti_t7_v6_1
  eurex_derivatives_eti_t7_v6_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Eurex Derivatives Eti T7 6.1
eurex_derivatives_eti_t7_v6_1:register_heuristic("tcp", eurex_derivatives_eti_t7_v6_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 6.1
--   Date: Wednesday, May 16, 2018
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
