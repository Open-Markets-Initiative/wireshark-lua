-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex Derivatives Eti T7 2.5 Protocol
local omi_eurex_derivatives_eti_t7_v2_5 = Proto("Eurex.Derivatives.Eti.T7.v2.5.Lua", "Eurex Derivatives Eti T7 2.5")

-- Protocol table
local eurex_derivatives_eti_t7_v2_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex Derivatives Eti T7 2.5 Fields
omi_eurex_derivatives_eti_t7_v2_5.fields.account = ProtoField.new("Account", "eurex.derivatives.eti.t7.v2.5.account", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "eurex.derivatives.eti.t7.v2.5.aggressorindicator", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.alignment_padding = ProtoField.new("Alignment Padding", "eurex.derivatives.eti.t7.v2.5.alignmentpadding", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_beg_msg_id = ProtoField.new("Appl Beg Msg Id", "eurex.derivatives.eti.t7.v2.5.applbegmsgid", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_beg_seq_num = ProtoField.new("Appl Beg Seq Num", "eurex.derivatives.eti.t7.v2.5.applbegseqnum", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_end_msg_id = ProtoField.new("Appl End Msg Id", "eurex.derivatives.eti.t7.v2.5.applendmsgid", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_end_seq_num = ProtoField.new("Appl End Seq Num", "eurex.derivatives.eti.t7.v2.5.applendseqnum", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_id = ProtoField.new("Appl Id", "eurex.derivatives.eti.t7.v2.5.applid", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_id_status = ProtoField.new("Appl Id Status", "eurex.derivatives.eti.t7.v2.5.applidstatus", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_msg_id = ProtoField.new("Appl Msg Id", "eurex.derivatives.eti.t7.v2.5.applmsgid", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_resend_flag = ProtoField.new("Appl Resend Flag", "eurex.derivatives.eti.t7.v2.5.applresendflag", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_seq_indicator = ProtoField.new("Appl Seq Indicator", "eurex.derivatives.eti.t7.v2.5.applseqindicator", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "eurex.derivatives.eti.t7.v2.5.applseqnum", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_seq_status = ProtoField.new("Appl Seq Status", "eurex.derivatives.eti.t7.v2.5.applseqstatus", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_seq_trade_date = ProtoField.new("Appl Seq Trade Date", "eurex.derivatives.eti.t7.v2.5.applseqtradedate", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_sub_id = ProtoField.new("Appl Sub Id", "eurex.derivatives.eti.t7.v2.5.applsubid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_total_message_count = ProtoField.new("Appl Total Message Count", "eurex.derivatives.eti.t7.v2.5.appltotalmessagecount", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_usage_orders = ProtoField.new("Appl Usage Orders", "eurex.derivatives.eti.t7.v2.5.applusageorders", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.appl_usage_quotes = ProtoField.new("Appl Usage Quotes", "eurex.derivatives.eti.t7.v2.5.applusagequotes", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.application_system_name = ProtoField.new("Application System Name", "eurex.derivatives.eti.t7.v2.5.applicationsystemname", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.application_system_vendor = ProtoField.new("Application System Vendor", "eurex.derivatives.eti.t7.v2.5.applicationsystemvendor", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.application_system_version = ProtoField.new("Application System Version", "eurex.derivatives.eti.t7.v2.5.applicationsystemversion", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.bid_cxl_size = ProtoField.new("Bid Cxl Size", "eurex.derivatives.eti.t7.v2.5.bidcxlsize", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.bid_px = ProtoField.new("Bid Px", "eurex.derivatives.eti.t7.v2.5.bidpx", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.bid_size = ProtoField.new("Bid Size", "eurex.derivatives.eti.t7.v2.5.bidsize", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.body_len = ProtoField.new("Body Len", "eurex.derivatives.eti.t7.v2.5.bodylen", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "eurex.derivatives.eti.t7.v2.5.clordid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.clearing_trade_price = ProtoField.new("Clearing Trade Price", "eurex.derivatives.eti.t7.v2.5.clearingtradeprice", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.clearing_trade_qty = ProtoField.new("Clearing Trade Qty", "eurex.derivatives.eti.t7.v2.5.clearingtradeqty", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.compliance_id = ProtoField.new("Compliance Id", "eurex.derivatives.eti.t7.v2.5.complianceid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.compliance_text = ProtoField.new("Compliance Text", "eurex.derivatives.eti.t7.v2.5.compliancetext", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.cum_qty = ProtoField.new("Cum Qty", "eurex.derivatives.eti.t7.v2.5.cumqty", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "eurex.derivatives.eti.t7.v2.5.custorderhandlinginst", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.cxl_qty = ProtoField.new("Cxl Qty", "eurex.derivatives.eti.t7.v2.5.cxlqty", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.default_cstm_appl_ver_id = ProtoField.new("Default Cstm Appl Ver Id", "eurex.derivatives.eti.t7.v2.5.defaultcstmapplverid", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delta = ProtoField.new("Delta", "eurex.derivatives.eti.t7.v2.5.delta", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.enrichment_rule_id = ProtoField.new("Enrichment Rule Id", "eurex.derivatives.eti.t7.v2.5.enrichmentruleid", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.enrichment_rules_grp_comp = ProtoField.new("Enrichment Rules Grp Comp", "eurex.derivatives.eti.t7.v2.5.enrichmentrulesgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.exec_id = ProtoField.new("Exec Id", "eurex.derivatives.eti.t7.v2.5.execid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.exec_inst = ProtoField.new("Exec Inst", "eurex.derivatives.eti.t7.v2.5.execinst", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "eurex.derivatives.eti.t7.v2.5.execrestatementreason", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.exec_type = ProtoField.new("Exec Type", "eurex.derivatives.eti.t7.v2.5.exectype", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.expire_date = ProtoField.new("Expire Date", "eurex.derivatives.eti.t7.v2.5.expiredate", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.exposure_duration = ProtoField.new("Exposure Duration", "eurex.derivatives.eti.t7.v2.5.exposureduration", ftypes.INT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "eurex.derivatives.eti.t7.v2.5.fillexecid", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.fill_liquidity_ind = ProtoField.new("Fill Liquidity Ind", "eurex.derivatives.eti.t7.v2.5.fillliquidityind", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.fill_match_id = ProtoField.new("Fill Match Id", "eurex.derivatives.eti.t7.v2.5.fillmatchid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.fill_px = ProtoField.new("Fill Px", "eurex.derivatives.eti.t7.v2.5.fillpx", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.fill_qty = ProtoField.new("Fill Qty", "eurex.derivatives.eti.t7.v2.5.fillqty", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.fills_grp_comp = ProtoField.new("Fills Grp Comp", "eurex.derivatives.eti.t7.v2.5.fillsgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.fix_engine_name = ProtoField.new("Fix Engine Name", "eurex.derivatives.eti.t7.v2.5.fixenginename", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.fix_engine_vendor = ProtoField.new("Fix Engine Vendor", "eurex.derivatives.eti.t7.v2.5.fixenginevendor", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.fix_engine_version = ProtoField.new("Fix Engine Version", "eurex.derivatives.eti.t7.v2.5.fixengineversion", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.free_text_1 = ProtoField.new("Free Text 1", "eurex.derivatives.eti.t7.v2.5.freetext1", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.free_text_2 = ProtoField.new("Free Text 2", "eurex.derivatives.eti.t7.v2.5.freetext2", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.free_text_3 = ProtoField.new("Free Text 3", "eurex.derivatives.eti.t7.v2.5.freetext3", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.gateway_id = ProtoField.new("Gateway Id", "eurex.derivatives.eti.t7.v2.5.gatewayid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.gateway_sub_id = ProtoField.new("Gateway Sub Id", "eurex.derivatives.eti.t7.v2.5.gatewaysubid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.headline = ProtoField.new("Headline", "eurex.derivatives.eti.t7.v2.5.headline", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "eurex.derivatives.eti.t7.v2.5.heartbtint", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.high_limit_price = ProtoField.new("High Limit Price", "eurex.derivatives.eti.t7.v2.5.highlimitprice", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "eurex.derivatives.eti.t7.v2.5.impliedmarketindicator", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.instrmnt_leg_exec_grp_comp = ProtoField.new("Instrmnt Leg Exec Grp Comp", "eurex.derivatives.eti.t7.v2.5.instrmntlegexecgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.instrmt_leg_grp_comp = ProtoField.new("Instrmt Leg Grp Comp", "eurex.derivatives.eti.t7.v2.5.instrmtleggrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.last_entity_processed = ProtoField.new("Last Entity Processed", "eurex.derivatives.eti.t7.v2.5.lastentityprocessed", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.last_fragment = ProtoField.new("Last Fragment", "eurex.derivatives.eti.t7.v2.5.lastfragment", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.last_px = ProtoField.new("Last Px", "eurex.derivatives.eti.t7.v2.5.lastpx", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.last_qty = ProtoField.new("Last Qty", "eurex.derivatives.eti.t7.v2.5.lastqty", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.last_update_time = ProtoField.new("Last Update Time", "eurex.derivatives.eti.t7.v2.5.lastupdatetime", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.leaves_qty = ProtoField.new("Leaves Qty", "eurex.derivatives.eti.t7.v2.5.leavesqty", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_account = ProtoField.new("Leg Account", "eurex.derivatives.eti.t7.v2.5.legaccount", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_exec_id = ProtoField.new("Leg Exec Id", "eurex.derivatives.eti.t7.v2.5.legexecid", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_last_px = ProtoField.new("Leg Last Px", "eurex.derivatives.eti.t7.v2.5.leglastpx", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "eurex.derivatives.eti.t7.v2.5.leglastqty", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_ord_grp_comp = ProtoField.new("Leg Ord Grp Comp", "eurex.derivatives.eti.t7.v2.5.legordgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_position_effect = ProtoField.new("Leg Position Effect", "eurex.derivatives.eti.t7.v2.5.legpositioneffect", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_price = ProtoField.new("Leg Price", "eurex.derivatives.eti.t7.v2.5.legprice", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "eurex.derivatives.eti.t7.v2.5.legratioqty", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_security_id = ProtoField.new("Leg Security Id", "eurex.derivatives.eti.t7.v2.5.legsecurityid", ftypes.INT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_security_type = ProtoField.new("Leg Security Type", "eurex.derivatives.eti.t7.v2.5.legsecuritytype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_side = ProtoField.new("Leg Side", "eurex.derivatives.eti.t7.v2.5.legside", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_symbol = ProtoField.new("Leg Symbol", "eurex.derivatives.eti.t7.v2.5.legsymbol", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.list_update_action = ProtoField.new("List Update Action", "eurex.derivatives.eti.t7.v2.5.listupdateaction", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.low_limit_price = ProtoField.new("Low Limit Price", "eurex.derivatives.eti.t7.v2.5.lowlimitprice", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.market_id = ProtoField.new("Market Id", "eurex.derivatives.eti.t7.v2.5.marketid", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.derivatives.eti.t7.v2.5.marketsegmentid", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.mass_action_reason = ProtoField.new("Mass Action Reason", "eurex.derivatives.eti.t7.v2.5.massactionreason", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "eurex.derivatives.eti.t7.v2.5.massactionreportid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.mass_action_type = ProtoField.new("Mass Action Type", "eurex.derivatives.eti.t7.v2.5.massactiontype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.match_date = ProtoField.new("Match Date", "eurex.derivatives.eti.t7.v2.5.matchdate", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.match_sub_type = ProtoField.new("Match Sub Type", "eurex.derivatives.eti.t7.v2.5.matchsubtype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.match_type = ProtoField.new("Match Type", "eurex.derivatives.eti.t7.v2.5.matchtype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.matching_engine_status = ProtoField.new("Matching Engine Status", "eurex.derivatives.eti.t7.v2.5.matchingenginestatus", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.matching_engine_trade_date = ProtoField.new("Matching Engine Trade Date", "eurex.derivatives.eti.t7.v2.5.matchingenginetradedate", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.message = ProtoField.new("Message", "eurex.derivatives.eti.t7.v2.5.message", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.message_header = ProtoField.new("Message Header", "eurex.derivatives.eti.t7.v2.5.messageheader", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.mm_parameter_grp_comp = ProtoField.new("Mm Parameter Grp Comp", "eurex.derivatives.eti.t7.v2.5.mmparametergrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.mm_parameter_report_id = ProtoField.new("Mm Parameter Report Id", "eurex.derivatives.eti.t7.v2.5.mmparameterreportid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.derivatives.eti.t7.v2.5.msgseqnum", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.multi_leg_reporting_type = ProtoField.new("Multi Leg Reporting Type", "eurex.derivatives.eti.t7.v2.5.multilegreportingtype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.multileg_model = ProtoField.new("Multileg Model", "eurex.derivatives.eti.t7.v2.5.multilegmodel", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.network_msg_id = ProtoField.new("Network Msg Id", "eurex.derivatives.eti.t7.v2.5.networkmsgid", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_enrichment_rules = ProtoField.new("No Enrichment Rules", "eurex.derivatives.eti.t7.v2.5.noenrichmentrules", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_fills = ProtoField.new("No Fills", "eurex.derivatives.eti.t7.v2.5.nofills", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_fills_index = ProtoField.new("No Fills Index", "eurex.derivatives.eti.t7.v2.5.nofillsindex", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_leg_execs = ProtoField.new("No Leg Execs", "eurex.derivatives.eti.t7.v2.5.nolegexecs", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_legs = ProtoField.new("No Legs", "eurex.derivatives.eti.t7.v2.5.nolegs", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_mm_parameters = ProtoField.new("No Mm Parameters", "eurex.derivatives.eti.t7.v2.5.nommparameters", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_not_affected_orders = ProtoField.new("No Not Affected Orders", "eurex.derivatives.eti.t7.v2.5.nonotaffectedorders", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_not_affected_securities = ProtoField.new("No Not Affected Securities", "eurex.derivatives.eti.t7.v2.5.nonotaffectedsecurities", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_party_details = ProtoField.new("No Party Details", "eurex.derivatives.eti.t7.v2.5.nopartydetails", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_quote_entries = ProtoField.new("No Quote Entries", "eurex.derivatives.eti.t7.v2.5.noquoteentries", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_quote_events = ProtoField.new("No Quote Events", "eurex.derivatives.eti.t7.v2.5.noquoteevents", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_quote_events_index = ProtoField.new("No Quote Events Index", "eurex.derivatives.eti.t7.v2.5.noquoteeventsindex", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.no_sessions = ProtoField.new("No Sessions", "eurex.derivatives.eti.t7.v2.5.nosessions", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.not_aff_orig_cl_ord_id = ProtoField.new("Not Aff Orig Cl Ord Id", "eurex.derivatives.eti.t7.v2.5.notafforigclordid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_order_id = ProtoField.new("Not Affected Order Id", "eurex.derivatives.eti.t7.v2.5.notaffectedorderid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_orders_grp_comp = ProtoField.new("Not Affected Orders Grp Comp", "eurex.derivatives.eti.t7.v2.5.notaffectedordersgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_securities_grp_comp = ProtoField.new("Not Affected Securities Grp Comp", "eurex.derivatives.eti.t7.v2.5.notaffectedsecuritiesgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_security_id = ProtoField.new("Not Affected Security Id", "eurex.derivatives.eti.t7.v2.5.notaffectedsecurityid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.notif_header_comp = ProtoField.new("Notif Header Comp", "eurex.derivatives.eti.t7.v2.5.notifheadercomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.notification_in = ProtoField.new("Notification In", "eurex.derivatives.eti.t7.v2.5.notificationin", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.nr_response_header_me_comp = ProtoField.new("Nr Response Header Me Comp", "eurex.derivatives.eti.t7.v2.5.nrresponseheadermecomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.nrbc_header_comp = ProtoField.new("Nrbc Header Comp", "eurex.derivatives.eti.t7.v2.5.nrbcheadercomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.number_of_securities = ProtoField.new("Number Of Securities", "eurex.derivatives.eti.t7.v2.5.numberofsecurities", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.offer_cxl_size = ProtoField.new("Offer Cxl Size", "eurex.derivatives.eti.t7.v2.5.offercxlsize", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.offer_px = ProtoField.new("Offer Px", "eurex.derivatives.eti.t7.v2.5.offerpx", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.offer_size = ProtoField.new("Offer Size", "eurex.derivatives.eti.t7.v2.5.offersize", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.ord_status = ProtoField.new("Ord Status", "eurex.derivatives.eti.t7.v2.5.ordstatus", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.ord_type = ProtoField.new("Ord Type", "eurex.derivatives.eti.t7.v2.5.ordtype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.order_category = ProtoField.new("Order Category", "eurex.derivatives.eti.t7.v2.5.ordercategory", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.order_id = ProtoField.new("Order Id", "eurex.derivatives.eti.t7.v2.5.orderid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.order_qty = ProtoField.new("Order Qty", "eurex.derivatives.eti.t7.v2.5.orderqty", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.order_routing_indicator = ProtoField.new("Order Routing Indicator", "eurex.derivatives.eti.t7.v2.5.orderroutingindicator", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.order_side = ProtoField.new("Order Side", "eurex.derivatives.eti.t7.v2.5.orderside", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "eurex.derivatives.eti.t7.v2.5.origclordid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.orig_time = ProtoField.new("Orig Time", "eurex.derivatives.eti.t7.v2.5.origtime", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.orig_trade_id = ProtoField.new("Orig Trade Id", "eurex.derivatives.eti.t7.v2.5.origtradeid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.ownership_indicator = ProtoField.new("Ownership Indicator", "eurex.derivatives.eti.t7.v2.5.ownershipindicator", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.packet = ProtoField.new("Packet", "eurex.derivatives.eti.t7.v2.5.packet", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.pad_1 = ProtoField.new("Pad 1", "eurex.derivatives.eti.t7.v2.5.pad1", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.pad_2 = ProtoField.new("Pad 2", "eurex.derivatives.eti.t7.v2.5.pad2", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.pad_3 = ProtoField.new("Pad 3", "eurex.derivatives.eti.t7.v2.5.pad3", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.pad_4 = ProtoField.new("Pad 4", "eurex.derivatives.eti.t7.v2.5.pad4", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.pad_5 = ProtoField.new("Pad 5", "eurex.derivatives.eti.t7.v2.5.pad5", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.pad_6 = ProtoField.new("Pad 6", "eurex.derivatives.eti.t7.v2.5.pad6", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.pad_7 = ProtoField.new("Pad 7", "eurex.derivatives.eti.t7.v2.5.pad7", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.partition_id = ProtoField.new("Partition Id", "eurex.derivatives.eti.t7.v2.5.partitionid", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_action_type = ProtoField.new("Party Action Type", "eurex.derivatives.eti.t7.v2.5.partyactiontype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_desk_id = ProtoField.new("Party Detail Desk Id", "eurex.derivatives.eti.t7.v2.5.partydetaildeskid", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_executing_trader = ProtoField.new("Party Detail Executing Trader", "eurex.derivatives.eti.t7.v2.5.partydetailexecutingtrader", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_id_executing_trader = ProtoField.new("Party Detail Id Executing Trader", "eurex.derivatives.eti.t7.v2.5.partydetailidexecutingtrader", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_id_executing_unit = ProtoField.new("Party Detail Id Executing Unit", "eurex.derivatives.eti.t7.v2.5.partydetailidexecutingunit", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_role_qualifier = ProtoField.new("Party Detail Role Qualifier", "eurex.derivatives.eti.t7.v2.5.partydetailrolequalifier", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_status = ProtoField.new("Party Detail Status", "eurex.derivatives.eti.t7.v2.5.partydetailstatus", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_details_grp_comp = ProtoField.new("Party Details Grp Comp", "eurex.derivatives.eti.t7.v2.5.partydetailsgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_beneficiary = ProtoField.new("Party Id Beneficiary", "eurex.derivatives.eti.t7.v2.5.partyidbeneficiary", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_entering_firm = ProtoField.new("Party Id Entering Firm", "eurex.derivatives.eti.t7.v2.5.partyidenteringfirm", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_entering_trader = ProtoField.new("Party Id Entering Trader", "eurex.derivatives.eti.t7.v2.5.partyidenteringtrader", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_executing_trader = ProtoField.new("Party Id Executing Trader", "eurex.derivatives.eti.t7.v2.5.partyidexecutingtrader", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_executing_unit = ProtoField.new("Party Id Executing Unit", "eurex.derivatives.eti.t7.v2.5.partyidexecutingunit", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_location_id = ProtoField.new("Party Id Location Id", "eurex.derivatives.eti.t7.v2.5.partyidlocationid", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_order_origination_firm = ProtoField.new("Party Id Order Origination Firm", "eurex.derivatives.eti.t7.v2.5.partyidorderoriginationfirm", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_origination_market = ProtoField.new("Party Id Origination Market", "eurex.derivatives.eti.t7.v2.5.partyidoriginationmarket", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_position_account = ProtoField.new("Party Id Position Account", "eurex.derivatives.eti.t7.v2.5.partyidpositionaccount", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_session_id = ProtoField.new("Party Id Session Id", "eurex.derivatives.eti.t7.v2.5.partyidsessionid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_take_up_trading_firm = ProtoField.new("Party Id Take Up Trading Firm", "eurex.derivatives.eti.t7.v2.5.partyidtakeuptradingfirm", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.password = ProtoField.new("Password", "eurex.derivatives.eti.t7.v2.5.password", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.payload = ProtoField.new("Payload", "eurex.derivatives.eti.t7.v2.5.payload", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.pct_count = ProtoField.new("Pct Count", "eurex.derivatives.eti.t7.v2.5.pctcount", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.position_effect = ProtoField.new("Position Effect", "eurex.derivatives.eti.t7.v2.5.positioneffect", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.price = ProtoField.new("Price", "eurex.derivatives.eti.t7.v2.5.price", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.price_validity_check_type = ProtoField.new("Price Validity Check Type", "eurex.derivatives.eti.t7.v2.5.pricevaliditychecktype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.product_complex = ProtoField.new("Product Complex", "eurex.derivatives.eti.t7.v2.5.productcomplex", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_ack_grp_comp = ProtoField.new("Quote Entry Ack Grp Comp", "eurex.derivatives.eti.t7.v2.5.quoteentryackgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_grp_comp = ProtoField.new("Quote Entry Grp Comp", "eurex.derivatives.eti.t7.v2.5.quoteentrygrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_reject_reason = ProtoField.new("Quote Entry Reject Reason", "eurex.derivatives.eti.t7.v2.5.quoteentryrejectreason", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_status = ProtoField.new("Quote Entry Status", "eurex.derivatives.eti.t7.v2.5.quoteentrystatus", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_exec_id = ProtoField.new("Quote Event Exec Id", "eurex.derivatives.eti.t7.v2.5.quoteeventexecid", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_grp_comp = ProtoField.new("Quote Event Grp Comp", "eurex.derivatives.eti.t7.v2.5.quoteeventgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_liquidity_ind = ProtoField.new("Quote Event Liquidity Ind", "eurex.derivatives.eti.t7.v2.5.quoteeventliquidityind", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_match_id = ProtoField.new("Quote Event Match Id", "eurex.derivatives.eti.t7.v2.5.quoteeventmatchid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_px = ProtoField.new("Quote Event Px", "eurex.derivatives.eti.t7.v2.5.quoteeventpx", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_qty = ProtoField.new("Quote Event Qty", "eurex.derivatives.eti.t7.v2.5.quoteeventqty", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_reason = ProtoField.new("Quote Event Reason", "eurex.derivatives.eti.t7.v2.5.quoteeventreason", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_side = ProtoField.new("Quote Event Side", "eurex.derivatives.eti.t7.v2.5.quoteeventside", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_type = ProtoField.new("Quote Event Type", "eurex.derivatives.eti.t7.v2.5.quoteeventtype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_id = ProtoField.new("Quote Id", "eurex.derivatives.eti.t7.v2.5.quoteid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_leg_exec_grp_comp = ProtoField.new("Quote Leg Exec Grp Comp", "eurex.derivatives.eti.t7.v2.5.quotelegexecgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_msg_id = ProtoField.new("Quote Msg Id", "eurex.derivatives.eti.t7.v2.5.quotemsgid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_response_id = ProtoField.new("Quote Response Id", "eurex.derivatives.eti.t7.v2.5.quoteresponseid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_size_type = ProtoField.new("Quote Size Type", "eurex.derivatives.eti.t7.v2.5.quotesizetype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.rbc_header_comp = ProtoField.new("Rbc Header Comp", "eurex.derivatives.eti.t7.v2.5.rbcheadercomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.rbc_header_me_comp = ProtoField.new("Rbc Header Me Comp", "eurex.derivatives.eti.t7.v2.5.rbcheadermecomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.ref_appl_id = ProtoField.new("Ref Appl Id", "eurex.derivatives.eti.t7.v2.5.refapplid", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.ref_appl_last_msg_id = ProtoField.new("Ref Appl Last Msg Id", "eurex.derivatives.eti.t7.v2.5.refappllastmsgid", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v2_5.fields.ref_appl_last_seq_num = ProtoField.new("Ref Appl Last Seq Num", "eurex.derivatives.eti.t7.v2.5.refappllastseqnum", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.ref_appl_sub_id = ProtoField.new("Ref Appl Sub Id", "eurex.derivatives.eti.t7.v2.5.refapplsubid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.related_product_complex = ProtoField.new("Related Product Complex", "eurex.derivatives.eti.t7.v2.5.relatedproductcomplex", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.related_security_id = ProtoField.new("Related Security Id", "eurex.derivatives.eti.t7.v2.5.relatedsecurityid", ftypes.INT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.related_symbol = ProtoField.new("Related Symbol", "eurex.derivatives.eti.t7.v2.5.relatedsymbol", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.request_header_comp = ProtoField.new("Request Header Comp", "eurex.derivatives.eti.t7.v2.5.requestheadercomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.request_out = ProtoField.new("Request Out", "eurex.derivatives.eti.t7.v2.5.requestout", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.request_time = ProtoField.new("Request Time", "eurex.derivatives.eti.t7.v2.5.requesttime", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.requesting_party_clearing_firm = ProtoField.new("Requesting Party Clearing Firm", "eurex.derivatives.eti.t7.v2.5.requestingpartyclearingfirm", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.requesting_party_entering_firm = ProtoField.new("Requesting Party Entering Firm", "eurex.derivatives.eti.t7.v2.5.requestingpartyenteringfirm", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.requesting_party_id_entering_firm = ProtoField.new("Requesting Party Id Entering Firm", "eurex.derivatives.eti.t7.v2.5.requestingpartyidenteringfirm", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.requesting_party_id_executing_system = ProtoField.new("Requesting Party Id Executing System", "eurex.derivatives.eti.t7.v2.5.requestingpartyidexecutingsystem", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.requesting_party_id_executing_trader = ProtoField.new("Requesting Party Id Executing Trader", "eurex.derivatives.eti.t7.v2.5.requestingpartyidexecutingtrader", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.response_header_comp = ProtoField.new("Response Header Comp", "eurex.derivatives.eti.t7.v2.5.responseheadercomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.response_header_me_comp = ProtoField.new("Response Header Me Comp", "eurex.derivatives.eti.t7.v2.5.responseheadermecomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.response_in = ProtoField.new("Response In", "eurex.derivatives.eti.t7.v2.5.responsein", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.risk_limit_action = ProtoField.new("Risk Limit Action", "eurex.derivatives.eti.t7.v2.5.risklimitaction", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_clearing_firm = ProtoField.new("Root Party Clearing Firm", "eurex.derivatives.eti.t7.v2.5.rootpartyclearingfirm", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_clearing_organization = ProtoField.new("Root Party Clearing Organization", "eurex.derivatives.eti.t7.v2.5.rootpartyclearingorganization", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_executing_firm = ProtoField.new("Root Party Executing Firm", "eurex.derivatives.eti.t7.v2.5.rootpartyexecutingfirm", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_executing_trader = ProtoField.new("Root Party Executing Trader", "eurex.derivatives.eti.t7.v2.5.rootpartyexecutingtrader", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_beneficiary = ProtoField.new("Root Party Id Beneficiary", "eurex.derivatives.eti.t7.v2.5.rootpartyidbeneficiary", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_clearing_unit = ProtoField.new("Root Party Id Clearing Unit", "eurex.derivatives.eti.t7.v2.5.rootpartyidclearingunit", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_executing_trader = ProtoField.new("Root Party Id Executing Trader", "eurex.derivatives.eti.t7.v2.5.rootpartyidexecutingtrader", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_executing_unit = ProtoField.new("Root Party Id Executing Unit", "eurex.derivatives.eti.t7.v2.5.rootpartyidexecutingunit", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_order_origination_firm = ProtoField.new("Root Party Id Order Origination Firm", "eurex.derivatives.eti.t7.v2.5.rootpartyidorderoriginationfirm", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_position_account = ProtoField.new("Root Party Id Position Account", "eurex.derivatives.eti.t7.v2.5.rootpartyidpositionaccount", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_session_id = ProtoField.new("Root Party Id Session Id", "eurex.derivatives.eti.t7.v2.5.rootpartyidsessionid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_take_up_trading_firm = ProtoField.new("Root Party Id Take Up Trading Firm", "eurex.derivatives.eti.t7.v2.5.rootpartyidtakeuptradingfirm", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.secondary_gateway_id = ProtoField.new("Secondary Gateway Id", "eurex.derivatives.eti.t7.v2.5.secondarygatewayid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.secondary_gateway_sub_id = ProtoField.new("Secondary Gateway Sub Id", "eurex.derivatives.eti.t7.v2.5.secondarygatewaysubid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.security_id = ProtoField.new("Security Id", "eurex.derivatives.eti.t7.v2.5.securityid", ftypes.INT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.security_response_id = ProtoField.new("Security Response Id", "eurex.derivatives.eti.t7.v2.5.securityresponseid", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.security_sub_type = ProtoField.new("Security Sub Type", "eurex.derivatives.eti.t7.v2.5.securitysubtype", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.sender_sub_id = ProtoField.new("Sender Sub Id", "eurex.derivatives.eti.t7.v2.5.sendersubid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.sending_time = ProtoField.new("Sending Time", "eurex.derivatives.eti.t7.v2.5.sendingtime", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.session_instance_id = ProtoField.new("Session Instance Id", "eurex.derivatives.eti.t7.v2.5.sessioninstanceid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.session_mode = ProtoField.new("Session Mode", "eurex.derivatives.eti.t7.v2.5.sessionmode", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "eurex.derivatives.eti.t7.v2.5.sessionrejectreason", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.session_status = ProtoField.new("Session Status", "eurex.derivatives.eti.t7.v2.5.sessionstatus", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.session_sub_mode = ProtoField.new("Session Sub Mode", "eurex.derivatives.eti.t7.v2.5.sessionsubmode", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.sessions_grp_comp = ProtoField.new("Sessions Grp Comp", "eurex.derivatives.eti.t7.v2.5.sessionsgrpcomp", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.side = ProtoField.new("Side", "eurex.derivatives.eti.t7.v2.5.side", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.side_last_px = ProtoField.new("Side Last Px", "eurex.derivatives.eti.t7.v2.5.sidelastpx", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.side_last_qty = ProtoField.new("Side Last Qty", "eurex.derivatives.eti.t7.v2.5.sidelastqty", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.side_trade_id = ProtoField.new("Side Trade Id", "eurex.derivatives.eti.t7.v2.5.sidetradeid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.simple_security_id = ProtoField.new("Simple Security Id", "eurex.derivatives.eti.t7.v2.5.simplesecurityid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.stop_px = ProtoField.new("Stop Px", "eurex.derivatives.eti.t7.v2.5.stoppx", ftypes.DOUBLE)
omi_eurex_derivatives_eti_t7_v2_5.fields.strategy_link_id = ProtoField.new("Strategy Link Id", "eurex.derivatives.eti.t7.v2.5.strategylinkid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.subscription_scope = ProtoField.new("Subscription Scope", "eurex.derivatives.eti.t7.v2.5.subscriptionscope", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.target_party_id_desk_id = ProtoField.new("Target Party Id Desk Id", "eurex.derivatives.eti.t7.v2.5.targetpartyiddeskid", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.target_party_id_executing_trader = ProtoField.new("Target Party Id Executing Trader", "eurex.derivatives.eti.t7.v2.5.targetpartyidexecutingtrader", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.target_party_id_session_id = ProtoField.new("Target Party Id Session Id", "eurex.derivatives.eti.t7.v2.5.targetpartyidsessionid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.template_id = ProtoField.new("Template Id", "eurex.derivatives.eti.t7.v2.5.templateid", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.throttle_disconnect_limit = ProtoField.new("Throttle Disconnect Limit", "eurex.derivatives.eti.t7.v2.5.throttledisconnectlimit", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.throttle_no_msgs = ProtoField.new("Throttle No Msgs", "eurex.derivatives.eti.t7.v2.5.throttlenomsgs", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.throttle_time_interval = ProtoField.new("Throttle Time Interval", "eurex.derivatives.eti.t7.v2.5.throttletimeinterval", ftypes.INT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.time_in_force = ProtoField.new("Time In Force", "eurex.derivatives.eti.t7.v2.5.timeinforce", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.tot_num_trade_reports = ProtoField.new("Tot Num Trade Reports", "eurex.derivatives.eti.t7.v2.5.totnumtradereports", ftypes.INT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "eurex.derivatives.eti.t7.v2.5.tradsesevent", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.trad_ses_mode = ProtoField.new("Trad Ses Mode", "eurex.derivatives.eti.t7.v2.5.tradsesmode", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.trade_date = ProtoField.new("Trade Date", "eurex.derivatives.eti.t7.v2.5.tradedate", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.trade_id = ProtoField.new("Trade Id", "eurex.derivatives.eti.t7.v2.5.tradeid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.trade_manager_status = ProtoField.new("Trade Manager Status", "eurex.derivatives.eti.t7.v2.5.trademanagerstatus", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.trade_manager_trade_date = ProtoField.new("Trade Manager Trade Date", "eurex.derivatives.eti.t7.v2.5.trademanagertradedate", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.trade_report_type = ProtoField.new("Trade Report Type", "eurex.derivatives.eti.t7.v2.5.tradereporttype", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.trading_capacity = ProtoField.new("Trading Capacity", "eurex.derivatives.eti.t7.v2.5.tradingcapacity", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.derivatives.eti.t7.v2.5.tradingsessionsubid", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.transact_time = ProtoField.new("Transact Time", "eurex.derivatives.eti.t7.v2.5.transacttime", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.transfer_reason = ProtoField.new("Transfer Reason", "eurex.derivatives.eti.t7.v2.5.transferreason", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.trd_match_id = ProtoField.new("Trd Match Id", "eurex.derivatives.eti.t7.v2.5.trdmatchid", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.trd_reg_ts_entry_time = ProtoField.new("Trd Reg Ts Entry Time", "eurex.derivatives.eti.t7.v2.5.trdregtsentrytime", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg Ts Time In", "eurex.derivatives.eti.t7.v2.5.trdregtstimein", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.trd_reg_ts_time_out = ProtoField.new("Trd Reg Ts Time Out", "eurex.derivatives.eti.t7.v2.5.trdregtstimeout", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg Ts Time Priority", "eurex.derivatives.eti.t7.v2.5.trdregtstimepriority", ftypes.UINT64)
omi_eurex_derivatives_eti_t7_v2_5.fields.triggered = ProtoField.new("Triggered", "eurex.derivatives.eti.t7.v2.5.triggered", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.user_status = ProtoField.new("User Status", "eurex.derivatives.eti.t7.v2.5.userstatus", ftypes.UINT8)
omi_eurex_derivatives_eti_t7_v2_5.fields.username = ProtoField.new("Username", "eurex.derivatives.eti.t7.v2.5.username", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v2_5.fields.var_text = ProtoField.new("Var Text", "eurex.derivatives.eti.t7.v2.5.vartext", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.var_text_len = ProtoField.new("Var Text Len", "eurex.derivatives.eti.t7.v2.5.vartextlen", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.vega = ProtoField.new("Vega", "eurex.derivatives.eti.t7.v2.5.vega", ftypes.INT32)

-- Eurex Derivatives Eti T7 2.5 messages
omi_eurex_derivatives_eti_t7_v2_5.fields.add_complex_instrument_request = ProtoField.new("Add Complex Instrument Request", "eurex.derivatives.eti.t7.v2.5.addcomplexinstrumentrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.add_complex_instrument_response = ProtoField.new("Add Complex Instrument Response", "eurex.derivatives.eti.t7.v2.5.addcomplexinstrumentresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.broadcast_error_notification = ProtoField.new("Broadcast Error Notification", "eurex.derivatives.eti.t7.v2.5.broadcasterrornotification", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.cross_request = ProtoField.new("Cross Request", "eurex.derivatives.eti.t7.v2.5.crossrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.cross_request_response = ProtoField.new("Cross Request Response", "eurex.derivatives.eti.t7.v2.5.crossrequestresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_order_broadcast = ProtoField.new("Delete All Order Broadcast", "eurex.derivatives.eti.t7.v2.5.deleteallorderbroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_order_nr_response = ProtoField.new("Delete All Order Nr Response", "eurex.derivatives.eti.t7.v2.5.deleteallordernrresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_order_quote_event_broadcast = ProtoField.new("Delete All Order Quote Event Broadcast", "eurex.derivatives.eti.t7.v2.5.deleteallorderquoteeventbroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_order_request = ProtoField.new("Delete All Order Request", "eurex.derivatives.eti.t7.v2.5.deleteallorderrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_order_response = ProtoField.new("Delete All Order Response", "eurex.derivatives.eti.t7.v2.5.deleteallorderresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_quote_broadcast = ProtoField.new("Delete All Quote Broadcast", "eurex.derivatives.eti.t7.v2.5.deleteallquotebroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_quote_request = ProtoField.new("Delete All Quote Request", "eurex.derivatives.eti.t7.v2.5.deleteallquoterequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_quote_response = ProtoField.new("Delete All Quote Response", "eurex.derivatives.eti.t7.v2.5.deleteallquoteresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_order_broadcast = ProtoField.new("Delete Order Broadcast", "eurex.derivatives.eti.t7.v2.5.deleteorderbroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_order_complex_request = ProtoField.new("Delete Order Complex Request", "eurex.derivatives.eti.t7.v2.5.deleteordercomplexrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_order_nr_response = ProtoField.new("Delete Order Nr Response", "eurex.derivatives.eti.t7.v2.5.deleteordernrresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_order_response = ProtoField.new("Delete Order Response", "eurex.derivatives.eti.t7.v2.5.deleteorderresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.delete_order_single_request = ProtoField.new("Delete Order Single Request", "eurex.derivatives.eti.t7.v2.5.deleteordersinglerequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.forced_logout_notification = ProtoField.new("Forced Logout Notification", "eurex.derivatives.eti.t7.v2.5.forcedlogoutnotification", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.gateway_request = ProtoField.new("Gateway Request", "eurex.derivatives.eti.t7.v2.5.gatewayrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.gateway_response = ProtoField.new("Gateway Response", "eurex.derivatives.eti.t7.v2.5.gatewayresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.heartbeat = ProtoField.new("Heartbeat", "eurex.derivatives.eti.t7.v2.5.heartbeat", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.heartbeat_notification = ProtoField.new("Heartbeat Notification", "eurex.derivatives.eti.t7.v2.5.heartbeatnotification", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_enrichment_rule_id_list_request = ProtoField.new("Inquire Enrichment Rule Id List Request", "eurex.derivatives.eti.t7.v2.5.inquireenrichmentruleidlistrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_enrichment_rule_id_list_response = ProtoField.new("Inquire Enrichment Rule Id List Response", "eurex.derivatives.eti.t7.v2.5.inquireenrichmentruleidlistresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_mm_parameter_request = ProtoField.new("Inquire Mm Parameter Request", "eurex.derivatives.eti.t7.v2.5.inquiremmparameterrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_mm_parameter_response = ProtoField.new("Inquire Mm Parameter Response", "eurex.derivatives.eti.t7.v2.5.inquiremmparameterresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_session_list_request = ProtoField.new("Inquire Session List Request", "eurex.derivatives.eti.t7.v2.5.inquiresessionlistrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_session_list_response = ProtoField.new("Inquire Session List Response", "eurex.derivatives.eti.t7.v2.5.inquiresessionlistresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_user_request = ProtoField.new("Inquire User Request", "eurex.derivatives.eti.t7.v2.5.inquireuserrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_user_response = ProtoField.new("Inquire User Response", "eurex.derivatives.eti.t7.v2.5.inquireuserresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.legal_notification_broadcast = ProtoField.new("Legal Notification Broadcast", "eurex.derivatives.eti.t7.v2.5.legalnotificationbroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.logon_request = ProtoField.new("Logon Request", "eurex.derivatives.eti.t7.v2.5.logonrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.logon_response = ProtoField.new("Logon Response", "eurex.derivatives.eti.t7.v2.5.logonresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.logout_request = ProtoField.new("Logout Request", "eurex.derivatives.eti.t7.v2.5.logoutrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.logout_response = ProtoField.new("Logout Response", "eurex.derivatives.eti.t7.v2.5.logoutresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.mass_quote_request = ProtoField.new("Mass Quote Request", "eurex.derivatives.eti.t7.v2.5.massquoterequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.mass_quote_response = ProtoField.new("Mass Quote Response", "eurex.derivatives.eti.t7.v2.5.massquoteresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.mm_parameter_definition_request = ProtoField.new("Mm Parameter Definition Request", "eurex.derivatives.eti.t7.v2.5.mmparameterdefinitionrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.mm_parameter_definition_response = ProtoField.new("Mm Parameter Definition Response", "eurex.derivatives.eti.t7.v2.5.mmparameterdefinitionresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.modify_order_complex_request = ProtoField.new("Modify Order Complex Request", "eurex.derivatives.eti.t7.v2.5.modifyordercomplexrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.modify_order_nr_response = ProtoField.new("Modify Order Nr Response", "eurex.derivatives.eti.t7.v2.5.modifyordernrresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.modify_order_response = ProtoField.new("Modify Order Response", "eurex.derivatives.eti.t7.v2.5.modifyorderresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.modify_order_single_request = ProtoField.new("Modify Order Single Request", "eurex.derivatives.eti.t7.v2.5.modifyordersinglerequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.modify_order_single_short_request = ProtoField.new("Modify Order Single Short Request", "eurex.derivatives.eti.t7.v2.5.modifyordersingleshortrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.new_order_complex_request = ProtoField.new("New Order Complex Request", "eurex.derivatives.eti.t7.v2.5.newordercomplexrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.new_order_nr_response = ProtoField.new("New Order Nr Response", "eurex.derivatives.eti.t7.v2.5.newordernrresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.new_order_response = ProtoField.new("New Order Response", "eurex.derivatives.eti.t7.v2.5.neworderresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.new_order_single_request = ProtoField.new("New Order Single Request", "eurex.derivatives.eti.t7.v2.5.newordersinglerequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.new_order_single_short_request = ProtoField.new("New Order Single Short Request", "eurex.derivatives.eti.t7.v2.5.newordersingleshortrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.news_broadcast = ProtoField.new("News Broadcast", "eurex.derivatives.eti.t7.v2.5.newsbroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.order_exec_notification = ProtoField.new("Order Exec Notification", "eurex.derivatives.eti.t7.v2.5.orderexecnotification", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.order_exec_report_broadcast = ProtoField.new("Order Exec Report Broadcast", "eurex.derivatives.eti.t7.v2.5.orderexecreportbroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.order_exec_response = ProtoField.new("Order Exec Response", "eurex.derivatives.eti.t7.v2.5.orderexecresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_action_report = ProtoField.new("Party Action Report", "eurex.derivatives.eti.t7.v2.5.partyactionreport", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_entitlements_update_report = ProtoField.new("Party Entitlements Update Report", "eurex.derivatives.eti.t7.v2.5.partyentitlementsupdatereport", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_activation_notification = ProtoField.new("Quote Activation Notification", "eurex.derivatives.eti.t7.v2.5.quoteactivationnotification", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_activation_request = ProtoField.new("Quote Activation Request", "eurex.derivatives.eti.t7.v2.5.quoteactivationrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_activation_response = ProtoField.new("Quote Activation Response", "eurex.derivatives.eti.t7.v2.5.quoteactivationresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_execution_report = ProtoField.new("Quote Execution Report", "eurex.derivatives.eti.t7.v2.5.quoteexecutionreport", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.reject = ProtoField.new("Reject", "eurex.derivatives.eti.t7.v2.5.reject", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.retransmit_me_message_request = ProtoField.new("Retransmit Me Message Request", "eurex.derivatives.eti.t7.v2.5.retransmitmemessagerequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.retransmit_me_message_response = ProtoField.new("Retransmit Me Message Response", "eurex.derivatives.eti.t7.v2.5.retransmitmemessageresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.retransmit_request = ProtoField.new("Retransmit Request", "eurex.derivatives.eti.t7.v2.5.retransmitrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.retransmit_response = ProtoField.new("Retransmit Response", "eurex.derivatives.eti.t7.v2.5.retransmitresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.rfq_request = ProtoField.new("Rfq Request", "eurex.derivatives.eti.t7.v2.5.rfqrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.rfq_response = ProtoField.new("Rfq Response", "eurex.derivatives.eti.t7.v2.5.rfqresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.risk_notification_broadcast = ProtoField.new("Risk Notification Broadcast", "eurex.derivatives.eti.t7.v2.5.risknotificationbroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.service_availability_broadcast = ProtoField.new("Service Availability Broadcast", "eurex.derivatives.eti.t7.v2.5.serviceavailabilitybroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.subscribe_request = ProtoField.new("Subscribe Request", "eurex.derivatives.eti.t7.v2.5.subscriberequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.subscribe_response = ProtoField.new("Subscribe Response", "eurex.derivatives.eti.t7.v2.5.subscriberesponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.throttle_update_notification = ProtoField.new("Throttle Update Notification", "eurex.derivatives.eti.t7.v2.5.throttleupdatenotification", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.tm_trading_session_status_broadcast = ProtoField.new("Tm Trading Session Status Broadcast", "eurex.derivatives.eti.t7.v2.5.tmtradingsessionstatusbroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.trade_broadcast = ProtoField.new("Trade Broadcast", "eurex.derivatives.eti.t7.v2.5.tradebroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.trading_session_status_broadcast = ProtoField.new("Trading Session Status Broadcast", "eurex.derivatives.eti.t7.v2.5.tradingsessionstatusbroadcast", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.unsubscribe_request = ProtoField.new("Unsubscribe Request", "eurex.derivatives.eti.t7.v2.5.unsubscriberequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.unsubscribe_response = ProtoField.new("Unsubscribe Response", "eurex.derivatives.eti.t7.v2.5.unsubscriberesponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.user_login_request = ProtoField.new("User Login Request", "eurex.derivatives.eti.t7.v2.5.userloginrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.user_login_response = ProtoField.new("User Login Response", "eurex.derivatives.eti.t7.v2.5.userloginresponse", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.user_logout_request = ProtoField.new("User Logout Request", "eurex.derivatives.eti.t7.v2.5.userlogoutrequest", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v2_5.fields.user_logout_response = ProtoField.new("User Logout Response", "eurex.derivatives.eti.t7.v2.5.userlogoutresponse", ftypes.STRING)

-- Eurex Derivatives Eti T7 2.5 generated fields
omi_eurex_derivatives_eti_t7_v2_5.fields.enrichment_rules_grp_comp_index = ProtoField.new("Enrichment Rules Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.enrichmentrulesgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.fills_grp_comp_index = ProtoField.new("Fills Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.fillsgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.instrmnt_leg_exec_grp_comp_index = ProtoField.new("Instrmnt Leg Exec Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.instrmntlegexecgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.instrmt_leg_grp_comp_index = ProtoField.new("Instrmt Leg Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.instrmtleggrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.leg_ord_grp_comp_index = ProtoField.new("Leg Ord Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.legordgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.mm_parameter_grp_comp_index = ProtoField.new("Mm Parameter Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.mmparametergrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_orders_grp_comp_index = ProtoField.new("Not Affected Orders Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.notaffectedordersgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_securities_grp_comp_index = ProtoField.new("Not Affected Securities Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.notaffectedsecuritiesgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.party_details_grp_comp_index = ProtoField.new("Party Details Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.partydetailsgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_ack_grp_comp_index = ProtoField.new("Quote Entry Ack Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.quoteentryackgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_grp_comp_index = ProtoField.new("Quote Entry Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.quoteentrygrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_grp_comp_index = ProtoField.new("Quote Event Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.quoteeventgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.quote_leg_exec_grp_comp_index = ProtoField.new("Quote Leg Exec Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.quotelegexecgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_eti_t7_v2_5.fields.sessions_grp_comp_index = ProtoField.new("Sessions Grp Comp Index", "eurex.derivatives.eti.t7.v2.5.sessionsgrpcompindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Eurex Derivatives Eti T7 2.5 Element Dissection Options
show.add_complex_instrument_request = true
show.add_complex_instrument_response = true
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
show.enrichment_rules_grp_comp = true
show.fills_grp_comp = true
show.forced_logout_notification = true
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
show.instrmnt_leg_exec_grp_comp = true
show.instrmt_leg_grp_comp = true
show.leg_ord_grp_comp = true
show.legal_notification_broadcast = true
show.logon_request = true
show.logon_response = true
show.logout_request = true
show.logout_response = true
show.mass_quote_request = true
show.mass_quote_response = true
show.message = true
show.message_header = true
show.mm_parameter_definition_request = true
show.mm_parameter_definition_response = true
show.mm_parameter_grp_comp = true
show.modify_order_complex_request = true
show.modify_order_nr_response = true
show.modify_order_response = true
show.modify_order_single_request = true
show.modify_order_single_short_request = true
show.new_order_complex_request = true
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
show.quote_leg_exec_grp_comp = true
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
show.rfq_request = true
show.rfq_response = true
show.risk_notification_broadcast = true
show.service_availability_broadcast = true
show.sessions_grp_comp = true
show.subscribe_request = true
show.subscribe_response = true
show.throttle_update_notification = true
show.tm_trading_session_status_broadcast = true
show.trade_broadcast = true
show.trading_session_status_broadcast = true
show.unsubscribe_request = true
show.unsubscribe_response = true
show.user_login_request = true
show.user_login_response = true
show.user_logout_request = true
show.user_logout_response = true
show.payload = false

-- Register Eurex Derivatives Eti T7 2.5 Show Options
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_add_complex_instrument_request = Pref.bool("Show Add Complex Instrument Request", show.add_complex_instrument_request, "Parse and add Add Complex Instrument Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_add_complex_instrument_response = Pref.bool("Show Add Complex Instrument Response", show.add_complex_instrument_response, "Parse and add Add Complex Instrument Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_broadcast_error_notification = Pref.bool("Show Broadcast Error Notification", show.broadcast_error_notification, "Parse and add Broadcast Error Notification to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_cross_request = Pref.bool("Show Cross Request", show.cross_request, "Parse and add Cross Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_cross_request_response = Pref.bool("Show Cross Request Response", show.cross_request_response, "Parse and add Cross Request Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_broadcast = Pref.bool("Show Delete All Order Broadcast", show.delete_all_order_broadcast, "Parse and add Delete All Order Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_nr_response = Pref.bool("Show Delete All Order Nr Response", show.delete_all_order_nr_response, "Parse and add Delete All Order Nr Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_quote_event_broadcast = Pref.bool("Show Delete All Order Quote Event Broadcast", show.delete_all_order_quote_event_broadcast, "Parse and add Delete All Order Quote Event Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_request = Pref.bool("Show Delete All Order Request", show.delete_all_order_request, "Parse and add Delete All Order Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_response = Pref.bool("Show Delete All Order Response", show.delete_all_order_response, "Parse and add Delete All Order Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_quote_broadcast = Pref.bool("Show Delete All Quote Broadcast", show.delete_all_quote_broadcast, "Parse and add Delete All Quote Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_quote_request = Pref.bool("Show Delete All Quote Request", show.delete_all_quote_request, "Parse and add Delete All Quote Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_quote_response = Pref.bool("Show Delete All Quote Response", show.delete_all_quote_response, "Parse and add Delete All Quote Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_broadcast = Pref.bool("Show Delete Order Broadcast", show.delete_order_broadcast, "Parse and add Delete Order Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_complex_request = Pref.bool("Show Delete Order Complex Request", show.delete_order_complex_request, "Parse and add Delete Order Complex Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_nr_response = Pref.bool("Show Delete Order Nr Response", show.delete_order_nr_response, "Parse and add Delete Order Nr Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_response = Pref.bool("Show Delete Order Response", show.delete_order_response, "Parse and add Delete Order Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_single_request = Pref.bool("Show Delete Order Single Request", show.delete_order_single_request, "Parse and add Delete Order Single Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_enrichment_rules_grp_comp = Pref.bool("Show Enrichment Rules Grp Comp", show.enrichment_rules_grp_comp, "Parse and add Enrichment Rules Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_fills_grp_comp = Pref.bool("Show Fills Grp Comp", show.fills_grp_comp, "Parse and add Fills Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_forced_logout_notification = Pref.bool("Show Forced Logout Notification", show.forced_logout_notification, "Parse and add Forced Logout Notification to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_gateway_request = Pref.bool("Show Gateway Request", show.gateway_request, "Parse and add Gateway Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_gateway_response = Pref.bool("Show Gateway Response", show.gateway_response, "Parse and add Gateway Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_heartbeat_notification = Pref.bool("Show Heartbeat Notification", show.heartbeat_notification, "Parse and add Heartbeat Notification to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_enrichment_rule_id_list_request = Pref.bool("Show Inquire Enrichment Rule Id List Request", show.inquire_enrichment_rule_id_list_request, "Parse and add Inquire Enrichment Rule Id List Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_enrichment_rule_id_list_response = Pref.bool("Show Inquire Enrichment Rule Id List Response", show.inquire_enrichment_rule_id_list_response, "Parse and add Inquire Enrichment Rule Id List Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_mm_parameter_request = Pref.bool("Show Inquire Mm Parameter Request", show.inquire_mm_parameter_request, "Parse and add Inquire Mm Parameter Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_mm_parameter_response = Pref.bool("Show Inquire Mm Parameter Response", show.inquire_mm_parameter_response, "Parse and add Inquire Mm Parameter Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_session_list_request = Pref.bool("Show Inquire Session List Request", show.inquire_session_list_request, "Parse and add Inquire Session List Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_session_list_response = Pref.bool("Show Inquire Session List Response", show.inquire_session_list_response, "Parse and add Inquire Session List Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_user_request = Pref.bool("Show Inquire User Request", show.inquire_user_request, "Parse and add Inquire User Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_user_response = Pref.bool("Show Inquire User Response", show.inquire_user_response, "Parse and add Inquire User Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_instrmnt_leg_exec_grp_comp = Pref.bool("Show Instrmnt Leg Exec Grp Comp", show.instrmnt_leg_exec_grp_comp, "Parse and add Instrmnt Leg Exec Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_instrmt_leg_grp_comp = Pref.bool("Show Instrmt Leg Grp Comp", show.instrmt_leg_grp_comp, "Parse and add Instrmt Leg Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_leg_ord_grp_comp = Pref.bool("Show Leg Ord Grp Comp", show.leg_ord_grp_comp, "Parse and add Leg Ord Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_legal_notification_broadcast = Pref.bool("Show Legal Notification Broadcast", show.legal_notification_broadcast, "Parse and add Legal Notification Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logon_request = Pref.bool("Show Logon Request", show.logon_request, "Parse and add Logon Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logon_response = Pref.bool("Show Logon Response", show.logon_response, "Parse and add Logon Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logout_response = Pref.bool("Show Logout Response", show.logout_response, "Parse and add Logout Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mass_quote_request = Pref.bool("Show Mass Quote Request", show.mass_quote_request, "Parse and add Mass Quote Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mass_quote_response = Pref.bool("Show Mass Quote Response", show.mass_quote_response, "Parse and add Mass Quote Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mm_parameter_definition_request = Pref.bool("Show Mm Parameter Definition Request", show.mm_parameter_definition_request, "Parse and add Mm Parameter Definition Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mm_parameter_definition_response = Pref.bool("Show Mm Parameter Definition Response", show.mm_parameter_definition_response, "Parse and add Mm Parameter Definition Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mm_parameter_grp_comp = Pref.bool("Show Mm Parameter Grp Comp", show.mm_parameter_grp_comp, "Parse and add Mm Parameter Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_complex_request = Pref.bool("Show Modify Order Complex Request", show.modify_order_complex_request, "Parse and add Modify Order Complex Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_nr_response = Pref.bool("Show Modify Order Nr Response", show.modify_order_nr_response, "Parse and add Modify Order Nr Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_response = Pref.bool("Show Modify Order Response", show.modify_order_response, "Parse and add Modify Order Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_single_request = Pref.bool("Show Modify Order Single Request", show.modify_order_single_request, "Parse and add Modify Order Single Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_single_short_request = Pref.bool("Show Modify Order Single Short Request", show.modify_order_single_short_request, "Parse and add Modify Order Single Short Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_complex_request = Pref.bool("Show New Order Complex Request", show.new_order_complex_request, "Parse and add New Order Complex Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_nr_response = Pref.bool("Show New Order Nr Response", show.new_order_nr_response, "Parse and add New Order Nr Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_response = Pref.bool("Show New Order Response", show.new_order_response, "Parse and add New Order Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_single_request = Pref.bool("Show New Order Single Request", show.new_order_single_request, "Parse and add New Order Single Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_single_short_request = Pref.bool("Show New Order Single Short Request", show.new_order_single_short_request, "Parse and add New Order Single Short Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_news_broadcast = Pref.bool("Show News Broadcast", show.news_broadcast, "Parse and add News Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_not_affected_orders_grp_comp = Pref.bool("Show Not Affected Orders Grp Comp", show.not_affected_orders_grp_comp, "Parse and add Not Affected Orders Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_not_affected_securities_grp_comp = Pref.bool("Show Not Affected Securities Grp Comp", show.not_affected_securities_grp_comp, "Parse and add Not Affected Securities Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_notif_header_comp = Pref.bool("Show Notif Header Comp", show.notif_header_comp, "Parse and add Notif Header Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_nr_response_header_me_comp = Pref.bool("Show Nr Response Header Me Comp", show.nr_response_header_me_comp, "Parse and add Nr Response Header Me Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_nrbc_header_comp = Pref.bool("Show Nrbc Header Comp", show.nrbc_header_comp, "Parse and add Nrbc Header Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_order_exec_notification = Pref.bool("Show Order Exec Notification", show.order_exec_notification, "Parse and add Order Exec Notification to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_order_exec_report_broadcast = Pref.bool("Show Order Exec Report Broadcast", show.order_exec_report_broadcast, "Parse and add Order Exec Report Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_order_exec_response = Pref.bool("Show Order Exec Response", show.order_exec_response, "Parse and add Order Exec Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_party_action_report = Pref.bool("Show Party Action Report", show.party_action_report, "Parse and add Party Action Report to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_party_details_grp_comp = Pref.bool("Show Party Details Grp Comp", show.party_details_grp_comp, "Parse and add Party Details Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_party_entitlements_update_report = Pref.bool("Show Party Entitlements Update Report", show.party_entitlements_update_report, "Parse and add Party Entitlements Update Report to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_activation_notification = Pref.bool("Show Quote Activation Notification", show.quote_activation_notification, "Parse and add Quote Activation Notification to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_activation_request = Pref.bool("Show Quote Activation Request", show.quote_activation_request, "Parse and add Quote Activation Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_activation_response = Pref.bool("Show Quote Activation Response", show.quote_activation_response, "Parse and add Quote Activation Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_entry_ack_grp_comp = Pref.bool("Show Quote Entry Ack Grp Comp", show.quote_entry_ack_grp_comp, "Parse and add Quote Entry Ack Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_entry_grp_comp = Pref.bool("Show Quote Entry Grp Comp", show.quote_entry_grp_comp, "Parse and add Quote Entry Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_event_grp_comp = Pref.bool("Show Quote Event Grp Comp", show.quote_event_grp_comp, "Parse and add Quote Event Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_execution_report = Pref.bool("Show Quote Execution Report", show.quote_execution_report, "Parse and add Quote Execution Report to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_leg_exec_grp_comp = Pref.bool("Show Quote Leg Exec Grp Comp", show.quote_leg_exec_grp_comp, "Parse and add Quote Leg Exec Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rbc_header_comp = Pref.bool("Show Rbc Header Comp", show.rbc_header_comp, "Parse and add Rbc Header Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rbc_header_me_comp = Pref.bool("Show Rbc Header Me Comp", show.rbc_header_me_comp, "Parse and add Rbc Header Me Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_reject = Pref.bool("Show Reject", show.reject, "Parse and add Reject to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_request_header_comp = Pref.bool("Show Request Header Comp", show.request_header_comp, "Parse and add Request Header Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_response_header_comp = Pref.bool("Show Response Header Comp", show.response_header_comp, "Parse and add Response Header Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_response_header_me_comp = Pref.bool("Show Response Header Me Comp", show.response_header_me_comp, "Parse and add Response Header Me Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_me_message_request = Pref.bool("Show Retransmit Me Message Request", show.retransmit_me_message_request, "Parse and add Retransmit Me Message Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_me_message_response = Pref.bool("Show Retransmit Me Message Response", show.retransmit_me_message_response, "Parse and add Retransmit Me Message Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_request = Pref.bool("Show Retransmit Request", show.retransmit_request, "Parse and add Retransmit Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_response = Pref.bool("Show Retransmit Response", show.retransmit_response, "Parse and add Retransmit Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rfq_request = Pref.bool("Show Rfq Request", show.rfq_request, "Parse and add Rfq Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rfq_response = Pref.bool("Show Rfq Response", show.rfq_response, "Parse and add Rfq Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_risk_notification_broadcast = Pref.bool("Show Risk Notification Broadcast", show.risk_notification_broadcast, "Parse and add Risk Notification Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_service_availability_broadcast = Pref.bool("Show Service Availability Broadcast", show.service_availability_broadcast, "Parse and add Service Availability Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_sessions_grp_comp = Pref.bool("Show Sessions Grp Comp", show.sessions_grp_comp, "Parse and add Sessions Grp Comp to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_subscribe_request = Pref.bool("Show Subscribe Request", show.subscribe_request, "Parse and add Subscribe Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_subscribe_response = Pref.bool("Show Subscribe Response", show.subscribe_response, "Parse and add Subscribe Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_throttle_update_notification = Pref.bool("Show Throttle Update Notification", show.throttle_update_notification, "Parse and add Throttle Update Notification to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_tm_trading_session_status_broadcast = Pref.bool("Show Tm Trading Session Status Broadcast", show.tm_trading_session_status_broadcast, "Parse and add Tm Trading Session Status Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_trade_broadcast = Pref.bool("Show Trade Broadcast", show.trade_broadcast, "Parse and add Trade Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_trading_session_status_broadcast = Pref.bool("Show Trading Session Status Broadcast", show.trading_session_status_broadcast, "Parse and add Trading Session Status Broadcast to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_unsubscribe_request = Pref.bool("Show Unsubscribe Request", show.unsubscribe_request, "Parse and add Unsubscribe Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_unsubscribe_response = Pref.bool("Show Unsubscribe Response", show.unsubscribe_response, "Parse and add Unsubscribe Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_login_request = Pref.bool("Show User Login Request", show.user_login_request, "Parse and add User Login Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_login_response = Pref.bool("Show User Login Response", show.user_login_response, "Parse and add User Login Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_logout_request = Pref.bool("Show User Logout Request", show.user_logout_request, "Parse and add User Logout Request to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_logout_response = Pref.bool("Show User Logout Response", show.user_logout_response, "Parse and add User Logout Response to protocol tree")
omi_eurex_derivatives_eti_t7_v2_5.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_eurex_derivatives_eti_t7_v2_5.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_complex_instrument_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_add_complex_instrument_request then
    show.add_complex_instrument_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_add_complex_instrument_request
    changed = true
  end
  if show.add_complex_instrument_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_add_complex_instrument_response then
    show.add_complex_instrument_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_add_complex_instrument_response
    changed = true
  end
  if show.broadcast_error_notification ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_broadcast_error_notification then
    show.broadcast_error_notification = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_broadcast_error_notification
    changed = true
  end
  if show.cross_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_cross_request then
    show.cross_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_cross_request
    changed = true
  end
  if show.cross_request_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_cross_request_response then
    show.cross_request_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_cross_request_response
    changed = true
  end
  if show.delete_all_order_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_broadcast then
    show.delete_all_order_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_broadcast
    changed = true
  end
  if show.delete_all_order_nr_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_nr_response then
    show.delete_all_order_nr_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_nr_response
    changed = true
  end
  if show.delete_all_order_quote_event_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_quote_event_broadcast then
    show.delete_all_order_quote_event_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_quote_event_broadcast
    changed = true
  end
  if show.delete_all_order_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_request then
    show.delete_all_order_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_request
    changed = true
  end
  if show.delete_all_order_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_response then
    show.delete_all_order_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_order_response
    changed = true
  end
  if show.delete_all_quote_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_quote_broadcast then
    show.delete_all_quote_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_quote_broadcast
    changed = true
  end
  if show.delete_all_quote_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_quote_request then
    show.delete_all_quote_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_quote_request
    changed = true
  end
  if show.delete_all_quote_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_quote_response then
    show.delete_all_quote_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_all_quote_response
    changed = true
  end
  if show.delete_order_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_broadcast then
    show.delete_order_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_broadcast
    changed = true
  end
  if show.delete_order_complex_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_complex_request then
    show.delete_order_complex_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_complex_request
    changed = true
  end
  if show.delete_order_nr_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_nr_response then
    show.delete_order_nr_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_nr_response
    changed = true
  end
  if show.delete_order_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_response then
    show.delete_order_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_response
    changed = true
  end
  if show.delete_order_single_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_single_request then
    show.delete_order_single_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_delete_order_single_request
    changed = true
  end
  if show.enrichment_rules_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_enrichment_rules_grp_comp then
    show.enrichment_rules_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_enrichment_rules_grp_comp
    changed = true
  end
  if show.fills_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_fills_grp_comp then
    show.fills_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_fills_grp_comp
    changed = true
  end
  if show.forced_logout_notification ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_forced_logout_notification then
    show.forced_logout_notification = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_forced_logout_notification
    changed = true
  end
  if show.gateway_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_gateway_request then
    show.gateway_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_gateway_request
    changed = true
  end
  if show.gateway_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_gateway_response then
    show.gateway_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_gateway_response
    changed = true
  end
  if show.heartbeat ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_heartbeat then
    show.heartbeat = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_heartbeat
    changed = true
  end
  if show.heartbeat_notification ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_heartbeat_notification then
    show.heartbeat_notification = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_heartbeat_notification
    changed = true
  end
  if show.inquire_enrichment_rule_id_list_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_enrichment_rule_id_list_request then
    show.inquire_enrichment_rule_id_list_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_enrichment_rule_id_list_request
    changed = true
  end
  if show.inquire_enrichment_rule_id_list_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_enrichment_rule_id_list_response then
    show.inquire_enrichment_rule_id_list_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_enrichment_rule_id_list_response
    changed = true
  end
  if show.inquire_mm_parameter_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_mm_parameter_request then
    show.inquire_mm_parameter_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_mm_parameter_request
    changed = true
  end
  if show.inquire_mm_parameter_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_mm_parameter_response then
    show.inquire_mm_parameter_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_mm_parameter_response
    changed = true
  end
  if show.inquire_session_list_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_session_list_request then
    show.inquire_session_list_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_session_list_request
    changed = true
  end
  if show.inquire_session_list_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_session_list_response then
    show.inquire_session_list_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_session_list_response
    changed = true
  end
  if show.inquire_user_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_user_request then
    show.inquire_user_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_user_request
    changed = true
  end
  if show.inquire_user_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_user_response then
    show.inquire_user_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_inquire_user_response
    changed = true
  end
  if show.instrmnt_leg_exec_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_instrmnt_leg_exec_grp_comp then
    show.instrmnt_leg_exec_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_instrmnt_leg_exec_grp_comp
    changed = true
  end
  if show.instrmt_leg_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_instrmt_leg_grp_comp then
    show.instrmt_leg_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_instrmt_leg_grp_comp
    changed = true
  end
  if show.leg_ord_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_leg_ord_grp_comp then
    show.leg_ord_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_leg_ord_grp_comp
    changed = true
  end
  if show.legal_notification_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_legal_notification_broadcast then
    show.legal_notification_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_legal_notification_broadcast
    changed = true
  end
  if show.logon_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logon_request then
    show.logon_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logon_request
    changed = true
  end
  if show.logon_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logon_response then
    show.logon_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logon_response
    changed = true
  end
  if show.logout_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logout_request then
    show.logout_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logout_request
    changed = true
  end
  if show.logout_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logout_response then
    show.logout_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_logout_response
    changed = true
  end
  if show.mass_quote_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mass_quote_request then
    show.mass_quote_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mass_quote_request
    changed = true
  end
  if show.mass_quote_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mass_quote_response then
    show.mass_quote_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mass_quote_response
    changed = true
  end
  if show.message ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_message then
    show.message = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_message_header then
    show.message_header = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_message_header
    changed = true
  end
  if show.mm_parameter_definition_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mm_parameter_definition_request then
    show.mm_parameter_definition_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mm_parameter_definition_request
    changed = true
  end
  if show.mm_parameter_definition_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mm_parameter_definition_response then
    show.mm_parameter_definition_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mm_parameter_definition_response
    changed = true
  end
  if show.mm_parameter_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mm_parameter_grp_comp then
    show.mm_parameter_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_mm_parameter_grp_comp
    changed = true
  end
  if show.modify_order_complex_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_complex_request then
    show.modify_order_complex_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_complex_request
    changed = true
  end
  if show.modify_order_nr_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_nr_response then
    show.modify_order_nr_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_nr_response
    changed = true
  end
  if show.modify_order_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_response then
    show.modify_order_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_response
    changed = true
  end
  if show.modify_order_single_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_single_request then
    show.modify_order_single_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_single_request
    changed = true
  end
  if show.modify_order_single_short_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_single_short_request then
    show.modify_order_single_short_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_modify_order_single_short_request
    changed = true
  end
  if show.new_order_complex_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_complex_request then
    show.new_order_complex_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_complex_request
    changed = true
  end
  if show.new_order_nr_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_nr_response then
    show.new_order_nr_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_nr_response
    changed = true
  end
  if show.new_order_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_response then
    show.new_order_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_response
    changed = true
  end
  if show.new_order_single_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_single_request then
    show.new_order_single_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_single_request
    changed = true
  end
  if show.new_order_single_short_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_single_short_request then
    show.new_order_single_short_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_new_order_single_short_request
    changed = true
  end
  if show.news_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_news_broadcast then
    show.news_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_news_broadcast
    changed = true
  end
  if show.not_affected_orders_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_not_affected_orders_grp_comp then
    show.not_affected_orders_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_not_affected_orders_grp_comp
    changed = true
  end
  if show.not_affected_securities_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_not_affected_securities_grp_comp then
    show.not_affected_securities_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_not_affected_securities_grp_comp
    changed = true
  end
  if show.notif_header_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_notif_header_comp then
    show.notif_header_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_notif_header_comp
    changed = true
  end
  if show.nr_response_header_me_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_nr_response_header_me_comp then
    show.nr_response_header_me_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_nr_response_header_me_comp
    changed = true
  end
  if show.nrbc_header_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_nrbc_header_comp then
    show.nrbc_header_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_nrbc_header_comp
    changed = true
  end
  if show.order_exec_notification ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_order_exec_notification then
    show.order_exec_notification = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_order_exec_notification
    changed = true
  end
  if show.order_exec_report_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_order_exec_report_broadcast then
    show.order_exec_report_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_order_exec_report_broadcast
    changed = true
  end
  if show.order_exec_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_order_exec_response then
    show.order_exec_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_order_exec_response
    changed = true
  end
  if show.packet ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_packet then
    show.packet = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_packet
    changed = true
  end
  if show.party_action_report ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_party_action_report then
    show.party_action_report = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_party_action_report
    changed = true
  end
  if show.party_details_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_party_details_grp_comp then
    show.party_details_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_party_details_grp_comp
    changed = true
  end
  if show.party_entitlements_update_report ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_party_entitlements_update_report then
    show.party_entitlements_update_report = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_party_entitlements_update_report
    changed = true
  end
  if show.quote_activation_notification ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_activation_notification then
    show.quote_activation_notification = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_activation_notification
    changed = true
  end
  if show.quote_activation_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_activation_request then
    show.quote_activation_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_activation_request
    changed = true
  end
  if show.quote_activation_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_activation_response then
    show.quote_activation_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_activation_response
    changed = true
  end
  if show.quote_entry_ack_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_entry_ack_grp_comp then
    show.quote_entry_ack_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_entry_ack_grp_comp
    changed = true
  end
  if show.quote_entry_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_entry_grp_comp then
    show.quote_entry_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_entry_grp_comp
    changed = true
  end
  if show.quote_event_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_event_grp_comp then
    show.quote_event_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_event_grp_comp
    changed = true
  end
  if show.quote_execution_report ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_execution_report then
    show.quote_execution_report = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_execution_report
    changed = true
  end
  if show.quote_leg_exec_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_leg_exec_grp_comp then
    show.quote_leg_exec_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_quote_leg_exec_grp_comp
    changed = true
  end
  if show.rbc_header_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rbc_header_comp then
    show.rbc_header_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rbc_header_comp
    changed = true
  end
  if show.rbc_header_me_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rbc_header_me_comp then
    show.rbc_header_me_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rbc_header_me_comp
    changed = true
  end
  if show.reject ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_reject then
    show.reject = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_reject
    changed = true
  end
  if show.request_header_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_request_header_comp then
    show.request_header_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_request_header_comp
    changed = true
  end
  if show.response_header_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_response_header_comp then
    show.response_header_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_response_header_comp
    changed = true
  end
  if show.response_header_me_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_response_header_me_comp then
    show.response_header_me_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_response_header_me_comp
    changed = true
  end
  if show.retransmit_me_message_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_me_message_request then
    show.retransmit_me_message_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_me_message_request
    changed = true
  end
  if show.retransmit_me_message_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_me_message_response then
    show.retransmit_me_message_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_me_message_response
    changed = true
  end
  if show.retransmit_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_request then
    show.retransmit_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_request
    changed = true
  end
  if show.retransmit_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_response then
    show.retransmit_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_retransmit_response
    changed = true
  end
  if show.rfq_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rfq_request then
    show.rfq_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rfq_request
    changed = true
  end
  if show.rfq_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rfq_response then
    show.rfq_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_rfq_response
    changed = true
  end
  if show.risk_notification_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_risk_notification_broadcast then
    show.risk_notification_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_risk_notification_broadcast
    changed = true
  end
  if show.service_availability_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_service_availability_broadcast then
    show.service_availability_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_service_availability_broadcast
    changed = true
  end
  if show.sessions_grp_comp ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_sessions_grp_comp then
    show.sessions_grp_comp = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_sessions_grp_comp
    changed = true
  end
  if show.subscribe_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_subscribe_request then
    show.subscribe_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_subscribe_request
    changed = true
  end
  if show.subscribe_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_subscribe_response then
    show.subscribe_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_subscribe_response
    changed = true
  end
  if show.throttle_update_notification ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_throttle_update_notification then
    show.throttle_update_notification = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_throttle_update_notification
    changed = true
  end
  if show.tm_trading_session_status_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_tm_trading_session_status_broadcast then
    show.tm_trading_session_status_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_tm_trading_session_status_broadcast
    changed = true
  end
  if show.trade_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_trade_broadcast then
    show.trade_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_trade_broadcast
    changed = true
  end
  if show.trading_session_status_broadcast ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_trading_session_status_broadcast then
    show.trading_session_status_broadcast = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_trading_session_status_broadcast
    changed = true
  end
  if show.unsubscribe_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_unsubscribe_request then
    show.unsubscribe_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_unsubscribe_request
    changed = true
  end
  if show.unsubscribe_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_unsubscribe_response then
    show.unsubscribe_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_unsubscribe_response
    changed = true
  end
  if show.user_login_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_login_request then
    show.user_login_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_login_request
    changed = true
  end
  if show.user_login_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_login_response then
    show.user_login_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_login_response
    changed = true
  end
  if show.user_logout_request ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_logout_request then
    show.user_logout_request = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_logout_request
    changed = true
  end
  if show.user_logout_response ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_logout_response then
    show.user_logout_response = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_user_logout_response
    changed = true
  end
  if show.payload ~= omi_eurex_derivatives_eti_t7_v2_5.prefs.show_payload then
    show.payload = omi_eurex_derivatives_eti_t7_v2_5.prefs.show_payload
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
-- Dissect Eurex Derivatives Eti T7 2.5
-----------------------------------------------------------------------

-- Pad 4
eurex_derivatives_eti_t7_v2_5.pad_4 = {}

-- Size Of: Pad 4
eurex_derivatives_eti_t7_v2_5.pad_4.size = 4

-- Display: Pad 4
eurex_derivatives_eti_t7_v2_5.pad_4.display = function(value)
  return "Pad 4: "..value
end

-- Dissect: Pad 4
eurex_derivatives_eti_t7_v2_5.pad_4.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.pad_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.pad_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.pad_4, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
eurex_derivatives_eti_t7_v2_5.msg_seq_num = {}

-- Size Of: Msg Seq Num
eurex_derivatives_eti_t7_v2_5.msg_seq_num.size = 4

-- Display: Msg Seq Num
eurex_derivatives_eti_t7_v2_5.msg_seq_num.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Msg Seq Num: No Value"
  end

  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
eurex_derivatives_eti_t7_v2_5.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Sending Time
eurex_derivatives_eti_t7_v2_5.sending_time = {}

-- Size Of: Sending Time
eurex_derivatives_eti_t7_v2_5.sending_time.size = 8

-- Display: Sending Time
eurex_derivatives_eti_t7_v2_5.sending_time.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Request Time
eurex_derivatives_eti_t7_v2_5.request_time = {}

-- Size Of: Request Time
eurex_derivatives_eti_t7_v2_5.request_time.size = 8

-- Display: Request Time
eurex_derivatives_eti_t7_v2_5.request_time.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.request_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.request_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.request_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.request_time, range, value, display)

  return offset + length, value
end

-- Response Header Comp
eurex_derivatives_eti_t7_v2_5.response_header_comp = {}

-- Size Of: Response Header Comp
eurex_derivatives_eti_t7_v2_5.response_header_comp.size =
  eurex_derivatives_eti_t7_v2_5.request_time.size + 
  eurex_derivatives_eti_t7_v2_5.sending_time.size + 
  eurex_derivatives_eti_t7_v2_5.msg_seq_num.size + 
  eurex_derivatives_eti_t7_v2_5.pad_4.size;

-- Display: Response Header Comp
eurex_derivatives_eti_t7_v2_5.response_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Header Comp
eurex_derivatives_eti_t7_v2_5.response_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_eti_t7_v2_5.request_time.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_eti_t7_v2_5.sending_time.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = eurex_derivatives_eti_t7_v2_5.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eti_t7_v2_5.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Comp
eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.response_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.response_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.response_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.response_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.response_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Pad 2
eurex_derivatives_eti_t7_v2_5.pad_2 = {}

-- Size Of: Pad 2
eurex_derivatives_eti_t7_v2_5.pad_2.size = 2

-- Display: Pad 2
eurex_derivatives_eti_t7_v2_5.pad_2.display = function(value)
  return "Pad 2: "..value
end

-- Dissect: Pad 2
eurex_derivatives_eti_t7_v2_5.pad_2.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.pad_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.pad_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.pad_2, range, value, display)

  return offset + length, value
end

-- User Logout Response
eurex_derivatives_eti_t7_v2_5.user_logout_response = {}

-- Read runtime size of: User Logout Response
eurex_derivatives_eti_t7_v2_5.user_logout_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: User Logout Response
eurex_derivatives_eti_t7_v2_5.user_logout_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Logout Response
eurex_derivatives_eti_t7_v2_5.user_logout_response.fields = function(buffer, offset, packet, parent, size_of_user_logout_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Logout Response
eurex_derivatives_eti_t7_v2_5.user_logout_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_user_logout_response = eurex_derivatives_eti_t7_v2_5.user_logout_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.user_logout_response then
    local range = buffer(offset, size_of_user_logout_response)
    local display = eurex_derivatives_eti_t7_v2_5.user_logout_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.user_logout_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.user_logout_response.fields(buffer, offset, packet, parent, size_of_user_logout_response)

  return offset + size_of_user_logout_response
end

-- Username
eurex_derivatives_eti_t7_v2_5.username = {}

-- Size Of: Username
eurex_derivatives_eti_t7_v2_5.username.size = 4

-- Display: Username
eurex_derivatives_eti_t7_v2_5.username.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
eurex_derivatives_eti_t7_v2_5.username.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.username.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.username, range, value, display)

  return offset + length, value
end

-- Sender Sub Id
eurex_derivatives_eti_t7_v2_5.sender_sub_id = {}

-- Size Of: Sender Sub Id
eurex_derivatives_eti_t7_v2_5.sender_sub_id.size = 4

-- Display: Sender Sub Id
eurex_derivatives_eti_t7_v2_5.sender_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Sender Sub Id: No Value"
  end

  return "Sender Sub Id: "..value
end

-- Dissect: Sender Sub Id
eurex_derivatives_eti_t7_v2_5.sender_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.sender_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.sender_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.sender_sub_id, range, value, display)

  return offset + length, value
end

-- Request Header Comp
eurex_derivatives_eti_t7_v2_5.request_header_comp = {}

-- Size Of: Request Header Comp
eurex_derivatives_eti_t7_v2_5.request_header_comp.size =
  eurex_derivatives_eti_t7_v2_5.msg_seq_num.size + 
  eurex_derivatives_eti_t7_v2_5.sender_sub_id.size;

-- Display: Request Header Comp
eurex_derivatives_eti_t7_v2_5.request_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Header Comp
eurex_derivatives_eti_t7_v2_5.request_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = eurex_derivatives_eti_t7_v2_5.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Sender Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, sender_sub_id = eurex_derivatives_eti_t7_v2_5.sender_sub_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Header Comp
eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.request_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.request_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.request_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.request_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.request_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Network Msg Id
eurex_derivatives_eti_t7_v2_5.network_msg_id = {}

-- Size Of: Network Msg Id
eurex_derivatives_eti_t7_v2_5.network_msg_id.size = 8

-- Display: Network Msg Id
eurex_derivatives_eti_t7_v2_5.network_msg_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Network Msg Id: No Value"
  end

  return "Network Msg Id: "..value
end

-- Dissect: Network Msg Id
eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.network_msg_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.network_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.network_msg_id, range, value, display)

  return offset + length, value
end

-- User Logout Request
eurex_derivatives_eti_t7_v2_5.user_logout_request = {}

-- Read runtime size of: User Logout Request
eurex_derivatives_eti_t7_v2_5.user_logout_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: User Logout Request
eurex_derivatives_eti_t7_v2_5.user_logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Logout Request
eurex_derivatives_eti_t7_v2_5.user_logout_request.fields = function(buffer, offset, packet, parent, size_of_user_logout_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer Nullable
  index, username = eurex_derivatives_eti_t7_v2_5.username.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eti_t7_v2_5.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Logout Request
eurex_derivatives_eti_t7_v2_5.user_logout_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_user_logout_request = eurex_derivatives_eti_t7_v2_5.user_logout_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.user_logout_request then
    local range = buffer(offset, size_of_user_logout_request)
    local display = eurex_derivatives_eti_t7_v2_5.user_logout_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.user_logout_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.user_logout_request.fields(buffer, offset, packet, parent, size_of_user_logout_request)

  return offset + size_of_user_logout_request
end

-- User Login Response
eurex_derivatives_eti_t7_v2_5.user_login_response = {}

-- Read runtime size of: User Login Response
eurex_derivatives_eti_t7_v2_5.user_login_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: User Login Response
eurex_derivatives_eti_t7_v2_5.user_login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Login Response
eurex_derivatives_eti_t7_v2_5.user_login_response.fields = function(buffer, offset, packet, parent, size_of_user_login_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Login Response
eurex_derivatives_eti_t7_v2_5.user_login_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_user_login_response = eurex_derivatives_eti_t7_v2_5.user_login_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.user_login_response then
    local range = buffer(offset, size_of_user_login_response)
    local display = eurex_derivatives_eti_t7_v2_5.user_login_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.user_login_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.user_login_response.fields(buffer, offset, packet, parent, size_of_user_login_response)

  return offset + size_of_user_login_response
end

-- Password
eurex_derivatives_eti_t7_v2_5.password = {}

-- Size Of: Password
eurex_derivatives_eti_t7_v2_5.password.size = 32

-- Display: Password
eurex_derivatives_eti_t7_v2_5.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
eurex_derivatives_eti_t7_v2_5.password.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.password.size
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

  local display = eurex_derivatives_eti_t7_v2_5.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.password, range, value, display)

  return offset + length, value
end

-- User Login Request
eurex_derivatives_eti_t7_v2_5.user_login_request = {}

-- Read runtime size of: User Login Request
eurex_derivatives_eti_t7_v2_5.user_login_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: User Login Request
eurex_derivatives_eti_t7_v2_5.user_login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Login Request
eurex_derivatives_eti_t7_v2_5.user_login_request.fields = function(buffer, offset, packet, parent, size_of_user_login_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer Nullable
  index, username = eurex_derivatives_eti_t7_v2_5.username.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String Nullable
  index, password = eurex_derivatives_eti_t7_v2_5.password.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eti_t7_v2_5.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Login Request
eurex_derivatives_eti_t7_v2_5.user_login_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_user_login_request = eurex_derivatives_eti_t7_v2_5.user_login_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.user_login_request then
    local range = buffer(offset, size_of_user_login_request)
    local display = eurex_derivatives_eti_t7_v2_5.user_login_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.user_login_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.user_login_request.fields(buffer, offset, packet, parent, size_of_user_login_request)

  return offset + size_of_user_login_request
end

-- Unsubscribe Response
eurex_derivatives_eti_t7_v2_5.unsubscribe_response = {}

-- Read runtime size of: Unsubscribe Response
eurex_derivatives_eti_t7_v2_5.unsubscribe_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Unsubscribe Response
eurex_derivatives_eti_t7_v2_5.unsubscribe_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsubscribe Response
eurex_derivatives_eti_t7_v2_5.unsubscribe_response.fields = function(buffer, offset, packet, parent, size_of_unsubscribe_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsubscribe Response
eurex_derivatives_eti_t7_v2_5.unsubscribe_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsubscribe_response = eurex_derivatives_eti_t7_v2_5.unsubscribe_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsubscribe_response then
    local range = buffer(offset, size_of_unsubscribe_response)
    local display = eurex_derivatives_eti_t7_v2_5.unsubscribe_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.unsubscribe_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.unsubscribe_response.fields(buffer, offset, packet, parent, size_of_unsubscribe_response)

  return offset + size_of_unsubscribe_response
end

-- Ref Appl Sub Id
eurex_derivatives_eti_t7_v2_5.ref_appl_sub_id = {}

-- Size Of: Ref Appl Sub Id
eurex_derivatives_eti_t7_v2_5.ref_appl_sub_id.size = 4

-- Display: Ref Appl Sub Id
eurex_derivatives_eti_t7_v2_5.ref_appl_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Ref Appl Sub Id: No Value"
  end

  return "Ref Appl Sub Id: "..value
end

-- Dissect: Ref Appl Sub Id
eurex_derivatives_eti_t7_v2_5.ref_appl_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.ref_appl_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.ref_appl_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.ref_appl_sub_id, range, value, display)

  return offset + length, value
end

-- Unsubscribe Request
eurex_derivatives_eti_t7_v2_5.unsubscribe_request = {}

-- Read runtime size of: Unsubscribe Request
eurex_derivatives_eti_t7_v2_5.unsubscribe_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Unsubscribe Request
eurex_derivatives_eti_t7_v2_5.unsubscribe_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsubscribe Request
eurex_derivatives_eti_t7_v2_5.unsubscribe_request.fields = function(buffer, offset, packet, parent, size_of_unsubscribe_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Ref Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, ref_appl_sub_id = eurex_derivatives_eti_t7_v2_5.ref_appl_sub_id.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eti_t7_v2_5.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsubscribe Request
eurex_derivatives_eti_t7_v2_5.unsubscribe_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsubscribe_request = eurex_derivatives_eti_t7_v2_5.unsubscribe_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsubscribe_request then
    local range = buffer(offset, size_of_unsubscribe_request)
    local display = eurex_derivatives_eti_t7_v2_5.unsubscribe_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.unsubscribe_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.unsubscribe_request.fields(buffer, offset, packet, parent, size_of_unsubscribe_request)

  return offset + size_of_unsubscribe_request
end

-- Pad 7
eurex_derivatives_eti_t7_v2_5.pad_7 = {}

-- Size Of: Pad 7
eurex_derivatives_eti_t7_v2_5.pad_7.size = 7

-- Display: Pad 7
eurex_derivatives_eti_t7_v2_5.pad_7.display = function(value)
  return "Pad 7: "..value
end

-- Dissect: Pad 7
eurex_derivatives_eti_t7_v2_5.pad_7.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.pad_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.pad_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Ref Appl Last Msg Id
eurex_derivatives_eti_t7_v2_5.ref_appl_last_msg_id = {}

-- Size Of: Ref Appl Last Msg Id
eurex_derivatives_eti_t7_v2_5.ref_appl_last_msg_id.size = 16

-- Display: Ref Appl Last Msg Id
eurex_derivatives_eti_t7_v2_5.ref_appl_last_msg_id.display = function(value)
  return "Ref Appl Last Msg Id: "..value
end

-- Dissect: Ref Appl Last Msg Id
eurex_derivatives_eti_t7_v2_5.ref_appl_last_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.ref_appl_last_msg_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.ref_appl_last_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.ref_appl_last_msg_id, range, value, display)

  return offset + length, value
end

-- Trad Ses Event
eurex_derivatives_eti_t7_v2_5.trad_ses_event = {}

-- Size Of: Trad Ses Event
eurex_derivatives_eti_t7_v2_5.trad_ses_event.size = 1

-- Display: Trad Ses Event
eurex_derivatives_eti_t7_v2_5.trad_ses_event.display = function(value)
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
  if value == 0xFF then
    return "Trad Ses Event: No Value"
  end

  return "Trad Ses Event: Unknown("..value..")"
end

-- Dissect: Trad Ses Event
eurex_derivatives_eti_t7_v2_5.trad_ses_event.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trad_ses_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.trad_ses_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trad_ses_event, range, value, display)

  return offset + length, value
end

-- Trade Date
eurex_derivatives_eti_t7_v2_5.trade_date = {}

-- Size Of: Trade Date
eurex_derivatives_eti_t7_v2_5.trade_date.size = 4

-- Display: Trade Date
eurex_derivatives_eti_t7_v2_5.trade_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
eurex_derivatives_eti_t7_v2_5.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Market Segment Id
eurex_derivatives_eti_t7_v2_5.market_segment_id = {}

-- Size Of: Market Segment Id
eurex_derivatives_eti_t7_v2_5.market_segment_id.size = 4

-- Display: Market Segment Id
eurex_derivatives_eti_t7_v2_5.market_segment_id.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Market Segment Id: No Value"
  end

  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Last Fragment
eurex_derivatives_eti_t7_v2_5.last_fragment = {}

-- Size Of: Last Fragment
eurex_derivatives_eti_t7_v2_5.last_fragment.size = 1

-- Display: Last Fragment
eurex_derivatives_eti_t7_v2_5.last_fragment.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.last_fragment.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Appl Resend Flag
eurex_derivatives_eti_t7_v2_5.appl_resend_flag = {}

-- Size Of: Appl Resend Flag
eurex_derivatives_eti_t7_v2_5.appl_resend_flag.size = 1

-- Display: Appl Resend Flag
eurex_derivatives_eti_t7_v2_5.appl_resend_flag.display = function(value)
  if value == 0 then
    return "Appl Resend Flag: False (0)"
  end
  if value == 1 then
    return "Appl Resend Flag: True (1)"
  end
  if value == 0xFF then
    return "Appl Resend Flag: No Value"
  end

  return "Appl Resend Flag: Unknown("..value..")"
end

-- Dissect: Appl Resend Flag
eurex_derivatives_eti_t7_v2_5.appl_resend_flag.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_resend_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.appl_resend_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_resend_flag, range, value, display)

  return offset + length, value
end

-- Appl Id
eurex_derivatives_eti_t7_v2_5.appl_id = {}

-- Size Of: Appl Id
eurex_derivatives_eti_t7_v2_5.appl_id.size = 1

-- Display: Appl Id
eurex_derivatives_eti_t7_v2_5.appl_id.display = function(value)
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
  if value == 0xFF then
    return "Appl Id: No Value"
  end

  return "Appl Id: Unknown("..value..")"
end

-- Dissect: Appl Id
eurex_derivatives_eti_t7_v2_5.appl_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Appl Msg Id
eurex_derivatives_eti_t7_v2_5.appl_msg_id = {}

-- Size Of: Appl Msg Id
eurex_derivatives_eti_t7_v2_5.appl_msg_id.size = 16

-- Display: Appl Msg Id
eurex_derivatives_eti_t7_v2_5.appl_msg_id.display = function(value)
  return "Appl Msg Id: "..value
end

-- Dissect: Appl Msg Id
eurex_derivatives_eti_t7_v2_5.appl_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_msg_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.appl_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_msg_id, range, value, display)

  return offset + length, value
end

-- Partition Id
eurex_derivatives_eti_t7_v2_5.partition_id = {}

-- Size Of: Partition Id
eurex_derivatives_eti_t7_v2_5.partition_id.size = 2

-- Display: Partition Id
eurex_derivatives_eti_t7_v2_5.partition_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Partition Id: No Value"
  end

  return "Partition Id: "..value
end

-- Dissect: Partition Id
eurex_derivatives_eti_t7_v2_5.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Appl Sub Id
eurex_derivatives_eti_t7_v2_5.appl_sub_id = {}

-- Size Of: Appl Sub Id
eurex_derivatives_eti_t7_v2_5.appl_sub_id.size = 4

-- Display: Appl Sub Id
eurex_derivatives_eti_t7_v2_5.appl_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Appl Sub Id: No Value"
  end

  return "Appl Sub Id: "..value
end

-- Dissect: Appl Sub Id
eurex_derivatives_eti_t7_v2_5.appl_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.appl_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_sub_id, range, value, display)

  return offset + length, value
end

-- Notification In
eurex_derivatives_eti_t7_v2_5.notification_in = {}

-- Size Of: Notification In
eurex_derivatives_eti_t7_v2_5.notification_in.size = 8

-- Display: Notification In
eurex_derivatives_eti_t7_v2_5.notification_in.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Notification In: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Notification In: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Notification In
eurex_derivatives_eti_t7_v2_5.notification_in.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.notification_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.notification_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.notification_in, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Time Out
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out = {}

-- Size Of: Trd Reg Ts Time Out
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.size = 8

-- Display: Trd Reg Ts Time Out
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Time Out: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Time Out: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time Out
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trd_reg_ts_time_out, range, value, display)

  return offset + length, value
end

-- Rbc Header Me Comp
eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp = {}

-- Size Of: Rbc Header Me Comp
eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.size =
  eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.size + 
  eurex_derivatives_eti_t7_v2_5.notification_in.size + 
  eurex_derivatives_eti_t7_v2_5.sending_time.size + 
  eurex_derivatives_eti_t7_v2_5.appl_sub_id.size + 
  eurex_derivatives_eti_t7_v2_5.partition_id.size + 
  eurex_derivatives_eti_t7_v2_5.appl_msg_id.size + 
  eurex_derivatives_eti_t7_v2_5.appl_id.size + 
  eurex_derivatives_eti_t7_v2_5.appl_resend_flag.size + 
  eurex_derivatives_eti_t7_v2_5.last_fragment.size + 
  eurex_derivatives_eti_t7_v2_5.pad_7.size;

-- Display: Rbc Header Me Comp
eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rbc Header Me Comp
eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_out = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.dissect(buffer, index, packet, parent)

  -- Notification In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, notification_in = eurex_derivatives_eti_t7_v2_5.notification_in.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_eti_t7_v2_5.sending_time.dissect(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_sub_id = eurex_derivatives_eti_t7_v2_5.appl_sub_id.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_eti_t7_v2_5.partition_id.dissect(buffer, index, packet, parent)

  -- Appl Msg Id: 16 Byte
  index, appl_msg_id = eurex_derivatives_eti_t7_v2_5.appl_msg_id.dissect(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, appl_id = eurex_derivatives_eti_t7_v2_5.appl_id.dissect(buffer, index, packet, parent)

  -- Appl Resend Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_resend_flag = eurex_derivatives_eti_t7_v2_5.appl_resend_flag.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_eti_t7_v2_5.last_fragment.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Me Comp
eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.dissect = function(buffer, offset, packet, parent)
  if show.rbc_header_me_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.rbc_header_me_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Broadcast
eurex_derivatives_eti_t7_v2_5.trading_session_status_broadcast = {}

-- Read runtime size of: Trading Session Status Broadcast
eurex_derivatives_eti_t7_v2_5.trading_session_status_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Trading Session Status Broadcast
eurex_derivatives_eti_t7_v2_5.trading_session_status_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Broadcast
eurex_derivatives_eti_t7_v2_5.trading_session_status_broadcast.fields = function(buffer, offset, packet, parent, size_of_trading_session_status_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = eurex_derivatives_eti_t7_v2_5.trade_date.dissect(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trad_ses_event = eurex_derivatives_eti_t7_v2_5.trad_ses_event.dissect(buffer, index, packet, parent)

  -- Ref Appl Last Msg Id: 16 Byte
  index, ref_appl_last_msg_id = eurex_derivatives_eti_t7_v2_5.ref_appl_last_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Broadcast
eurex_derivatives_eti_t7_v2_5.trading_session_status_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trading_session_status_broadcast = eurex_derivatives_eti_t7_v2_5.trading_session_status_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trading_session_status_broadcast then
    local range = buffer(offset, size_of_trading_session_status_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.trading_session_status_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trading_session_status_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.trading_session_status_broadcast.fields(buffer, offset, packet, parent, size_of_trading_session_status_broadcast)

  return offset + size_of_trading_session_status_broadcast
end

-- Root Party Clearing Firm
eurex_derivatives_eti_t7_v2_5.root_party_clearing_firm = {}

-- Size Of: Root Party Clearing Firm
eurex_derivatives_eti_t7_v2_5.root_party_clearing_firm.size = 5

-- Display: Root Party Clearing Firm
eurex_derivatives_eti_t7_v2_5.root_party_clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Clearing Firm: No Value"
  end

  return "Root Party Clearing Firm: "..value
end

-- Dissect: Root Party Clearing Firm
eurex_derivatives_eti_t7_v2_5.root_party_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_clearing_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.root_party_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_clearing_firm, range, value, display)

  return offset + length, value
end

-- Root Party Executing Trader
eurex_derivatives_eti_t7_v2_5.root_party_executing_trader = {}

-- Size Of: Root Party Executing Trader
eurex_derivatives_eti_t7_v2_5.root_party_executing_trader.size = 6

-- Display: Root Party Executing Trader
eurex_derivatives_eti_t7_v2_5.root_party_executing_trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Executing Trader: No Value"
  end

  return "Root Party Executing Trader: "..value
end

-- Dissect: Root Party Executing Trader
eurex_derivatives_eti_t7_v2_5.root_party_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_executing_trader.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.root_party_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_executing_trader, range, value, display)

  return offset + length, value
end

-- Root Party Executing Firm
eurex_derivatives_eti_t7_v2_5.root_party_executing_firm = {}

-- Size Of: Root Party Executing Firm
eurex_derivatives_eti_t7_v2_5.root_party_executing_firm.size = 5

-- Display: Root Party Executing Firm
eurex_derivatives_eti_t7_v2_5.root_party_executing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Executing Firm: No Value"
  end

  return "Root Party Executing Firm: "..value
end

-- Dissect: Root Party Executing Firm
eurex_derivatives_eti_t7_v2_5.root_party_executing_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_executing_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.root_party_executing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_executing_firm, range, value, display)

  return offset + length, value
end

-- Root Party Clearing Organization
eurex_derivatives_eti_t7_v2_5.root_party_clearing_organization = {}

-- Size Of: Root Party Clearing Organization
eurex_derivatives_eti_t7_v2_5.root_party_clearing_organization.size = 4

-- Display: Root Party Clearing Organization
eurex_derivatives_eti_t7_v2_5.root_party_clearing_organization.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Clearing Organization: No Value"
  end

  return "Root Party Clearing Organization: "..value
end

-- Dissect: Root Party Clearing Organization
eurex_derivatives_eti_t7_v2_5.root_party_clearing_organization.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_clearing_organization.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.root_party_clearing_organization.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_clearing_organization, range, value, display)

  return offset + length, value
end

-- Order Side
eurex_derivatives_eti_t7_v2_5.order_side = {}

-- Size Of: Order Side
eurex_derivatives_eti_t7_v2_5.order_side.size = 1

-- Display: Order Side
eurex_derivatives_eti_t7_v2_5.order_side.display = function(value)
  if value == 1 then
    return "Order Side: Buy (1)"
  end
  if value == 2 then
    return "Order Side: Sell (2)"
  end
  if value == 0xFF then
    return "Order Side: No Value"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
eurex_derivatives_eti_t7_v2_5.order_side.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.order_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.order_side, range, value, display)

  return offset + length, value
end

-- Related Product Complex
eurex_derivatives_eti_t7_v2_5.related_product_complex = {}

-- Size Of: Related Product Complex
eurex_derivatives_eti_t7_v2_5.related_product_complex.size = 1

-- Display: Related Product Complex
eurex_derivatives_eti_t7_v2_5.related_product_complex.display = function(value)
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
  if value == 0xFF then
    return "Related Product Complex: No Value"
  end

  return "Related Product Complex: Unknown("..value..")"
end

-- Dissect: Related Product Complex
eurex_derivatives_eti_t7_v2_5.related_product_complex.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.related_product_complex.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.related_product_complex.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.related_product_complex, range, value, display)

  return offset + length, value
end

-- Ord Type
eurex_derivatives_eti_t7_v2_5.ord_type = {}

-- Size Of: Ord Type
eurex_derivatives_eti_t7_v2_5.ord_type.size = 1

-- Display: Ord Type
eurex_derivatives_eti_t7_v2_5.ord_type.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.ord_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Category
eurex_derivatives_eti_t7_v2_5.order_category = {}

-- Size Of: Order Category
eurex_derivatives_eti_t7_v2_5.order_category.size = 1

-- Display: Order Category
eurex_derivatives_eti_t7_v2_5.order_category.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Category: No Value"
  end

  if value == "1" then
    return "Order Category: Order (1)"
  end
  if value == "2" then
    return "Order Category: Quote (2)"
  end

  return "Order Category: Unknown("..value..")"
end

-- Dissect: Order Category
eurex_derivatives_eti_t7_v2_5.order_category.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.order_category.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_eti_t7_v2_5.order_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.order_category, range, value, display)

  return offset + length, value
end

-- Free Text 3
eurex_derivatives_eti_t7_v2_5.free_text_3 = {}

-- Size Of: Free Text 3
eurex_derivatives_eti_t7_v2_5.free_text_3.size = 12

-- Display: Free Text 3
eurex_derivatives_eti_t7_v2_5.free_text_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text 3: No Value"
  end

  return "Free Text 3: "..value
end

-- Dissect: Free Text 3
eurex_derivatives_eti_t7_v2_5.free_text_3.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.free_text_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.free_text_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.free_text_3, range, value, display)

  return offset + length, value
end

-- Free Text 2
eurex_derivatives_eti_t7_v2_5.free_text_2 = {}

-- Size Of: Free Text 2
eurex_derivatives_eti_t7_v2_5.free_text_2.size = 12

-- Display: Free Text 2
eurex_derivatives_eti_t7_v2_5.free_text_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text 2: No Value"
  end

  return "Free Text 2: "..value
end

-- Dissect: Free Text 2
eurex_derivatives_eti_t7_v2_5.free_text_2.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.free_text_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.free_text_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.free_text_2, range, value, display)

  return offset + length, value
end

-- Free Text 1
eurex_derivatives_eti_t7_v2_5.free_text_1 = {}

-- Size Of: Free Text 1
eurex_derivatives_eti_t7_v2_5.free_text_1.size = 12

-- Display: Free Text 1
eurex_derivatives_eti_t7_v2_5.free_text_1.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text 1: No Value"
  end

  return "Free Text 1: "..value
end

-- Dissect: Free Text 1
eurex_derivatives_eti_t7_v2_5.free_text_1.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.free_text_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.free_text_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.free_text_1, range, value, display)

  return offset + length, value
end

-- Cust Order Handling Inst
eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst = {}

-- Size Of: Cust Order Handling Inst
eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.size = 1

-- Display: Cust Order Handling Inst
eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cust Order Handling Inst: No Value"
  end

  return "Cust Order Handling Inst: "..value
end

-- Dissect: Cust Order Handling Inst
eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Position Effect
eurex_derivatives_eti_t7_v2_5.position_effect = {}

-- Size Of: Position Effect
eurex_derivatives_eti_t7_v2_5.position_effect.size = 1

-- Display: Position Effect
eurex_derivatives_eti_t7_v2_5.position_effect.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Position Effect: No Value"
  end

  if value == "C" then
    return "Position Effect: Close (C)"
  end
  if value == "O" then
    return "Position Effect: Open (O)"
  end

  return "Position Effect: Unknown("..value..")"
end

-- Dissect: Position Effect
eurex_derivatives_eti_t7_v2_5.position_effect.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.position_effect.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_eti_t7_v2_5.position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.position_effect, range, value, display)

  return offset + length, value
end

-- Root Party Id Position Account
eurex_derivatives_eti_t7_v2_5.root_party_id_position_account = {}

-- Size Of: Root Party Id Position Account
eurex_derivatives_eti_t7_v2_5.root_party_id_position_account.size = 20

-- Display: Root Party Id Position Account
eurex_derivatives_eti_t7_v2_5.root_party_id_position_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Id Position Account: No Value"
  end

  return "Root Party Id Position Account: "..value
end

-- Dissect: Root Party Id Position Account
eurex_derivatives_eti_t7_v2_5.root_party_id_position_account.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_id_position_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.root_party_id_position_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_position_account, range, value, display)

  return offset + length, value
end

-- Account
eurex_derivatives_eti_t7_v2_5.account = {}

-- Size Of: Account
eurex_derivatives_eti_t7_v2_5.account.size = 2

-- Display: Account
eurex_derivatives_eti_t7_v2_5.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
eurex_derivatives_eti_t7_v2_5.account.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.account, range, value, display)

  return offset + length, value
end

-- Trading Capacity
eurex_derivatives_eti_t7_v2_5.trading_capacity = {}

-- Size Of: Trading Capacity
eurex_derivatives_eti_t7_v2_5.trading_capacity.size = 1

-- Display: Trading Capacity
eurex_derivatives_eti_t7_v2_5.trading_capacity.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.trading_capacity.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trading_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.trading_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Aggressor Indicator
eurex_derivatives_eti_t7_v2_5.aggressor_indicator = {}

-- Size Of: Aggressor Indicator
eurex_derivatives_eti_t7_v2_5.aggressor_indicator.size = 1

-- Display: Aggressor Indicator
eurex_derivatives_eti_t7_v2_5.aggressor_indicator.display = function(value)
  if value == 0 then
    return "Aggressor Indicator: Passive (0)"
  end
  if value == 1 then
    return "Aggressor Indicator: Agressor (1)"
  end
  if value == 0xFF then
    return "Aggressor Indicator: No Value"
  end

  return "Aggressor Indicator: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator
eurex_derivatives_eti_t7_v2_5.aggressor_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.aggressor_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.aggressor_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Side
eurex_derivatives_eti_t7_v2_5.side = {}

-- Size Of: Side
eurex_derivatives_eti_t7_v2_5.side.size = 1

-- Display: Side
eurex_derivatives_eti_t7_v2_5.side.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.side.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.side, range, value, display)

  return offset + length, value
end

-- Match Sub Type
eurex_derivatives_eti_t7_v2_5.match_sub_type = {}

-- Size Of: Match Sub Type
eurex_derivatives_eti_t7_v2_5.match_sub_type.size = 1

-- Display: Match Sub Type
eurex_derivatives_eti_t7_v2_5.match_sub_type.display = function(value)
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
  if value == 0xFF then
    return "Match Sub Type: No Value"
  end

  return "Match Sub Type: Unknown("..value..")"
end

-- Dissect: Match Sub Type
eurex_derivatives_eti_t7_v2_5.match_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.match_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.match_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.match_sub_type, range, value, display)

  return offset + length, value
end

-- Match Type
eurex_derivatives_eti_t7_v2_5.match_type = {}

-- Size Of: Match Type
eurex_derivatives_eti_t7_v2_5.match_type.size = 1

-- Display: Match Type
eurex_derivatives_eti_t7_v2_5.match_type.display = function(value)
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
  if value == 0xFF then
    return "Match Type: No Value"
  end

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
eurex_derivatives_eti_t7_v2_5.match_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.match_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.match_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.match_type, range, value, display)

  return offset + length, value
end

-- Root Party Id Order Origination Firm
eurex_derivatives_eti_t7_v2_5.root_party_id_order_origination_firm = {}

-- Size Of: Root Party Id Order Origination Firm
eurex_derivatives_eti_t7_v2_5.root_party_id_order_origination_firm.size = 7

-- Display: Root Party Id Order Origination Firm
eurex_derivatives_eti_t7_v2_5.root_party_id_order_origination_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Id Order Origination Firm: No Value"
  end

  return "Root Party Id Order Origination Firm: "..value
end

-- Dissect: Root Party Id Order Origination Firm
eurex_derivatives_eti_t7_v2_5.root_party_id_order_origination_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_id_order_origination_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.root_party_id_order_origination_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_order_origination_firm, range, value, display)

  return offset + length, value
end

-- Root Party Id Take Up Trading Firm
eurex_derivatives_eti_t7_v2_5.root_party_id_take_up_trading_firm = {}

-- Size Of: Root Party Id Take Up Trading Firm
eurex_derivatives_eti_t7_v2_5.root_party_id_take_up_trading_firm.size = 5

-- Display: Root Party Id Take Up Trading Firm
eurex_derivatives_eti_t7_v2_5.root_party_id_take_up_trading_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Id Take Up Trading Firm: No Value"
  end

  return "Root Party Id Take Up Trading Firm: "..value
end

-- Dissect: Root Party Id Take Up Trading Firm
eurex_derivatives_eti_t7_v2_5.root_party_id_take_up_trading_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_id_take_up_trading_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.root_party_id_take_up_trading_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_take_up_trading_firm, range, value, display)

  return offset + length, value
end

-- Root Party Id Beneficiary
eurex_derivatives_eti_t7_v2_5.root_party_id_beneficiary = {}

-- Size Of: Root Party Id Beneficiary
eurex_derivatives_eti_t7_v2_5.root_party_id_beneficiary.size = 9

-- Display: Root Party Id Beneficiary
eurex_derivatives_eti_t7_v2_5.root_party_id_beneficiary.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Id Beneficiary: No Value"
  end

  return "Root Party Id Beneficiary: "..value
end

-- Dissect: Root Party Id Beneficiary
eurex_derivatives_eti_t7_v2_5.root_party_id_beneficiary.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_id_beneficiary.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.root_party_id_beneficiary.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_beneficiary, range, value, display)

  return offset + length, value
end

-- Transfer Reason
eurex_derivatives_eti_t7_v2_5.transfer_reason = {}

-- Size Of: Transfer Reason
eurex_derivatives_eti_t7_v2_5.transfer_reason.size = 1

-- Display: Transfer Reason
eurex_derivatives_eti_t7_v2_5.transfer_reason.display = function(value)
  if value == 1 then
    return "Transfer Reason: Owner (1)"
  end
  if value == 2 then
    return "Transfer Reason: Clearer (2)"
  end
  if value == 0xFF then
    return "Transfer Reason: No Value"
  end

  return "Transfer Reason: Unknown("..value..")"
end

-- Dissect: Transfer Reason
eurex_derivatives_eti_t7_v2_5.transfer_reason.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.transfer_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.transfer_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.transfer_reason, range, value, display)

  return offset + length, value
end

-- Trade Report Type
eurex_derivatives_eti_t7_v2_5.trade_report_type = {}

-- Size Of: Trade Report Type
eurex_derivatives_eti_t7_v2_5.trade_report_type.size = 1

-- Display: Trade Report Type
eurex_derivatives_eti_t7_v2_5.trade_report_type.display = function(value)
  if value == 0 then
    return "Trade Report Type: Submit (0)"
  end
  if value == 1 then
    return "Trade Report Type: Alleged (1)"
  end
  if value == 5 then
    return "Trade Report Type: No Was Replaced (5)"
  end
  if value == 7 then
    return "Trade Report Type: Trade Break (7)"
  end
  if value == 0xFF then
    return "Trade Report Type: No Value"
  end

  return "Trade Report Type: Unknown("..value..")"
end

-- Dissect: Trade Report Type
eurex_derivatives_eti_t7_v2_5.trade_report_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trade_report_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.trade_report_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trade_report_type, range, value, display)

  return offset + length, value
end

-- Multi Leg Reporting Type
eurex_derivatives_eti_t7_v2_5.multi_leg_reporting_type = {}

-- Size Of: Multi Leg Reporting Type
eurex_derivatives_eti_t7_v2_5.multi_leg_reporting_type.size = 1

-- Display: Multi Leg Reporting Type
eurex_derivatives_eti_t7_v2_5.multi_leg_reporting_type.display = function(value)
  if value == 1 then
    return "Multi Leg Reporting Type: Singlesecurity (1)"
  end
  if value == 2 then
    return "Multi Leg Reporting Type: Individuallegofamultilegsecurity (2)"
  end
  if value == 0xFF then
    return "Multi Leg Reporting Type: No Value"
  end

  return "Multi Leg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multi Leg Reporting Type
eurex_derivatives_eti_t7_v2_5.multi_leg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.multi_leg_reporting_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.multi_leg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.multi_leg_reporting_type, range, value, display)

  return offset + length, value
end

-- Tot Num Trade Reports
eurex_derivatives_eti_t7_v2_5.tot_num_trade_reports = {}

-- Size Of: Tot Num Trade Reports
eurex_derivatives_eti_t7_v2_5.tot_num_trade_reports.size = 4

-- Display: Tot Num Trade Reports
eurex_derivatives_eti_t7_v2_5.tot_num_trade_reports.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Tot Num Trade Reports: No Value"
  end

  return "Tot Num Trade Reports: "..value
end

-- Dissect: Tot Num Trade Reports
eurex_derivatives_eti_t7_v2_5.tot_num_trade_reports.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.tot_num_trade_reports.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.tot_num_trade_reports.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.tot_num_trade_reports, range, value, display)

  return offset + length, value
end

-- Strategy Link Id
eurex_derivatives_eti_t7_v2_5.strategy_link_id = {}

-- Size Of: Strategy Link Id
eurex_derivatives_eti_t7_v2_5.strategy_link_id.size = 4

-- Display: Strategy Link Id
eurex_derivatives_eti_t7_v2_5.strategy_link_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Strategy Link Id: No Value"
  end

  return "Strategy Link Id: "..value
end

-- Dissect: Strategy Link Id
eurex_derivatives_eti_t7_v2_5.strategy_link_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.strategy_link_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.strategy_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.strategy_link_id, range, value, display)

  return offset + length, value
end

-- Trd Match Id
eurex_derivatives_eti_t7_v2_5.trd_match_id = {}

-- Size Of: Trd Match Id
eurex_derivatives_eti_t7_v2_5.trd_match_id.size = 4

-- Display: Trd Match Id
eurex_derivatives_eti_t7_v2_5.trd_match_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trd Match Id: No Value"
  end

  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
eurex_derivatives_eti_t7_v2_5.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Match Date
eurex_derivatives_eti_t7_v2_5.match_date = {}

-- Size Of: Match Date
eurex_derivatives_eti_t7_v2_5.match_date.size = 4

-- Display: Match Date
eurex_derivatives_eti_t7_v2_5.match_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Match Date: No Value"
  end

  return "Match Date: "..value
end

-- Dissect: Match Date
eurex_derivatives_eti_t7_v2_5.match_date.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.match_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.match_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.match_date, range, value, display)

  return offset + length, value
end

-- Side Trade Id
eurex_derivatives_eti_t7_v2_5.side_trade_id = {}

-- Size Of: Side Trade Id
eurex_derivatives_eti_t7_v2_5.side_trade_id.size = 4

-- Display: Side Trade Id
eurex_derivatives_eti_t7_v2_5.side_trade_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Side Trade Id: No Value"
  end

  return "Side Trade Id: "..value
end

-- Dissect: Side Trade Id
eurex_derivatives_eti_t7_v2_5.side_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.side_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.side_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.side_trade_id, range, value, display)

  return offset + length, value
end

-- Clearing Trade Qty
eurex_derivatives_eti_t7_v2_5.clearing_trade_qty = {}

-- Size Of: Clearing Trade Qty
eurex_derivatives_eti_t7_v2_5.clearing_trade_qty.size = 4

-- Display: Clearing Trade Qty
eurex_derivatives_eti_t7_v2_5.clearing_trade_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Clearing Trade Qty: No Value"
  end

  return "Clearing Trade Qty: "..value
end

-- Dissect: Clearing Trade Qty
eurex_derivatives_eti_t7_v2_5.clearing_trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.clearing_trade_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.clearing_trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.clearing_trade_qty, range, value, display)

  return offset + length, value
end

-- Side Last Qty
eurex_derivatives_eti_t7_v2_5.side_last_qty = {}

-- Size Of: Side Last Qty
eurex_derivatives_eti_t7_v2_5.side_last_qty.size = 4

-- Display: Side Last Qty
eurex_derivatives_eti_t7_v2_5.side_last_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Side Last Qty: No Value"
  end

  return "Side Last Qty: "..value
end

-- Dissect: Side Last Qty
eurex_derivatives_eti_t7_v2_5.side_last_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.side_last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.side_last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.side_last_qty, range, value, display)

  return offset + length, value
end

-- Last Qty
eurex_derivatives_eti_t7_v2_5.last_qty = {}

-- Size Of: Last Qty
eurex_derivatives_eti_t7_v2_5.last_qty.size = 4

-- Display: Last Qty
eurex_derivatives_eti_t7_v2_5.last_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Last Qty: No Value"
  end

  return "Last Qty: "..value
end

-- Dissect: Last Qty
eurex_derivatives_eti_t7_v2_5.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Related Symbol
eurex_derivatives_eti_t7_v2_5.related_symbol = {}

-- Size Of: Related Symbol
eurex_derivatives_eti_t7_v2_5.related_symbol.size = 4

-- Display: Related Symbol
eurex_derivatives_eti_t7_v2_5.related_symbol.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Related Symbol: No Value"
  end

  return "Related Symbol: "..value
end

-- Dissect: Related Symbol
eurex_derivatives_eti_t7_v2_5.related_symbol.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.related_symbol.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.related_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.related_symbol, range, value, display)

  return offset + length, value
end

-- Leaves Qty
eurex_derivatives_eti_t7_v2_5.leaves_qty = {}

-- Size Of: Leaves Qty
eurex_derivatives_eti_t7_v2_5.leaves_qty.size = 4

-- Display: Leaves Qty
eurex_derivatives_eti_t7_v2_5.leaves_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leaves Qty: No Value"
  end

  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
eurex_derivatives_eti_t7_v2_5.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Cum Qty
eurex_derivatives_eti_t7_v2_5.cum_qty = {}

-- Size Of: Cum Qty
eurex_derivatives_eti_t7_v2_5.cum_qty.size = 4

-- Display: Cum Qty
eurex_derivatives_eti_t7_v2_5.cum_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Cum Qty: No Value"
  end

  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
eurex_derivatives_eti_t7_v2_5.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Root Party Id Clearing Unit
eurex_derivatives_eti_t7_v2_5.root_party_id_clearing_unit = {}

-- Size Of: Root Party Id Clearing Unit
eurex_derivatives_eti_t7_v2_5.root_party_id_clearing_unit.size = 4

-- Display: Root Party Id Clearing Unit
eurex_derivatives_eti_t7_v2_5.root_party_id_clearing_unit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Root Party Id Clearing Unit: No Value"
  end

  return "Root Party Id Clearing Unit: "..value
end

-- Dissect: Root Party Id Clearing Unit
eurex_derivatives_eti_t7_v2_5.root_party_id_clearing_unit.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_id_clearing_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.root_party_id_clearing_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_clearing_unit, range, value, display)

  return offset + length, value
end

-- Root Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.root_party_id_executing_trader = {}

-- Size Of: Root Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.root_party_id_executing_trader.size = 4

-- Display: Root Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.root_party_id_executing_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Root Party Id Executing Trader: No Value"
  end

  return "Root Party Id Executing Trader: "..value
end

-- Dissect: Root Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.root_party_id_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_id_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.root_party_id_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Root Party Id Session Id
eurex_derivatives_eti_t7_v2_5.root_party_id_session_id = {}

-- Size Of: Root Party Id Session Id
eurex_derivatives_eti_t7_v2_5.root_party_id_session_id.size = 4

-- Display: Root Party Id Session Id
eurex_derivatives_eti_t7_v2_5.root_party_id_session_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Root Party Id Session Id: No Value"
  end

  return "Root Party Id Session Id: "..value
end

-- Dissect: Root Party Id Session Id
eurex_derivatives_eti_t7_v2_5.root_party_id_session_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_id_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.root_party_id_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_session_id, range, value, display)

  return offset + length, value
end

-- Root Party Id Executing Unit
eurex_derivatives_eti_t7_v2_5.root_party_id_executing_unit = {}

-- Size Of: Root Party Id Executing Unit
eurex_derivatives_eti_t7_v2_5.root_party_id_executing_unit.size = 4

-- Display: Root Party Id Executing Unit
eurex_derivatives_eti_t7_v2_5.root_party_id_executing_unit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Root Party Id Executing Unit: No Value"
  end

  return "Root Party Id Executing Unit: "..value
end

-- Dissect: Root Party Id Executing Unit
eurex_derivatives_eti_t7_v2_5.root_party_id_executing_unit.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.root_party_id_executing_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.root_party_id_executing_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.root_party_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Orig Trade Id
eurex_derivatives_eti_t7_v2_5.orig_trade_id = {}

-- Size Of: Orig Trade Id
eurex_derivatives_eti_t7_v2_5.orig_trade_id.size = 4

-- Display: Orig Trade Id
eurex_derivatives_eti_t7_v2_5.orig_trade_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Orig Trade Id: No Value"
  end

  return "Orig Trade Id: "..value
end

-- Dissect: Orig Trade Id
eurex_derivatives_eti_t7_v2_5.orig_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.orig_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.orig_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.orig_trade_id, range, value, display)

  return offset + length, value
end

-- Trade Id
eurex_derivatives_eti_t7_v2_5.trade_id = {}

-- Size Of: Trade Id
eurex_derivatives_eti_t7_v2_5.trade_id.size = 4

-- Display: Trade Id
eurex_derivatives_eti_t7_v2_5.trade_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trade Id: No Value"
  end

  return "Trade Id: "..value
end

-- Dissect: Trade Id
eurex_derivatives_eti_t7_v2_5.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
eurex_derivatives_eti_t7_v2_5.cl_ord_id = {}

-- Size Of: Cl Ord Id
eurex_derivatives_eti_t7_v2_5.cl_ord_id.size = 8

-- Display: Cl Ord Id
eurex_derivatives_eti_t7_v2_5.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Order Id
eurex_derivatives_eti_t7_v2_5.order_id = {}

-- Size Of: Order Id
eurex_derivatives_eti_t7_v2_5.order_id.size = 8

-- Display: Order Id
eurex_derivatives_eti_t7_v2_5.order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
eurex_derivatives_eti_t7_v2_5.order_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.order_id, range, value, display)

  return offset + length, value
end

-- Transact Time
eurex_derivatives_eti_t7_v2_5.transact_time = {}

-- Size Of: Transact Time
eurex_derivatives_eti_t7_v2_5.transact_time.size = 8

-- Display: Transact Time
eurex_derivatives_eti_t7_v2_5.transact_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Transact Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
eurex_derivatives_eti_t7_v2_5.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Clearing Trade Price
eurex_derivatives_eti_t7_v2_5.clearing_trade_price = {}

-- Size Of: Clearing Trade Price
eurex_derivatives_eti_t7_v2_5.clearing_trade_price.size = 8

-- Display: Clearing Trade Price
eurex_derivatives_eti_t7_v2_5.clearing_trade_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Clearing Trade Price: No Value"
  end

  return "Clearing Trade Price: "..value
end

-- Translate: Clearing Trade Price
eurex_derivatives_eti_t7_v2_5.clearing_trade_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Clearing Trade Price
eurex_derivatives_eti_t7_v2_5.clearing_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.clearing_trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.clearing_trade_price.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.clearing_trade_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.clearing_trade_price, range, value, display)

  return offset + length, value
end

-- Side Last Px
eurex_derivatives_eti_t7_v2_5.side_last_px = {}

-- Size Of: Side Last Px
eurex_derivatives_eti_t7_v2_5.side_last_px.size = 8

-- Display: Side Last Px
eurex_derivatives_eti_t7_v2_5.side_last_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Side Last Px: No Value"
  end

  return "Side Last Px: "..value
end

-- Translate: Side Last Px
eurex_derivatives_eti_t7_v2_5.side_last_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Side Last Px
eurex_derivatives_eti_t7_v2_5.side_last_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.side_last_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.side_last_px.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.side_last_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.side_last_px, range, value, display)

  return offset + length, value
end

-- Last Px
eurex_derivatives_eti_t7_v2_5.last_px = {}

-- Size Of: Last Px
eurex_derivatives_eti_t7_v2_5.last_px.size = 8

-- Display: Last Px
eurex_derivatives_eti_t7_v2_5.last_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Last Px: No Value"
  end

  return "Last Px: "..value
end

-- Translate: Last Px
eurex_derivatives_eti_t7_v2_5.last_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Last Px
eurex_derivatives_eti_t7_v2_5.last_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.last_px.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.last_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.last_px, range, value, display)

  return offset + length, value
end

-- Price
eurex_derivatives_eti_t7_v2_5.price = {}

-- Size Of: Price
eurex_derivatives_eti_t7_v2_5.price.size = 8

-- Display: Price
eurex_derivatives_eti_t7_v2_5.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
eurex_derivatives_eti_t7_v2_5.price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price
eurex_derivatives_eti_t7_v2_5.price.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.price.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.price, range, value, display)

  return offset + length, value
end

-- Related Security Id
eurex_derivatives_eti_t7_v2_5.related_security_id = {}

-- Size Of: Related Security Id
eurex_derivatives_eti_t7_v2_5.related_security_id.size = 8

-- Display: Related Security Id
eurex_derivatives_eti_t7_v2_5.related_security_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Related Security Id: No Value"
  end

  return "Related Security Id: "..value
end

-- Dissect: Related Security Id
eurex_derivatives_eti_t7_v2_5.related_security_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.related_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_eti_t7_v2_5.related_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.related_security_id, range, value, display)

  return offset + length, value
end

-- Security Id
eurex_derivatives_eti_t7_v2_5.security_id = {}

-- Size Of: Security Id
eurex_derivatives_eti_t7_v2_5.security_id.size = 8

-- Display: Security Id
eurex_derivatives_eti_t7_v2_5.security_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
eurex_derivatives_eti_t7_v2_5.security_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_eti_t7_v2_5.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.security_id, range, value, display)

  return offset + length, value
end

-- Appl Seq Num
eurex_derivatives_eti_t7_v2_5.appl_seq_num = {}

-- Size Of: Appl Seq Num
eurex_derivatives_eti_t7_v2_5.appl_seq_num.size = 8

-- Display: Appl Seq Num
eurex_derivatives_eti_t7_v2_5.appl_seq_num.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Appl Seq Num: No Value"
  end

  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
eurex_derivatives_eti_t7_v2_5.appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Rbc Header Comp
eurex_derivatives_eti_t7_v2_5.rbc_header_comp = {}

-- Size Of: Rbc Header Comp
eurex_derivatives_eti_t7_v2_5.rbc_header_comp.size =
  eurex_derivatives_eti_t7_v2_5.sending_time.size + 
  eurex_derivatives_eti_t7_v2_5.appl_seq_num.size + 
  eurex_derivatives_eti_t7_v2_5.appl_sub_id.size + 
  eurex_derivatives_eti_t7_v2_5.partition_id.size + 
  eurex_derivatives_eti_t7_v2_5.appl_resend_flag.size + 
  eurex_derivatives_eti_t7_v2_5.appl_id.size + 
  eurex_derivatives_eti_t7_v2_5.last_fragment.size + 
  eurex_derivatives_eti_t7_v2_5.pad_7.size;

-- Display: Rbc Header Comp
eurex_derivatives_eti_t7_v2_5.rbc_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rbc Header Comp
eurex_derivatives_eti_t7_v2_5.rbc_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_eti_t7_v2_5.sending_time.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, appl_seq_num = eurex_derivatives_eti_t7_v2_5.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_sub_id = eurex_derivatives_eti_t7_v2_5.appl_sub_id.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_eti_t7_v2_5.partition_id.dissect(buffer, index, packet, parent)

  -- Appl Resend Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_resend_flag = eurex_derivatives_eti_t7_v2_5.appl_resend_flag.dissect(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, appl_id = eurex_derivatives_eti_t7_v2_5.appl_id.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_eti_t7_v2_5.last_fragment.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Comp
eurex_derivatives_eti_t7_v2_5.rbc_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.rbc_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.rbc_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.rbc_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.rbc_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.rbc_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Trade Broadcast
eurex_derivatives_eti_t7_v2_5.trade_broadcast = {}

-- Read runtime size of: Trade Broadcast
eurex_derivatives_eti_t7_v2_5.trade_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Trade Broadcast
eurex_derivatives_eti_t7_v2_5.trade_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Broadcast
eurex_derivatives_eti_t7_v2_5.trade_broadcast.fields = function(buffer, offset, packet, parent, size_of_trade_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Related Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, related_security_id = eurex_derivatives_eti_t7_v2_5.related_security_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eti_t7_v2_5.price.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eti_t7_v2_5.last_px.dissect(buffer, index, packet, parent)

  -- Side Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, side_last_px = eurex_derivatives_eti_t7_v2_5.side_last_px.dissect(buffer, index, packet, parent)

  -- Clearing Trade Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, clearing_trade_price = eurex_derivatives_eti_t7_v2_5.clearing_trade_price.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eti_t7_v2_5.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_id = eurex_derivatives_eti_t7_v2_5.trade_id.dissect(buffer, index, packet, parent)

  -- Orig Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, orig_trade_id = eurex_derivatives_eti_t7_v2_5.orig_trade_id.dissect(buffer, index, packet, parent)

  -- Root Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, root_party_id_executing_unit = eurex_derivatives_eti_t7_v2_5.root_party_id_executing_unit.dissect(buffer, index, packet, parent)

  -- Root Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, root_party_id_session_id = eurex_derivatives_eti_t7_v2_5.root_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Root Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, root_party_id_executing_trader = eurex_derivatives_eti_t7_v2_5.root_party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Root Party Id Clearing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, root_party_id_clearing_unit = eurex_derivatives_eti_t7_v2_5.root_party_id_clearing_unit.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = eurex_derivatives_eti_t7_v2_5.leaves_qty.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Related Symbol: 4 Byte Signed Fixed Width Integer Nullable
  index, related_symbol = eurex_derivatives_eti_t7_v2_5.related_symbol.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eti_t7_v2_5.last_qty.dissect(buffer, index, packet, parent)

  -- Side Last Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, side_last_qty = eurex_derivatives_eti_t7_v2_5.side_last_qty.dissect(buffer, index, packet, parent)

  -- Clearing Trade Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, clearing_trade_qty = eurex_derivatives_eti_t7_v2_5.clearing_trade_qty.dissect(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, side_trade_id = eurex_derivatives_eti_t7_v2_5.side_trade_id.dissect(buffer, index, packet, parent)

  -- Match Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, match_date = eurex_derivatives_eti_t7_v2_5.match_date.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = eurex_derivatives_eti_t7_v2_5.trd_match_id.dissect(buffer, index, packet, parent)

  -- Strategy Link Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, strategy_link_id = eurex_derivatives_eti_t7_v2_5.strategy_link_id.dissect(buffer, index, packet, parent)

  -- Tot Num Trade Reports: 4 Byte Signed Fixed Width Integer Nullable
  index, tot_num_trade_reports = eurex_derivatives_eti_t7_v2_5.tot_num_trade_reports.dissect(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, multi_leg_reporting_type = eurex_derivatives_eti_t7_v2_5.multi_leg_reporting_type.dissect(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trade_report_type = eurex_derivatives_eti_t7_v2_5.trade_report_type.dissect(buffer, index, packet, parent)

  -- Transfer Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, transfer_reason = eurex_derivatives_eti_t7_v2_5.transfer_reason.dissect(buffer, index, packet, parent)

  -- Root Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, root_party_id_beneficiary = eurex_derivatives_eti_t7_v2_5.root_party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Root Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, root_party_id_take_up_trading_firm = eurex_derivatives_eti_t7_v2_5.root_party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Root Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, root_party_id_order_origination_firm = eurex_derivatives_eti_t7_v2_5.root_party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, match_type = eurex_derivatives_eti_t7_v2_5.match_type.dissect(buffer, index, packet, parent)

  -- Match Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_sub_type = eurex_derivatives_eti_t7_v2_5.match_sub_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eti_t7_v2_5.side.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_indicator = eurex_derivatives_eti_t7_v2_5.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = eurex_derivatives_eti_t7_v2_5.trading_capacity.dissect(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String Nullable
  index, account = eurex_derivatives_eti_t7_v2_5.account.dissect(buffer, index, packet, parent)

  -- Root Party Id Position Account: 20 Byte Ascii String Nullable
  index, root_party_id_position_account = eurex_derivatives_eti_t7_v2_5.root_party_id_position_account.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = eurex_derivatives_eti_t7_v2_5.position_effect.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String Nullable
  index, free_text_1 = eurex_derivatives_eti_t7_v2_5.free_text_1.dissect(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String Nullable
  index, free_text_2 = eurex_derivatives_eti_t7_v2_5.free_text_2.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = eurex_derivatives_eti_t7_v2_5.free_text_3.dissect(buffer, index, packet, parent)

  -- Order Category: 1 Byte Ascii String Enum with 2 values
  index, order_category = eurex_derivatives_eti_t7_v2_5.order_category.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, ord_type = eurex_derivatives_eti_t7_v2_5.ord_type.dissect(buffer, index, packet, parent)

  -- Related Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, related_product_complex = eurex_derivatives_eti_t7_v2_5.related_product_complex.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_side = eurex_derivatives_eti_t7_v2_5.order_side.dissect(buffer, index, packet, parent)

  -- Root Party Clearing Organization: 4 Byte Ascii String Nullable
  index, root_party_clearing_organization = eurex_derivatives_eti_t7_v2_5.root_party_clearing_organization.dissect(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String Nullable
  index, root_party_executing_firm = eurex_derivatives_eti_t7_v2_5.root_party_executing_firm.dissect(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String Nullable
  index, root_party_executing_trader = eurex_derivatives_eti_t7_v2_5.root_party_executing_trader.dissect(buffer, index, packet, parent)

  -- Root Party Clearing Firm: 5 Byte Ascii String Nullable
  index, root_party_clearing_firm = eurex_derivatives_eti_t7_v2_5.root_party_clearing_firm.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Broadcast
eurex_derivatives_eti_t7_v2_5.trade_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade_broadcast = eurex_derivatives_eti_t7_v2_5.trade_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade_broadcast then
    local range = buffer(offset, size_of_trade_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.trade_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trade_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.trade_broadcast.fields(buffer, offset, packet, parent, size_of_trade_broadcast)

  return offset + size_of_trade_broadcast
end

-- Throttle Disconnect Limit
eurex_derivatives_eti_t7_v2_5.throttle_disconnect_limit = {}

-- Size Of: Throttle Disconnect Limit
eurex_derivatives_eti_t7_v2_5.throttle_disconnect_limit.size = 4

-- Display: Throttle Disconnect Limit
eurex_derivatives_eti_t7_v2_5.throttle_disconnect_limit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Throttle Disconnect Limit: No Value"
  end

  return "Throttle Disconnect Limit: "..value
end

-- Dissect: Throttle Disconnect Limit
eurex_derivatives_eti_t7_v2_5.throttle_disconnect_limit.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.throttle_disconnect_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.throttle_disconnect_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.throttle_disconnect_limit, range, value, display)

  return offset + length, value
end

-- Throttle No Msgs
eurex_derivatives_eti_t7_v2_5.throttle_no_msgs = {}

-- Size Of: Throttle No Msgs
eurex_derivatives_eti_t7_v2_5.throttle_no_msgs.size = 4

-- Display: Throttle No Msgs
eurex_derivatives_eti_t7_v2_5.throttle_no_msgs.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Throttle No Msgs: No Value"
  end

  return "Throttle No Msgs: "..value
end

-- Dissect: Throttle No Msgs
eurex_derivatives_eti_t7_v2_5.throttle_no_msgs.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.throttle_no_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.throttle_no_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.throttle_no_msgs, range, value, display)

  return offset + length, value
end

-- Throttle Time Interval
eurex_derivatives_eti_t7_v2_5.throttle_time_interval = {}

-- Size Of: Throttle Time Interval
eurex_derivatives_eti_t7_v2_5.throttle_time_interval.size = 8

-- Display: Throttle Time Interval
eurex_derivatives_eti_t7_v2_5.throttle_time_interval.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Throttle Time Interval: No Value"
  end

  return "Throttle Time Interval: "..value
end

-- Dissect: Throttle Time Interval
eurex_derivatives_eti_t7_v2_5.throttle_time_interval.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.throttle_time_interval.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_eti_t7_v2_5.throttle_time_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.throttle_time_interval, range, value, display)

  return offset + length, value
end

-- Notif Header Comp
eurex_derivatives_eti_t7_v2_5.notif_header_comp = {}

-- Size Of: Notif Header Comp
eurex_derivatives_eti_t7_v2_5.notif_header_comp.size =
  eurex_derivatives_eti_t7_v2_5.sending_time.size;

-- Display: Notif Header Comp
eurex_derivatives_eti_t7_v2_5.notif_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Notif Header Comp
eurex_derivatives_eti_t7_v2_5.notif_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_eti_t7_v2_5.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Notif Header Comp
eurex_derivatives_eti_t7_v2_5.notif_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.notif_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.notif_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.notif_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.notif_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.notif_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Throttle Update Notification
eurex_derivatives_eti_t7_v2_5.throttle_update_notification = {}

-- Read runtime size of: Throttle Update Notification
eurex_derivatives_eti_t7_v2_5.throttle_update_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Throttle Update Notification
eurex_derivatives_eti_t7_v2_5.throttle_update_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Throttle Update Notification
eurex_derivatives_eti_t7_v2_5.throttle_update_notification.fields = function(buffer, offset, packet, parent, size_of_throttle_update_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_eti_t7_v2_5.notif_header_comp.dissect(buffer, index, packet, parent)

  -- Throttle Time Interval: 8 Byte Signed Fixed Width Integer Nullable
  index, throttle_time_interval = eurex_derivatives_eti_t7_v2_5.throttle_time_interval.dissect(buffer, index, packet, parent)

  -- Throttle No Msgs: 4 Byte Unsigned Fixed Width Integer Nullable
  index, throttle_no_msgs = eurex_derivatives_eti_t7_v2_5.throttle_no_msgs.dissect(buffer, index, packet, parent)

  -- Throttle Disconnect Limit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, throttle_disconnect_limit = eurex_derivatives_eti_t7_v2_5.throttle_disconnect_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Throttle Update Notification
eurex_derivatives_eti_t7_v2_5.throttle_update_notification.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_throttle_update_notification = eurex_derivatives_eti_t7_v2_5.throttle_update_notification.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.throttle_update_notification then
    local range = buffer(offset, size_of_throttle_update_notification)
    local display = eurex_derivatives_eti_t7_v2_5.throttle_update_notification.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.throttle_update_notification, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.throttle_update_notification.fields(buffer, offset, packet, parent, size_of_throttle_update_notification)

  return offset + size_of_throttle_update_notification
end

-- Tm Trading Session Status Broadcast
eurex_derivatives_eti_t7_v2_5.tm_trading_session_status_broadcast = {}

-- Read runtime size of: Tm Trading Session Status Broadcast
eurex_derivatives_eti_t7_v2_5.tm_trading_session_status_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Tm Trading Session Status Broadcast
eurex_derivatives_eti_t7_v2_5.tm_trading_session_status_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tm Trading Session Status Broadcast
eurex_derivatives_eti_t7_v2_5.tm_trading_session_status_broadcast.fields = function(buffer, offset, packet, parent, size_of_tm_trading_session_status_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trad_ses_event = eurex_derivatives_eti_t7_v2_5.trad_ses_event.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tm Trading Session Status Broadcast
eurex_derivatives_eti_t7_v2_5.tm_trading_session_status_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_tm_trading_session_status_broadcast = eurex_derivatives_eti_t7_v2_5.tm_trading_session_status_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.tm_trading_session_status_broadcast then
    local range = buffer(offset, size_of_tm_trading_session_status_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.tm_trading_session_status_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.tm_trading_session_status_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.tm_trading_session_status_broadcast.fields(buffer, offset, packet, parent, size_of_tm_trading_session_status_broadcast)

  return offset + size_of_tm_trading_session_status_broadcast
end

-- Subscribe Response
eurex_derivatives_eti_t7_v2_5.subscribe_response = {}

-- Read runtime size of: Subscribe Response
eurex_derivatives_eti_t7_v2_5.subscribe_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Subscribe Response
eurex_derivatives_eti_t7_v2_5.subscribe_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscribe Response
eurex_derivatives_eti_t7_v2_5.subscribe_response.fields = function(buffer, offset, packet, parent, size_of_subscribe_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_sub_id = eurex_derivatives_eti_t7_v2_5.appl_sub_id.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eti_t7_v2_5.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscribe Response
eurex_derivatives_eti_t7_v2_5.subscribe_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_subscribe_response = eurex_derivatives_eti_t7_v2_5.subscribe_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.subscribe_response then
    local range = buffer(offset, size_of_subscribe_response)
    local display = eurex_derivatives_eti_t7_v2_5.subscribe_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.subscribe_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.subscribe_response.fields(buffer, offset, packet, parent, size_of_subscribe_response)

  return offset + size_of_subscribe_response
end

-- Pad 3
eurex_derivatives_eti_t7_v2_5.pad_3 = {}

-- Size Of: Pad 3
eurex_derivatives_eti_t7_v2_5.pad_3.size = 3

-- Display: Pad 3
eurex_derivatives_eti_t7_v2_5.pad_3.display = function(value)
  return "Pad 3: "..value
end

-- Dissect: Pad 3
eurex_derivatives_eti_t7_v2_5.pad_3.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.pad_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.pad_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Ref Appl Id
eurex_derivatives_eti_t7_v2_5.ref_appl_id = {}

-- Size Of: Ref Appl Id
eurex_derivatives_eti_t7_v2_5.ref_appl_id.size = 1

-- Display: Ref Appl Id
eurex_derivatives_eti_t7_v2_5.ref_appl_id.display = function(value)
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
  if value == 0xFF then
    return "Ref Appl Id: No Value"
  end

  return "Ref Appl Id: Unknown("..value..")"
end

-- Dissect: Ref Appl Id
eurex_derivatives_eti_t7_v2_5.ref_appl_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.ref_appl_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.ref_appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.ref_appl_id, range, value, display)

  return offset + length, value
end

-- Subscription Scope
eurex_derivatives_eti_t7_v2_5.subscription_scope = {}

-- Size Of: Subscription Scope
eurex_derivatives_eti_t7_v2_5.subscription_scope.size = 4

-- Display: Subscription Scope
eurex_derivatives_eti_t7_v2_5.subscription_scope.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Subscription Scope: No Value"
  end

  return "Subscription Scope: "..value
end

-- Dissect: Subscription Scope
eurex_derivatives_eti_t7_v2_5.subscription_scope.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.subscription_scope.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.subscription_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.subscription_scope, range, value, display)

  return offset + length, value
end

-- Subscribe Request
eurex_derivatives_eti_t7_v2_5.subscribe_request = {}

-- Read runtime size of: Subscribe Request
eurex_derivatives_eti_t7_v2_5.subscribe_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Subscribe Request
eurex_derivatives_eti_t7_v2_5.subscribe_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscribe Request
eurex_derivatives_eti_t7_v2_5.subscribe_request.fields = function(buffer, offset, packet, parent, size_of_subscribe_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer Nullable
  index, subscription_scope = eurex_derivatives_eti_t7_v2_5.subscription_scope.dissect(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ref_appl_id = eurex_derivatives_eti_t7_v2_5.ref_appl_id.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscribe Request
eurex_derivatives_eti_t7_v2_5.subscribe_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_subscribe_request = eurex_derivatives_eti_t7_v2_5.subscribe_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.subscribe_request then
    local range = buffer(offset, size_of_subscribe_request)
    local display = eurex_derivatives_eti_t7_v2_5.subscribe_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.subscribe_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.subscribe_request.fields(buffer, offset, packet, parent, size_of_subscribe_request)

  return offset + size_of_subscribe_request
end

-- Appl Seq Status
eurex_derivatives_eti_t7_v2_5.appl_seq_status = {}

-- Size Of: Appl Seq Status
eurex_derivatives_eti_t7_v2_5.appl_seq_status.size = 1

-- Display: Appl Seq Status
eurex_derivatives_eti_t7_v2_5.appl_seq_status.display = function(value)
  if value == 0 then
    return "Appl Seq Status: Unavailable (0)"
  end
  if value == 1 then
    return "Appl Seq Status: Available (1)"
  end
  if value == 0xFF then
    return "Appl Seq Status: No Value"
  end

  return "Appl Seq Status: Unknown("..value..")"
end

-- Dissect: Appl Seq Status
eurex_derivatives_eti_t7_v2_5.appl_seq_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_seq_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.appl_seq_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_seq_status, range, value, display)

  return offset + length, value
end

-- Trade Manager Status
eurex_derivatives_eti_t7_v2_5.trade_manager_status = {}

-- Size Of: Trade Manager Status
eurex_derivatives_eti_t7_v2_5.trade_manager_status.size = 1

-- Display: Trade Manager Status
eurex_derivatives_eti_t7_v2_5.trade_manager_status.display = function(value)
  if value == 0 then
    return "Trade Manager Status: Unavailable (0)"
  end
  if value == 1 then
    return "Trade Manager Status: Available (1)"
  end
  if value == 0xFF then
    return "Trade Manager Status: No Value"
  end

  return "Trade Manager Status: Unknown("..value..")"
end

-- Dissect: Trade Manager Status
eurex_derivatives_eti_t7_v2_5.trade_manager_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trade_manager_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.trade_manager_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trade_manager_status, range, value, display)

  return offset + length, value
end

-- Matching Engine Status
eurex_derivatives_eti_t7_v2_5.matching_engine_status = {}

-- Size Of: Matching Engine Status
eurex_derivatives_eti_t7_v2_5.matching_engine_status.size = 1

-- Display: Matching Engine Status
eurex_derivatives_eti_t7_v2_5.matching_engine_status.display = function(value)
  if value == 0 then
    return "Matching Engine Status: Unavailable (0)"
  end
  if value == 1 then
    return "Matching Engine Status: Available (1)"
  end
  if value == 0xFF then
    return "Matching Engine Status: No Value"
  end

  return "Matching Engine Status: Unknown("..value..")"
end

-- Dissect: Matching Engine Status
eurex_derivatives_eti_t7_v2_5.matching_engine_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.matching_engine_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.matching_engine_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.matching_engine_status, range, value, display)

  return offset + length, value
end

-- Appl Seq Trade Date
eurex_derivatives_eti_t7_v2_5.appl_seq_trade_date = {}

-- Size Of: Appl Seq Trade Date
eurex_derivatives_eti_t7_v2_5.appl_seq_trade_date.size = 4

-- Display: Appl Seq Trade Date
eurex_derivatives_eti_t7_v2_5.appl_seq_trade_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Appl Seq Trade Date: No Value"
  end

  return "Appl Seq Trade Date: "..value
end

-- Dissect: Appl Seq Trade Date
eurex_derivatives_eti_t7_v2_5.appl_seq_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_seq_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.appl_seq_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_seq_trade_date, range, value, display)

  return offset + length, value
end

-- Trade Manager Trade Date
eurex_derivatives_eti_t7_v2_5.trade_manager_trade_date = {}

-- Size Of: Trade Manager Trade Date
eurex_derivatives_eti_t7_v2_5.trade_manager_trade_date.size = 4

-- Display: Trade Manager Trade Date
eurex_derivatives_eti_t7_v2_5.trade_manager_trade_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trade Manager Trade Date: No Value"
  end

  return "Trade Manager Trade Date: "..value
end

-- Dissect: Trade Manager Trade Date
eurex_derivatives_eti_t7_v2_5.trade_manager_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trade_manager_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.trade_manager_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trade_manager_trade_date, range, value, display)

  return offset + length, value
end

-- Matching Engine Trade Date
eurex_derivatives_eti_t7_v2_5.matching_engine_trade_date = {}

-- Size Of: Matching Engine Trade Date
eurex_derivatives_eti_t7_v2_5.matching_engine_trade_date.size = 4

-- Display: Matching Engine Trade Date
eurex_derivatives_eti_t7_v2_5.matching_engine_trade_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Matching Engine Trade Date: No Value"
  end

  return "Matching Engine Trade Date: "..value
end

-- Dissect: Matching Engine Trade Date
eurex_derivatives_eti_t7_v2_5.matching_engine_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.matching_engine_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.matching_engine_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.matching_engine_trade_date, range, value, display)

  return offset + length, value
end

-- Nrbc Header Comp
eurex_derivatives_eti_t7_v2_5.nrbc_header_comp = {}

-- Size Of: Nrbc Header Comp
eurex_derivatives_eti_t7_v2_5.nrbc_header_comp.size =
  eurex_derivatives_eti_t7_v2_5.sending_time.size + 
  eurex_derivatives_eti_t7_v2_5.appl_sub_id.size + 
  eurex_derivatives_eti_t7_v2_5.appl_id.size + 
  eurex_derivatives_eti_t7_v2_5.last_fragment.size + 
  eurex_derivatives_eti_t7_v2_5.pad_2.size;

-- Display: Nrbc Header Comp
eurex_derivatives_eti_t7_v2_5.nrbc_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nrbc Header Comp
eurex_derivatives_eti_t7_v2_5.nrbc_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_eti_t7_v2_5.sending_time.dissect(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_sub_id = eurex_derivatives_eti_t7_v2_5.appl_sub_id.dissect(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, appl_id = eurex_derivatives_eti_t7_v2_5.appl_id.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_eti_t7_v2_5.last_fragment.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nrbc Header Comp
eurex_derivatives_eti_t7_v2_5.nrbc_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.nrbc_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.nrbc_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.nrbc_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.nrbc_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.nrbc_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Service Availability Broadcast
eurex_derivatives_eti_t7_v2_5.service_availability_broadcast = {}

-- Read runtime size of: Service Availability Broadcast
eurex_derivatives_eti_t7_v2_5.service_availability_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Service Availability Broadcast
eurex_derivatives_eti_t7_v2_5.service_availability_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Service Availability Broadcast
eurex_derivatives_eti_t7_v2_5.service_availability_broadcast.fields = function(buffer, offset, packet, parent, size_of_service_availability_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nrbc Header Comp: Struct of 5 fields
  index, nrbc_header_comp = eurex_derivatives_eti_t7_v2_5.nrbc_header_comp.dissect(buffer, index, packet, parent)

  -- Matching Engine Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, matching_engine_trade_date = eurex_derivatives_eti_t7_v2_5.matching_engine_trade_date.dissect(buffer, index, packet, parent)

  -- Trade Manager Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_manager_trade_date = eurex_derivatives_eti_t7_v2_5.trade_manager_trade_date.dissect(buffer, index, packet, parent)

  -- Appl Seq Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_seq_trade_date = eurex_derivatives_eti_t7_v2_5.appl_seq_trade_date.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_eti_t7_v2_5.partition_id.dissect(buffer, index, packet, parent)

  -- Matching Engine Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, matching_engine_status = eurex_derivatives_eti_t7_v2_5.matching_engine_status.dissect(buffer, index, packet, parent)

  -- Trade Manager Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trade_manager_status = eurex_derivatives_eti_t7_v2_5.trade_manager_status.dissect(buffer, index, packet, parent)

  -- Appl Seq Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_status = eurex_derivatives_eti_t7_v2_5.appl_seq_status.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Service Availability Broadcast
eurex_derivatives_eti_t7_v2_5.service_availability_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_service_availability_broadcast = eurex_derivatives_eti_t7_v2_5.service_availability_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.service_availability_broadcast then
    local range = buffer(offset, size_of_service_availability_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.service_availability_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.service_availability_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.service_availability_broadcast.fields(buffer, offset, packet, parent, size_of_service_availability_broadcast)

  return offset + size_of_service_availability_broadcast
end

-- Pad 6
eurex_derivatives_eti_t7_v2_5.pad_6 = {}

-- Size Of: Pad 6
eurex_derivatives_eti_t7_v2_5.pad_6.size = 6

-- Display: Pad 6
eurex_derivatives_eti_t7_v2_5.pad_6.display = function(value)
  return "Pad 6: "..value
end

-- Dissect: Pad 6
eurex_derivatives_eti_t7_v2_5.pad_6.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.pad_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.pad_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Requesting Party Clearing Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_clearing_firm = {}

-- Size Of: Requesting Party Clearing Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_clearing_firm.size = 9

-- Display: Requesting Party Clearing Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Clearing Firm: No Value"
  end

  return "Requesting Party Clearing Firm: "..value
end

-- Dissect: Requesting Party Clearing Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.requesting_party_clearing_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.requesting_party_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.requesting_party_clearing_firm, range, value, display)

  return offset + length, value
end

-- Requesting Party Entering Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_entering_firm = {}

-- Size Of: Requesting Party Entering Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_entering_firm.size = 9

-- Display: Requesting Party Entering Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_entering_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Entering Firm: No Value"
  end

  return "Requesting Party Entering Firm: "..value
end

-- Dissect: Requesting Party Entering Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_entering_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.requesting_party_entering_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.requesting_party_entering_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.requesting_party_entering_firm, range, value, display)

  return offset + length, value
end

-- Risk Limit Action
eurex_derivatives_eti_t7_v2_5.risk_limit_action = {}

-- Size Of: Risk Limit Action
eurex_derivatives_eti_t7_v2_5.risk_limit_action.size = 1

-- Display: Risk Limit Action
eurex_derivatives_eti_t7_v2_5.risk_limit_action.display = function(value)
  if value == 4 then
    return "Risk Limit Action: Warning (4)"
  end
  if value == 0 then
    return "Risk Limit Action: Queue Inbound (0)"
  end
  if value == 2 then
    return "Risk Limit Action: Reject (2)"
  end
  if value == 0xFF then
    return "Risk Limit Action: No Value"
  end

  return "Risk Limit Action: Unknown("..value..")"
end

-- Dissect: Risk Limit Action
eurex_derivatives_eti_t7_v2_5.risk_limit_action.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.risk_limit_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.risk_limit_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.risk_limit_action, range, value, display)

  return offset + length, value
end

-- List Update Action
eurex_derivatives_eti_t7_v2_5.list_update_action = {}

-- Size Of: List Update Action
eurex_derivatives_eti_t7_v2_5.list_update_action.size = 1

-- Display: List Update Action
eurex_derivatives_eti_t7_v2_5.list_update_action.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "List Update Action: No Value"
  end

  if value == "A" then
    return "List Update Action: Add (A)"
  end
  if value == "D" then
    return "List Update Action: Delete (D)"
  end

  return "List Update Action: Unknown("..value..")"
end

-- Dissect: List Update Action
eurex_derivatives_eti_t7_v2_5.list_update_action.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.list_update_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_eti_t7_v2_5.list_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.list_update_action, range, value, display)

  return offset + length, value
end

-- Market Id
eurex_derivatives_eti_t7_v2_5.market_id = {}

-- Size Of: Market Id
eurex_derivatives_eti_t7_v2_5.market_id.size = 2

-- Display: Market Id
eurex_derivatives_eti_t7_v2_5.market_id.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.market_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.market_id, range, value, display)

  return offset + length, value
end

-- Requesting Party Id Executing System
eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_system = {}

-- Size Of: Requesting Party Id Executing System
eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_system.size = 4

-- Display: Requesting Party Id Executing System
eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_system.display = function(value)
  if value == 1 then
    return "Requesting Party Id Executing System: Eurex Clearing (1)"
  end
  if value == 2 then
    return "Requesting Party Id Executing System: Eurex Trading (2)"
  end
  if value == 0xFFFFFFFF then
    return "Requesting Party Id Executing System: No Value"
  end

  return "Requesting Party Id Executing System: Unknown("..value..")"
end

-- Dissect: Requesting Party Id Executing System
eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_system.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_system.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.requesting_party_id_executing_system, range, value, display)

  return offset + length, value
end

-- Party Detail Id Executing Unit
eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_unit = {}

-- Size Of: Party Detail Id Executing Unit
eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_unit.size = 4

-- Display: Party Detail Id Executing Unit
eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_unit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Detail Id Executing Unit: No Value"
  end

  return "Party Detail Id Executing Unit: "..value
end

-- Dissect: Party Detail Id Executing Unit
eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_unit.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Risk Notification Broadcast
eurex_derivatives_eti_t7_v2_5.risk_notification_broadcast = {}

-- Read runtime size of: Risk Notification Broadcast
eurex_derivatives_eti_t7_v2_5.risk_notification_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Risk Notification Broadcast
eurex_derivatives_eti_t7_v2_5.risk_notification_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Notification Broadcast
eurex_derivatives_eti_t7_v2_5.risk_notification_broadcast.fields = function(buffer, offset, packet, parent, size_of_risk_notification_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eti_t7_v2_5.transact_time.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = eurex_derivatives_eti_t7_v2_5.trade_date.dissect(buffer, index, packet, parent)

  -- Party Detail Id Executing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_detail_id_executing_unit = eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_unit.dissect(buffer, index, packet, parent)

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, requesting_party_id_executing_system = eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_system.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = eurex_derivatives_eti_t7_v2_5.market_id.dissect(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String Enum with 2 values
  index, list_update_action = eurex_derivatives_eti_t7_v2_5.list_update_action.dissect(buffer, index, packet, parent)

  -- Risk Limit Action: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, risk_limit_action = eurex_derivatives_eti_t7_v2_5.risk_limit_action.dissect(buffer, index, packet, parent)

  -- Requesting Party Entering Firm: 9 Byte Ascii String Nullable
  index, requesting_party_entering_firm = eurex_derivatives_eti_t7_v2_5.requesting_party_entering_firm.dissect(buffer, index, packet, parent)

  -- Requesting Party Clearing Firm: 9 Byte Ascii String Nullable
  index, requesting_party_clearing_firm = eurex_derivatives_eti_t7_v2_5.requesting_party_clearing_firm.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Notification Broadcast
eurex_derivatives_eti_t7_v2_5.risk_notification_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_risk_notification_broadcast = eurex_derivatives_eti_t7_v2_5.risk_notification_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.risk_notification_broadcast then
    local range = buffer(offset, size_of_risk_notification_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.risk_notification_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.risk_notification_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.risk_notification_broadcast.fields(buffer, offset, packet, parent, size_of_risk_notification_broadcast)

  return offset + size_of_risk_notification_broadcast
end

-- Appl Total Message Count
eurex_derivatives_eti_t7_v2_5.appl_total_message_count = {}

-- Size Of: Appl Total Message Count
eurex_derivatives_eti_t7_v2_5.appl_total_message_count.size = 2

-- Display: Appl Total Message Count
eurex_derivatives_eti_t7_v2_5.appl_total_message_count.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Appl Total Message Count: No Value"
  end

  return "Appl Total Message Count: "..value
end

-- Dissect: Appl Total Message Count
eurex_derivatives_eti_t7_v2_5.appl_total_message_count.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_total_message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.appl_total_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_total_message_count, range, value, display)

  return offset + length, value
end

-- Ref Appl Last Seq Num
eurex_derivatives_eti_t7_v2_5.ref_appl_last_seq_num = {}

-- Size Of: Ref Appl Last Seq Num
eurex_derivatives_eti_t7_v2_5.ref_appl_last_seq_num.size = 8

-- Display: Ref Appl Last Seq Num
eurex_derivatives_eti_t7_v2_5.ref_appl_last_seq_num.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Ref Appl Last Seq Num: No Value"
  end

  return "Ref Appl Last Seq Num: "..value
end

-- Dissect: Ref Appl Last Seq Num
eurex_derivatives_eti_t7_v2_5.ref_appl_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.ref_appl_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.ref_appl_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.ref_appl_last_seq_num, range, value, display)

  return offset + length, value
end

-- Appl End Seq Num
eurex_derivatives_eti_t7_v2_5.appl_end_seq_num = {}

-- Size Of: Appl End Seq Num
eurex_derivatives_eti_t7_v2_5.appl_end_seq_num.size = 8

-- Display: Appl End Seq Num
eurex_derivatives_eti_t7_v2_5.appl_end_seq_num.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Appl End Seq Num: No Value"
  end

  return "Appl End Seq Num: "..value
end

-- Dissect: Appl End Seq Num
eurex_derivatives_eti_t7_v2_5.appl_end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.appl_end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_end_seq_num, range, value, display)

  return offset + length, value
end

-- Retransmit Response
eurex_derivatives_eti_t7_v2_5.retransmit_response = {}

-- Read runtime size of: Retransmit Response
eurex_derivatives_eti_t7_v2_5.retransmit_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Retransmit Response
eurex_derivatives_eti_t7_v2_5.retransmit_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Response
eurex_derivatives_eti_t7_v2_5.retransmit_response.fields = function(buffer, offset, packet, parent, size_of_retransmit_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  -- Appl End Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, appl_end_seq_num = eurex_derivatives_eti_t7_v2_5.appl_end_seq_num.dissect(buffer, index, packet, parent)

  -- Ref Appl Last Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, ref_appl_last_seq_num = eurex_derivatives_eti_t7_v2_5.ref_appl_last_seq_num.dissect(buffer, index, packet, parent)

  -- Appl Total Message Count: 2 Byte Unsigned Fixed Width Integer Nullable
  index, appl_total_message_count = eurex_derivatives_eti_t7_v2_5.appl_total_message_count.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Response
eurex_derivatives_eti_t7_v2_5.retransmit_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_retransmit_response = eurex_derivatives_eti_t7_v2_5.retransmit_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.retransmit_response then
    local range = buffer(offset, size_of_retransmit_response)
    local display = eurex_derivatives_eti_t7_v2_5.retransmit_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.retransmit_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.retransmit_response.fields(buffer, offset, packet, parent, size_of_retransmit_response)

  return offset + size_of_retransmit_response
end

-- Pad 1
eurex_derivatives_eti_t7_v2_5.pad_1 = {}

-- Size Of: Pad 1
eurex_derivatives_eti_t7_v2_5.pad_1.size = 1

-- Display: Pad 1
eurex_derivatives_eti_t7_v2_5.pad_1.display = function(value)
  return "Pad 1: "..value
end

-- Dissect: Pad 1
eurex_derivatives_eti_t7_v2_5.pad_1.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.pad_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.pad_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.pad_1, range, value, display)

  return offset + length, value
end

-- Appl Beg Seq Num
eurex_derivatives_eti_t7_v2_5.appl_beg_seq_num = {}

-- Size Of: Appl Beg Seq Num
eurex_derivatives_eti_t7_v2_5.appl_beg_seq_num.size = 8

-- Display: Appl Beg Seq Num
eurex_derivatives_eti_t7_v2_5.appl_beg_seq_num.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Appl Beg Seq Num: No Value"
  end

  return "Appl Beg Seq Num: "..value
end

-- Dissect: Appl Beg Seq Num
eurex_derivatives_eti_t7_v2_5.appl_beg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_beg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.appl_beg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_beg_seq_num, range, value, display)

  return offset + length, value
end

-- Retransmit Request
eurex_derivatives_eti_t7_v2_5.retransmit_request = {}

-- Read runtime size of: Retransmit Request
eurex_derivatives_eti_t7_v2_5.retransmit_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Retransmit Request
eurex_derivatives_eti_t7_v2_5.retransmit_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Request
eurex_derivatives_eti_t7_v2_5.retransmit_request.fields = function(buffer, offset, packet, parent, size_of_retransmit_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Appl Beg Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, appl_beg_seq_num = eurex_derivatives_eti_t7_v2_5.appl_beg_seq_num.dissect(buffer, index, packet, parent)

  -- Appl End Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, appl_end_seq_num = eurex_derivatives_eti_t7_v2_5.appl_end_seq_num.dissect(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer Nullable
  index, subscription_scope = eurex_derivatives_eti_t7_v2_5.subscription_scope.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_eti_t7_v2_5.partition_id.dissect(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ref_appl_id = eurex_derivatives_eti_t7_v2_5.ref_appl_id.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request
eurex_derivatives_eti_t7_v2_5.retransmit_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_retransmit_request = eurex_derivatives_eti_t7_v2_5.retransmit_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.retransmit_request then
    local range = buffer(offset, size_of_retransmit_request)
    local display = eurex_derivatives_eti_t7_v2_5.retransmit_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.retransmit_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.retransmit_request.fields(buffer, offset, packet, parent, size_of_retransmit_request)

  return offset + size_of_retransmit_request
end

-- Appl End Msg Id
eurex_derivatives_eti_t7_v2_5.appl_end_msg_id = {}

-- Size Of: Appl End Msg Id
eurex_derivatives_eti_t7_v2_5.appl_end_msg_id.size = 16

-- Display: Appl End Msg Id
eurex_derivatives_eti_t7_v2_5.appl_end_msg_id.display = function(value)
  return "Appl End Msg Id: "..value
end

-- Dissect: Appl End Msg Id
eurex_derivatives_eti_t7_v2_5.appl_end_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_end_msg_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.appl_end_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_end_msg_id, range, value, display)

  return offset + length, value
end

-- Retransmit Me Message Response
eurex_derivatives_eti_t7_v2_5.retransmit_me_message_response = {}

-- Read runtime size of: Retransmit Me Message Response
eurex_derivatives_eti_t7_v2_5.retransmit_me_message_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Retransmit Me Message Response
eurex_derivatives_eti_t7_v2_5.retransmit_me_message_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Me Message Response
eurex_derivatives_eti_t7_v2_5.retransmit_me_message_response.fields = function(buffer, offset, packet, parent, size_of_retransmit_me_message_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  -- Appl Total Message Count: 2 Byte Unsigned Fixed Width Integer Nullable
  index, appl_total_message_count = eurex_derivatives_eti_t7_v2_5.appl_total_message_count.dissect(buffer, index, packet, parent)

  -- Appl End Msg Id: 16 Byte
  index, appl_end_msg_id = eurex_derivatives_eti_t7_v2_5.appl_end_msg_id.dissect(buffer, index, packet, parent)

  -- Ref Appl Last Msg Id: 16 Byte
  index, ref_appl_last_msg_id = eurex_derivatives_eti_t7_v2_5.ref_appl_last_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Me Message Response
eurex_derivatives_eti_t7_v2_5.retransmit_me_message_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_retransmit_me_message_response = eurex_derivatives_eti_t7_v2_5.retransmit_me_message_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.retransmit_me_message_response then
    local range = buffer(offset, size_of_retransmit_me_message_response)
    local display = eurex_derivatives_eti_t7_v2_5.retransmit_me_message_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.retransmit_me_message_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.retransmit_me_message_response.fields(buffer, offset, packet, parent, size_of_retransmit_me_message_response)

  return offset + size_of_retransmit_me_message_response
end

-- Appl Beg Msg Id
eurex_derivatives_eti_t7_v2_5.appl_beg_msg_id = {}

-- Size Of: Appl Beg Msg Id
eurex_derivatives_eti_t7_v2_5.appl_beg_msg_id.size = 16

-- Display: Appl Beg Msg Id
eurex_derivatives_eti_t7_v2_5.appl_beg_msg_id.display = function(value)
  return "Appl Beg Msg Id: "..value
end

-- Dissect: Appl Beg Msg Id
eurex_derivatives_eti_t7_v2_5.appl_beg_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_beg_msg_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.appl_beg_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_beg_msg_id, range, value, display)

  return offset + length, value
end

-- Retransmit Me Message Request
eurex_derivatives_eti_t7_v2_5.retransmit_me_message_request = {}

-- Read runtime size of: Retransmit Me Message Request
eurex_derivatives_eti_t7_v2_5.retransmit_me_message_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Retransmit Me Message Request
eurex_derivatives_eti_t7_v2_5.retransmit_me_message_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Me Message Request
eurex_derivatives_eti_t7_v2_5.retransmit_me_message_request.fields = function(buffer, offset, packet, parent, size_of_retransmit_me_message_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer Nullable
  index, subscription_scope = eurex_derivatives_eti_t7_v2_5.subscription_scope.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_eti_t7_v2_5.partition_id.dissect(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ref_appl_id = eurex_derivatives_eti_t7_v2_5.ref_appl_id.dissect(buffer, index, packet, parent)

  -- Appl Beg Msg Id: 16 Byte
  index, appl_beg_msg_id = eurex_derivatives_eti_t7_v2_5.appl_beg_msg_id.dissect(buffer, index, packet, parent)

  -- Appl End Msg Id: 16 Byte
  index, appl_end_msg_id = eurex_derivatives_eti_t7_v2_5.appl_end_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Me Message Request
eurex_derivatives_eti_t7_v2_5.retransmit_me_message_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_retransmit_me_message_request = eurex_derivatives_eti_t7_v2_5.retransmit_me_message_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.retransmit_me_message_request then
    local range = buffer(offset, size_of_retransmit_me_message_request)
    local display = eurex_derivatives_eti_t7_v2_5.retransmit_me_message_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.retransmit_me_message_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.retransmit_me_message_request.fields(buffer, offset, packet, parent, size_of_retransmit_me_message_request)

  return offset + size_of_retransmit_me_message_request
end

-- Alignment Padding
eurex_derivatives_eti_t7_v2_5.alignment_padding = {}

-- Display: Alignment Padding
eurex_derivatives_eti_t7_v2_5.alignment_padding.display = function(value)
  return "Alignment Padding: "..value
end

-- Dissect runtime sized field: Alignment Padding
eurex_derivatives_eti_t7_v2_5.alignment_padding.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.alignment_padding.display(value, packet, parent, size)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.alignment_padding, range, value, display)

  return offset + size, value
end

-- Var Text
eurex_derivatives_eti_t7_v2_5.var_text = {}

-- Display: Var Text
eurex_derivatives_eti_t7_v2_5.var_text.display = function(value)
  return "Var Text: "..value
end

-- Dissect runtime sized field: Var Text
eurex_derivatives_eti_t7_v2_5.var_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = eurex_derivatives_eti_t7_v2_5.var_text.display(value, packet, parent, size)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.var_text, range, value, display)

  return offset + size, value
end

-- Session Status
eurex_derivatives_eti_t7_v2_5.session_status = {}

-- Size Of: Session Status
eurex_derivatives_eti_t7_v2_5.session_status.size = 1

-- Display: Session Status
eurex_derivatives_eti_t7_v2_5.session_status.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.session_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.session_status, range, value, display)

  return offset + length, value
end

-- Var Text Len
eurex_derivatives_eti_t7_v2_5.var_text_len = {}

-- Size Of: Var Text Len
eurex_derivatives_eti_t7_v2_5.var_text_len.size = 2

-- Display: Var Text Len
eurex_derivatives_eti_t7_v2_5.var_text_len.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Var Text Len: No Value"
  end

  return "Var Text Len: "..value
end

-- Dissect: Var Text Len
eurex_derivatives_eti_t7_v2_5.var_text_len.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.var_text_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.var_text_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.var_text_len, range, value, display)

  return offset + length, value
end

-- Session Reject Reason
eurex_derivatives_eti_t7_v2_5.session_reject_reason = {}

-- Size Of: Session Reject Reason
eurex_derivatives_eti_t7_v2_5.session_reject_reason.size = 4

-- Display: Session Reject Reason
eurex_derivatives_eti_t7_v2_5.session_reject_reason.display = function(value)
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
  if value == 10010 then
    return "Session Reject Reason: Create Ci Throttle Exceeded (10010)"
  end
  if value == 0xFFFFFFFF then
    return "Session Reject Reason: No Value"
  end

  return "Session Reject Reason: Unknown("..value..")"
end

-- Dissect: Session Reject Reason
eurex_derivatives_eti_t7_v2_5.session_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.session_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.session_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.session_reject_reason, range, value, display)

  return offset + length, value
end

-- Response In
eurex_derivatives_eti_t7_v2_5.response_in = {}

-- Size Of: Response In
eurex_derivatives_eti_t7_v2_5.response_in.size = 8

-- Display: Response In
eurex_derivatives_eti_t7_v2_5.response_in.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Response In: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Response In: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Response In
eurex_derivatives_eti_t7_v2_5.response_in.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.response_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.response_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.response_in, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Time In
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_in = {}

-- Size Of: Trd Reg Ts Time In
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_in.size = 8

-- Display: Trd Reg Ts Time In
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_in.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Time In: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Time In: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time In
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_in.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trd_reg_ts_time_in, range, value, display)

  return offset + length, value
end

-- Request Out
eurex_derivatives_eti_t7_v2_5.request_out = {}

-- Size Of: Request Out
eurex_derivatives_eti_t7_v2_5.request_out.size = 8

-- Display: Request Out
eurex_derivatives_eti_t7_v2_5.request_out.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Request Out: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Request Out: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Out
eurex_derivatives_eti_t7_v2_5.request_out.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.request_out.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.request_out.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.request_out, range, value, display)

  return offset + length, value
end

-- Nr Response Header Me Comp
eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp = {}

-- Size Of: Nr Response Header Me Comp
eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.size =
  eurex_derivatives_eti_t7_v2_5.request_time.size + 
  eurex_derivatives_eti_t7_v2_5.request_out.size + 
  eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_in.size + 
  eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.size + 
  eurex_derivatives_eti_t7_v2_5.response_in.size + 
  eurex_derivatives_eti_t7_v2_5.sending_time.size + 
  eurex_derivatives_eti_t7_v2_5.msg_seq_num.size + 
  eurex_derivatives_eti_t7_v2_5.last_fragment.size + 
  eurex_derivatives_eti_t7_v2_5.pad_3.size;

-- Display: Nr Response Header Me Comp
eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nr Response Header Me Comp
eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_eti_t7_v2_5.request_time.dissect(buffer, index, packet, parent)

  -- Request Out: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_out = eurex_derivatives_eti_t7_v2_5.request_out.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_in = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_out = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.dissect(buffer, index, packet, parent)

  -- Response In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, response_in = eurex_derivatives_eti_t7_v2_5.response_in.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_eti_t7_v2_5.sending_time.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = eurex_derivatives_eti_t7_v2_5.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_eti_t7_v2_5.last_fragment.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nr Response Header Me Comp
eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect = function(buffer, offset, packet, parent)
  if show.nr_response_header_me_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.nr_response_header_me_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.fields(buffer, offset, packet, parent)
  end
end

-- Reject
eurex_derivatives_eti_t7_v2_5.reject = {}

-- Read runtime size of: Reject
eurex_derivatives_eti_t7_v2_5.reject.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Reject
eurex_derivatives_eti_t7_v2_5.reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject
eurex_derivatives_eti_t7_v2_5.reject.fields = function(buffer, offset, packet, parent, size_of_reject)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Session Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, session_reject_reason = eurex_derivatives_eti_t7_v2_5.session_reject_reason.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = eurex_derivatives_eti_t7_v2_5.var_text_len.dissect(buffer, index, packet, parent)

  -- Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_status = eurex_derivatives_eti_t7_v2_5.session_status.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = eurex_derivatives_eti_t7_v2_5.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = eurex_derivatives_eti_t7_v2_5.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Reject
eurex_derivatives_eti_t7_v2_5.reject.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_reject = eurex_derivatives_eti_t7_v2_5.reject.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.reject then
    local range = buffer(offset, size_of_reject)
    local display = eurex_derivatives_eti_t7_v2_5.reject.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.reject, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.reject.fields(buffer, offset, packet, parent, size_of_reject)

  return offset + size_of_reject
end

-- Exec Id
eurex_derivatives_eti_t7_v2_5.exec_id = {}

-- Size Of: Exec Id
eurex_derivatives_eti_t7_v2_5.exec_id.size = 8

-- Display: Exec Id
eurex_derivatives_eti_t7_v2_5.exec_id.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Rfq Response
eurex_derivatives_eti_t7_v2_5.rfq_response = {}

-- Read runtime size of: Rfq Response
eurex_derivatives_eti_t7_v2_5.rfq_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Rfq Response
eurex_derivatives_eti_t7_v2_5.rfq_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Response
eurex_derivatives_eti_t7_v2_5.rfq_response.fields = function(buffer, offset, packet, parent, size_of_rfq_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Response
eurex_derivatives_eti_t7_v2_5.rfq_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_rfq_response = eurex_derivatives_eti_t7_v2_5.rfq_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.rfq_response then
    local range = buffer(offset, size_of_rfq_response)
    local display = eurex_derivatives_eti_t7_v2_5.rfq_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.rfq_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.rfq_response.fields(buffer, offset, packet, parent, size_of_rfq_response)

  return offset + size_of_rfq_response
end

-- Compliance Text
eurex_derivatives_eti_t7_v2_5.compliance_text = {}

-- Size Of: Compliance Text
eurex_derivatives_eti_t7_v2_5.compliance_text.size = 20

-- Display: Compliance Text
eurex_derivatives_eti_t7_v2_5.compliance_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Compliance Text: No Value"
  end

  return "Compliance Text: "..value
end

-- Dissect: Compliance Text
eurex_derivatives_eti_t7_v2_5.compliance_text.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.compliance_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.compliance_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.compliance_text, range, value, display)

  return offset + length, value
end

-- Order Qty
eurex_derivatives_eti_t7_v2_5.order_qty = {}

-- Size Of: Order Qty
eurex_derivatives_eti_t7_v2_5.order_qty.size = 4

-- Display: Order Qty
eurex_derivatives_eti_t7_v2_5.order_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty
eurex_derivatives_eti_t7_v2_5.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Compliance Id
eurex_derivatives_eti_t7_v2_5.compliance_id = {}

-- Size Of: Compliance Id
eurex_derivatives_eti_t7_v2_5.compliance_id.size = 8

-- Display: Compliance Id
eurex_derivatives_eti_t7_v2_5.compliance_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Compliance Id: No Value"
  end

  return "Compliance Id: "..value
end

-- Dissect: Compliance Id
eurex_derivatives_eti_t7_v2_5.compliance_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.compliance_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.compliance_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.compliance_id, range, value, display)

  return offset + length, value
end

-- Rfq Request
eurex_derivatives_eti_t7_v2_5.rfq_request = {}

-- Read runtime size of: Rfq Request
eurex_derivatives_eti_t7_v2_5.rfq_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Rfq Request
eurex_derivatives_eti_t7_v2_5.rfq_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Request
eurex_derivatives_eti_t7_v2_5.rfq_request.fields = function(buffer, offset, packet, parent, size_of_rfq_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_eti_t7_v2_5.order_qty.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eti_t7_v2_5.side.dissect(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String Nullable
  index, compliance_text = eurex_derivatives_eti_t7_v2_5.compliance_text.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Request
eurex_derivatives_eti_t7_v2_5.rfq_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_rfq_request = eurex_derivatives_eti_t7_v2_5.rfq_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.rfq_request then
    local range = buffer(offset, size_of_rfq_request)
    local display = eurex_derivatives_eti_t7_v2_5.rfq_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.rfq_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.rfq_request.fields(buffer, offset, packet, parent, size_of_rfq_request)

  return offset + size_of_rfq_request
end

-- No Quote Events Index
eurex_derivatives_eti_t7_v2_5.no_quote_events_index = {}

-- Size Of: No Quote Events Index
eurex_derivatives_eti_t7_v2_5.no_quote_events_index.size = 1

-- Display: No Quote Events Index
eurex_derivatives_eti_t7_v2_5.no_quote_events_index.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Quote Events Index: No Value"
  end

  return "No Quote Events Index: "..value
end

-- Dissect: No Quote Events Index
eurex_derivatives_eti_t7_v2_5.no_quote_events_index.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_quote_events_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_quote_events_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_quote_events_index, range, value, display)

  return offset + length, value
end

-- Leg Side
eurex_derivatives_eti_t7_v2_5.leg_side = {}

-- Size Of: Leg Side
eurex_derivatives_eti_t7_v2_5.leg_side.size = 1

-- Display: Leg Side
eurex_derivatives_eti_t7_v2_5.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end
  if value == 0xFF then
    return "Leg Side: No Value"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
eurex_derivatives_eti_t7_v2_5.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Exec Id
eurex_derivatives_eti_t7_v2_5.leg_exec_id = {}

-- Size Of: Leg Exec Id
eurex_derivatives_eti_t7_v2_5.leg_exec_id.size = 4

-- Display: Leg Exec Id
eurex_derivatives_eti_t7_v2_5.leg_exec_id.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leg Exec Id: No Value"
  end

  return "Leg Exec Id: "..value
end

-- Dissect: Leg Exec Id
eurex_derivatives_eti_t7_v2_5.leg_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.leg_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_exec_id, range, value, display)

  return offset + length, value
end

-- Leg Last Qty
eurex_derivatives_eti_t7_v2_5.leg_last_qty = {}

-- Size Of: Leg Last Qty
eurex_derivatives_eti_t7_v2_5.leg_last_qty.size = 4

-- Display: Leg Last Qty
eurex_derivatives_eti_t7_v2_5.leg_last_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leg Last Qty: No Value"
  end

  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
eurex_derivatives_eti_t7_v2_5.leg_last_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.leg_last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Leg Last Px
eurex_derivatives_eti_t7_v2_5.leg_last_px = {}

-- Size Of: Leg Last Px
eurex_derivatives_eti_t7_v2_5.leg_last_px.size = 8

-- Display: Leg Last Px
eurex_derivatives_eti_t7_v2_5.leg_last_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Leg Last Px: No Value"
  end

  return "Leg Last Px: "..value
end

-- Translate: Leg Last Px
eurex_derivatives_eti_t7_v2_5.leg_last_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Leg Last Px
eurex_derivatives_eti_t7_v2_5.leg_last_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_last_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.leg_last_px.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.leg_last_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Leg Security Id
eurex_derivatives_eti_t7_v2_5.leg_security_id = {}

-- Size Of: Leg Security Id
eurex_derivatives_eti_t7_v2_5.leg_security_id.size = 8

-- Display: Leg Security Id
eurex_derivatives_eti_t7_v2_5.leg_security_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Security Id: No Value"
  end

  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
eurex_derivatives_eti_t7_v2_5.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_eti_t7_v2_5.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Quote Leg Exec Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_leg_exec_grp_comp = {}

-- Size Of: Quote Leg Exec Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_leg_exec_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.leg_security_id.size + 
  eurex_derivatives_eti_t7_v2_5.leg_last_px.size + 
  eurex_derivatives_eti_t7_v2_5.leg_last_qty.size + 
  eurex_derivatives_eti_t7_v2_5.leg_exec_id.size + 
  eurex_derivatives_eti_t7_v2_5.leg_side.size + 
  eurex_derivatives_eti_t7_v2_5.no_quote_events_index.size + 
  eurex_derivatives_eti_t7_v2_5.pad_6.size;

-- Display: Quote Leg Exec Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_leg_exec_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Leg Exec Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_leg_exec_grp_comp.fields = function(buffer, offset, packet, parent, quote_leg_exec_grp_comp_index)
  local index = offset

  -- Implicit Quote Leg Exec Grp Comp Index
  if quote_leg_exec_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_leg_exec_grp_comp_index, quote_leg_exec_grp_comp_index)
    iteration:set_generated()
  end

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_security_id = eurex_derivatives_eti_t7_v2_5.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_last_px = eurex_derivatives_eti_t7_v2_5.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_last_qty = eurex_derivatives_eti_t7_v2_5.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Exec Id: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_exec_id = eurex_derivatives_eti_t7_v2_5.leg_exec_id.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = eurex_derivatives_eti_t7_v2_5.leg_side.dissect(buffer, index, packet, parent)

  -- No Quote Events Index: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_quote_events_index = eurex_derivatives_eti_t7_v2_5.no_quote_events_index.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Leg Exec Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_leg_exec_grp_comp.dissect = function(buffer, offset, packet, parent, quote_leg_exec_grp_comp_index)
  if show.quote_leg_exec_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_leg_exec_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.quote_leg_exec_grp_comp.fields(buffer, offset, packet, parent, quote_leg_exec_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.quote_leg_exec_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.quote_leg_exec_grp_comp.fields(buffer, offset, packet, parent, quote_leg_exec_grp_comp_index)
  end
end

-- Quote Event Reason
eurex_derivatives_eti_t7_v2_5.quote_event_reason = {}

-- Size Of: Quote Event Reason
eurex_derivatives_eti_t7_v2_5.quote_event_reason.size = 1

-- Display: Quote Event Reason
eurex_derivatives_eti_t7_v2_5.quote_event_reason.display = function(value)
  if value == 14 then
    return "Quote Event Reason: Pendingcancellationexecuted (14)"
  end
  if value == 15 then
    return "Quote Event Reason: Invalidprice (15)"
  end
  if value == 0xFF then
    return "Quote Event Reason: No Value"
  end

  return "Quote Event Reason: Unknown("..value..")"
end

-- Dissect: Quote Event Reason
eurex_derivatives_eti_t7_v2_5.quote_event_reason.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_event_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.quote_event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_reason, range, value, display)

  return offset + length, value
end

-- Quote Event Liquidity Ind
eurex_derivatives_eti_t7_v2_5.quote_event_liquidity_ind = {}

-- Size Of: Quote Event Liquidity Ind
eurex_derivatives_eti_t7_v2_5.quote_event_liquidity_ind.size = 1

-- Display: Quote Event Liquidity Ind
eurex_derivatives_eti_t7_v2_5.quote_event_liquidity_ind.display = function(value)
  if value == 1 then
    return "Quote Event Liquidity Ind: Added Liquidity (1)"
  end
  if value == 2 then
    return "Quote Event Liquidity Ind: Removed Liquidity (2)"
  end
  if value == 0xFF then
    return "Quote Event Liquidity Ind: No Value"
  end

  return "Quote Event Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Quote Event Liquidity Ind
eurex_derivatives_eti_t7_v2_5.quote_event_liquidity_ind.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_event_liquidity_ind.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.quote_event_liquidity_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Quote Event Side
eurex_derivatives_eti_t7_v2_5.quote_event_side = {}

-- Size Of: Quote Event Side
eurex_derivatives_eti_t7_v2_5.quote_event_side.size = 1

-- Display: Quote Event Side
eurex_derivatives_eti_t7_v2_5.quote_event_side.display = function(value)
  if value == 1 then
    return "Quote Event Side: Buy (1)"
  end
  if value == 2 then
    return "Quote Event Side: Sell (2)"
  end
  if value == 0xFF then
    return "Quote Event Side: No Value"
  end

  return "Quote Event Side: Unknown("..value..")"
end

-- Dissect: Quote Event Side
eurex_derivatives_eti_t7_v2_5.quote_event_side.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_event_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.quote_event_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_side, range, value, display)

  return offset + length, value
end

-- Quote Event Type
eurex_derivatives_eti_t7_v2_5.quote_event_type = {}

-- Size Of: Quote Event Type
eurex_derivatives_eti_t7_v2_5.quote_event_type.size = 1

-- Display: Quote Event Type
eurex_derivatives_eti_t7_v2_5.quote_event_type.display = function(value)
  if value == 3 then
    return "Quote Event Type: Removedquoteside (3)"
  end
  if value == 4 then
    return "Quote Event Type: Partiallyfilled (4)"
  end
  if value == 5 then
    return "Quote Event Type: Filled (5)"
  end
  if value == 0xFF then
    return "Quote Event Type: No Value"
  end

  return "Quote Event Type: Unknown("..value..")"
end

-- Dissect: Quote Event Type
eurex_derivatives_eti_t7_v2_5.quote_event_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.quote_event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_type, range, value, display)

  return offset + length, value
end

-- Quote Event Qty
eurex_derivatives_eti_t7_v2_5.quote_event_qty = {}

-- Size Of: Quote Event Qty
eurex_derivatives_eti_t7_v2_5.quote_event_qty.size = 4

-- Display: Quote Event Qty
eurex_derivatives_eti_t7_v2_5.quote_event_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Quote Event Qty: No Value"
  end

  return "Quote Event Qty: "..value
end

-- Dissect: Quote Event Qty
eurex_derivatives_eti_t7_v2_5.quote_event_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_event_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.quote_event_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_qty, range, value, display)

  return offset + length, value
end

-- Quote Event Exec Id
eurex_derivatives_eti_t7_v2_5.quote_event_exec_id = {}

-- Size Of: Quote Event Exec Id
eurex_derivatives_eti_t7_v2_5.quote_event_exec_id.size = 4

-- Display: Quote Event Exec Id
eurex_derivatives_eti_t7_v2_5.quote_event_exec_id.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Quote Event Exec Id: No Value"
  end

  return "Quote Event Exec Id: "..value
end

-- Dissect: Quote Event Exec Id
eurex_derivatives_eti_t7_v2_5.quote_event_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_event_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.quote_event_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_exec_id, range, value, display)

  return offset + length, value
end

-- Quote Event Match Id
eurex_derivatives_eti_t7_v2_5.quote_event_match_id = {}

-- Size Of: Quote Event Match Id
eurex_derivatives_eti_t7_v2_5.quote_event_match_id.size = 4

-- Display: Quote Event Match Id
eurex_derivatives_eti_t7_v2_5.quote_event_match_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Quote Event Match Id: No Value"
  end

  return "Quote Event Match Id: "..value
end

-- Dissect: Quote Event Match Id
eurex_derivatives_eti_t7_v2_5.quote_event_match_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_event_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.quote_event_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_match_id, range, value, display)

  return offset + length, value
end

-- Quote Msg Id
eurex_derivatives_eti_t7_v2_5.quote_msg_id = {}

-- Size Of: Quote Msg Id
eurex_derivatives_eti_t7_v2_5.quote_msg_id.size = 8

-- Display: Quote Msg Id
eurex_derivatives_eti_t7_v2_5.quote_msg_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Msg Id: No Value"
  end

  return "Quote Msg Id: "..value
end

-- Dissect: Quote Msg Id
eurex_derivatives_eti_t7_v2_5.quote_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_msg_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.quote_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_msg_id, range, value, display)

  return offset + length, value
end

-- Quote Event Px
eurex_derivatives_eti_t7_v2_5.quote_event_px = {}

-- Size Of: Quote Event Px
eurex_derivatives_eti_t7_v2_5.quote_event_px.size = 8

-- Display: Quote Event Px
eurex_derivatives_eti_t7_v2_5.quote_event_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Quote Event Px: No Value"
  end

  return "Quote Event Px: "..value
end

-- Translate: Quote Event Px
eurex_derivatives_eti_t7_v2_5.quote_event_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Quote Event Px
eurex_derivatives_eti_t7_v2_5.quote_event_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_event_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.quote_event_px.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.quote_event_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_px, range, value, display)

  return offset + length, value
end

-- Quote Event Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_event_grp_comp = {}

-- Size Of: Quote Event Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_event_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.security_id.size + 
  eurex_derivatives_eti_t7_v2_5.quote_event_px.size + 
  eurex_derivatives_eti_t7_v2_5.quote_msg_id.size + 
  eurex_derivatives_eti_t7_v2_5.quote_event_match_id.size + 
  eurex_derivatives_eti_t7_v2_5.quote_event_exec_id.size + 
  eurex_derivatives_eti_t7_v2_5.quote_event_qty.size + 
  eurex_derivatives_eti_t7_v2_5.quote_event_type.size + 
  eurex_derivatives_eti_t7_v2_5.quote_event_side.size + 
  eurex_derivatives_eti_t7_v2_5.quote_event_liquidity_ind.size + 
  eurex_derivatives_eti_t7_v2_5.quote_event_reason.size;

-- Display: Quote Event Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_event_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Event Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_event_grp_comp.fields = function(buffer, offset, packet, parent, quote_event_grp_comp_index)
  local index = offset

  -- Implicit Quote Event Grp Comp Index
  if quote_event_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_grp_comp_index, quote_event_grp_comp_index)
    iteration:set_generated()
  end

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Quote Event Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_event_px = eurex_derivatives_eti_t7_v2_5.quote_event_px.dissect(buffer, index, packet, parent)

  -- Quote Msg Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_msg_id = eurex_derivatives_eti_t7_v2_5.quote_msg_id.dissect(buffer, index, packet, parent)

  -- Quote Event Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, quote_event_match_id = eurex_derivatives_eti_t7_v2_5.quote_event_match_id.dissect(buffer, index, packet, parent)

  -- Quote Event Exec Id: 4 Byte Signed Fixed Width Integer Nullable
  index, quote_event_exec_id = eurex_derivatives_eti_t7_v2_5.quote_event_exec_id.dissect(buffer, index, packet, parent)

  -- Quote Event Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, quote_event_qty = eurex_derivatives_eti_t7_v2_5.quote_event_qty.dissect(buffer, index, packet, parent)

  -- Quote Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_event_type = eurex_derivatives_eti_t7_v2_5.quote_event_type.dissect(buffer, index, packet, parent)

  -- Quote Event Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_event_side = eurex_derivatives_eti_t7_v2_5.quote_event_side.dissect(buffer, index, packet, parent)

  -- Quote Event Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_event_liquidity_ind = eurex_derivatives_eti_t7_v2_5.quote_event_liquidity_ind.dissect(buffer, index, packet, parent)

  -- Quote Event Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_event_reason = eurex_derivatives_eti_t7_v2_5.quote_event_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Event Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_event_grp_comp.dissect = function(buffer, offset, packet, parent, quote_event_grp_comp_index)
  if show.quote_event_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_event_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.quote_event_grp_comp.fields(buffer, offset, packet, parent, quote_event_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.quote_event_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.quote_event_grp_comp.fields(buffer, offset, packet, parent, quote_event_grp_comp_index)
  end
end

-- No Quote Events
eurex_derivatives_eti_t7_v2_5.no_quote_events = {}

-- Size Of: No Quote Events
eurex_derivatives_eti_t7_v2_5.no_quote_events.size = 1

-- Display: No Quote Events
eurex_derivatives_eti_t7_v2_5.no_quote_events.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Quote Events: No Value"
  end

  return "No Quote Events: "..value
end

-- Dissect: No Quote Events
eurex_derivatives_eti_t7_v2_5.no_quote_events.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_quote_events.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_quote_events.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_quote_events, range, value, display)

  return offset + length, value
end

-- No Leg Execs
eurex_derivatives_eti_t7_v2_5.no_leg_execs = {}

-- Size Of: No Leg Execs
eurex_derivatives_eti_t7_v2_5.no_leg_execs.size = 2

-- Display: No Leg Execs
eurex_derivatives_eti_t7_v2_5.no_leg_execs.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Leg Execs: No Value"
  end

  return "No Leg Execs: "..value
end

-- Dissect: No Leg Execs
eurex_derivatives_eti_t7_v2_5.no_leg_execs.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_leg_execs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_leg_execs.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_leg_execs, range, value, display)

  return offset + length, value
end

-- Quote Execution Report
eurex_derivatives_eti_t7_v2_5.quote_execution_report = {}

-- Read runtime size of: Quote Execution Report
eurex_derivatives_eti_t7_v2_5.quote_execution_report.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Quote Execution Report
eurex_derivatives_eti_t7_v2_5.quote_execution_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Execution Report
eurex_derivatives_eti_t7_v2_5.quote_execution_report.fields = function(buffer, offset, packet, parent, size_of_quote_execution_report)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_leg_execs = eurex_derivatives_eti_t7_v2_5.no_leg_execs.dissect(buffer, index, packet, parent)

  -- No Quote Events: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_quote_events = eurex_derivatives_eti_t7_v2_5.no_quote_events.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Event Grp Comp
  for quote_event_grp_comp_index = 1, no_quote_events do
    index, quote_event_grp_comp = eurex_derivatives_eti_t7_v2_5.quote_event_grp_comp.dissect(buffer, index, packet, parent, quote_event_grp_comp_index)
  end

  -- Repeating: Quote Leg Exec Grp Comp
  for quote_leg_exec_grp_comp_index = 1, no_leg_execs do
    index, quote_leg_exec_grp_comp = eurex_derivatives_eti_t7_v2_5.quote_leg_exec_grp_comp.dissect(buffer, index, packet, parent, quote_leg_exec_grp_comp_index)
  end

  return index
end

-- Dissect: Quote Execution Report
eurex_derivatives_eti_t7_v2_5.quote_execution_report.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_quote_execution_report = eurex_derivatives_eti_t7_v2_5.quote_execution_report.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.quote_execution_report then
    local range = buffer(offset, size_of_quote_execution_report)
    local display = eurex_derivatives_eti_t7_v2_5.quote_execution_report.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_execution_report, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.quote_execution_report.fields(buffer, offset, packet, parent, size_of_quote_execution_report)

  return offset + size_of_quote_execution_report
end

-- Not Affected Security Id
eurex_derivatives_eti_t7_v2_5.not_affected_security_id = {}

-- Size Of: Not Affected Security Id
eurex_derivatives_eti_t7_v2_5.not_affected_security_id.size = 8

-- Display: Not Affected Security Id
eurex_derivatives_eti_t7_v2_5.not_affected_security_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Not Affected Security Id: No Value"
  end

  return "Not Affected Security Id: "..value
end

-- Dissect: Not Affected Security Id
eurex_derivatives_eti_t7_v2_5.not_affected_security_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.not_affected_security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.not_affected_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_security_id, range, value, display)

  return offset + length, value
end

-- Not Affected Securities Grp Comp
eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp = {}

-- Size Of: Not Affected Securities Grp Comp
eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.not_affected_security_id.size;

-- Display: Not Affected Securities Grp Comp
eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Affected Securities Grp Comp
eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.fields = function(buffer, offset, packet, parent, not_affected_securities_grp_comp_index)
  local index = offset

  -- Implicit Not Affected Securities Grp Comp Index
  if not_affected_securities_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_securities_grp_comp_index, not_affected_securities_grp_comp_index)
    iteration:set_generated()
  end

  -- Not Affected Security Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, not_affected_security_id = eurex_derivatives_eti_t7_v2_5.not_affected_security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Affected Securities Grp Comp
eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.dissect = function(buffer, offset, packet, parent, not_affected_securities_grp_comp_index)
  if show.not_affected_securities_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_securities_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.fields(buffer, offset, packet, parent, not_affected_securities_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.fields(buffer, offset, packet, parent, not_affected_securities_grp_comp_index)
  end
end

-- No Not Affected Securities
eurex_derivatives_eti_t7_v2_5.no_not_affected_securities = {}

-- Size Of: No Not Affected Securities
eurex_derivatives_eti_t7_v2_5.no_not_affected_securities.size = 2

-- Display: No Not Affected Securities
eurex_derivatives_eti_t7_v2_5.no_not_affected_securities.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Not Affected Securities: No Value"
  end

  return "No Not Affected Securities: "..value
end

-- Dissect: No Not Affected Securities
eurex_derivatives_eti_t7_v2_5.no_not_affected_securities.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_not_affected_securities.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_not_affected_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_not_affected_securities, range, value, display)

  return offset + length, value
end

-- Mass Action Report Id
eurex_derivatives_eti_t7_v2_5.mass_action_report_id = {}

-- Size Of: Mass Action Report Id
eurex_derivatives_eti_t7_v2_5.mass_action_report_id.size = 8

-- Display: Mass Action Report Id
eurex_derivatives_eti_t7_v2_5.mass_action_report_id.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Mass Action Report Id: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Mass Action Report Id: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Mass Action Report Id
eurex_derivatives_eti_t7_v2_5.mass_action_report_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.mass_action_report_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.mass_action_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.mass_action_report_id, range, value, display)

  return offset + length, value
end

-- Quote Activation Response
eurex_derivatives_eti_t7_v2_5.quote_activation_response = {}

-- Read runtime size of: Quote Activation Response
eurex_derivatives_eti_t7_v2_5.quote_activation_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Quote Activation Response
eurex_derivatives_eti_t7_v2_5.quote_activation_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Activation Response
eurex_derivatives_eti_t7_v2_5.quote_activation_response.fields = function(buffer, offset, packet, parent, size_of_quote_activation_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = eurex_derivatives_eti_t7_v2_5.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_not_affected_securities = eurex_derivatives_eti_t7_v2_5.no_not_affected_securities.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  -- Repeating: Not Affected Securities Grp Comp
  for not_affected_securities_grp_comp_index = 1, no_not_affected_securities do
    index, not_affected_securities_grp_comp = eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.dissect(buffer, index, packet, parent, not_affected_securities_grp_comp_index)
  end

  return index
end

-- Dissect: Quote Activation Response
eurex_derivatives_eti_t7_v2_5.quote_activation_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_quote_activation_response = eurex_derivatives_eti_t7_v2_5.quote_activation_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.quote_activation_response then
    local range = buffer(offset, size_of_quote_activation_response)
    local display = eurex_derivatives_eti_t7_v2_5.quote_activation_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_activation_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.quote_activation_response.fields(buffer, offset, packet, parent, size_of_quote_activation_response)

  return offset + size_of_quote_activation_response
end

-- Product Complex
eurex_derivatives_eti_t7_v2_5.product_complex = {}

-- Size Of: Product Complex
eurex_derivatives_eti_t7_v2_5.product_complex.size = 1

-- Display: Product Complex
eurex_derivatives_eti_t7_v2_5.product_complex.display = function(value)
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
  if value == 0xFF then
    return "Product Complex: No Value"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
eurex_derivatives_eti_t7_v2_5.product_complex.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.product_complex.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.product_complex.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Mass Action Type
eurex_derivatives_eti_t7_v2_5.mass_action_type = {}

-- Size Of: Mass Action Type
eurex_derivatives_eti_t7_v2_5.mass_action_type.size = 1

-- Display: Mass Action Type
eurex_derivatives_eti_t7_v2_5.mass_action_type.display = function(value)
  if value == 1 then
    return "Mass Action Type: Suspendquotes (1)"
  end
  if value == 2 then
    return "Mass Action Type: Releasequotes (2)"
  end
  if value == 0xFF then
    return "Mass Action Type: No Value"
  end

  return "Mass Action Type: Unknown("..value..")"
end

-- Dissect: Mass Action Type
eurex_derivatives_eti_t7_v2_5.mass_action_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.mass_action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.mass_action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.mass_action_type, range, value, display)

  return offset + length, value
end

-- Target Party Id Session Id
eurex_derivatives_eti_t7_v2_5.target_party_id_session_id = {}

-- Size Of: Target Party Id Session Id
eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.size = 4

-- Display: Target Party Id Session Id
eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Target Party Id Session Id: No Value"
  end

  return "Target Party Id Session Id: "..value
end

-- Dissect: Target Party Id Session Id
eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.target_party_id_session_id, range, value, display)

  return offset + length, value
end

-- Quote Activation Request
eurex_derivatives_eti_t7_v2_5.quote_activation_request = {}

-- Read runtime size of: Quote Activation Request
eurex_derivatives_eti_t7_v2_5.quote_activation_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Quote Activation Request
eurex_derivatives_eti_t7_v2_5.quote_activation_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Activation Request
eurex_derivatives_eti_t7_v2_5.quote_activation_request.fields = function(buffer, offset, packet, parent, size_of_quote_activation_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_action_type = eurex_derivatives_eti_t7_v2_5.mass_action_type.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Activation Request
eurex_derivatives_eti_t7_v2_5.quote_activation_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_quote_activation_request = eurex_derivatives_eti_t7_v2_5.quote_activation_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.quote_activation_request then
    local range = buffer(offset, size_of_quote_activation_request)
    local display = eurex_derivatives_eti_t7_v2_5.quote_activation_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_activation_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.quote_activation_request.fields(buffer, offset, packet, parent, size_of_quote_activation_request)

  return offset + size_of_quote_activation_request
end

-- Mass Action Reason
eurex_derivatives_eti_t7_v2_5.mass_action_reason = {}

-- Size Of: Mass Action Reason
eurex_derivatives_eti_t7_v2_5.mass_action_reason.size = 1

-- Display: Mass Action Reason
eurex_derivatives_eti_t7_v2_5.mass_action_reason.display = function(value)
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
  if value == 0xFF then
    return "Mass Action Reason: No Value"
  end

  return "Mass Action Reason: Unknown("..value..")"
end

-- Dissect: Mass Action Reason
eurex_derivatives_eti_t7_v2_5.mass_action_reason.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.mass_action_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.mass_action_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.mass_action_reason, range, value, display)

  return offset + length, value
end

-- Party Id Entering Firm
eurex_derivatives_eti_t7_v2_5.party_id_entering_firm = {}

-- Size Of: Party Id Entering Firm
eurex_derivatives_eti_t7_v2_5.party_id_entering_firm.size = 1

-- Display: Party Id Entering Firm
eurex_derivatives_eti_t7_v2_5.party_id_entering_firm.display = function(value)
  if value == 1 then
    return "Party Id Entering Firm: Participant (1)"
  end
  if value == 2 then
    return "Party Id Entering Firm: Market Supervision (2)"
  end
  if value == 0xFF then
    return "Party Id Entering Firm: No Value"
  end

  return "Party Id Entering Firm: Unknown("..value..")"
end

-- Dissect: Party Id Entering Firm
eurex_derivatives_eti_t7_v2_5.party_id_entering_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_entering_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_id_entering_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_entering_firm, range, value, display)

  return offset + length, value
end

-- Party Id Entering Trader
eurex_derivatives_eti_t7_v2_5.party_id_entering_trader = {}

-- Size Of: Party Id Entering Trader
eurex_derivatives_eti_t7_v2_5.party_id_entering_trader.size = 4

-- Display: Party Id Entering Trader
eurex_derivatives_eti_t7_v2_5.party_id_entering_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Entering Trader: No Value"
  end

  return "Party Id Entering Trader: "..value
end

-- Dissect: Party Id Entering Trader
eurex_derivatives_eti_t7_v2_5.party_id_entering_trader.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_entering_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_id_entering_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_entering_trader, range, value, display)

  return offset + length, value
end

-- Quote Activation Notification
eurex_derivatives_eti_t7_v2_5.quote_activation_notification = {}

-- Read runtime size of: Quote Activation Notification
eurex_derivatives_eti_t7_v2_5.quote_activation_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Quote Activation Notification
eurex_derivatives_eti_t7_v2_5.quote_activation_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Activation Notification
eurex_derivatives_eti_t7_v2_5.quote_activation_notification.fields = function(buffer, offset, packet, parent, size_of_quote_activation_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = eurex_derivatives_eti_t7_v2_5.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_entering_trader = eurex_derivatives_eti_t7_v2_5.party_id_entering_trader.dissect(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_not_affected_securities = eurex_derivatives_eti_t7_v2_5.no_not_affected_securities.dissect(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_entering_firm = eurex_derivatives_eti_t7_v2_5.party_id_entering_firm.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_action_type = eurex_derivatives_eti_t7_v2_5.mass_action_type.dissect(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, mass_action_reason = eurex_derivatives_eti_t7_v2_5.mass_action_reason.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Repeating: Not Affected Securities Grp Comp
  for not_affected_securities_grp_comp_index = 1, no_not_affected_securities do
    index, not_affected_securities_grp_comp = eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.dissect(buffer, index, packet, parent, not_affected_securities_grp_comp_index)
  end

  return index
end

-- Dissect: Quote Activation Notification
eurex_derivatives_eti_t7_v2_5.quote_activation_notification.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_quote_activation_notification = eurex_derivatives_eti_t7_v2_5.quote_activation_notification.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.quote_activation_notification then
    local range = buffer(offset, size_of_quote_activation_notification)
    local display = eurex_derivatives_eti_t7_v2_5.quote_activation_notification.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_activation_notification, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.quote_activation_notification.fields(buffer, offset, packet, parent, size_of_quote_activation_notification)

  return offset + size_of_quote_activation_notification
end

-- Party Detail Status
eurex_derivatives_eti_t7_v2_5.party_detail_status = {}

-- Size Of: Party Detail Status
eurex_derivatives_eti_t7_v2_5.party_detail_status.size = 1

-- Display: Party Detail Status
eurex_derivatives_eti_t7_v2_5.party_detail_status.display = function(value)
  if value == 0 then
    return "Party Detail Status: Active (0)"
  end
  if value == 1 then
    return "Party Detail Status: Suspend (1)"
  end
  if value == 0xFF then
    return "Party Detail Status: No Value"
  end

  return "Party Detail Status: Unknown("..value..")"
end

-- Dissect: Party Detail Status
eurex_derivatives_eti_t7_v2_5.party_detail_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_detail_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_detail_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_status, range, value, display)

  return offset + length, value
end

-- Party Entitlements Update Report
eurex_derivatives_eti_t7_v2_5.party_entitlements_update_report = {}

-- Read runtime size of: Party Entitlements Update Report
eurex_derivatives_eti_t7_v2_5.party_entitlements_update_report.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Party Entitlements Update Report
eurex_derivatives_eti_t7_v2_5.party_entitlements_update_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Entitlements Update Report
eurex_derivatives_eti_t7_v2_5.party_entitlements_update_report.fields = function(buffer, offset, packet, parent, size_of_party_entitlements_update_report)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eti_t7_v2_5.transact_time.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = eurex_derivatives_eti_t7_v2_5.trade_date.dissect(buffer, index, packet, parent)

  -- Party Detail Id Executing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_detail_id_executing_unit = eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_unit.dissect(buffer, index, packet, parent)

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, requesting_party_id_executing_system = eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_system.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = eurex_derivatives_eti_t7_v2_5.market_id.dissect(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String Enum with 2 values
  index, list_update_action = eurex_derivatives_eti_t7_v2_5.list_update_action.dissect(buffer, index, packet, parent)

  -- Requesting Party Entering Firm: 9 Byte Ascii String Nullable
  index, requesting_party_entering_firm = eurex_derivatives_eti_t7_v2_5.requesting_party_entering_firm.dissect(buffer, index, packet, parent)

  -- Requesting Party Clearing Firm: 9 Byte Ascii String Nullable
  index, requesting_party_clearing_firm = eurex_derivatives_eti_t7_v2_5.requesting_party_clearing_firm.dissect(buffer, index, packet, parent)

  -- Party Detail Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_detail_status = eurex_derivatives_eti_t7_v2_5.party_detail_status.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Entitlements Update Report
eurex_derivatives_eti_t7_v2_5.party_entitlements_update_report.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_party_entitlements_update_report = eurex_derivatives_eti_t7_v2_5.party_entitlements_update_report.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.party_entitlements_update_report then
    local range = buffer(offset, size_of_party_entitlements_update_report)
    local display = eurex_derivatives_eti_t7_v2_5.party_entitlements_update_report.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_entitlements_update_report, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.party_entitlements_update_report.fields(buffer, offset, packet, parent, size_of_party_entitlements_update_report)

  return offset + size_of_party_entitlements_update_report
end

-- Requesting Party Id Entering Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_id_entering_firm = {}

-- Size Of: Requesting Party Id Entering Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_id_entering_firm.size = 1

-- Display: Requesting Party Id Entering Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_id_entering_firm.display = function(value)
  if value == 1 then
    return "Requesting Party Id Entering Firm: Participant (1)"
  end
  if value == 2 then
    return "Requesting Party Id Entering Firm: Market Supervision (2)"
  end
  if value == 0xFF then
    return "Requesting Party Id Entering Firm: No Value"
  end

  return "Requesting Party Id Entering Firm: Unknown("..value..")"
end

-- Dissect: Requesting Party Id Entering Firm
eurex_derivatives_eti_t7_v2_5.requesting_party_id_entering_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.requesting_party_id_entering_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.requesting_party_id_entering_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.requesting_party_id_entering_firm, range, value, display)

  return offset + length, value
end

-- Party Action Type
eurex_derivatives_eti_t7_v2_5.party_action_type = {}

-- Size Of: Party Action Type
eurex_derivatives_eti_t7_v2_5.party_action_type.size = 1

-- Display: Party Action Type
eurex_derivatives_eti_t7_v2_5.party_action_type.display = function(value)
  if value == 1 then
    return "Party Action Type: Halt Trading (1)"
  end
  if value == 2 then
    return "Party Action Type: Reinstate (2)"
  end
  if value == 0xFF then
    return "Party Action Type: No Value"
  end

  return "Party Action Type: Unknown("..value..")"
end

-- Dissect: Party Action Type
eurex_derivatives_eti_t7_v2_5.party_action_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_action_type, range, value, display)

  return offset + length, value
end

-- Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.party_id_executing_trader = {}

-- Size Of: Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.party_id_executing_trader.size = 4

-- Display: Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.party_id_executing_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Executing Trader: No Value"
  end

  return "Party Id Executing Trader: "..value
end

-- Dissect: Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.party_id_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_id_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Party Id Executing Unit
eurex_derivatives_eti_t7_v2_5.party_id_executing_unit = {}

-- Size Of: Party Id Executing Unit
eurex_derivatives_eti_t7_v2_5.party_id_executing_unit.size = 4

-- Display: Party Id Executing Unit
eurex_derivatives_eti_t7_v2_5.party_id_executing_unit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Executing Unit: No Value"
  end

  return "Party Id Executing Unit: "..value
end

-- Dissect: Party Id Executing Unit
eurex_derivatives_eti_t7_v2_5.party_id_executing_unit.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_executing_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_id_executing_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Requesting Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_trader = {}

-- Size Of: Requesting Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_trader.size = 4

-- Display: Requesting Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Requesting Party Id Executing Trader: No Value"
  end

  return "Requesting Party Id Executing Trader: "..value
end

-- Dissect: Requesting Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.requesting_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Party Action Report
eurex_derivatives_eti_t7_v2_5.party_action_report = {}

-- Read runtime size of: Party Action Report
eurex_derivatives_eti_t7_v2_5.party_action_report.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Party Action Report
eurex_derivatives_eti_t7_v2_5.party_action_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Action Report
eurex_derivatives_eti_t7_v2_5.party_action_report.fields = function(buffer, offset, packet, parent, size_of_party_action_report)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eti_t7_v2_5.transact_time.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = eurex_derivatives_eti_t7_v2_5.trade_date.dissect(buffer, index, packet, parent)

  -- Requesting Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, requesting_party_id_executing_trader = eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_unit = eurex_derivatives_eti_t7_v2_5.party_id_executing_unit.dissect(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_trader = eurex_derivatives_eti_t7_v2_5.party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, requesting_party_id_executing_system = eurex_derivatives_eti_t7_v2_5.requesting_party_id_executing_system.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = eurex_derivatives_eti_t7_v2_5.market_id.dissect(buffer, index, packet, parent)

  -- Party Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_action_type = eurex_derivatives_eti_t7_v2_5.party_action_type.dissect(buffer, index, packet, parent)

  -- Requesting Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, requesting_party_id_entering_firm = eurex_derivatives_eti_t7_v2_5.requesting_party_id_entering_firm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Action Report
eurex_derivatives_eti_t7_v2_5.party_action_report.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_party_action_report = eurex_derivatives_eti_t7_v2_5.party_action_report.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.party_action_report then
    local range = buffer(offset, size_of_party_action_report)
    local display = eurex_derivatives_eti_t7_v2_5.party_action_report.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_action_report, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.party_action_report.fields(buffer, offset, packet, parent, size_of_party_action_report)

  return offset + size_of_party_action_report
end

-- No Fills Index
eurex_derivatives_eti_t7_v2_5.no_fills_index = {}

-- Size Of: No Fills Index
eurex_derivatives_eti_t7_v2_5.no_fills_index.size = 1

-- Display: No Fills Index
eurex_derivatives_eti_t7_v2_5.no_fills_index.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Fills Index: No Value"
  end

  return "No Fills Index: "..value
end

-- Dissect: No Fills Index
eurex_derivatives_eti_t7_v2_5.no_fills_index.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_fills_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_fills_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_fills_index, range, value, display)

  return offset + length, value
end

-- Instrmnt Leg Exec Grp Comp
eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp = {}

-- Size Of: Instrmnt Leg Exec Grp Comp
eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.leg_security_id.size + 
  eurex_derivatives_eti_t7_v2_5.leg_last_px.size + 
  eurex_derivatives_eti_t7_v2_5.leg_last_qty.size + 
  eurex_derivatives_eti_t7_v2_5.leg_exec_id.size + 
  eurex_derivatives_eti_t7_v2_5.leg_side.size + 
  eurex_derivatives_eti_t7_v2_5.no_fills_index.size + 
  eurex_derivatives_eti_t7_v2_5.pad_6.size;

-- Display: Instrmnt Leg Exec Grp Comp
eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrmnt Leg Exec Grp Comp
eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp.fields = function(buffer, offset, packet, parent, instrmnt_leg_exec_grp_comp_index)
  local index = offset

  -- Implicit Instrmnt Leg Exec Grp Comp Index
  if instrmnt_leg_exec_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.instrmnt_leg_exec_grp_comp_index, instrmnt_leg_exec_grp_comp_index)
    iteration:set_generated()
  end

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_security_id = eurex_derivatives_eti_t7_v2_5.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_last_px = eurex_derivatives_eti_t7_v2_5.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_last_qty = eurex_derivatives_eti_t7_v2_5.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Exec Id: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_exec_id = eurex_derivatives_eti_t7_v2_5.leg_exec_id.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = eurex_derivatives_eti_t7_v2_5.leg_side.dissect(buffer, index, packet, parent)

  -- No Fills Index: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_fills_index = eurex_derivatives_eti_t7_v2_5.no_fills_index.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmnt Leg Exec Grp Comp
eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp.dissect = function(buffer, offset, packet, parent, instrmnt_leg_exec_grp_comp_index)
  if show.instrmnt_leg_exec_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.instrmnt_leg_exec_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp.fields(buffer, offset, packet, parent, instrmnt_leg_exec_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp.fields(buffer, offset, packet, parent, instrmnt_leg_exec_grp_comp_index)
  end
end

-- Fill Liquidity Ind
eurex_derivatives_eti_t7_v2_5.fill_liquidity_ind = {}

-- Size Of: Fill Liquidity Ind
eurex_derivatives_eti_t7_v2_5.fill_liquidity_ind.size = 1

-- Display: Fill Liquidity Ind
eurex_derivatives_eti_t7_v2_5.fill_liquidity_ind.display = function(value)
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
  if value == 0xFF then
    return "Fill Liquidity Ind: No Value"
  end

  return "Fill Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Fill Liquidity Ind
eurex_derivatives_eti_t7_v2_5.fill_liquidity_ind.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.fill_liquidity_ind.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.fill_liquidity_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.fill_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Fill Exec Id
eurex_derivatives_eti_t7_v2_5.fill_exec_id = {}

-- Size Of: Fill Exec Id
eurex_derivatives_eti_t7_v2_5.fill_exec_id.size = 4

-- Display: Fill Exec Id
eurex_derivatives_eti_t7_v2_5.fill_exec_id.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Fill Exec Id: No Value"
  end

  return "Fill Exec Id: "..value
end

-- Dissect: Fill Exec Id
eurex_derivatives_eti_t7_v2_5.fill_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.fill_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.fill_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.fill_exec_id, range, value, display)

  return offset + length, value
end

-- Fill Match Id
eurex_derivatives_eti_t7_v2_5.fill_match_id = {}

-- Size Of: Fill Match Id
eurex_derivatives_eti_t7_v2_5.fill_match_id.size = 4

-- Display: Fill Match Id
eurex_derivatives_eti_t7_v2_5.fill_match_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Fill Match Id: No Value"
  end

  return "Fill Match Id: "..value
end

-- Dissect: Fill Match Id
eurex_derivatives_eti_t7_v2_5.fill_match_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.fill_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.fill_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.fill_match_id, range, value, display)

  return offset + length, value
end

-- Fill Qty
eurex_derivatives_eti_t7_v2_5.fill_qty = {}

-- Size Of: Fill Qty
eurex_derivatives_eti_t7_v2_5.fill_qty.size = 4

-- Display: Fill Qty
eurex_derivatives_eti_t7_v2_5.fill_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Fill Qty: No Value"
  end

  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
eurex_derivatives_eti_t7_v2_5.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.fill_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Fill Px
eurex_derivatives_eti_t7_v2_5.fill_px = {}

-- Size Of: Fill Px
eurex_derivatives_eti_t7_v2_5.fill_px.size = 8

-- Display: Fill Px
eurex_derivatives_eti_t7_v2_5.fill_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Fill Px: No Value"
  end

  return "Fill Px: "..value
end

-- Translate: Fill Px
eurex_derivatives_eti_t7_v2_5.fill_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Fill Px
eurex_derivatives_eti_t7_v2_5.fill_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.fill_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.fill_px.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.fill_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.fill_px, range, value, display)

  return offset + length, value
end

-- Fills Grp Comp
eurex_derivatives_eti_t7_v2_5.fills_grp_comp = {}

-- Size Of: Fills Grp Comp
eurex_derivatives_eti_t7_v2_5.fills_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.fill_px.size + 
  eurex_derivatives_eti_t7_v2_5.fill_qty.size + 
  eurex_derivatives_eti_t7_v2_5.fill_match_id.size + 
  eurex_derivatives_eti_t7_v2_5.fill_exec_id.size + 
  eurex_derivatives_eti_t7_v2_5.fill_liquidity_ind.size + 
  eurex_derivatives_eti_t7_v2_5.pad_3.size;

-- Display: Fills Grp Comp
eurex_derivatives_eti_t7_v2_5.fills_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fills Grp Comp
eurex_derivatives_eti_t7_v2_5.fills_grp_comp.fields = function(buffer, offset, packet, parent, fills_grp_comp_index)
  local index = offset

  -- Implicit Fills Grp Comp Index
  if fills_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.fills_grp_comp_index, fills_grp_comp_index)
    iteration:set_generated()
  end

  -- Fill Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, fill_px = eurex_derivatives_eti_t7_v2_5.fill_px.dissect(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, fill_qty = eurex_derivatives_eti_t7_v2_5.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, fill_match_id = eurex_derivatives_eti_t7_v2_5.fill_match_id.dissect(buffer, index, packet, parent)

  -- Fill Exec Id: 4 Byte Signed Fixed Width Integer Nullable
  index, fill_exec_id = eurex_derivatives_eti_t7_v2_5.fill_exec_id.dissect(buffer, index, packet, parent)

  -- Fill Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, fill_liquidity_ind = eurex_derivatives_eti_t7_v2_5.fill_liquidity_ind.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Grp Comp
eurex_derivatives_eti_t7_v2_5.fills_grp_comp.dissect = function(buffer, offset, packet, parent, fills_grp_comp_index)
  if show.fills_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.fills_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.fills_grp_comp.fields(buffer, offset, packet, parent, fills_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.fills_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.fills_grp_comp.fields(buffer, offset, packet, parent, fills_grp_comp_index)
  end
end

-- No Fills
eurex_derivatives_eti_t7_v2_5.no_fills = {}

-- Size Of: No Fills
eurex_derivatives_eti_t7_v2_5.no_fills.size = 1

-- Display: No Fills
eurex_derivatives_eti_t7_v2_5.no_fills.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Fills: No Value"
  end

  return "No Fills: "..value
end

-- Dissect: No Fills
eurex_derivatives_eti_t7_v2_5.no_fills.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_fills.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_fills.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_fills, range, value, display)

  return offset + length, value
end

-- Triggered
eurex_derivatives_eti_t7_v2_5.triggered = {}

-- Size Of: Triggered
eurex_derivatives_eti_t7_v2_5.triggered.size = 1

-- Display: Triggered
eurex_derivatives_eti_t7_v2_5.triggered.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.triggered.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.triggered.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.triggered.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.triggered, range, value, display)

  return offset + length, value
end

-- Exec Type
eurex_derivatives_eti_t7_v2_5.exec_type = {}

-- Size Of: Exec Type
eurex_derivatives_eti_t7_v2_5.exec_type.size = 1

-- Display: Exec Type
eurex_derivatives_eti_t7_v2_5.exec_type.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.exec_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_eti_t7_v2_5.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Ord Status
eurex_derivatives_eti_t7_v2_5.ord_status = {}

-- Size Of: Ord Status
eurex_derivatives_eti_t7_v2_5.ord_status.size = 1

-- Display: Ord Status
eurex_derivatives_eti_t7_v2_5.ord_status.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_eti_t7_v2_5.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
eurex_derivatives_eti_t7_v2_5.exec_restatement_reason = {}

-- Size Of: Exec Restatement Reason
eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.size = 2

-- Display: Exec Restatement Reason
eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.display = function(value)
  if value == 001 then
    return "Exec Restatement Reason: Order Book Restatement (001)"
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
  if value == 0xFFFF then
    return "Exec Restatement Reason: No Value"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Cxl Qty
eurex_derivatives_eti_t7_v2_5.cxl_qty = {}

-- Size Of: Cxl Qty
eurex_derivatives_eti_t7_v2_5.cxl_qty.size = 4

-- Display: Cxl Qty
eurex_derivatives_eti_t7_v2_5.cxl_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Cxl Qty: No Value"
  end

  return "Cxl Qty: "..value
end

-- Dissect: Cxl Qty
eurex_derivatives_eti_t7_v2_5.cxl_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.cxl_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.cxl_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.cxl_qty, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Time Priority
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_priority = {}

-- Size Of: Trd Reg Ts Time Priority
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_priority.size = 8

-- Display: Trd Reg Ts Time Priority
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_priority.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Time Priority: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Time Priority: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time Priority
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_priority.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trd_reg_ts_time_priority, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Entry Time
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_entry_time = {}

-- Size Of: Trd Reg Ts Entry Time
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_entry_time.size = 8

-- Display: Trd Reg Ts Entry Time
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_entry_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Entry Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Entry Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Entry Time
eurex_derivatives_eti_t7_v2_5.trd_reg_ts_entry_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_entry_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_entry_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trd_reg_ts_entry_time, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id = {}

-- Size Of: Orig Cl Ord Id
eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Response Header Me Comp
eurex_derivatives_eti_t7_v2_5.response_header_me_comp = {}

-- Size Of: Response Header Me Comp
eurex_derivatives_eti_t7_v2_5.response_header_me_comp.size =
  eurex_derivatives_eti_t7_v2_5.request_time.size + 
  eurex_derivatives_eti_t7_v2_5.request_out.size + 
  eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_in.size + 
  eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.size + 
  eurex_derivatives_eti_t7_v2_5.response_in.size + 
  eurex_derivatives_eti_t7_v2_5.sending_time.size + 
  eurex_derivatives_eti_t7_v2_5.msg_seq_num.size + 
  eurex_derivatives_eti_t7_v2_5.partition_id.size + 
  eurex_derivatives_eti_t7_v2_5.appl_id.size + 
  eurex_derivatives_eti_t7_v2_5.appl_msg_id.size + 
  eurex_derivatives_eti_t7_v2_5.last_fragment.size;

-- Display: Response Header Me Comp
eurex_derivatives_eti_t7_v2_5.response_header_me_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Header Me Comp
eurex_derivatives_eti_t7_v2_5.response_header_me_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_eti_t7_v2_5.request_time.dissect(buffer, index, packet, parent)

  -- Request Out: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_out = eurex_derivatives_eti_t7_v2_5.request_out.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_in = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_out = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_out.dissect(buffer, index, packet, parent)

  -- Response In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, response_in = eurex_derivatives_eti_t7_v2_5.response_in.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_eti_t7_v2_5.sending_time.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = eurex_derivatives_eti_t7_v2_5.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_eti_t7_v2_5.partition_id.dissect(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, appl_id = eurex_derivatives_eti_t7_v2_5.appl_id.dissect(buffer, index, packet, parent)

  -- Appl Msg Id: 16 Byte
  index, appl_msg_id = eurex_derivatives_eti_t7_v2_5.appl_msg_id.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_eti_t7_v2_5.last_fragment.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Me Comp
eurex_derivatives_eti_t7_v2_5.response_header_me_comp.dissect = function(buffer, offset, packet, parent)
  if show.response_header_me_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.response_header_me_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.response_header_me_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.response_header_me_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.response_header_me_comp.fields(buffer, offset, packet, parent)
  end
end

-- Order Exec Response
eurex_derivatives_eti_t7_v2_5.order_exec_response = {}

-- Read runtime size of: Order Exec Response
eurex_derivatives_eti_t7_v2_5.order_exec_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Order Exec Response
eurex_derivatives_eti_t7_v2_5.order_exec_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Exec Response
eurex_derivatives_eti_t7_v2_5.order_exec_response.fields = function(buffer, offset, packet, parent, size_of_order_exec_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = eurex_derivatives_eti_t7_v2_5.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_entry_time = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_entry_time.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = eurex_derivatives_eti_t7_v2_5.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = eurex_derivatives_eti_t7_v2_5.cxl_qty.dissect(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_leg_execs = eurex_derivatives_eti_t7_v2_5.no_leg_execs.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exec_restatement_reason = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_eti_t7_v2_5.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_eti_t7_v2_5.exec_type.dissect(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, triggered = eurex_derivatives_eti_t7_v2_5.triggered.dissect(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_fills = eurex_derivatives_eti_t7_v2_5.no_fills.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  -- Repeating: Fills Grp Comp
  for fills_grp_comp_index = 1, no_fills do
    index, fills_grp_comp = eurex_derivatives_eti_t7_v2_5.fills_grp_comp.dissect(buffer, index, packet, parent, fills_grp_comp_index)
  end

  -- Repeating: Instrmnt Leg Exec Grp Comp
  for instrmnt_leg_exec_grp_comp_index = 1, no_leg_execs do
    index, instrmnt_leg_exec_grp_comp = eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp.dissect(buffer, index, packet, parent, instrmnt_leg_exec_grp_comp_index)
  end

  return index
end

-- Dissect: Order Exec Response
eurex_derivatives_eti_t7_v2_5.order_exec_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_exec_response = eurex_derivatives_eti_t7_v2_5.order_exec_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_exec_response then
    local range = buffer(offset, size_of_order_exec_response)
    local display = eurex_derivatives_eti_t7_v2_5.order_exec_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.order_exec_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.order_exec_response.fields(buffer, offset, packet, parent, size_of_order_exec_response)

  return offset + size_of_order_exec_response
end

-- Pad 5
eurex_derivatives_eti_t7_v2_5.pad_5 = {}

-- Size Of: Pad 5
eurex_derivatives_eti_t7_v2_5.pad_5.size = 5

-- Display: Pad 5
eurex_derivatives_eti_t7_v2_5.pad_5.display = function(value)
  return "Pad 5: "..value
end

-- Dissect: Pad 5
eurex_derivatives_eti_t7_v2_5.pad_5.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.pad_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.pad_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.pad_5, range, value, display)

  return offset + length, value
end

-- Leg Position Effect
eurex_derivatives_eti_t7_v2_5.leg_position_effect = {}

-- Size Of: Leg Position Effect
eurex_derivatives_eti_t7_v2_5.leg_position_effect.size = 1

-- Display: Leg Position Effect
eurex_derivatives_eti_t7_v2_5.leg_position_effect.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Leg Position Effect: No Value"
  end

  if value == "C" then
    return "Leg Position Effect: Close (C)"
  end
  if value == "O" then
    return "Leg Position Effect: Open (O)"
  end

  return "Leg Position Effect: Unknown("..value..")"
end

-- Dissect: Leg Position Effect
eurex_derivatives_eti_t7_v2_5.leg_position_effect.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_position_effect.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_eti_t7_v2_5.leg_position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_position_effect, range, value, display)

  return offset + length, value
end

-- Leg Account
eurex_derivatives_eti_t7_v2_5.leg_account = {}

-- Size Of: Leg Account
eurex_derivatives_eti_t7_v2_5.leg_account.size = 2

-- Display: Leg Account
eurex_derivatives_eti_t7_v2_5.leg_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Account: No Value"
  end

  return "Leg Account: "..value
end

-- Dissect: Leg Account
eurex_derivatives_eti_t7_v2_5.leg_account.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.leg_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_account, range, value, display)

  return offset + length, value
end

-- Leg Ord Grp Comp
eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp = {}

-- Size Of: Leg Ord Grp Comp
eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.leg_account.size + 
  eurex_derivatives_eti_t7_v2_5.leg_position_effect.size + 
  eurex_derivatives_eti_t7_v2_5.pad_5.size;

-- Display: Leg Ord Grp Comp
eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Ord Grp Comp
eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp.fields = function(buffer, offset, packet, parent, leg_ord_grp_comp_index)
  local index = offset

  -- Implicit Leg Ord Grp Comp Index
  if leg_ord_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_ord_grp_comp_index, leg_ord_grp_comp_index)
    iteration:set_generated()
  end

  -- Leg Account: 2 Byte Ascii String Nullable
  index, leg_account = eurex_derivatives_eti_t7_v2_5.leg_account.dissect(buffer, index, packet, parent)

  -- Leg Position Effect: 1 Byte Ascii String Enum with 2 values
  index, leg_position_effect = eurex_derivatives_eti_t7_v2_5.leg_position_effect.dissect(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_derivatives_eti_t7_v2_5.pad_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Ord Grp Comp
eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp.dissect = function(buffer, offset, packet, parent, leg_ord_grp_comp_index)
  if show.leg_ord_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_ord_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp.fields(buffer, offset, packet, parent, leg_ord_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp.fields(buffer, offset, packet, parent, leg_ord_grp_comp_index)
  end
end

-- No Legs
eurex_derivatives_eti_t7_v2_5.no_legs = {}

-- Size Of: No Legs
eurex_derivatives_eti_t7_v2_5.no_legs.size = 1

-- Display: No Legs
eurex_derivatives_eti_t7_v2_5.no_legs.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Legs: No Value"
  end

  return "No Legs: "..value
end

-- Dissect: No Legs
eurex_derivatives_eti_t7_v2_5.no_legs.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_legs, range, value, display)

  return offset + length, value
end

-- Party Id Location Id
eurex_derivatives_eti_t7_v2_5.party_id_location_id = {}

-- Size Of: Party Id Location Id
eurex_derivatives_eti_t7_v2_5.party_id_location_id.size = 2

-- Display: Party Id Location Id
eurex_derivatives_eti_t7_v2_5.party_id_location_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Location Id: No Value"
  end

  return "Party Id Location Id: "..value
end

-- Dissect: Party Id Location Id
eurex_derivatives_eti_t7_v2_5.party_id_location_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_location_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.party_id_location_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_location_id, range, value, display)

  return offset + length, value
end

-- Party Id Beneficiary
eurex_derivatives_eti_t7_v2_5.party_id_beneficiary = {}

-- Size Of: Party Id Beneficiary
eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.size = 9

-- Display: Party Id Beneficiary
eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Beneficiary: No Value"
  end

  return "Party Id Beneficiary: "..value
end

-- Dissect: Party Id Beneficiary
eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_beneficiary, range, value, display)

  return offset + length, value
end

-- Party Id Order Origination Firm
eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm = {}

-- Size Of: Party Id Order Origination Firm
eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.size = 7

-- Display: Party Id Order Origination Firm
eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Order Origination Firm: No Value"
  end

  return "Party Id Order Origination Firm: "..value
end

-- Dissect: Party Id Order Origination Firm
eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_order_origination_firm, range, value, display)

  return offset + length, value
end

-- Party Id Take Up Trading Firm
eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm = {}

-- Size Of: Party Id Take Up Trading Firm
eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.size = 5

-- Display: Party Id Take Up Trading Firm
eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Take Up Trading Firm: No Value"
  end

  return "Party Id Take Up Trading Firm: "..value
end

-- Dissect: Party Id Take Up Trading Firm
eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_take_up_trading_firm, range, value, display)

  return offset + length, value
end

-- Party Id Position Account
eurex_derivatives_eti_t7_v2_5.party_id_position_account = {}

-- Size Of: Party Id Position Account
eurex_derivatives_eti_t7_v2_5.party_id_position_account.size = 20

-- Display: Party Id Position Account
eurex_derivatives_eti_t7_v2_5.party_id_position_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Position Account: No Value"
  end

  return "Party Id Position Account: "..value
end

-- Dissect: Party Id Position Account
eurex_derivatives_eti_t7_v2_5.party_id_position_account.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_position_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.party_id_position_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_position_account, range, value, display)

  return offset + length, value
end

-- Appl Seq Indicator
eurex_derivatives_eti_t7_v2_5.appl_seq_indicator = {}

-- Size Of: Appl Seq Indicator
eurex_derivatives_eti_t7_v2_5.appl_seq_indicator.size = 1

-- Display: Appl Seq Indicator
eurex_derivatives_eti_t7_v2_5.appl_seq_indicator.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.appl_seq_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_seq_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.appl_seq_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_seq_indicator, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
eurex_derivatives_eti_t7_v2_5.trading_session_sub_id = {}

-- Size Of: Trading Session Sub Id
eurex_derivatives_eti_t7_v2_5.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
eurex_derivatives_eti_t7_v2_5.trading_session_sub_id.display = function(value)
  if value == 4 then
    return "Trading Session Sub Id: Closingauction (4)"
  end
  if value == 0xFF then
    return "Trading Session Sub Id: No Value"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
eurex_derivatives_eti_t7_v2_5.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
eurex_derivatives_eti_t7_v2_5.exec_inst = {}

-- Size Of: Exec Inst
eurex_derivatives_eti_t7_v2_5.exec_inst.size = 1

-- Display: Exec Inst
eurex_derivatives_eti_t7_v2_5.exec_inst.display = function(value)
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
eurex_derivatives_eti_t7_v2_5.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.exec_inst.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Time In Force
eurex_derivatives_eti_t7_v2_5.time_in_force = {}

-- Size Of: Time In Force
eurex_derivatives_eti_t7_v2_5.time_in_force.size = 1

-- Display: Time In Force
eurex_derivatives_eti_t7_v2_5.time_in_force.display = function(value)
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
  if value == 0xFF then
    return "Time In Force: No Value"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
eurex_derivatives_eti_t7_v2_5.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Party Id Session Id
eurex_derivatives_eti_t7_v2_5.party_id_session_id = {}

-- Size Of: Party Id Session Id
eurex_derivatives_eti_t7_v2_5.party_id_session_id.size = 4

-- Display: Party Id Session Id
eurex_derivatives_eti_t7_v2_5.party_id_session_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Session Id: No Value"
  end

  return "Party Id Session Id: "..value
end

-- Dissect: Party Id Session Id
eurex_derivatives_eti_t7_v2_5.party_id_session_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_id_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_session_id, range, value, display)

  return offset + length, value
end

-- Expire Date
eurex_derivatives_eti_t7_v2_5.expire_date = {}

-- Size Of: Expire Date
eurex_derivatives_eti_t7_v2_5.expire_date.size = 4

-- Display: Expire Date
eurex_derivatives_eti_t7_v2_5.expire_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Expire Date: No Value"
  end

  return "Expire Date: "..value
end

-- Dissect: Expire Date
eurex_derivatives_eti_t7_v2_5.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.expire_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Stop Px
eurex_derivatives_eti_t7_v2_5.stop_px = {}

-- Size Of: Stop Px
eurex_derivatives_eti_t7_v2_5.stop_px.size = 8

-- Display: Stop Px
eurex_derivatives_eti_t7_v2_5.stop_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Translate: Stop Px
eurex_derivatives_eti_t7_v2_5.stop_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
eurex_derivatives_eti_t7_v2_5.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.stop_px.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.stop_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Order Exec Report Broadcast
eurex_derivatives_eti_t7_v2_5.order_exec_report_broadcast = {}

-- Read runtime size of: Order Exec Report Broadcast
eurex_derivatives_eti_t7_v2_5.order_exec_report_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Order Exec Report Broadcast
eurex_derivatives_eti_t7_v2_5.order_exec_report_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Exec Report Broadcast
eurex_derivatives_eti_t7_v2_5.order_exec_report_broadcast.fields = function(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_entry_time = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_entry_time.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eti_t7_v2_5.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, stop_px = eurex_derivatives_eti_t7_v2_5.stop_px.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = eurex_derivatives_eti_t7_v2_5.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = eurex_derivatives_eti_t7_v2_5.cxl_qty.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_eti_t7_v2_5.order_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = eurex_derivatives_eti_t7_v2_5.expire_date.dissect(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_unit = eurex_derivatives_eti_t7_v2_5.party_id_executing_unit.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_eti_t7_v2_5.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_trader = eurex_derivatives_eti_t7_v2_5.party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_entering_trader = eurex_derivatives_eti_t7_v2_5.party_id_entering_trader.dissect(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_leg_execs = eurex_derivatives_eti_t7_v2_5.no_leg_execs.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exec_restatement_reason = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_entering_firm = eurex_derivatives_eti_t7_v2_5.party_id_entering_firm.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_eti_t7_v2_5.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_eti_t7_v2_5.exec_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eti_t7_v2_5.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, ord_type = eurex_derivatives_eti_t7_v2_5.ord_type.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = eurex_derivatives_eti_t7_v2_5.trading_capacity.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = eurex_derivatives_eti_t7_v2_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_eti_t7_v2_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_sub_id = eurex_derivatives_eti_t7_v2_5.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = eurex_derivatives_eti_t7_v2_5.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String Nullable
  index, account = eurex_derivatives_eti_t7_v2_5.account.dissect(buffer, index, packet, parent)

  -- Party Id Position Account: 20 Byte Ascii String Nullable
  index, party_id_position_account = eurex_derivatives_eti_t7_v2_5.party_id_position_account.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = eurex_derivatives_eti_t7_v2_5.position_effect.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String Nullable
  index, party_id_location_id = eurex_derivatives_eti_t7_v2_5.party_id_location_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String Nullable
  index, compliance_text = eurex_derivatives_eti_t7_v2_5.compliance_text.dissect(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String Nullable
  index, free_text_1 = eurex_derivatives_eti_t7_v2_5.free_text_1.dissect(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String Nullable
  index, free_text_2 = eurex_derivatives_eti_t7_v2_5.free_text_2.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = eurex_derivatives_eti_t7_v2_5.free_text_3.dissect(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_fills = eurex_derivatives_eti_t7_v2_5.no_fills.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_legs = eurex_derivatives_eti_t7_v2_5.no_legs.dissect(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, triggered = eurex_derivatives_eti_t7_v2_5.triggered.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Ord Grp Comp
  for leg_ord_grp_comp_index = 1, no_legs do
    index, leg_ord_grp_comp = eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp.dissect(buffer, index, packet, parent, leg_ord_grp_comp_index)
  end

  -- Repeating: Fills Grp Comp
  for fills_grp_comp_index = 1, no_fills do
    index, fills_grp_comp = eurex_derivatives_eti_t7_v2_5.fills_grp_comp.dissect(buffer, index, packet, parent, fills_grp_comp_index)
  end

  -- Repeating: Instrmnt Leg Exec Grp Comp
  for instrmnt_leg_exec_grp_comp_index = 1, no_leg_execs do
    index, instrmnt_leg_exec_grp_comp = eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp.dissect(buffer, index, packet, parent, instrmnt_leg_exec_grp_comp_index)
  end

  return index
end

-- Dissect: Order Exec Report Broadcast
eurex_derivatives_eti_t7_v2_5.order_exec_report_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_exec_report_broadcast = eurex_derivatives_eti_t7_v2_5.order_exec_report_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_exec_report_broadcast then
    local range = buffer(offset, size_of_order_exec_report_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.order_exec_report_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.order_exec_report_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.order_exec_report_broadcast.fields(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)

  return offset + size_of_order_exec_report_broadcast
end

-- Order Exec Notification
eurex_derivatives_eti_t7_v2_5.order_exec_notification = {}

-- Read runtime size of: Order Exec Notification
eurex_derivatives_eti_t7_v2_5.order_exec_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Order Exec Notification
eurex_derivatives_eti_t7_v2_5.order_exec_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Exec Notification
eurex_derivatives_eti_t7_v2_5.order_exec_notification.fields = function(buffer, offset, packet, parent, size_of_order_exec_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = eurex_derivatives_eti_t7_v2_5.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = eurex_derivatives_eti_t7_v2_5.cxl_qty.dissect(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_leg_execs = eurex_derivatives_eti_t7_v2_5.no_leg_execs.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exec_restatement_reason = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_eti_t7_v2_5.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_eti_t7_v2_5.exec_type.dissect(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, triggered = eurex_derivatives_eti_t7_v2_5.triggered.dissect(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_fills = eurex_derivatives_eti_t7_v2_5.no_fills.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  -- Repeating: Fills Grp Comp
  for fills_grp_comp_index = 1, no_fills do
    index, fills_grp_comp = eurex_derivatives_eti_t7_v2_5.fills_grp_comp.dissect(buffer, index, packet, parent, fills_grp_comp_index)
  end

  -- Repeating: Instrmnt Leg Exec Grp Comp
  for instrmnt_leg_exec_grp_comp_index = 1, no_leg_execs do
    index, instrmnt_leg_exec_grp_comp = eurex_derivatives_eti_t7_v2_5.instrmnt_leg_exec_grp_comp.dissect(buffer, index, packet, parent, instrmnt_leg_exec_grp_comp_index)
  end

  return index
end

-- Dissect: Order Exec Notification
eurex_derivatives_eti_t7_v2_5.order_exec_notification.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_exec_notification = eurex_derivatives_eti_t7_v2_5.order_exec_notification.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_exec_notification then
    local range = buffer(offset, size_of_order_exec_notification)
    local display = eurex_derivatives_eti_t7_v2_5.order_exec_notification.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.order_exec_notification, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.order_exec_notification.fields(buffer, offset, packet, parent, size_of_order_exec_notification)

  return offset + size_of_order_exec_notification
end

-- Headline
eurex_derivatives_eti_t7_v2_5.headline = {}

-- Size Of: Headline
eurex_derivatives_eti_t7_v2_5.headline.size = 256

-- Display: Headline
eurex_derivatives_eti_t7_v2_5.headline.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Headline: No Value"
  end

  return "Headline: "..value
end

-- Dissect: Headline
eurex_derivatives_eti_t7_v2_5.headline.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.headline.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.headline, range, value, display)

  return offset + length, value
end

-- Orig Time
eurex_derivatives_eti_t7_v2_5.orig_time = {}

-- Size Of: Orig Time
eurex_derivatives_eti_t7_v2_5.orig_time.size = 8

-- Display: Orig Time
eurex_derivatives_eti_t7_v2_5.orig_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Orig Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Orig Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Orig Time
eurex_derivatives_eti_t7_v2_5.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.orig_time, range, value, display)

  return offset + length, value
end

-- News Broadcast
eurex_derivatives_eti_t7_v2_5.news_broadcast = {}

-- Read runtime size of: News Broadcast
eurex_derivatives_eti_t7_v2_5.news_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: News Broadcast
eurex_derivatives_eti_t7_v2_5.news_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Broadcast
eurex_derivatives_eti_t7_v2_5.news_broadcast.fields = function(buffer, offset, packet, parent, size_of_news_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_time = eurex_derivatives_eti_t7_v2_5.orig_time.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = eurex_derivatives_eti_t7_v2_5.var_text_len.dissect(buffer, index, packet, parent)

  -- Headline: 256 Byte Ascii String Nullable
  index, headline = eurex_derivatives_eti_t7_v2_5.headline.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = eurex_derivatives_eti_t7_v2_5.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = eurex_derivatives_eti_t7_v2_5.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: News Broadcast
eurex_derivatives_eti_t7_v2_5.news_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_news_broadcast = eurex_derivatives_eti_t7_v2_5.news_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.news_broadcast then
    local range = buffer(offset, size_of_news_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.news_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.news_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.news_broadcast.fields(buffer, offset, packet, parent, size_of_news_broadcast)

  return offset + size_of_news_broadcast
end

-- Price Validity Check Type
eurex_derivatives_eti_t7_v2_5.price_validity_check_type = {}

-- Size Of: Price Validity Check Type
eurex_derivatives_eti_t7_v2_5.price_validity_check_type.size = 1

-- Display: Price Validity Check Type
eurex_derivatives_eti_t7_v2_5.price_validity_check_type.display = function(value)
  if value == 0 then
    return "Price Validity Check Type: None (0)"
  end
  if value == 1 then
    return "Price Validity Check Type: Optional (1)"
  end
  if value == 2 then
    return "Price Validity Check Type: Mandatory (2)"
  end
  if value == 0xFF then
    return "Price Validity Check Type: No Value"
  end

  return "Price Validity Check Type: Unknown("..value..")"
end

-- Dissect: Price Validity Check Type
eurex_derivatives_eti_t7_v2_5.price_validity_check_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.price_validity_check_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.price_validity_check_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.price_validity_check_type, range, value, display)

  return offset + length, value
end

-- Enrichment Rule Id
eurex_derivatives_eti_t7_v2_5.enrichment_rule_id = {}

-- Size Of: Enrichment Rule Id
eurex_derivatives_eti_t7_v2_5.enrichment_rule_id.size = 2

-- Display: Enrichment Rule Id
eurex_derivatives_eti_t7_v2_5.enrichment_rule_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Enrichment Rule Id: No Value"
  end

  return "Enrichment Rule Id: "..value
end

-- Dissect: Enrichment Rule Id
eurex_derivatives_eti_t7_v2_5.enrichment_rule_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.enrichment_rule_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.enrichment_rule_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.enrichment_rule_id, range, value, display)

  return offset + length, value
end

-- Simple Security Id
eurex_derivatives_eti_t7_v2_5.simple_security_id = {}

-- Size Of: Simple Security Id
eurex_derivatives_eti_t7_v2_5.simple_security_id.size = 4

-- Display: Simple Security Id
eurex_derivatives_eti_t7_v2_5.simple_security_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Simple Security Id: No Value"
  end

  return "Simple Security Id: "..value
end

-- Dissect: Simple Security Id
eurex_derivatives_eti_t7_v2_5.simple_security_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.simple_security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.simple_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.simple_security_id, range, value, display)

  return offset + length, value
end

-- New Order Single Short Request
eurex_derivatives_eti_t7_v2_5.new_order_single_short_request = {}

-- Read runtime size of: New Order Single Short Request
eurex_derivatives_eti_t7_v2_5.new_order_single_short_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: New Order Single Short Request
eurex_derivatives_eti_t7_v2_5.new_order_single_short_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Short Request
eurex_derivatives_eti_t7_v2_5.new_order_single_short_request.fields = function(buffer, offset, packet, parent, size_of_new_order_single_short_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eti_t7_v2_5.price.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_eti_t7_v2_5.order_qty.dissect(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, simple_security_id = eurex_derivatives_eti_t7_v2_5.simple_security_id.dissect(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, enrichment_rule_id = eurex_derivatives_eti_t7_v2_5.enrichment_rule_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eti_t7_v2_5.side.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_validity_check_type = eurex_derivatives_eti_t7_v2_5.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = eurex_derivatives_eti_t7_v2_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_eti_t7_v2_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = eurex_derivatives_eti_t7_v2_5.trading_capacity.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Short Request
eurex_derivatives_eti_t7_v2_5.new_order_single_short_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_order_single_short_request = eurex_derivatives_eti_t7_v2_5.new_order_single_short_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_order_single_short_request then
    local range = buffer(offset, size_of_new_order_single_short_request)
    local display = eurex_derivatives_eti_t7_v2_5.new_order_single_short_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.new_order_single_short_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.new_order_single_short_request.fields(buffer, offset, packet, parent, size_of_new_order_single_short_request)

  return offset + size_of_new_order_single_short_request
end

-- New Order Single Request
eurex_derivatives_eti_t7_v2_5.new_order_single_request = {}

-- Read runtime size of: New Order Single Request
eurex_derivatives_eti_t7_v2_5.new_order_single_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: New Order Single Request
eurex_derivatives_eti_t7_v2_5.new_order_single_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Request
eurex_derivatives_eti_t7_v2_5.new_order_single_request.fields = function(buffer, offset, packet, parent, size_of_new_order_single_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eti_t7_v2_5.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, stop_px = eurex_derivatives_eti_t7_v2_5.stop_px.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_eti_t7_v2_5.order_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = eurex_derivatives_eti_t7_v2_5.expire_date.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, simple_security_id = eurex_derivatives_eti_t7_v2_5.simple_security_id.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = eurex_derivatives_eti_t7_v2_5.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eti_t7_v2_5.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, ord_type = eurex_derivatives_eti_t7_v2_5.ord_type.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_validity_check_type = eurex_derivatives_eti_t7_v2_5.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = eurex_derivatives_eti_t7_v2_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_eti_t7_v2_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_sub_id = eurex_derivatives_eti_t7_v2_5.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = eurex_derivatives_eti_t7_v2_5.trading_capacity.dissect(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String Nullable
  index, account = eurex_derivatives_eti_t7_v2_5.account.dissect(buffer, index, packet, parent)

  -- Party Id Position Account: 20 Byte Ascii String Nullable
  index, party_id_position_account = eurex_derivatives_eti_t7_v2_5.party_id_position_account.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = eurex_derivatives_eti_t7_v2_5.position_effect.dissect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String Nullable
  index, party_id_location_id = eurex_derivatives_eti_t7_v2_5.party_id_location_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String Nullable
  index, compliance_text = eurex_derivatives_eti_t7_v2_5.compliance_text.dissect(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String Nullable
  index, free_text_1 = eurex_derivatives_eti_t7_v2_5.free_text_1.dissect(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String Nullable
  index, free_text_2 = eurex_derivatives_eti_t7_v2_5.free_text_2.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = eurex_derivatives_eti_t7_v2_5.free_text_3.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Request
eurex_derivatives_eti_t7_v2_5.new_order_single_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_order_single_request = eurex_derivatives_eti_t7_v2_5.new_order_single_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_order_single_request then
    local range = buffer(offset, size_of_new_order_single_request)
    local display = eurex_derivatives_eti_t7_v2_5.new_order_single_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.new_order_single_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.new_order_single_request.fields(buffer, offset, packet, parent, size_of_new_order_single_request)

  return offset + size_of_new_order_single_request
end

-- New Order Response
eurex_derivatives_eti_t7_v2_5.new_order_response = {}

-- Read runtime size of: New Order Response
eurex_derivatives_eti_t7_v2_5.new_order_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: New Order Response
eurex_derivatives_eti_t7_v2_5.new_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response
eurex_derivatives_eti_t7_v2_5.new_order_response.fields = function(buffer, offset, packet, parent, size_of_new_order_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = eurex_derivatives_eti_t7_v2_5.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_entry_time = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_entry_time.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_eti_t7_v2_5.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_eti_t7_v2_5.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exec_restatement_reason = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response
eurex_derivatives_eti_t7_v2_5.new_order_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_order_response = eurex_derivatives_eti_t7_v2_5.new_order_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_order_response then
    local range = buffer(offset, size_of_new_order_response)
    local display = eurex_derivatives_eti_t7_v2_5.new_order_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.new_order_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.new_order_response.fields(buffer, offset, packet, parent, size_of_new_order_response)

  return offset + size_of_new_order_response
end

-- New Order Nr Response
eurex_derivatives_eti_t7_v2_5.new_order_nr_response = {}

-- Read runtime size of: New Order Nr Response
eurex_derivatives_eti_t7_v2_5.new_order_nr_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: New Order Nr Response
eurex_derivatives_eti_t7_v2_5.new_order_nr_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Nr Response
eurex_derivatives_eti_t7_v2_5.new_order_nr_response.fields = function(buffer, offset, packet, parent, size_of_new_order_nr_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_eti_t7_v2_5.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_eti_t7_v2_5.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exec_restatement_reason = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Nr Response
eurex_derivatives_eti_t7_v2_5.new_order_nr_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_order_nr_response = eurex_derivatives_eti_t7_v2_5.new_order_nr_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_order_nr_response then
    local range = buffer(offset, size_of_new_order_nr_response)
    local display = eurex_derivatives_eti_t7_v2_5.new_order_nr_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.new_order_nr_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.new_order_nr_response.fields(buffer, offset, packet, parent, size_of_new_order_nr_response)

  return offset + size_of_new_order_nr_response
end

-- New Order Complex Request
eurex_derivatives_eti_t7_v2_5.new_order_complex_request = {}

-- Read runtime size of: New Order Complex Request
eurex_derivatives_eti_t7_v2_5.new_order_complex_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: New Order Complex Request
eurex_derivatives_eti_t7_v2_5.new_order_complex_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Complex Request
eurex_derivatives_eti_t7_v2_5.new_order_complex_request.fields = function(buffer, offset, packet, parent, size_of_new_order_complex_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eti_t7_v2_5.price.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_eti_t7_v2_5.order_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = eurex_derivatives_eti_t7_v2_5.expire_date.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = eurex_derivatives_eti_t7_v2_5.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eti_t7_v2_5.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, ord_type = eurex_derivatives_eti_t7_v2_5.ord_type.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_validity_check_type = eurex_derivatives_eti_t7_v2_5.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_eti_t7_v2_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = eurex_derivatives_eti_t7_v2_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = eurex_derivatives_eti_t7_v2_5.trading_capacity.dissect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String Nullable
  index, party_id_location_id = eurex_derivatives_eti_t7_v2_5.party_id_location_id.dissect(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String Nullable
  index, compliance_text = eurex_derivatives_eti_t7_v2_5.compliance_text.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Party Id Position Account: 20 Byte Ascii String Nullable
  index, party_id_position_account = eurex_derivatives_eti_t7_v2_5.party_id_position_account.dissect(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String Nullable
  index, free_text_1 = eurex_derivatives_eti_t7_v2_5.free_text_1.dissect(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String Nullable
  index, free_text_2 = eurex_derivatives_eti_t7_v2_5.free_text_2.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = eurex_derivatives_eti_t7_v2_5.free_text_3.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_legs = eurex_derivatives_eti_t7_v2_5.no_legs.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Ord Grp Comp
  for leg_ord_grp_comp_index = 1, no_legs do
    index, leg_ord_grp_comp = eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp.dissect(buffer, index, packet, parent, leg_ord_grp_comp_index)
  end

  return index
end

-- Dissect: New Order Complex Request
eurex_derivatives_eti_t7_v2_5.new_order_complex_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_new_order_complex_request = eurex_derivatives_eti_t7_v2_5.new_order_complex_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.new_order_complex_request then
    local range = buffer(offset, size_of_new_order_complex_request)
    local display = eurex_derivatives_eti_t7_v2_5.new_order_complex_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.new_order_complex_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.new_order_complex_request.fields(buffer, offset, packet, parent, size_of_new_order_complex_request)

  return offset + size_of_new_order_complex_request
end

-- Modify Order Single Short Request
eurex_derivatives_eti_t7_v2_5.modify_order_single_short_request = {}

-- Read runtime size of: Modify Order Single Short Request
eurex_derivatives_eti_t7_v2_5.modify_order_single_short_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Modify Order Single Short Request
eurex_derivatives_eti_t7_v2_5.modify_order_single_short_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Single Short Request
eurex_derivatives_eti_t7_v2_5.modify_order_single_short_request.fields = function(buffer, offset, packet, parent, size_of_modify_order_single_short_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eti_t7_v2_5.price.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_eti_t7_v2_5.order_qty.dissect(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, simple_security_id = eurex_derivatives_eti_t7_v2_5.simple_security_id.dissect(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, enrichment_rule_id = eurex_derivatives_eti_t7_v2_5.enrichment_rule_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eti_t7_v2_5.side.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_validity_check_type = eurex_derivatives_eti_t7_v2_5.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = eurex_derivatives_eti_t7_v2_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_eti_t7_v2_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = eurex_derivatives_eti_t7_v2_5.trading_capacity.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Single Short Request
eurex_derivatives_eti_t7_v2_5.modify_order_single_short_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_modify_order_single_short_request = eurex_derivatives_eti_t7_v2_5.modify_order_single_short_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.modify_order_single_short_request then
    local range = buffer(offset, size_of_modify_order_single_short_request)
    local display = eurex_derivatives_eti_t7_v2_5.modify_order_single_short_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.modify_order_single_short_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.modify_order_single_short_request.fields(buffer, offset, packet, parent, size_of_modify_order_single_short_request)

  return offset + size_of_modify_order_single_short_request
end

-- Ownership Indicator
eurex_derivatives_eti_t7_v2_5.ownership_indicator = {}

-- Size Of: Ownership Indicator
eurex_derivatives_eti_t7_v2_5.ownership_indicator.size = 1

-- Display: Ownership Indicator
eurex_derivatives_eti_t7_v2_5.ownership_indicator.display = function(value)
  if value == 0 then
    return "Ownership Indicator: No Changeof Ownership (0)"
  end
  if value == 1 then
    return "Ownership Indicator: Changeto Executing Trader (1)"
  end
  if value == 0xFF then
    return "Ownership Indicator: No Value"
  end

  return "Ownership Indicator: Unknown("..value..")"
end

-- Dissect: Ownership Indicator
eurex_derivatives_eti_t7_v2_5.ownership_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.ownership_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.ownership_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.ownership_indicator, range, value, display)

  return offset + length, value
end

-- Modify Order Single Request
eurex_derivatives_eti_t7_v2_5.modify_order_single_request = {}

-- Read runtime size of: Modify Order Single Request
eurex_derivatives_eti_t7_v2_5.modify_order_single_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Modify Order Single Request
eurex_derivatives_eti_t7_v2_5.modify_order_single_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Single Request
eurex_derivatives_eti_t7_v2_5.modify_order_single_request.fields = function(buffer, offset, packet, parent, size_of_modify_order_single_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eti_t7_v2_5.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, stop_px = eurex_derivatives_eti_t7_v2_5.stop_px.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_eti_t7_v2_5.order_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = eurex_derivatives_eti_t7_v2_5.expire_date.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, simple_security_id = eurex_derivatives_eti_t7_v2_5.simple_security_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = eurex_derivatives_eti_t7_v2_5.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eti_t7_v2_5.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, ord_type = eurex_derivatives_eti_t7_v2_5.ord_type.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_validity_check_type = eurex_derivatives_eti_t7_v2_5.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = eurex_derivatives_eti_t7_v2_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_eti_t7_v2_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_sub_id = eurex_derivatives_eti_t7_v2_5.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = eurex_derivatives_eti_t7_v2_5.trading_capacity.dissect(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String Nullable
  index, account = eurex_derivatives_eti_t7_v2_5.account.dissect(buffer, index, packet, parent)

  -- Party Id Position Account: 20 Byte Ascii String Nullable
  index, party_id_position_account = eurex_derivatives_eti_t7_v2_5.party_id_position_account.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = eurex_derivatives_eti_t7_v2_5.position_effect.dissect(buffer, index, packet, parent)

  -- Ownership Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ownership_indicator = eurex_derivatives_eti_t7_v2_5.ownership_indicator.dissect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String Nullable
  index, party_id_location_id = eurex_derivatives_eti_t7_v2_5.party_id_location_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String Nullable
  index, compliance_text = eurex_derivatives_eti_t7_v2_5.compliance_text.dissect(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String Nullable
  index, free_text_1 = eurex_derivatives_eti_t7_v2_5.free_text_1.dissect(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String Nullable
  index, free_text_2 = eurex_derivatives_eti_t7_v2_5.free_text_2.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = eurex_derivatives_eti_t7_v2_5.free_text_3.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eti_t7_v2_5.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Single Request
eurex_derivatives_eti_t7_v2_5.modify_order_single_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_modify_order_single_request = eurex_derivatives_eti_t7_v2_5.modify_order_single_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.modify_order_single_request then
    local range = buffer(offset, size_of_modify_order_single_request)
    local display = eurex_derivatives_eti_t7_v2_5.modify_order_single_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.modify_order_single_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.modify_order_single_request.fields(buffer, offset, packet, parent, size_of_modify_order_single_request)

  return offset + size_of_modify_order_single_request
end

-- Modify Order Response
eurex_derivatives_eti_t7_v2_5.modify_order_response = {}

-- Read runtime size of: Modify Order Response
eurex_derivatives_eti_t7_v2_5.modify_order_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Modify Order Response
eurex_derivatives_eti_t7_v2_5.modify_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Response
eurex_derivatives_eti_t7_v2_5.modify_order_response.fields = function(buffer, offset, packet, parent, size_of_modify_order_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = eurex_derivatives_eti_t7_v2_5.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = eurex_derivatives_eti_t7_v2_5.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = eurex_derivatives_eti_t7_v2_5.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = eurex_derivatives_eti_t7_v2_5.cxl_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_eti_t7_v2_5.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_eti_t7_v2_5.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exec_restatement_reason = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Response
eurex_derivatives_eti_t7_v2_5.modify_order_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_modify_order_response = eurex_derivatives_eti_t7_v2_5.modify_order_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.modify_order_response then
    local range = buffer(offset, size_of_modify_order_response)
    local display = eurex_derivatives_eti_t7_v2_5.modify_order_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.modify_order_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.modify_order_response.fields(buffer, offset, packet, parent, size_of_modify_order_response)

  return offset + size_of_modify_order_response
end

-- Modify Order Nr Response
eurex_derivatives_eti_t7_v2_5.modify_order_nr_response = {}

-- Read runtime size of: Modify Order Nr Response
eurex_derivatives_eti_t7_v2_5.modify_order_nr_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Modify Order Nr Response
eurex_derivatives_eti_t7_v2_5.modify_order_nr_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Nr Response
eurex_derivatives_eti_t7_v2_5.modify_order_nr_response.fields = function(buffer, offset, packet, parent, size_of_modify_order_nr_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = eurex_derivatives_eti_t7_v2_5.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = eurex_derivatives_eti_t7_v2_5.cxl_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_eti_t7_v2_5.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_eti_t7_v2_5.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exec_restatement_reason = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Nr Response
eurex_derivatives_eti_t7_v2_5.modify_order_nr_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_modify_order_nr_response = eurex_derivatives_eti_t7_v2_5.modify_order_nr_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.modify_order_nr_response then
    local range = buffer(offset, size_of_modify_order_nr_response)
    local display = eurex_derivatives_eti_t7_v2_5.modify_order_nr_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.modify_order_nr_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.modify_order_nr_response.fields(buffer, offset, packet, parent, size_of_modify_order_nr_response)

  return offset + size_of_modify_order_nr_response
end

-- Modify Order Complex Request
eurex_derivatives_eti_t7_v2_5.modify_order_complex_request = {}

-- Read runtime size of: Modify Order Complex Request
eurex_derivatives_eti_t7_v2_5.modify_order_complex_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Modify Order Complex Request
eurex_derivatives_eti_t7_v2_5.modify_order_complex_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Complex Request
eurex_derivatives_eti_t7_v2_5.modify_order_complex_request.fields = function(buffer, offset, packet, parent, size_of_modify_order_complex_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eti_t7_v2_5.price.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_eti_t7_v2_5.order_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = eurex_derivatives_eti_t7_v2_5.expire_date.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = eurex_derivatives_eti_t7_v2_5.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eti_t7_v2_5.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, ord_type = eurex_derivatives_eti_t7_v2_5.ord_type.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_validity_check_type = eurex_derivatives_eti_t7_v2_5.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_eti_t7_v2_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = eurex_derivatives_eti_t7_v2_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = eurex_derivatives_eti_t7_v2_5.trading_capacity.dissect(buffer, index, packet, parent)

  -- Ownership Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ownership_indicator = eurex_derivatives_eti_t7_v2_5.ownership_indicator.dissect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String Nullable
  index, party_id_location_id = eurex_derivatives_eti_t7_v2_5.party_id_location_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = eurex_derivatives_eti_t7_v2_5.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String Nullable
  index, compliance_text = eurex_derivatives_eti_t7_v2_5.compliance_text.dissect(buffer, index, packet, parent)

  -- Party Id Position Account: 20 Byte Ascii String Nullable
  index, party_id_position_account = eurex_derivatives_eti_t7_v2_5.party_id_position_account.dissect(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String Nullable
  index, free_text_1 = eurex_derivatives_eti_t7_v2_5.free_text_1.dissect(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String Nullable
  index, free_text_2 = eurex_derivatives_eti_t7_v2_5.free_text_2.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = eurex_derivatives_eti_t7_v2_5.free_text_3.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_legs = eurex_derivatives_eti_t7_v2_5.no_legs.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Ord Grp Comp
  for leg_ord_grp_comp_index = 1, no_legs do
    index, leg_ord_grp_comp = eurex_derivatives_eti_t7_v2_5.leg_ord_grp_comp.dissect(buffer, index, packet, parent, leg_ord_grp_comp_index)
  end

  return index
end

-- Dissect: Modify Order Complex Request
eurex_derivatives_eti_t7_v2_5.modify_order_complex_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_modify_order_complex_request = eurex_derivatives_eti_t7_v2_5.modify_order_complex_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.modify_order_complex_request then
    local range = buffer(offset, size_of_modify_order_complex_request)
    local display = eurex_derivatives_eti_t7_v2_5.modify_order_complex_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.modify_order_complex_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.modify_order_complex_request.fields(buffer, offset, packet, parent, size_of_modify_order_complex_request)

  return offset + size_of_modify_order_complex_request
end

-- Quote Entry Status
eurex_derivatives_eti_t7_v2_5.quote_entry_status = {}

-- Size Of: Quote Entry Status
eurex_derivatives_eti_t7_v2_5.quote_entry_status.size = 1

-- Display: Quote Entry Status
eurex_derivatives_eti_t7_v2_5.quote_entry_status.display = function(value)
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
  if value == 0xFF then
    return "Quote Entry Status: No Value"
  end

  return "Quote Entry Status: Unknown("..value..")"
end

-- Dissect: Quote Entry Status
eurex_derivatives_eti_t7_v2_5.quote_entry_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_entry_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.quote_entry_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_status, range, value, display)

  return offset + length, value
end

-- Quote Entry Reject Reason
eurex_derivatives_eti_t7_v2_5.quote_entry_reject_reason = {}

-- Size Of: Quote Entry Reject Reason
eurex_derivatives_eti_t7_v2_5.quote_entry_reject_reason.size = 4

-- Display: Quote Entry Reject Reason
eurex_derivatives_eti_t7_v2_5.quote_entry_reject_reason.display = function(value)
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
  if value == 131 then
    return "Quote Entry Reject Reason: Cant Proc In Curr Instr State (131)"
  end
  if value == 0xFFFFFFFF then
    return "Quote Entry Reject Reason: No Value"
  end

  return "Quote Entry Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Entry Reject Reason
eurex_derivatives_eti_t7_v2_5.quote_entry_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_entry_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.quote_entry_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_reject_reason, range, value, display)

  return offset + length, value
end

-- Offer Cxl Size
eurex_derivatives_eti_t7_v2_5.offer_cxl_size = {}

-- Size Of: Offer Cxl Size
eurex_derivatives_eti_t7_v2_5.offer_cxl_size.size = 4

-- Display: Offer Cxl Size
eurex_derivatives_eti_t7_v2_5.offer_cxl_size.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Offer Cxl Size: No Value"
  end

  return "Offer Cxl Size: "..value
end

-- Dissect: Offer Cxl Size
eurex_derivatives_eti_t7_v2_5.offer_cxl_size.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.offer_cxl_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.offer_cxl_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.offer_cxl_size, range, value, display)

  return offset + length, value
end

-- Bid Cxl Size
eurex_derivatives_eti_t7_v2_5.bid_cxl_size = {}

-- Size Of: Bid Cxl Size
eurex_derivatives_eti_t7_v2_5.bid_cxl_size.size = 4

-- Display: Bid Cxl Size
eurex_derivatives_eti_t7_v2_5.bid_cxl_size.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Bid Cxl Size: No Value"
  end

  return "Bid Cxl Size: "..value
end

-- Dissect: Bid Cxl Size
eurex_derivatives_eti_t7_v2_5.bid_cxl_size.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.bid_cxl_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.bid_cxl_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.bid_cxl_size, range, value, display)

  return offset + length, value
end

-- Quote Entry Ack Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_entry_ack_grp_comp = {}

-- Size Of: Quote Entry Ack Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_entry_ack_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.security_id.size + 
  eurex_derivatives_eti_t7_v2_5.bid_cxl_size.size + 
  eurex_derivatives_eti_t7_v2_5.offer_cxl_size.size + 
  eurex_derivatives_eti_t7_v2_5.quote_entry_reject_reason.size + 
  eurex_derivatives_eti_t7_v2_5.quote_entry_status.size + 
  eurex_derivatives_eti_t7_v2_5.pad_3.size;

-- Display: Quote Entry Ack Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_entry_ack_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Entry Ack Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_entry_ack_grp_comp.fields = function(buffer, offset, packet, parent, quote_entry_ack_grp_comp_index)
  local index = offset

  -- Implicit Quote Entry Ack Grp Comp Index
  if quote_entry_ack_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_ack_grp_comp_index, quote_entry_ack_grp_comp_index)
    iteration:set_generated()
  end

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Bid Cxl Size: 4 Byte Signed Fixed Width Integer Nullable
  index, bid_cxl_size = eurex_derivatives_eti_t7_v2_5.bid_cxl_size.dissect(buffer, index, packet, parent)

  -- Offer Cxl Size: 4 Byte Signed Fixed Width Integer Nullable
  index, offer_cxl_size = eurex_derivatives_eti_t7_v2_5.offer_cxl_size.dissect(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, quote_entry_reject_reason = eurex_derivatives_eti_t7_v2_5.quote_entry_reject_reason.dissect(buffer, index, packet, parent)

  -- Quote Entry Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, quote_entry_status = eurex_derivatives_eti_t7_v2_5.quote_entry_status.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entry Ack Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_entry_ack_grp_comp.dissect = function(buffer, offset, packet, parent, quote_entry_ack_grp_comp_index)
  if show.quote_entry_ack_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_ack_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.quote_entry_ack_grp_comp.fields(buffer, offset, packet, parent, quote_entry_ack_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.quote_entry_ack_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.quote_entry_ack_grp_comp.fields(buffer, offset, packet, parent, quote_entry_ack_grp_comp_index)
  end
end

-- No Quote Entries
eurex_derivatives_eti_t7_v2_5.no_quote_entries = {}

-- Size Of: No Quote Entries
eurex_derivatives_eti_t7_v2_5.no_quote_entries.size = 1

-- Display: No Quote Entries
eurex_derivatives_eti_t7_v2_5.no_quote_entries.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Quote Entries: No Value"
  end

  return "No Quote Entries: "..value
end

-- Dissect: No Quote Entries
eurex_derivatives_eti_t7_v2_5.no_quote_entries.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_quote_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_quote_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_quote_entries, range, value, display)

  return offset + length, value
end

-- Quote Response Id
eurex_derivatives_eti_t7_v2_5.quote_response_id = {}

-- Size Of: Quote Response Id
eurex_derivatives_eti_t7_v2_5.quote_response_id.size = 8

-- Display: Quote Response Id
eurex_derivatives_eti_t7_v2_5.quote_response_id.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Response Id: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Quote Response Id: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Quote Response Id
eurex_derivatives_eti_t7_v2_5.quote_response_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_response_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.quote_response_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_response_id, range, value, display)

  return offset + length, value
end

-- Quote Id
eurex_derivatives_eti_t7_v2_5.quote_id = {}

-- Size Of: Quote Id
eurex_derivatives_eti_t7_v2_5.quote_id.size = 8

-- Display: Quote Id
eurex_derivatives_eti_t7_v2_5.quote_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Id: No Value"
  end

  return "Quote Id: "..value
end

-- Dissect: Quote Id
eurex_derivatives_eti_t7_v2_5.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Mass Quote Response
eurex_derivatives_eti_t7_v2_5.mass_quote_response = {}

-- Read runtime size of: Mass Quote Response
eurex_derivatives_eti_t7_v2_5.mass_quote_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Mass Quote Response
eurex_derivatives_eti_t7_v2_5.mass_quote_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response
eurex_derivatives_eti_t7_v2_5.mass_quote_response.fields = function(buffer, offset, packet, parent, size_of_mass_quote_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_id = eurex_derivatives_eti_t7_v2_5.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Response Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_response_id = eurex_derivatives_eti_t7_v2_5.quote_response_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- No Quote Entries: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_quote_entries = eurex_derivatives_eti_t7_v2_5.no_quote_entries.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Entry Ack Grp Comp
  for quote_entry_ack_grp_comp_index = 1, no_quote_entries do
    index, quote_entry_ack_grp_comp = eurex_derivatives_eti_t7_v2_5.quote_entry_ack_grp_comp.dissect(buffer, index, packet, parent, quote_entry_ack_grp_comp_index)
  end

  return index
end

-- Dissect: Mass Quote Response
eurex_derivatives_eti_t7_v2_5.mass_quote_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mass_quote_response = eurex_derivatives_eti_t7_v2_5.mass_quote_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mass_quote_response then
    local range = buffer(offset, size_of_mass_quote_response)
    local display = eurex_derivatives_eti_t7_v2_5.mass_quote_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.mass_quote_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.mass_quote_response.fields(buffer, offset, packet, parent, size_of_mass_quote_response)

  return offset + size_of_mass_quote_response
end

-- Offer Size
eurex_derivatives_eti_t7_v2_5.offer_size = {}

-- Size Of: Offer Size
eurex_derivatives_eti_t7_v2_5.offer_size.size = 4

-- Display: Offer Size
eurex_derivatives_eti_t7_v2_5.offer_size.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
eurex_derivatives_eti_t7_v2_5.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.offer_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Bid Size
eurex_derivatives_eti_t7_v2_5.bid_size = {}

-- Size Of: Bid Size
eurex_derivatives_eti_t7_v2_5.bid_size.size = 4

-- Display: Bid Size
eurex_derivatives_eti_t7_v2_5.bid_size.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
eurex_derivatives_eti_t7_v2_5.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Offer Px
eurex_derivatives_eti_t7_v2_5.offer_px = {}

-- Size Of: Offer Px
eurex_derivatives_eti_t7_v2_5.offer_px.size = 8

-- Display: Offer Px
eurex_derivatives_eti_t7_v2_5.offer_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Translate: Offer Px
eurex_derivatives_eti_t7_v2_5.offer_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Offer Px
eurex_derivatives_eti_t7_v2_5.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.offer_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.offer_px.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.offer_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Bid Px
eurex_derivatives_eti_t7_v2_5.bid_px = {}

-- Size Of: Bid Px
eurex_derivatives_eti_t7_v2_5.bid_px.size = 8

-- Display: Bid Px
eurex_derivatives_eti_t7_v2_5.bid_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Translate: Bid Px
eurex_derivatives_eti_t7_v2_5.bid_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Bid Px
eurex_derivatives_eti_t7_v2_5.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.bid_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.bid_px.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.bid_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Quote Entry Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_entry_grp_comp = {}

-- Size Of: Quote Entry Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_entry_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.security_id.size + 
  eurex_derivatives_eti_t7_v2_5.bid_px.size + 
  eurex_derivatives_eti_t7_v2_5.offer_px.size + 
  eurex_derivatives_eti_t7_v2_5.bid_size.size + 
  eurex_derivatives_eti_t7_v2_5.offer_size.size;

-- Display: Quote Entry Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_entry_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Entry Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_entry_grp_comp.fields = function(buffer, offset, packet, parent, quote_entry_grp_comp_index)
  local index = offset

  -- Implicit Quote Entry Grp Comp Index
  if quote_entry_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_grp_comp_index, quote_entry_grp_comp_index)
    iteration:set_generated()
  end

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_px = eurex_derivatives_eti_t7_v2_5.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_px = eurex_derivatives_eti_t7_v2_5.offer_px.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Signed Fixed Width Integer Nullable
  index, bid_size = eurex_derivatives_eti_t7_v2_5.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Signed Fixed Width Integer Nullable
  index, offer_size = eurex_derivatives_eti_t7_v2_5.offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entry Grp Comp
eurex_derivatives_eti_t7_v2_5.quote_entry_grp_comp.dissect = function(buffer, offset, packet, parent, quote_entry_grp_comp_index)
  if show.quote_entry_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_entry_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.quote_entry_grp_comp.fields(buffer, offset, packet, parent, quote_entry_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.quote_entry_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.quote_entry_grp_comp.fields(buffer, offset, packet, parent, quote_entry_grp_comp_index)
  end
end

-- Quote Size Type
eurex_derivatives_eti_t7_v2_5.quote_size_type = {}

-- Size Of: Quote Size Type
eurex_derivatives_eti_t7_v2_5.quote_size_type.size = 1

-- Display: Quote Size Type
eurex_derivatives_eti_t7_v2_5.quote_size_type.display = function(value)
  if value == 1 then
    return "Quote Size Type: Total Size (1)"
  end
  if value == 2 then
    return "Quote Size Type: Open Size (2)"
  end
  if value == 0xFF then
    return "Quote Size Type: No Value"
  end

  return "Quote Size Type: Unknown("..value..")"
end

-- Dissect: Quote Size Type
eurex_derivatives_eti_t7_v2_5.quote_size_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.quote_size_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.quote_size_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.quote_size_type, range, value, display)

  return offset + length, value
end

-- Mass Quote Request
eurex_derivatives_eti_t7_v2_5.mass_quote_request = {}

-- Read runtime size of: Mass Quote Request
eurex_derivatives_eti_t7_v2_5.mass_quote_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Mass Quote Request
eurex_derivatives_eti_t7_v2_5.mass_quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Request
eurex_derivatives_eti_t7_v2_5.mass_quote_request.fields = function(buffer, offset, packet, parent, size_of_mass_quote_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_id = eurex_derivatives_eti_t7_v2_5.quote_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, enrichment_rule_id = eurex_derivatives_eti_t7_v2_5.enrichment_rule_id.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_validity_check_type = eurex_derivatives_eti_t7_v2_5.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Quote Size Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_size_type = eurex_derivatives_eti_t7_v2_5.quote_size_type.dissect(buffer, index, packet, parent)

  -- No Quote Entries: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_quote_entries = eurex_derivatives_eti_t7_v2_5.no_quote_entries.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Entry Grp Comp
  for quote_entry_grp_comp_index = 1, no_quote_entries do
    index, quote_entry_grp_comp = eurex_derivatives_eti_t7_v2_5.quote_entry_grp_comp.dissect(buffer, index, packet, parent, quote_entry_grp_comp_index)
  end

  return index
end

-- Dissect: Mass Quote Request
eurex_derivatives_eti_t7_v2_5.mass_quote_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mass_quote_request = eurex_derivatives_eti_t7_v2_5.mass_quote_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mass_quote_request then
    local range = buffer(offset, size_of_mass_quote_request)
    local display = eurex_derivatives_eti_t7_v2_5.mass_quote_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.mass_quote_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.mass_quote_request.fields(buffer, offset, packet, parent, size_of_mass_quote_request)

  return offset + size_of_mass_quote_request
end

-- Mm Parameter Definition Response
eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_response = {}

-- Read runtime size of: Mm Parameter Definition Response
eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Mm Parameter Definition Response
eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Parameter Definition Response
eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_response.fields = function(buffer, offset, packet, parent, size_of_mm_parameter_definition_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Parameter Definition Response
eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mm_parameter_definition_response = eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mm_parameter_definition_response then
    local range = buffer(offset, size_of_mm_parameter_definition_response)
    local display = eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.mm_parameter_definition_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_response.fields(buffer, offset, packet, parent, size_of_mm_parameter_definition_response)

  return offset + size_of_mm_parameter_definition_response
end

-- Vega
eurex_derivatives_eti_t7_v2_5.vega = {}

-- Size Of: Vega
eurex_derivatives_eti_t7_v2_5.vega.size = 4

-- Display: Vega
eurex_derivatives_eti_t7_v2_5.vega.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Vega: No Value"
  end

  return "Vega: "..value
end

-- Dissect: Vega
eurex_derivatives_eti_t7_v2_5.vega.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.vega.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.vega.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.vega, range, value, display)

  return offset + length, value
end

-- Delta
eurex_derivatives_eti_t7_v2_5.delta = {}

-- Size Of: Delta
eurex_derivatives_eti_t7_v2_5.delta.size = 4

-- Display: Delta
eurex_derivatives_eti_t7_v2_5.delta.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Delta: No Value"
  end

  return "Delta: "..value
end

-- Dissect: Delta
eurex_derivatives_eti_t7_v2_5.delta.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.delta.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delta, range, value, display)

  return offset + length, value
end

-- Pct Count
eurex_derivatives_eti_t7_v2_5.pct_count = {}

-- Size Of: Pct Count
eurex_derivatives_eti_t7_v2_5.pct_count.size = 4

-- Display: Pct Count
eurex_derivatives_eti_t7_v2_5.pct_count.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Pct Count: No Value"
  end

  return "Pct Count: "..value
end

-- Dissect: Pct Count
eurex_derivatives_eti_t7_v2_5.pct_count.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.pct_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.pct_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.pct_count, range, value, display)

  return offset + length, value
end

-- Exposure Duration
eurex_derivatives_eti_t7_v2_5.exposure_duration = {}

-- Size Of: Exposure Duration
eurex_derivatives_eti_t7_v2_5.exposure_duration.size = 8

-- Display: Exposure Duration
eurex_derivatives_eti_t7_v2_5.exposure_duration.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Exposure Duration: No Value"
  end

  return "Exposure Duration: "..value
end

-- Dissect: Exposure Duration
eurex_derivatives_eti_t7_v2_5.exposure_duration.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.exposure_duration.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_eti_t7_v2_5.exposure_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.exposure_duration, range, value, display)

  return offset + length, value
end

-- Mm Parameter Definition Request
eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_request = {}

-- Read runtime size of: Mm Parameter Definition Request
eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Mm Parameter Definition Request
eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Parameter Definition Request
eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_request.fields = function(buffer, offset, packet, parent, size_of_mm_parameter_definition_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Exposure Duration: 8 Byte Signed Fixed Width Integer Nullable
  index, exposure_duration = eurex_derivatives_eti_t7_v2_5.exposure_duration.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Pct Count: 4 Byte Signed Fixed Width Integer Nullable
  index, pct_count = eurex_derivatives_eti_t7_v2_5.pct_count.dissect(buffer, index, packet, parent)

  -- Delta: 4 Byte Signed Fixed Width Integer Nullable
  index, delta = eurex_derivatives_eti_t7_v2_5.delta.dissect(buffer, index, packet, parent)

  -- Vega: 4 Byte Signed Fixed Width Integer Nullable
  index, vega = eurex_derivatives_eti_t7_v2_5.vega.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Parameter Definition Request
eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mm_parameter_definition_request = eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mm_parameter_definition_request then
    local range = buffer(offset, size_of_mm_parameter_definition_request)
    local display = eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.mm_parameter_definition_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_request.fields(buffer, offset, packet, parent, size_of_mm_parameter_definition_request)

  return offset + size_of_mm_parameter_definition_request
end

-- Logout Response
eurex_derivatives_eti_t7_v2_5.logout_response = {}

-- Read runtime size of: Logout Response
eurex_derivatives_eti_t7_v2_5.logout_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logout Response
eurex_derivatives_eti_t7_v2_5.logout_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response
eurex_derivatives_eti_t7_v2_5.logout_response.fields = function(buffer, offset, packet, parent, size_of_logout_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response
eurex_derivatives_eti_t7_v2_5.logout_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logout_response = eurex_derivatives_eti_t7_v2_5.logout_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logout_response then
    local range = buffer(offset, size_of_logout_response)
    local display = eurex_derivatives_eti_t7_v2_5.logout_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.logout_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.logout_response.fields(buffer, offset, packet, parent, size_of_logout_response)

  return offset + size_of_logout_response
end

-- Logout Request
eurex_derivatives_eti_t7_v2_5.logout_request = {}

-- Read runtime size of: Logout Request
eurex_derivatives_eti_t7_v2_5.logout_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logout Request
eurex_derivatives_eti_t7_v2_5.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
eurex_derivatives_eti_t7_v2_5.logout_request.fields = function(buffer, offset, packet, parent, size_of_logout_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Request
eurex_derivatives_eti_t7_v2_5.logout_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logout_request = eurex_derivatives_eti_t7_v2_5.logout_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logout_request then
    local range = buffer(offset, size_of_logout_request)
    local display = eurex_derivatives_eti_t7_v2_5.logout_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.logout_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.logout_request.fields(buffer, offset, packet, parent, size_of_logout_request)

  return offset + size_of_logout_request
end

-- Default Cstm Appl Ver Id
eurex_derivatives_eti_t7_v2_5.default_cstm_appl_ver_id = {}

-- Size Of: Default Cstm Appl Ver Id
eurex_derivatives_eti_t7_v2_5.default_cstm_appl_ver_id.size = 30

-- Display: Default Cstm Appl Ver Id
eurex_derivatives_eti_t7_v2_5.default_cstm_appl_ver_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Cstm Appl Ver Id: No Value"
  end

  return "Default Cstm Appl Ver Id: "..value
end

-- Dissect: Default Cstm Appl Ver Id
eurex_derivatives_eti_t7_v2_5.default_cstm_appl_ver_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.default_cstm_appl_ver_id.size
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

  local display = eurex_derivatives_eti_t7_v2_5.default_cstm_appl_ver_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.default_cstm_appl_ver_id, range, value, display)

  return offset + length, value
end

-- Trad Ses Mode
eurex_derivatives_eti_t7_v2_5.trad_ses_mode = {}

-- Size Of: Trad Ses Mode
eurex_derivatives_eti_t7_v2_5.trad_ses_mode.size = 1

-- Display: Trad Ses Mode
eurex_derivatives_eti_t7_v2_5.trad_ses_mode.display = function(value)
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
  if value == 0xFF then
    return "Trad Ses Mode: No Value"
  end

  return "Trad Ses Mode: Unknown("..value..")"
end

-- Dissect: Trad Ses Mode
eurex_derivatives_eti_t7_v2_5.trad_ses_mode.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.trad_ses_mode.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.trad_ses_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.trad_ses_mode, range, value, display)

  return offset + length, value
end

-- Session Instance Id
eurex_derivatives_eti_t7_v2_5.session_instance_id = {}

-- Size Of: Session Instance Id
eurex_derivatives_eti_t7_v2_5.session_instance_id.size = 4

-- Display: Session Instance Id
eurex_derivatives_eti_t7_v2_5.session_instance_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Session Instance Id: No Value"
  end

  return "Session Instance Id: "..value
end

-- Dissect: Session Instance Id
eurex_derivatives_eti_t7_v2_5.session_instance_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.session_instance_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.session_instance_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.session_instance_id, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
eurex_derivatives_eti_t7_v2_5.heart_bt_int = {}

-- Size Of: Heart Bt Int
eurex_derivatives_eti_t7_v2_5.heart_bt_int.size = 4

-- Display: Heart Bt Int
eurex_derivatives_eti_t7_v2_5.heart_bt_int.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Heart Bt Int: No Value"
  end

  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
eurex_derivatives_eti_t7_v2_5.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Logon Response
eurex_derivatives_eti_t7_v2_5.logon_response = {}

-- Read runtime size of: Logon Response
eurex_derivatives_eti_t7_v2_5.logon_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logon Response
eurex_derivatives_eti_t7_v2_5.logon_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response
eurex_derivatives_eti_t7_v2_5.logon_response.fields = function(buffer, offset, packet, parent, size_of_logon_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  -- Throttle Time Interval: 8 Byte Signed Fixed Width Integer Nullable
  index, throttle_time_interval = eurex_derivatives_eti_t7_v2_5.throttle_time_interval.dissect(buffer, index, packet, parent)

  -- Throttle No Msgs: 4 Byte Unsigned Fixed Width Integer Nullable
  index, throttle_no_msgs = eurex_derivatives_eti_t7_v2_5.throttle_no_msgs.dissect(buffer, index, packet, parent)

  -- Throttle Disconnect Limit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, throttle_disconnect_limit = eurex_derivatives_eti_t7_v2_5.throttle_disconnect_limit.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer Nullable
  index, heart_bt_int = eurex_derivatives_eti_t7_v2_5.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Session Instance Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, session_instance_id = eurex_derivatives_eti_t7_v2_5.session_instance_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_mode = eurex_derivatives_eti_t7_v2_5.trad_ses_mode.dissect(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String Nullable
  index, default_cstm_appl_ver_id = eurex_derivatives_eti_t7_v2_5.default_cstm_appl_ver_id.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response
eurex_derivatives_eti_t7_v2_5.logon_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logon_response = eurex_derivatives_eti_t7_v2_5.logon_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logon_response then
    local range = buffer(offset, size_of_logon_response)
    local display = eurex_derivatives_eti_t7_v2_5.logon_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.logon_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.logon_response.fields(buffer, offset, packet, parent, size_of_logon_response)

  return offset + size_of_logon_response
end

-- Application System Vendor
eurex_derivatives_eti_t7_v2_5.application_system_vendor = {}

-- Size Of: Application System Vendor
eurex_derivatives_eti_t7_v2_5.application_system_vendor.size = 30

-- Display: Application System Vendor
eurex_derivatives_eti_t7_v2_5.application_system_vendor.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Application System Vendor: No Value"
  end

  return "Application System Vendor: "..value
end

-- Dissect: Application System Vendor
eurex_derivatives_eti_t7_v2_5.application_system_vendor.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.application_system_vendor.size
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

  local display = eurex_derivatives_eti_t7_v2_5.application_system_vendor.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.application_system_vendor, range, value, display)

  return offset + length, value
end

-- Application System Version
eurex_derivatives_eti_t7_v2_5.application_system_version = {}

-- Size Of: Application System Version
eurex_derivatives_eti_t7_v2_5.application_system_version.size = 30

-- Display: Application System Version
eurex_derivatives_eti_t7_v2_5.application_system_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Application System Version: No Value"
  end

  return "Application System Version: "..value
end

-- Dissect: Application System Version
eurex_derivatives_eti_t7_v2_5.application_system_version.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.application_system_version.size
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

  local display = eurex_derivatives_eti_t7_v2_5.application_system_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.application_system_version, range, value, display)

  return offset + length, value
end

-- Application System Name
eurex_derivatives_eti_t7_v2_5.application_system_name = {}

-- Size Of: Application System Name
eurex_derivatives_eti_t7_v2_5.application_system_name.size = 30

-- Display: Application System Name
eurex_derivatives_eti_t7_v2_5.application_system_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Application System Name: No Value"
  end

  return "Application System Name: "..value
end

-- Dissect: Application System Name
eurex_derivatives_eti_t7_v2_5.application_system_name.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.application_system_name.size
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

  local display = eurex_derivatives_eti_t7_v2_5.application_system_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.application_system_name, range, value, display)

  return offset + length, value
end

-- Fix Engine Vendor
eurex_derivatives_eti_t7_v2_5.fix_engine_vendor = {}

-- Size Of: Fix Engine Vendor
eurex_derivatives_eti_t7_v2_5.fix_engine_vendor.size = 30

-- Display: Fix Engine Vendor
eurex_derivatives_eti_t7_v2_5.fix_engine_vendor.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Engine Vendor: No Value"
  end

  return "Fix Engine Vendor: "..value
end

-- Dissect: Fix Engine Vendor
eurex_derivatives_eti_t7_v2_5.fix_engine_vendor.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.fix_engine_vendor.size
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

  local display = eurex_derivatives_eti_t7_v2_5.fix_engine_vendor.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.fix_engine_vendor, range, value, display)

  return offset + length, value
end

-- Fix Engine Version
eurex_derivatives_eti_t7_v2_5.fix_engine_version = {}

-- Size Of: Fix Engine Version
eurex_derivatives_eti_t7_v2_5.fix_engine_version.size = 30

-- Display: Fix Engine Version
eurex_derivatives_eti_t7_v2_5.fix_engine_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Engine Version: No Value"
  end

  return "Fix Engine Version: "..value
end

-- Dissect: Fix Engine Version
eurex_derivatives_eti_t7_v2_5.fix_engine_version.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.fix_engine_version.size
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

  local display = eurex_derivatives_eti_t7_v2_5.fix_engine_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.fix_engine_version, range, value, display)

  return offset + length, value
end

-- Fix Engine Name
eurex_derivatives_eti_t7_v2_5.fix_engine_name = {}

-- Size Of: Fix Engine Name
eurex_derivatives_eti_t7_v2_5.fix_engine_name.size = 30

-- Display: Fix Engine Name
eurex_derivatives_eti_t7_v2_5.fix_engine_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Engine Name: No Value"
  end

  return "Fix Engine Name: "..value
end

-- Dissect: Fix Engine Name
eurex_derivatives_eti_t7_v2_5.fix_engine_name.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.fix_engine_name.size
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

  local display = eurex_derivatives_eti_t7_v2_5.fix_engine_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.fix_engine_name, range, value, display)

  return offset + length, value
end

-- Order Routing Indicator
eurex_derivatives_eti_t7_v2_5.order_routing_indicator = {}

-- Size Of: Order Routing Indicator
eurex_derivatives_eti_t7_v2_5.order_routing_indicator.size = 1

-- Display: Order Routing Indicator
eurex_derivatives_eti_t7_v2_5.order_routing_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Routing Indicator: No Value"
  end

  if value == "Y" then
    return "Order Routing Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Order Routing Indicator: No (N)"
  end

  return "Order Routing Indicator: Unknown("..value..")"
end

-- Dissect: Order Routing Indicator
eurex_derivatives_eti_t7_v2_5.order_routing_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.order_routing_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_eti_t7_v2_5.order_routing_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.order_routing_indicator, range, value, display)

  return offset + length, value
end

-- Appl Usage Quotes
eurex_derivatives_eti_t7_v2_5.appl_usage_quotes = {}

-- Size Of: Appl Usage Quotes
eurex_derivatives_eti_t7_v2_5.appl_usage_quotes.size = 1

-- Display: Appl Usage Quotes
eurex_derivatives_eti_t7_v2_5.appl_usage_quotes.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Appl Usage Quotes: No Value"
  end

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
eurex_derivatives_eti_t7_v2_5.appl_usage_quotes.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_usage_quotes.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_eti_t7_v2_5.appl_usage_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_usage_quotes, range, value, display)

  return offset + length, value
end

-- Appl Usage Orders
eurex_derivatives_eti_t7_v2_5.appl_usage_orders = {}

-- Size Of: Appl Usage Orders
eurex_derivatives_eti_t7_v2_5.appl_usage_orders.size = 1

-- Display: Appl Usage Orders
eurex_derivatives_eti_t7_v2_5.appl_usage_orders.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Appl Usage Orders: No Value"
  end

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
eurex_derivatives_eti_t7_v2_5.appl_usage_orders.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_usage_orders.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_eti_t7_v2_5.appl_usage_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_usage_orders, range, value, display)

  return offset + length, value
end

-- Logon Request
eurex_derivatives_eti_t7_v2_5.logon_request = {}

-- Read runtime size of: Logon Request
eurex_derivatives_eti_t7_v2_5.logon_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logon Request
eurex_derivatives_eti_t7_v2_5.logon_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request
eurex_derivatives_eti_t7_v2_5.logon_request.fields = function(buffer, offset, packet, parent, size_of_logon_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer Nullable
  index, heart_bt_int = eurex_derivatives_eti_t7_v2_5.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_eti_t7_v2_5.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String Nullable
  index, default_cstm_appl_ver_id = eurex_derivatives_eti_t7_v2_5.default_cstm_appl_ver_id.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String Nullable
  index, password = eurex_derivatives_eti_t7_v2_5.password.dissect(buffer, index, packet, parent)

  -- Appl Usage Orders: 1 Byte Ascii String Enum with 4 values
  index, appl_usage_orders = eurex_derivatives_eti_t7_v2_5.appl_usage_orders.dissect(buffer, index, packet, parent)

  -- Appl Usage Quotes: 1 Byte Ascii String Enum with 4 values
  index, appl_usage_quotes = eurex_derivatives_eti_t7_v2_5.appl_usage_quotes.dissect(buffer, index, packet, parent)

  -- Order Routing Indicator: 1 Byte Ascii String Enum with 2 values
  index, order_routing_indicator = eurex_derivatives_eti_t7_v2_5.order_routing_indicator.dissect(buffer, index, packet, parent)

  -- Fix Engine Name: 30 Byte Ascii String Nullable
  index, fix_engine_name = eurex_derivatives_eti_t7_v2_5.fix_engine_name.dissect(buffer, index, packet, parent)

  -- Fix Engine Version: 30 Byte Ascii String Nullable
  index, fix_engine_version = eurex_derivatives_eti_t7_v2_5.fix_engine_version.dissect(buffer, index, packet, parent)

  -- Fix Engine Vendor: 30 Byte Ascii String Nullable
  index, fix_engine_vendor = eurex_derivatives_eti_t7_v2_5.fix_engine_vendor.dissect(buffer, index, packet, parent)

  -- Application System Name: 30 Byte Ascii String Nullable
  index, application_system_name = eurex_derivatives_eti_t7_v2_5.application_system_name.dissect(buffer, index, packet, parent)

  -- Application System Version: 30 Byte Ascii String Nullable
  index, application_system_version = eurex_derivatives_eti_t7_v2_5.application_system_version.dissect(buffer, index, packet, parent)

  -- Application System Vendor: 30 Byte Ascii String Nullable
  index, application_system_vendor = eurex_derivatives_eti_t7_v2_5.application_system_vendor.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request
eurex_derivatives_eti_t7_v2_5.logon_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logon_request = eurex_derivatives_eti_t7_v2_5.logon_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logon_request then
    local range = buffer(offset, size_of_logon_request)
    local display = eurex_derivatives_eti_t7_v2_5.logon_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.logon_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.logon_request.fields(buffer, offset, packet, parent, size_of_logon_request)

  return offset + size_of_logon_request
end

-- User Status
eurex_derivatives_eti_t7_v2_5.user_status = {}

-- Size Of: User Status
eurex_derivatives_eti_t7_v2_5.user_status.size = 1

-- Display: User Status
eurex_derivatives_eti_t7_v2_5.user_status.display = function(value)
  if value == 10 then
    return "User Status: Userstopped (10)"
  end
  if value == 11 then
    return "User Status: Userreleased (11)"
  end
  if value == 0xFF then
    return "User Status: No Value"
  end

  return "User Status: Unknown("..value..")"
end

-- Dissect: User Status
eurex_derivatives_eti_t7_v2_5.user_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.user_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.user_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.user_status, range, value, display)

  return offset + length, value
end

-- Legal Notification Broadcast
eurex_derivatives_eti_t7_v2_5.legal_notification_broadcast = {}

-- Read runtime size of: Legal Notification Broadcast
eurex_derivatives_eti_t7_v2_5.legal_notification_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Legal Notification Broadcast
eurex_derivatives_eti_t7_v2_5.legal_notification_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Legal Notification Broadcast
eurex_derivatives_eti_t7_v2_5.legal_notification_broadcast.fields = function(buffer, offset, packet, parent, size_of_legal_notification_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eti_t7_v2_5.transact_time.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = eurex_derivatives_eti_t7_v2_5.var_text_len.dissect(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_status = eurex_derivatives_eti_t7_v2_5.user_status.dissect(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_derivatives_eti_t7_v2_5.pad_5.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = eurex_derivatives_eti_t7_v2_5.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = eurex_derivatives_eti_t7_v2_5.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Legal Notification Broadcast
eurex_derivatives_eti_t7_v2_5.legal_notification_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_legal_notification_broadcast = eurex_derivatives_eti_t7_v2_5.legal_notification_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.legal_notification_broadcast then
    local range = buffer(offset, size_of_legal_notification_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.legal_notification_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.legal_notification_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.legal_notification_broadcast.fields(buffer, offset, packet, parent, size_of_legal_notification_broadcast)

  return offset + size_of_legal_notification_broadcast
end

-- Party Detail Desk Id
eurex_derivatives_eti_t7_v2_5.party_detail_desk_id = {}

-- Size Of: Party Detail Desk Id
eurex_derivatives_eti_t7_v2_5.party_detail_desk_id.size = 3

-- Display: Party Detail Desk Id
eurex_derivatives_eti_t7_v2_5.party_detail_desk_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Detail Desk Id: No Value"
  end

  return "Party Detail Desk Id: "..value
end

-- Dissect: Party Detail Desk Id
eurex_derivatives_eti_t7_v2_5.party_detail_desk_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_detail_desk_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.party_detail_desk_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_desk_id, range, value, display)

  return offset + length, value
end

-- Party Detail Role Qualifier
eurex_derivatives_eti_t7_v2_5.party_detail_role_qualifier = {}

-- Size Of: Party Detail Role Qualifier
eurex_derivatives_eti_t7_v2_5.party_detail_role_qualifier.size = 1

-- Display: Party Detail Role Qualifier
eurex_derivatives_eti_t7_v2_5.party_detail_role_qualifier.display = function(value)
  if value == 10 then
    return "Party Detail Role Qualifier: Trader (10)"
  end
  if value == 11 then
    return "Party Detail Role Qualifier: Head Trader (11)"
  end
  if value == 12 then
    return "Party Detail Role Qualifier: Supervisor (12)"
  end
  if value == 0xFF then
    return "Party Detail Role Qualifier: No Value"
  end

  return "Party Detail Role Qualifier: Unknown("..value..")"
end

-- Dissect: Party Detail Role Qualifier
eurex_derivatives_eti_t7_v2_5.party_detail_role_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_detail_role_qualifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_detail_role_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_role_qualifier, range, value, display)

  return offset + length, value
end

-- Party Detail Executing Trader
eurex_derivatives_eti_t7_v2_5.party_detail_executing_trader = {}

-- Size Of: Party Detail Executing Trader
eurex_derivatives_eti_t7_v2_5.party_detail_executing_trader.size = 6

-- Display: Party Detail Executing Trader
eurex_derivatives_eti_t7_v2_5.party_detail_executing_trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Detail Executing Trader: No Value"
  end

  return "Party Detail Executing Trader: "..value
end

-- Dissect: Party Detail Executing Trader
eurex_derivatives_eti_t7_v2_5.party_detail_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_detail_executing_trader.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.party_detail_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_executing_trader, range, value, display)

  return offset + length, value
end

-- Party Detail Id Executing Trader
eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_trader = {}

-- Size Of: Party Detail Id Executing Trader
eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_trader.size = 4

-- Display: Party Detail Id Executing Trader
eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Detail Id Executing Trader: No Value"
  end

  return "Party Detail Id Executing Trader: "..value
end

-- Dissect: Party Detail Id Executing Trader
eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_detail_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Party Details Grp Comp
eurex_derivatives_eti_t7_v2_5.party_details_grp_comp = {}

-- Size Of: Party Details Grp Comp
eurex_derivatives_eti_t7_v2_5.party_details_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_trader.size + 
  eurex_derivatives_eti_t7_v2_5.party_detail_executing_trader.size + 
  eurex_derivatives_eti_t7_v2_5.party_detail_role_qualifier.size + 
  eurex_derivatives_eti_t7_v2_5.party_detail_status.size + 
  eurex_derivatives_eti_t7_v2_5.party_detail_desk_id.size + 
  eurex_derivatives_eti_t7_v2_5.pad_1.size;

-- Display: Party Details Grp Comp
eurex_derivatives_eti_t7_v2_5.party_details_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details Grp Comp
eurex_derivatives_eti_t7_v2_5.party_details_grp_comp.fields = function(buffer, offset, packet, parent, party_details_grp_comp_index)
  local index = offset

  -- Implicit Party Details Grp Comp Index
  if party_details_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_details_grp_comp_index, party_details_grp_comp_index)
    iteration:set_generated()
  end

  -- Party Detail Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_detail_id_executing_trader = eurex_derivatives_eti_t7_v2_5.party_detail_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Party Detail Executing Trader: 6 Byte Ascii String Nullable
  index, party_detail_executing_trader = eurex_derivatives_eti_t7_v2_5.party_detail_executing_trader.dissect(buffer, index, packet, parent)

  -- Party Detail Role Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, party_detail_role_qualifier = eurex_derivatives_eti_t7_v2_5.party_detail_role_qualifier.dissect(buffer, index, packet, parent)

  -- Party Detail Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_detail_status = eurex_derivatives_eti_t7_v2_5.party_detail_status.dissect(buffer, index, packet, parent)

  -- Party Detail Desk Id: 3 Byte Ascii String Nullable
  index, party_detail_desk_id = eurex_derivatives_eti_t7_v2_5.party_detail_desk_id.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Grp Comp
eurex_derivatives_eti_t7_v2_5.party_details_grp_comp.dissect = function(buffer, offset, packet, parent, party_details_grp_comp_index)
  if show.party_details_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_details_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.party_details_grp_comp.fields(buffer, offset, packet, parent, party_details_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.party_details_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.party_details_grp_comp.fields(buffer, offset, packet, parent, party_details_grp_comp_index)
  end
end

-- No Party Details
eurex_derivatives_eti_t7_v2_5.no_party_details = {}

-- Size Of: No Party Details
eurex_derivatives_eti_t7_v2_5.no_party_details.size = 2

-- Display: No Party Details
eurex_derivatives_eti_t7_v2_5.no_party_details.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Party Details: No Value"
  end

  return "No Party Details: "..value
end

-- Dissect: No Party Details
eurex_derivatives_eti_t7_v2_5.no_party_details.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_party_details.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_party_details.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_party_details, range, value, display)

  return offset + length, value
end

-- Last Entity Processed
eurex_derivatives_eti_t7_v2_5.last_entity_processed = {}

-- Size Of: Last Entity Processed
eurex_derivatives_eti_t7_v2_5.last_entity_processed.size = 16

-- Display: Last Entity Processed
eurex_derivatives_eti_t7_v2_5.last_entity_processed.display = function(value)
  return "Last Entity Processed: "..value
end

-- Dissect: Last Entity Processed
eurex_derivatives_eti_t7_v2_5.last_entity_processed.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.last_entity_processed.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v2_5.last_entity_processed.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.last_entity_processed, range, value, display)

  return offset + length, value
end

-- Inquire User Response
eurex_derivatives_eti_t7_v2_5.inquire_user_response = {}

-- Read runtime size of: Inquire User Response
eurex_derivatives_eti_t7_v2_5.inquire_user_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Inquire User Response
eurex_derivatives_eti_t7_v2_5.inquire_user_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquire User Response
eurex_derivatives_eti_t7_v2_5.inquire_user_response.fields = function(buffer, offset, packet, parent, size_of_inquire_user_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = eurex_derivatives_eti_t7_v2_5.last_entity_processed.dissect(buffer, index, packet, parent)

  -- No Party Details: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_party_details = eurex_derivatives_eti_t7_v2_5.no_party_details.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  -- Repeating: Party Details Grp Comp
  for party_details_grp_comp_index = 1, no_party_details do
    index, party_details_grp_comp = eurex_derivatives_eti_t7_v2_5.party_details_grp_comp.dissect(buffer, index, packet, parent, party_details_grp_comp_index)
  end

  return index
end

-- Dissect: Inquire User Response
eurex_derivatives_eti_t7_v2_5.inquire_user_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_inquire_user_response = eurex_derivatives_eti_t7_v2_5.inquire_user_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.inquire_user_response then
    local range = buffer(offset, size_of_inquire_user_response)
    local display = eurex_derivatives_eti_t7_v2_5.inquire_user_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_user_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.inquire_user_response.fields(buffer, offset, packet, parent, size_of_inquire_user_response)

  return offset + size_of_inquire_user_response
end

-- Inquire User Request
eurex_derivatives_eti_t7_v2_5.inquire_user_request = {}

-- Read runtime size of: Inquire User Request
eurex_derivatives_eti_t7_v2_5.inquire_user_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Inquire User Request
eurex_derivatives_eti_t7_v2_5.inquire_user_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquire User Request
eurex_derivatives_eti_t7_v2_5.inquire_user_request.fields = function(buffer, offset, packet, parent, size_of_inquire_user_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = eurex_derivatives_eti_t7_v2_5.last_entity_processed.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire User Request
eurex_derivatives_eti_t7_v2_5.inquire_user_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_inquire_user_request = eurex_derivatives_eti_t7_v2_5.inquire_user_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.inquire_user_request then
    local range = buffer(offset, size_of_inquire_user_request)
    local display = eurex_derivatives_eti_t7_v2_5.inquire_user_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_user_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.inquire_user_request.fields(buffer, offset, packet, parent, size_of_inquire_user_request)

  return offset + size_of_inquire_user_request
end

-- Session Sub Mode
eurex_derivatives_eti_t7_v2_5.session_sub_mode = {}

-- Size Of: Session Sub Mode
eurex_derivatives_eti_t7_v2_5.session_sub_mode.size = 1

-- Display: Session Sub Mode
eurex_derivatives_eti_t7_v2_5.session_sub_mode.display = function(value)
  if value == 0 then
    return "Session Sub Mode: Regulartradingsession (0)"
  end
  if value == 1 then
    return "Session Sub Mode: Fi Xtradingsession (1)"
  end
  if value == 2 then
    return "Session Sub Mode: Regular Back Officesession (2)"
  end
  if value == 0xFF then
    return "Session Sub Mode: No Value"
  end

  return "Session Sub Mode: Unknown("..value..")"
end

-- Dissect: Session Sub Mode
eurex_derivatives_eti_t7_v2_5.session_sub_mode.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.session_sub_mode.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.session_sub_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.session_sub_mode, range, value, display)

  return offset + length, value
end

-- Session Mode
eurex_derivatives_eti_t7_v2_5.session_mode = {}

-- Size Of: Session Mode
eurex_derivatives_eti_t7_v2_5.session_mode.size = 1

-- Display: Session Mode
eurex_derivatives_eti_t7_v2_5.session_mode.display = function(value)
  if value == 1 then
    return "Session Mode: Hf (1)"
  end
  if value == 2 then
    return "Session Mode: Lf (2)"
  end
  if value == 3 then
    return "Session Mode: Gui (3)"
  end
  if value == 0xFF then
    return "Session Mode: No Value"
  end

  return "Session Mode: Unknown("..value..")"
end

-- Dissect: Session Mode
eurex_derivatives_eti_t7_v2_5.session_mode.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.session_mode.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.session_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.session_mode, range, value, display)

  return offset + length, value
end

-- Sessions Grp Comp
eurex_derivatives_eti_t7_v2_5.sessions_grp_comp = {}

-- Size Of: Sessions Grp Comp
eurex_derivatives_eti_t7_v2_5.sessions_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.party_id_session_id.size + 
  eurex_derivatives_eti_t7_v2_5.session_mode.size + 
  eurex_derivatives_eti_t7_v2_5.session_sub_mode.size + 
  eurex_derivatives_eti_t7_v2_5.pad_2.size;

-- Display: Sessions Grp Comp
eurex_derivatives_eti_t7_v2_5.sessions_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sessions Grp Comp
eurex_derivatives_eti_t7_v2_5.sessions_grp_comp.fields = function(buffer, offset, packet, parent, sessions_grp_comp_index)
  local index = offset

  -- Implicit Sessions Grp Comp Index
  if sessions_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.sessions_grp_comp_index, sessions_grp_comp_index)
    iteration:set_generated()
  end

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_eti_t7_v2_5.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Session Mode: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, session_mode = eurex_derivatives_eti_t7_v2_5.session_mode.dissect(buffer, index, packet, parent)

  -- Session Sub Mode: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, session_sub_mode = eurex_derivatives_eti_t7_v2_5.session_sub_mode.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sessions Grp Comp
eurex_derivatives_eti_t7_v2_5.sessions_grp_comp.dissect = function(buffer, offset, packet, parent, sessions_grp_comp_index)
  if show.sessions_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.sessions_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.sessions_grp_comp.fields(buffer, offset, packet, parent, sessions_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.sessions_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.sessions_grp_comp.fields(buffer, offset, packet, parent, sessions_grp_comp_index)
  end
end

-- No Sessions
eurex_derivatives_eti_t7_v2_5.no_sessions = {}

-- Size Of: No Sessions
eurex_derivatives_eti_t7_v2_5.no_sessions.size = 2

-- Display: No Sessions
eurex_derivatives_eti_t7_v2_5.no_sessions.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Sessions: No Value"
  end

  return "No Sessions: "..value
end

-- Dissect: No Sessions
eurex_derivatives_eti_t7_v2_5.no_sessions.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_sessions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_sessions.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_sessions, range, value, display)

  return offset + length, value
end

-- Inquire Session List Response
eurex_derivatives_eti_t7_v2_5.inquire_session_list_response = {}

-- Read runtime size of: Inquire Session List Response
eurex_derivatives_eti_t7_v2_5.inquire_session_list_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Inquire Session List Response
eurex_derivatives_eti_t7_v2_5.inquire_session_list_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquire Session List Response
eurex_derivatives_eti_t7_v2_5.inquire_session_list_response.fields = function(buffer, offset, packet, parent, size_of_inquire_session_list_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  -- No Sessions: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_sessions = eurex_derivatives_eti_t7_v2_5.no_sessions.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  -- Repeating: Sessions Grp Comp
  for sessions_grp_comp_index = 1, no_sessions do
    index, sessions_grp_comp = eurex_derivatives_eti_t7_v2_5.sessions_grp_comp.dissect(buffer, index, packet, parent, sessions_grp_comp_index)
  end

  return index
end

-- Dissect: Inquire Session List Response
eurex_derivatives_eti_t7_v2_5.inquire_session_list_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_inquire_session_list_response = eurex_derivatives_eti_t7_v2_5.inquire_session_list_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.inquire_session_list_response then
    local range = buffer(offset, size_of_inquire_session_list_response)
    local display = eurex_derivatives_eti_t7_v2_5.inquire_session_list_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_session_list_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.inquire_session_list_response.fields(buffer, offset, packet, parent, size_of_inquire_session_list_response)

  return offset + size_of_inquire_session_list_response
end

-- Inquire Session List Request
eurex_derivatives_eti_t7_v2_5.inquire_session_list_request = {}

-- Read runtime size of: Inquire Session List Request
eurex_derivatives_eti_t7_v2_5.inquire_session_list_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Inquire Session List Request
eurex_derivatives_eti_t7_v2_5.inquire_session_list_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquire Session List Request
eurex_derivatives_eti_t7_v2_5.inquire_session_list_request.fields = function(buffer, offset, packet, parent, size_of_inquire_session_list_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire Session List Request
eurex_derivatives_eti_t7_v2_5.inquire_session_list_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_inquire_session_list_request = eurex_derivatives_eti_t7_v2_5.inquire_session_list_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.inquire_session_list_request then
    local range = buffer(offset, size_of_inquire_session_list_request)
    local display = eurex_derivatives_eti_t7_v2_5.inquire_session_list_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_session_list_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.inquire_session_list_request.fields(buffer, offset, packet, parent, size_of_inquire_session_list_request)

  return offset + size_of_inquire_session_list_request
end

-- Mm Parameter Grp Comp
eurex_derivatives_eti_t7_v2_5.mm_parameter_grp_comp = {}

-- Size Of: Mm Parameter Grp Comp
eurex_derivatives_eti_t7_v2_5.mm_parameter_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.exposure_duration.size + 
  eurex_derivatives_eti_t7_v2_5.cum_qty.size + 
  eurex_derivatives_eti_t7_v2_5.pct_count.size + 
  eurex_derivatives_eti_t7_v2_5.delta.size + 
  eurex_derivatives_eti_t7_v2_5.vega.size + 
  eurex_derivatives_eti_t7_v2_5.product_complex.size + 
  eurex_derivatives_eti_t7_v2_5.pad_7.size;

-- Display: Mm Parameter Grp Comp
eurex_derivatives_eti_t7_v2_5.mm_parameter_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Parameter Grp Comp
eurex_derivatives_eti_t7_v2_5.mm_parameter_grp_comp.fields = function(buffer, offset, packet, parent, mm_parameter_grp_comp_index)
  local index = offset

  -- Implicit Mm Parameter Grp Comp Index
  if mm_parameter_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.mm_parameter_grp_comp_index, mm_parameter_grp_comp_index)
    iteration:set_generated()
  end

  -- Exposure Duration: 8 Byte Signed Fixed Width Integer Nullable
  index, exposure_duration = eurex_derivatives_eti_t7_v2_5.exposure_duration.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Pct Count: 4 Byte Signed Fixed Width Integer Nullable
  index, pct_count = eurex_derivatives_eti_t7_v2_5.pct_count.dissect(buffer, index, packet, parent)

  -- Delta: 4 Byte Signed Fixed Width Integer Nullable
  index, delta = eurex_derivatives_eti_t7_v2_5.delta.dissect(buffer, index, packet, parent)

  -- Vega: 4 Byte Signed Fixed Width Integer Nullable
  index, vega = eurex_derivatives_eti_t7_v2_5.vega.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eti_t7_v2_5.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Parameter Grp Comp
eurex_derivatives_eti_t7_v2_5.mm_parameter_grp_comp.dissect = function(buffer, offset, packet, parent, mm_parameter_grp_comp_index)
  if show.mm_parameter_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.mm_parameter_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.mm_parameter_grp_comp.fields(buffer, offset, packet, parent, mm_parameter_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.mm_parameter_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.mm_parameter_grp_comp.fields(buffer, offset, packet, parent, mm_parameter_grp_comp_index)
  end
end

-- No Mm Parameters
eurex_derivatives_eti_t7_v2_5.no_mm_parameters = {}

-- Size Of: No Mm Parameters
eurex_derivatives_eti_t7_v2_5.no_mm_parameters.size = 1

-- Display: No Mm Parameters
eurex_derivatives_eti_t7_v2_5.no_mm_parameters.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Mm Parameters: No Value"
  end

  return "No Mm Parameters: "..value
end

-- Dissect: No Mm Parameters
eurex_derivatives_eti_t7_v2_5.no_mm_parameters.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_mm_parameters.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_mm_parameters.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_mm_parameters, range, value, display)

  return offset + length, value
end

-- Mm Parameter Report Id
eurex_derivatives_eti_t7_v2_5.mm_parameter_report_id = {}

-- Size Of: Mm Parameter Report Id
eurex_derivatives_eti_t7_v2_5.mm_parameter_report_id.size = 8

-- Display: Mm Parameter Report Id
eurex_derivatives_eti_t7_v2_5.mm_parameter_report_id.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Mm Parameter Report Id: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Mm Parameter Report Id: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Mm Parameter Report Id
eurex_derivatives_eti_t7_v2_5.mm_parameter_report_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.mm_parameter_report_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.mm_parameter_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.mm_parameter_report_id, range, value, display)

  return offset + length, value
end

-- Inquire Mm Parameter Response
eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_response = {}

-- Read runtime size of: Inquire Mm Parameter Response
eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Inquire Mm Parameter Response
eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquire Mm Parameter Response
eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_response.fields = function(buffer, offset, packet, parent, size_of_inquire_mm_parameter_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mm Parameter Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mm_parameter_report_id = eurex_derivatives_eti_t7_v2_5.mm_parameter_report_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- No Mm Parameters: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_mm_parameters = eurex_derivatives_eti_t7_v2_5.no_mm_parameters.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  -- Repeating: Mm Parameter Grp Comp
  for mm_parameter_grp_comp_index = 1, no_mm_parameters do
    index, mm_parameter_grp_comp = eurex_derivatives_eti_t7_v2_5.mm_parameter_grp_comp.dissect(buffer, index, packet, parent, mm_parameter_grp_comp_index)
  end

  return index
end

-- Dissect: Inquire Mm Parameter Response
eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_inquire_mm_parameter_response = eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.inquire_mm_parameter_response then
    local range = buffer(offset, size_of_inquire_mm_parameter_response)
    local display = eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_mm_parameter_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_response.fields(buffer, offset, packet, parent, size_of_inquire_mm_parameter_response)

  return offset + size_of_inquire_mm_parameter_response
end

-- Inquire Mm Parameter Request
eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_request = {}

-- Read runtime size of: Inquire Mm Parameter Request
eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Inquire Mm Parameter Request
eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquire Mm Parameter Request
eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_request.fields = function(buffer, offset, packet, parent, size_of_inquire_mm_parameter_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire Mm Parameter Request
eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_inquire_mm_parameter_request = eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.inquire_mm_parameter_request then
    local range = buffer(offset, size_of_inquire_mm_parameter_request)
    local display = eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_mm_parameter_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_request.fields(buffer, offset, packet, parent, size_of_inquire_mm_parameter_request)

  return offset + size_of_inquire_mm_parameter_request
end

-- Party Id Origination Market
eurex_derivatives_eti_t7_v2_5.party_id_origination_market = {}

-- Size Of: Party Id Origination Market
eurex_derivatives_eti_t7_v2_5.party_id_origination_market.size = 1

-- Display: Party Id Origination Market
eurex_derivatives_eti_t7_v2_5.party_id_origination_market.display = function(value)
  if value == 1 then
    return "Party Id Origination Market: Xkfe (1)"
  end
  if value == 2 then
    return "Party Id Origination Market: Xtaf (2)"
  end
  if value == 0xFF then
    return "Party Id Origination Market: No Value"
  end

  return "Party Id Origination Market: Unknown("..value..")"
end

-- Dissect: Party Id Origination Market
eurex_derivatives_eti_t7_v2_5.party_id_origination_market.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.party_id_origination_market.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.party_id_origination_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.party_id_origination_market, range, value, display)

  return offset + length, value
end

-- Enrichment Rules Grp Comp
eurex_derivatives_eti_t7_v2_5.enrichment_rules_grp_comp = {}

-- Size Of: Enrichment Rules Grp Comp
eurex_derivatives_eti_t7_v2_5.enrichment_rules_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.enrichment_rule_id.size + 
  eurex_derivatives_eti_t7_v2_5.party_id_origination_market.size + 
  eurex_derivatives_eti_t7_v2_5.account.size + 
  eurex_derivatives_eti_t7_v2_5.position_effect.size + 
  eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.size + 
  eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.size + 
  eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.size + 
  eurex_derivatives_eti_t7_v2_5.free_text_1.size + 
  eurex_derivatives_eti_t7_v2_5.free_text_2.size + 
  eurex_derivatives_eti_t7_v2_5.free_text_3.size + 
  eurex_derivatives_eti_t7_v2_5.pad_1.size;

-- Display: Enrichment Rules Grp Comp
eurex_derivatives_eti_t7_v2_5.enrichment_rules_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enrichment Rules Grp Comp
eurex_derivatives_eti_t7_v2_5.enrichment_rules_grp_comp.fields = function(buffer, offset, packet, parent, enrichment_rules_grp_comp_index)
  local index = offset

  -- Implicit Enrichment Rules Grp Comp Index
  if enrichment_rules_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.enrichment_rules_grp_comp_index, enrichment_rules_grp_comp_index)
    iteration:set_generated()
  end

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, enrichment_rule_id = eurex_derivatives_eti_t7_v2_5.enrichment_rule_id.dissect(buffer, index, packet, parent)

  -- Party Id Origination Market: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_origination_market = eurex_derivatives_eti_t7_v2_5.party_id_origination_market.dissect(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String Nullable
  index, account = eurex_derivatives_eti_t7_v2_5.account.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = eurex_derivatives_eti_t7_v2_5.position_effect.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = eurex_derivatives_eti_t7_v2_5.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = eurex_derivatives_eti_t7_v2_5.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = eurex_derivatives_eti_t7_v2_5.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String Nullable
  index, free_text_1 = eurex_derivatives_eti_t7_v2_5.free_text_1.dissect(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String Nullable
  index, free_text_2 = eurex_derivatives_eti_t7_v2_5.free_text_2.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = eurex_derivatives_eti_t7_v2_5.free_text_3.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enrichment Rules Grp Comp
eurex_derivatives_eti_t7_v2_5.enrichment_rules_grp_comp.dissect = function(buffer, offset, packet, parent, enrichment_rules_grp_comp_index)
  if show.enrichment_rules_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.enrichment_rules_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.enrichment_rules_grp_comp.fields(buffer, offset, packet, parent, enrichment_rules_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.enrichment_rules_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.enrichment_rules_grp_comp.fields(buffer, offset, packet, parent, enrichment_rules_grp_comp_index)
  end
end

-- No Enrichment Rules
eurex_derivatives_eti_t7_v2_5.no_enrichment_rules = {}

-- Size Of: No Enrichment Rules
eurex_derivatives_eti_t7_v2_5.no_enrichment_rules.size = 2

-- Display: No Enrichment Rules
eurex_derivatives_eti_t7_v2_5.no_enrichment_rules.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Enrichment Rules: No Value"
  end

  return "No Enrichment Rules: "..value
end

-- Dissect: No Enrichment Rules
eurex_derivatives_eti_t7_v2_5.no_enrichment_rules.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_enrichment_rules.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_enrichment_rules.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_enrichment_rules, range, value, display)

  return offset + length, value
end

-- Inquire Enrichment Rule Id List Response
eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_response = {}

-- Read runtime size of: Inquire Enrichment Rule Id List Response
eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Inquire Enrichment Rule Id List Response
eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquire Enrichment Rule Id List Response
eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_response.fields = function(buffer, offset, packet, parent, size_of_inquire_enrichment_rule_id_list_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = eurex_derivatives_eti_t7_v2_5.last_entity_processed.dissect(buffer, index, packet, parent)

  -- No Enrichment Rules: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_enrichment_rules = eurex_derivatives_eti_t7_v2_5.no_enrichment_rules.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  -- Repeating: Enrichment Rules Grp Comp
  for enrichment_rules_grp_comp_index = 1, no_enrichment_rules do
    index, enrichment_rules_grp_comp = eurex_derivatives_eti_t7_v2_5.enrichment_rules_grp_comp.dissect(buffer, index, packet, parent, enrichment_rules_grp_comp_index)
  end

  return index
end

-- Dissect: Inquire Enrichment Rule Id List Response
eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_inquire_enrichment_rule_id_list_response = eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.inquire_enrichment_rule_id_list_response then
    local range = buffer(offset, size_of_inquire_enrichment_rule_id_list_response)
    local display = eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_enrichment_rule_id_list_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_response.fields(buffer, offset, packet, parent, size_of_inquire_enrichment_rule_id_list_response)

  return offset + size_of_inquire_enrichment_rule_id_list_response
end

-- Inquire Enrichment Rule Id List Request
eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_request = {}

-- Read runtime size of: Inquire Enrichment Rule Id List Request
eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Inquire Enrichment Rule Id List Request
eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquire Enrichment Rule Id List Request
eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_request.fields = function(buffer, offset, packet, parent, size_of_inquire_enrichment_rule_id_list_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = eurex_derivatives_eti_t7_v2_5.last_entity_processed.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire Enrichment Rule Id List Request
eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_inquire_enrichment_rule_id_list_request = eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.inquire_enrichment_rule_id_list_request then
    local range = buffer(offset, size_of_inquire_enrichment_rule_id_list_request)
    local display = eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.inquire_enrichment_rule_id_list_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_request.fields(buffer, offset, packet, parent, size_of_inquire_enrichment_rule_id_list_request)

  return offset + size_of_inquire_enrichment_rule_id_list_request
end

-- Heartbeat Notification
eurex_derivatives_eti_t7_v2_5.heartbeat_notification = {}

-- Read runtime size of: Heartbeat Notification
eurex_derivatives_eti_t7_v2_5.heartbeat_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Heartbeat Notification
eurex_derivatives_eti_t7_v2_5.heartbeat_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Notification
eurex_derivatives_eti_t7_v2_5.heartbeat_notification.fields = function(buffer, offset, packet, parent, size_of_heartbeat_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_eti_t7_v2_5.notif_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Notification
eurex_derivatives_eti_t7_v2_5.heartbeat_notification.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat_notification = eurex_derivatives_eti_t7_v2_5.heartbeat_notification.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat_notification then
    local range = buffer(offset, size_of_heartbeat_notification)
    local display = eurex_derivatives_eti_t7_v2_5.heartbeat_notification.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.heartbeat_notification, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.heartbeat_notification.fields(buffer, offset, packet, parent, size_of_heartbeat_notification)

  return offset + size_of_heartbeat_notification
end

-- Heartbeat
eurex_derivatives_eti_t7_v2_5.heartbeat = {}

-- Read runtime size of: Heartbeat
eurex_derivatives_eti_t7_v2_5.heartbeat.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Heartbeat
eurex_derivatives_eti_t7_v2_5.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
eurex_derivatives_eti_t7_v2_5.heartbeat.fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
eurex_derivatives_eti_t7_v2_5.heartbeat.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat = eurex_derivatives_eti_t7_v2_5.heartbeat.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local range = buffer(offset, size_of_heartbeat)
    local display = eurex_derivatives_eti_t7_v2_5.heartbeat.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.heartbeat, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)

  return offset + size_of_heartbeat
end

-- Secondary Gateway Sub Id
eurex_derivatives_eti_t7_v2_5.secondary_gateway_sub_id = {}

-- Size Of: Secondary Gateway Sub Id
eurex_derivatives_eti_t7_v2_5.secondary_gateway_sub_id.size = 4

-- Display: Secondary Gateway Sub Id
eurex_derivatives_eti_t7_v2_5.secondary_gateway_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Secondary Gateway Sub Id: No Value"
  end

  return "Secondary Gateway Sub Id: "..value
end

-- Dissect: Secondary Gateway Sub Id
eurex_derivatives_eti_t7_v2_5.secondary_gateway_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.secondary_gateway_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.secondary_gateway_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.secondary_gateway_sub_id, range, value, display)

  return offset + length, value
end

-- Secondary Gateway Id
eurex_derivatives_eti_t7_v2_5.secondary_gateway_id = {}

-- Size Of: Secondary Gateway Id
eurex_derivatives_eti_t7_v2_5.secondary_gateway_id.size = 4

-- Display: Secondary Gateway Id
eurex_derivatives_eti_t7_v2_5.secondary_gateway_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Secondary Gateway Id: No Value"
  end

  return "Secondary Gateway Id: "..value
end

-- Dissect: Secondary Gateway Id
eurex_derivatives_eti_t7_v2_5.secondary_gateway_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.secondary_gateway_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.secondary_gateway_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.secondary_gateway_id, range, value, display)

  return offset + length, value
end

-- Gateway Sub Id
eurex_derivatives_eti_t7_v2_5.gateway_sub_id = {}

-- Size Of: Gateway Sub Id
eurex_derivatives_eti_t7_v2_5.gateway_sub_id.size = 4

-- Display: Gateway Sub Id
eurex_derivatives_eti_t7_v2_5.gateway_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Gateway Sub Id: No Value"
  end

  return "Gateway Sub Id: "..value
end

-- Dissect: Gateway Sub Id
eurex_derivatives_eti_t7_v2_5.gateway_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.gateway_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.gateway_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.gateway_sub_id, range, value, display)

  return offset + length, value
end

-- Gateway Id
eurex_derivatives_eti_t7_v2_5.gateway_id = {}

-- Size Of: Gateway Id
eurex_derivatives_eti_t7_v2_5.gateway_id.size = 4

-- Display: Gateway Id
eurex_derivatives_eti_t7_v2_5.gateway_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Gateway Id: No Value"
  end

  return "Gateway Id: "..value
end

-- Dissect: Gateway Id
eurex_derivatives_eti_t7_v2_5.gateway_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.gateway_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.gateway_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.gateway_id, range, value, display)

  return offset + length, value
end

-- Gateway Response
eurex_derivatives_eti_t7_v2_5.gateway_response = {}

-- Read runtime size of: Gateway Response
eurex_derivatives_eti_t7_v2_5.gateway_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Gateway Response
eurex_derivatives_eti_t7_v2_5.gateway_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Response
eurex_derivatives_eti_t7_v2_5.gateway_response.fields = function(buffer, offset, packet, parent, size_of_gateway_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_derivatives_eti_t7_v2_5.response_header_comp.dissect(buffer, index, packet, parent)

  -- Gateway Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, gateway_id = eurex_derivatives_eti_t7_v2_5.gateway_id.dissect(buffer, index, packet, parent)

  -- Gateway Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, gateway_sub_id = eurex_derivatives_eti_t7_v2_5.gateway_sub_id.dissect(buffer, index, packet, parent)

  -- Secondary Gateway Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, secondary_gateway_id = eurex_derivatives_eti_t7_v2_5.secondary_gateway_id.dissect(buffer, index, packet, parent)

  -- Secondary Gateway Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, secondary_gateway_sub_id = eurex_derivatives_eti_t7_v2_5.secondary_gateway_sub_id.dissect(buffer, index, packet, parent)

  -- Session Mode: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, session_mode = eurex_derivatives_eti_t7_v2_5.session_mode.dissect(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_mode = eurex_derivatives_eti_t7_v2_5.trad_ses_mode.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Response
eurex_derivatives_eti_t7_v2_5.gateway_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_gateway_response = eurex_derivatives_eti_t7_v2_5.gateway_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.gateway_response then
    local range = buffer(offset, size_of_gateway_response)
    local display = eurex_derivatives_eti_t7_v2_5.gateway_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.gateway_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.gateway_response.fields(buffer, offset, packet, parent, size_of_gateway_response)

  return offset + size_of_gateway_response
end

-- Gateway Request
eurex_derivatives_eti_t7_v2_5.gateway_request = {}

-- Read runtime size of: Gateway Request
eurex_derivatives_eti_t7_v2_5.gateway_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Gateway Request
eurex_derivatives_eti_t7_v2_5.gateway_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Request
eurex_derivatives_eti_t7_v2_5.gateway_request.fields = function(buffer, offset, packet, parent, size_of_gateway_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_eti_t7_v2_5.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String Nullable
  index, default_cstm_appl_ver_id = eurex_derivatives_eti_t7_v2_5.default_cstm_appl_ver_id.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String Nullable
  index, password = eurex_derivatives_eti_t7_v2_5.password.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Request
eurex_derivatives_eti_t7_v2_5.gateway_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_gateway_request = eurex_derivatives_eti_t7_v2_5.gateway_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.gateway_request then
    local range = buffer(offset, size_of_gateway_request)
    local display = eurex_derivatives_eti_t7_v2_5.gateway_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.gateway_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.gateway_request.fields(buffer, offset, packet, parent, size_of_gateway_request)

  return offset + size_of_gateway_request
end

-- Forced Logout Notification
eurex_derivatives_eti_t7_v2_5.forced_logout_notification = {}

-- Read runtime size of: Forced Logout Notification
eurex_derivatives_eti_t7_v2_5.forced_logout_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Forced Logout Notification
eurex_derivatives_eti_t7_v2_5.forced_logout_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Forced Logout Notification
eurex_derivatives_eti_t7_v2_5.forced_logout_notification.fields = function(buffer, offset, packet, parent, size_of_forced_logout_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_eti_t7_v2_5.notif_header_comp.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = eurex_derivatives_eti_t7_v2_5.var_text_len.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = eurex_derivatives_eti_t7_v2_5.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = eurex_derivatives_eti_t7_v2_5.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Forced Logout Notification
eurex_derivatives_eti_t7_v2_5.forced_logout_notification.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_forced_logout_notification = eurex_derivatives_eti_t7_v2_5.forced_logout_notification.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.forced_logout_notification then
    local range = buffer(offset, size_of_forced_logout_notification)
    local display = eurex_derivatives_eti_t7_v2_5.forced_logout_notification.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.forced_logout_notification, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.forced_logout_notification.fields(buffer, offset, packet, parent, size_of_forced_logout_notification)

  return offset + size_of_forced_logout_notification
end

-- Delete Order Single Request
eurex_derivatives_eti_t7_v2_5.delete_order_single_request = {}

-- Read runtime size of: Delete Order Single Request
eurex_derivatives_eti_t7_v2_5.delete_order_single_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Single Request
eurex_derivatives_eti_t7_v2_5.delete_order_single_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Single Request
eurex_derivatives_eti_t7_v2_5.delete_order_single_request.fields = function(buffer, offset, packet, parent, size_of_delete_order_single_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, simple_security_id = eurex_derivatives_eti_t7_v2_5.simple_security_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eti_t7_v2_5.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Single Request
eurex_derivatives_eti_t7_v2_5.delete_order_single_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_order_single_request = eurex_derivatives_eti_t7_v2_5.delete_order_single_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_order_single_request then
    local range = buffer(offset, size_of_delete_order_single_request)
    local display = eurex_derivatives_eti_t7_v2_5.delete_order_single_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_order_single_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_order_single_request.fields(buffer, offset, packet, parent, size_of_delete_order_single_request)

  return offset + size_of_delete_order_single_request
end

-- Delete Order Response
eurex_derivatives_eti_t7_v2_5.delete_order_response = {}

-- Read runtime size of: Delete Order Response
eurex_derivatives_eti_t7_v2_5.delete_order_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Response
eurex_derivatives_eti_t7_v2_5.delete_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Response
eurex_derivatives_eti_t7_v2_5.delete_order_response.fields = function(buffer, offset, packet, parent, size_of_delete_order_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = eurex_derivatives_eti_t7_v2_5.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = eurex_derivatives_eti_t7_v2_5.cxl_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_eti_t7_v2_5.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_eti_t7_v2_5.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exec_restatement_reason = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Response
eurex_derivatives_eti_t7_v2_5.delete_order_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_order_response = eurex_derivatives_eti_t7_v2_5.delete_order_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_order_response then
    local range = buffer(offset, size_of_delete_order_response)
    local display = eurex_derivatives_eti_t7_v2_5.delete_order_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_order_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_order_response.fields(buffer, offset, packet, parent, size_of_delete_order_response)

  return offset + size_of_delete_order_response
end

-- Delete Order Nr Response
eurex_derivatives_eti_t7_v2_5.delete_order_nr_response = {}

-- Read runtime size of: Delete Order Nr Response
eurex_derivatives_eti_t7_v2_5.delete_order_nr_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Nr Response
eurex_derivatives_eti_t7_v2_5.delete_order_nr_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Nr Response
eurex_derivatives_eti_t7_v2_5.delete_order_nr_response.fields = function(buffer, offset, packet, parent, size_of_delete_order_nr_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = eurex_derivatives_eti_t7_v2_5.cxl_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_eti_t7_v2_5.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_eti_t7_v2_5.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exec_restatement_reason = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Nr Response
eurex_derivatives_eti_t7_v2_5.delete_order_nr_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_order_nr_response = eurex_derivatives_eti_t7_v2_5.delete_order_nr_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_order_nr_response then
    local range = buffer(offset, size_of_delete_order_nr_response)
    local display = eurex_derivatives_eti_t7_v2_5.delete_order_nr_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_order_nr_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_order_nr_response.fields(buffer, offset, packet, parent, size_of_delete_order_nr_response)

  return offset + size_of_delete_order_nr_response
end

-- Delete Order Complex Request
eurex_derivatives_eti_t7_v2_5.delete_order_complex_request = {}

-- Read runtime size of: Delete Order Complex Request
eurex_derivatives_eti_t7_v2_5.delete_order_complex_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Complex Request
eurex_derivatives_eti_t7_v2_5.delete_order_complex_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Complex Request
eurex_derivatives_eti_t7_v2_5.delete_order_complex_request.fields = function(buffer, offset, packet, parent, size_of_delete_order_complex_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Complex Request
eurex_derivatives_eti_t7_v2_5.delete_order_complex_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_order_complex_request = eurex_derivatives_eti_t7_v2_5.delete_order_complex_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_order_complex_request then
    local range = buffer(offset, size_of_delete_order_complex_request)
    local display = eurex_derivatives_eti_t7_v2_5.delete_order_complex_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_order_complex_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_order_complex_request.fields(buffer, offset, packet, parent, size_of_delete_order_complex_request)

  return offset + size_of_delete_order_complex_request
end

-- Delete Order Broadcast
eurex_derivatives_eti_t7_v2_5.delete_order_broadcast = {}

-- Read runtime size of: Delete Order Broadcast
eurex_derivatives_eti_t7_v2_5.delete_order_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Broadcast
eurex_derivatives_eti_t7_v2_5.delete_order_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Broadcast
eurex_derivatives_eti_t7_v2_5.delete_order_broadcast.fields = function(buffer, offset, packet, parent, size_of_delete_order_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_eti_t7_v2_5.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_eti_t7_v2_5.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_eti_t7_v2_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = eurex_derivatives_eti_t7_v2_5.cxl_qty.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_entering_trader = eurex_derivatives_eti_t7_v2_5.party_id_entering_trader.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exec_restatement_reason = eurex_derivatives_eti_t7_v2_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_entering_firm = eurex_derivatives_eti_t7_v2_5.party_id_entering_firm.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_eti_t7_v2_5.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_eti_t7_v2_5.exec_type.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eti_t7_v2_5.side.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Broadcast
eurex_derivatives_eti_t7_v2_5.delete_order_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_order_broadcast = eurex_derivatives_eti_t7_v2_5.delete_order_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_order_broadcast then
    local range = buffer(offset, size_of_delete_order_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.delete_order_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_order_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_order_broadcast.fields(buffer, offset, packet, parent, size_of_delete_order_broadcast)

  return offset + size_of_delete_order_broadcast
end

-- Delete All Quote Response
eurex_derivatives_eti_t7_v2_5.delete_all_quote_response = {}

-- Read runtime size of: Delete All Quote Response
eurex_derivatives_eti_t7_v2_5.delete_all_quote_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Quote Response
eurex_derivatives_eti_t7_v2_5.delete_all_quote_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Quote Response
eurex_derivatives_eti_t7_v2_5.delete_all_quote_response.fields = function(buffer, offset, packet, parent, size_of_delete_all_quote_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = eurex_derivatives_eti_t7_v2_5.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_not_affected_securities = eurex_derivatives_eti_t7_v2_5.no_not_affected_securities.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  -- Repeating: Not Affected Securities Grp Comp
  for not_affected_securities_grp_comp_index = 1, no_not_affected_securities do
    index, not_affected_securities_grp_comp = eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.dissect(buffer, index, packet, parent, not_affected_securities_grp_comp_index)
  end

  return index
end

-- Dissect: Delete All Quote Response
eurex_derivatives_eti_t7_v2_5.delete_all_quote_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_all_quote_response = eurex_derivatives_eti_t7_v2_5.delete_all_quote_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_all_quote_response then
    local range = buffer(offset, size_of_delete_all_quote_response)
    local display = eurex_derivatives_eti_t7_v2_5.delete_all_quote_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_quote_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_all_quote_response.fields(buffer, offset, packet, parent, size_of_delete_all_quote_response)

  return offset + size_of_delete_all_quote_response
end

-- Delete All Quote Request
eurex_derivatives_eti_t7_v2_5.delete_all_quote_request = {}

-- Read runtime size of: Delete All Quote Request
eurex_derivatives_eti_t7_v2_5.delete_all_quote_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Quote Request
eurex_derivatives_eti_t7_v2_5.delete_all_quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Quote Request
eurex_derivatives_eti_t7_v2_5.delete_all_quote_request.fields = function(buffer, offset, packet, parent, size_of_delete_all_quote_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Quote Request
eurex_derivatives_eti_t7_v2_5.delete_all_quote_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_all_quote_request = eurex_derivatives_eti_t7_v2_5.delete_all_quote_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_all_quote_request then
    local range = buffer(offset, size_of_delete_all_quote_request)
    local display = eurex_derivatives_eti_t7_v2_5.delete_all_quote_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_quote_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_all_quote_request.fields(buffer, offset, packet, parent, size_of_delete_all_quote_request)

  return offset + size_of_delete_all_quote_request
end

-- Target Party Id Desk Id
eurex_derivatives_eti_t7_v2_5.target_party_id_desk_id = {}

-- Size Of: Target Party Id Desk Id
eurex_derivatives_eti_t7_v2_5.target_party_id_desk_id.size = 3

-- Display: Target Party Id Desk Id
eurex_derivatives_eti_t7_v2_5.target_party_id_desk_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Target Party Id Desk Id: No Value"
  end

  return "Target Party Id Desk Id: "..value
end

-- Dissect: Target Party Id Desk Id
eurex_derivatives_eti_t7_v2_5.target_party_id_desk_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.target_party_id_desk_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eti_t7_v2_5.target_party_id_desk_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.target_party_id_desk_id, range, value, display)

  return offset + length, value
end

-- Target Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.target_party_id_executing_trader = {}

-- Size Of: Target Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.target_party_id_executing_trader.size = 4

-- Display: Target Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.target_party_id_executing_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Target Party Id Executing Trader: No Value"
  end

  return "Target Party Id Executing Trader: "..value
end

-- Dissect: Target Party Id Executing Trader
eurex_derivatives_eti_t7_v2_5.target_party_id_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.target_party_id_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.target_party_id_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.target_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Delete All Quote Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_quote_broadcast = {}

-- Read runtime size of: Delete All Quote Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_quote_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Quote Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_quote_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Quote Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_quote_broadcast.fields = function(buffer, offset, packet, parent, size_of_delete_all_quote_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = eurex_derivatives_eti_t7_v2_5.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_entering_trader = eurex_derivatives_eti_t7_v2_5.party_id_entering_trader.dissect(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_executing_trader = eurex_derivatives_eti_t7_v2_5.target_party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_not_affected_securities = eurex_derivatives_eti_t7_v2_5.no_not_affected_securities.dissect(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, mass_action_reason = eurex_derivatives_eti_t7_v2_5.mass_action_reason.dissect(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_entering_firm = eurex_derivatives_eti_t7_v2_5.party_id_entering_firm.dissect(buffer, index, packet, parent)

  -- Target Party Id Desk Id: 3 Byte Ascii String Nullable
  index, target_party_id_desk_id = eurex_derivatives_eti_t7_v2_5.target_party_id_desk_id.dissect(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eti_t7_v2_5.pad_1.dissect(buffer, index, packet, parent)

  -- Repeating: Not Affected Securities Grp Comp
  for not_affected_securities_grp_comp_index = 1, no_not_affected_securities do
    index, not_affected_securities_grp_comp = eurex_derivatives_eti_t7_v2_5.not_affected_securities_grp_comp.dissect(buffer, index, packet, parent, not_affected_securities_grp_comp_index)
  end

  return index
end

-- Dissect: Delete All Quote Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_quote_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_all_quote_broadcast = eurex_derivatives_eti_t7_v2_5.delete_all_quote_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_all_quote_broadcast then
    local range = buffer(offset, size_of_delete_all_quote_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.delete_all_quote_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_quote_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_all_quote_broadcast.fields(buffer, offset, packet, parent, size_of_delete_all_quote_broadcast)

  return offset + size_of_delete_all_quote_broadcast
end

-- Not Aff Orig Cl Ord Id
eurex_derivatives_eti_t7_v2_5.not_aff_orig_cl_ord_id = {}

-- Size Of: Not Aff Orig Cl Ord Id
eurex_derivatives_eti_t7_v2_5.not_aff_orig_cl_ord_id.size = 8

-- Display: Not Aff Orig Cl Ord Id
eurex_derivatives_eti_t7_v2_5.not_aff_orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Not Aff Orig Cl Ord Id: No Value"
  end

  return "Not Aff Orig Cl Ord Id: "..value
end

-- Dissect: Not Aff Orig Cl Ord Id
eurex_derivatives_eti_t7_v2_5.not_aff_orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.not_aff_orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.not_aff_orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.not_aff_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Not Affected Order Id
eurex_derivatives_eti_t7_v2_5.not_affected_order_id = {}

-- Size Of: Not Affected Order Id
eurex_derivatives_eti_t7_v2_5.not_affected_order_id.size = 8

-- Display: Not Affected Order Id
eurex_derivatives_eti_t7_v2_5.not_affected_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Not Affected Order Id: No Value"
  end

  return "Not Affected Order Id: "..value
end

-- Dissect: Not Affected Order Id
eurex_derivatives_eti_t7_v2_5.not_affected_order_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.not_affected_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.not_affected_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_order_id, range, value, display)

  return offset + length, value
end

-- Not Affected Orders Grp Comp
eurex_derivatives_eti_t7_v2_5.not_affected_orders_grp_comp = {}

-- Size Of: Not Affected Orders Grp Comp
eurex_derivatives_eti_t7_v2_5.not_affected_orders_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.not_affected_order_id.size + 
  eurex_derivatives_eti_t7_v2_5.not_aff_orig_cl_ord_id.size;

-- Display: Not Affected Orders Grp Comp
eurex_derivatives_eti_t7_v2_5.not_affected_orders_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Affected Orders Grp Comp
eurex_derivatives_eti_t7_v2_5.not_affected_orders_grp_comp.fields = function(buffer, offset, packet, parent, not_affected_orders_grp_comp_index)
  local index = offset

  -- Implicit Not Affected Orders Grp Comp Index
  if not_affected_orders_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_orders_grp_comp_index, not_affected_orders_grp_comp_index)
    iteration:set_generated()
  end

  -- Not Affected Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, not_affected_order_id = eurex_derivatives_eti_t7_v2_5.not_affected_order_id.dissect(buffer, index, packet, parent)

  -- Not Aff Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, not_aff_orig_cl_ord_id = eurex_derivatives_eti_t7_v2_5.not_aff_orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Affected Orders Grp Comp
eurex_derivatives_eti_t7_v2_5.not_affected_orders_grp_comp.dissect = function(buffer, offset, packet, parent, not_affected_orders_grp_comp_index)
  if show.not_affected_orders_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.not_affected_orders_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.not_affected_orders_grp_comp.fields(buffer, offset, packet, parent, not_affected_orders_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.not_affected_orders_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.not_affected_orders_grp_comp.fields(buffer, offset, packet, parent, not_affected_orders_grp_comp_index)
  end
end

-- No Not Affected Orders
eurex_derivatives_eti_t7_v2_5.no_not_affected_orders = {}

-- Size Of: No Not Affected Orders
eurex_derivatives_eti_t7_v2_5.no_not_affected_orders.size = 2

-- Display: No Not Affected Orders
eurex_derivatives_eti_t7_v2_5.no_not_affected_orders.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Not Affected Orders: No Value"
  end

  return "No Not Affected Orders: "..value
end

-- Dissect: No Not Affected Orders
eurex_derivatives_eti_t7_v2_5.no_not_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.no_not_affected_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.no_not_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.no_not_affected_orders, range, value, display)

  return offset + length, value
end

-- Delete All Order Response
eurex_derivatives_eti_t7_v2_5.delete_all_order_response = {}

-- Read runtime size of: Delete All Order Response
eurex_derivatives_eti_t7_v2_5.delete_all_order_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Order Response
eurex_derivatives_eti_t7_v2_5.delete_all_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Order Response
eurex_derivatives_eti_t7_v2_5.delete_all_order_response.fields = function(buffer, offset, packet, parent, size_of_delete_all_order_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = eurex_derivatives_eti_t7_v2_5.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = eurex_derivatives_eti_t7_v2_5.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- No Not Affected Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_not_affected_orders = eurex_derivatives_eti_t7_v2_5.no_not_affected_orders.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  -- Repeating: Not Affected Orders Grp Comp
  for not_affected_orders_grp_comp_index = 1, no_not_affected_orders do
    index, not_affected_orders_grp_comp = eurex_derivatives_eti_t7_v2_5.not_affected_orders_grp_comp.dissect(buffer, index, packet, parent, not_affected_orders_grp_comp_index)
  end

  return index
end

-- Dissect: Delete All Order Response
eurex_derivatives_eti_t7_v2_5.delete_all_order_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_all_order_response = eurex_derivatives_eti_t7_v2_5.delete_all_order_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_all_order_response then
    local range = buffer(offset, size_of_delete_all_order_response)
    local display = eurex_derivatives_eti_t7_v2_5.delete_all_order_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_order_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_all_order_response.fields(buffer, offset, packet, parent, size_of_delete_all_order_response)

  return offset + size_of_delete_all_order_response
end

-- Delete All Order Request
eurex_derivatives_eti_t7_v2_5.delete_all_order_request = {}

-- Read runtime size of: Delete All Order Request
eurex_derivatives_eti_t7_v2_5.delete_all_order_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Order Request
eurex_derivatives_eti_t7_v2_5.delete_all_order_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Order Request
eurex_derivatives_eti_t7_v2_5.delete_all_order_request.fields = function(buffer, offset, packet, parent, size_of_delete_all_order_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_executing_trader = eurex_derivatives_eti_t7_v2_5.target_party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eti_t7_v2_5.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Request
eurex_derivatives_eti_t7_v2_5.delete_all_order_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_all_order_request = eurex_derivatives_eti_t7_v2_5.delete_all_order_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_all_order_request then
    local range = buffer(offset, size_of_delete_all_order_request)
    local display = eurex_derivatives_eti_t7_v2_5.delete_all_order_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_order_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_all_order_request.fields(buffer, offset, packet, parent, size_of_delete_all_order_request)

  return offset + size_of_delete_all_order_request
end

-- Delete All Order Quote Event Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_order_quote_event_broadcast = {}

-- Read runtime size of: Delete All Order Quote Event Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_order_quote_event_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Order Quote Event Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_order_quote_event_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Order Quote Event Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_order_quote_event_broadcast.fields = function(buffer, offset, packet, parent, size_of_delete_all_order_quote_event_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = eurex_derivatives_eti_t7_v2_5.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, mass_action_reason = eurex_derivatives_eti_t7_v2_5.mass_action_reason.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_eti_t7_v2_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Quote Event Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_order_quote_event_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_all_order_quote_event_broadcast = eurex_derivatives_eti_t7_v2_5.delete_all_order_quote_event_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_all_order_quote_event_broadcast then
    local range = buffer(offset, size_of_delete_all_order_quote_event_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.delete_all_order_quote_event_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_order_quote_event_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_all_order_quote_event_broadcast.fields(buffer, offset, packet, parent, size_of_delete_all_order_quote_event_broadcast)

  return offset + size_of_delete_all_order_quote_event_broadcast
end

-- Delete All Order Nr Response
eurex_derivatives_eti_t7_v2_5.delete_all_order_nr_response = {}

-- Read runtime size of: Delete All Order Nr Response
eurex_derivatives_eti_t7_v2_5.delete_all_order_nr_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Order Nr Response
eurex_derivatives_eti_t7_v2_5.delete_all_order_nr_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Order Nr Response
eurex_derivatives_eti_t7_v2_5.delete_all_order_nr_response.fields = function(buffer, offset, packet, parent, size_of_delete_all_order_nr_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = eurex_derivatives_eti_t7_v2_5.mass_action_report_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Nr Response
eurex_derivatives_eti_t7_v2_5.delete_all_order_nr_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_all_order_nr_response = eurex_derivatives_eti_t7_v2_5.delete_all_order_nr_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_all_order_nr_response then
    local range = buffer(offset, size_of_delete_all_order_nr_response)
    local display = eurex_derivatives_eti_t7_v2_5.delete_all_order_nr_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_order_nr_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_all_order_nr_response.fields(buffer, offset, packet, parent, size_of_delete_all_order_nr_response)

  return offset + size_of_delete_all_order_nr_response
end

-- Delete All Order Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_order_broadcast = {}

-- Read runtime size of: Delete All Order Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_order_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Order Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_order_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Order Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_order_broadcast.fields = function(buffer, offset, packet, parent, size_of_delete_all_order_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_derivatives_eti_t7_v2_5.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = eurex_derivatives_eti_t7_v2_5.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = eurex_derivatives_eti_t7_v2_5.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_executing_trader = eurex_derivatives_eti_t7_v2_5.target_party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_entering_trader = eurex_derivatives_eti_t7_v2_5.party_id_entering_trader.dissect(buffer, index, packet, parent)

  -- No Not Affected Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_not_affected_orders = eurex_derivatives_eti_t7_v2_5.no_not_affected_orders.dissect(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_entering_firm = eurex_derivatives_eti_t7_v2_5.party_id_entering_firm.dissect(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, mass_action_reason = eurex_derivatives_eti_t7_v2_5.mass_action_reason.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_eti_t7_v2_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eti_t7_v2_5.pad_3.dissect(buffer, index, packet, parent)

  -- Repeating: Not Affected Orders Grp Comp
  for not_affected_orders_grp_comp_index = 1, no_not_affected_orders do
    index, not_affected_orders_grp_comp = eurex_derivatives_eti_t7_v2_5.not_affected_orders_grp_comp.dissect(buffer, index, packet, parent, not_affected_orders_grp_comp_index)
  end

  return index
end

-- Dissect: Delete All Order Broadcast
eurex_derivatives_eti_t7_v2_5.delete_all_order_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_all_order_broadcast = eurex_derivatives_eti_t7_v2_5.delete_all_order_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_all_order_broadcast then
    local range = buffer(offset, size_of_delete_all_order_broadcast)
    local display = eurex_derivatives_eti_t7_v2_5.delete_all_order_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.delete_all_order_broadcast, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.delete_all_order_broadcast.fields(buffer, offset, packet, parent, size_of_delete_all_order_broadcast)

  return offset + size_of_delete_all_order_broadcast
end

-- Cross Request Response
eurex_derivatives_eti_t7_v2_5.cross_request_response = {}

-- Read runtime size of: Cross Request Response
eurex_derivatives_eti_t7_v2_5.cross_request_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Cross Request Response
eurex_derivatives_eti_t7_v2_5.cross_request_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Request Response
eurex_derivatives_eti_t7_v2_5.cross_request_response.fields = function(buffer, offset, packet, parent, size_of_cross_request_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eti_t7_v2_5.exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request Response
eurex_derivatives_eti_t7_v2_5.cross_request_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_cross_request_response = eurex_derivatives_eti_t7_v2_5.cross_request_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.cross_request_response then
    local range = buffer(offset, size_of_cross_request_response)
    local display = eurex_derivatives_eti_t7_v2_5.cross_request_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.cross_request_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.cross_request_response.fields(buffer, offset, packet, parent, size_of_cross_request_response)

  return offset + size_of_cross_request_response
end

-- Cross Request
eurex_derivatives_eti_t7_v2_5.cross_request = {}

-- Read runtime size of: Cross Request
eurex_derivatives_eti_t7_v2_5.cross_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Cross Request
eurex_derivatives_eti_t7_v2_5.cross_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Request
eurex_derivatives_eti_t7_v2_5.cross_request.fields = function(buffer, offset, packet, parent, size_of_cross_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_eti_t7_v2_5.order_qty.dissect(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String Nullable
  index, compliance_text = eurex_derivatives_eti_t7_v2_5.compliance_text.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eti_t7_v2_5.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request
eurex_derivatives_eti_t7_v2_5.cross_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_cross_request = eurex_derivatives_eti_t7_v2_5.cross_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.cross_request then
    local range = buffer(offset, size_of_cross_request)
    local display = eurex_derivatives_eti_t7_v2_5.cross_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.cross_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.cross_request.fields(buffer, offset, packet, parent, size_of_cross_request)

  return offset + size_of_cross_request
end

-- Appl Id Status
eurex_derivatives_eti_t7_v2_5.appl_id_status = {}

-- Size Of: Appl Id Status
eurex_derivatives_eti_t7_v2_5.appl_id_status.size = 4

-- Display: Appl Id Status
eurex_derivatives_eti_t7_v2_5.appl_id_status.display = function(value)
  if value == 105 then
    return "Appl Id Status: Outboundconversionerror (105)"
  end
  if value == 0xFFFFFFFF then
    return "Appl Id Status: No Value"
  end

  return "Appl Id Status: Unknown("..value..")"
end

-- Dissect: Appl Id Status
eurex_derivatives_eti_t7_v2_5.appl_id_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.appl_id_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.appl_id_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.appl_id_status, range, value, display)

  return offset + length, value
end

-- Broadcast Error Notification
eurex_derivatives_eti_t7_v2_5.broadcast_error_notification = {}

-- Read runtime size of: Broadcast Error Notification
eurex_derivatives_eti_t7_v2_5.broadcast_error_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Broadcast Error Notification
eurex_derivatives_eti_t7_v2_5.broadcast_error_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Error Notification
eurex_derivatives_eti_t7_v2_5.broadcast_error_notification.fields = function(buffer, offset, packet, parent, size_of_broadcast_error_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_eti_t7_v2_5.notif_header_comp.dissect(buffer, index, packet, parent)

  -- Appl Id Status: 4 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_id_status = eurex_derivatives_eti_t7_v2_5.appl_id_status.dissect(buffer, index, packet, parent)

  -- Ref Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, ref_appl_sub_id = eurex_derivatives_eti_t7_v2_5.ref_appl_sub_id.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = eurex_derivatives_eti_t7_v2_5.var_text_len.dissect(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ref_appl_id = eurex_derivatives_eti_t7_v2_5.ref_appl_id.dissect(buffer, index, packet, parent)

  -- Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_status = eurex_derivatives_eti_t7_v2_5.session_status.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eti_t7_v2_5.pad_4.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = eurex_derivatives_eti_t7_v2_5.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = eurex_derivatives_eti_t7_v2_5.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Broadcast Error Notification
eurex_derivatives_eti_t7_v2_5.broadcast_error_notification.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_broadcast_error_notification = eurex_derivatives_eti_t7_v2_5.broadcast_error_notification.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.broadcast_error_notification then
    local range = buffer(offset, size_of_broadcast_error_notification)
    local display = eurex_derivatives_eti_t7_v2_5.broadcast_error_notification.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.broadcast_error_notification, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.broadcast_error_notification.fields(buffer, offset, packet, parent, size_of_broadcast_error_notification)

  return offset + size_of_broadcast_error_notification
end

-- Leg Security Type
eurex_derivatives_eti_t7_v2_5.leg_security_type = {}

-- Size Of: Leg Security Type
eurex_derivatives_eti_t7_v2_5.leg_security_type.size = 1

-- Display: Leg Security Type
eurex_derivatives_eti_t7_v2_5.leg_security_type.display = function(value)
  if value == 1 then
    return "Leg Security Type: Multileg Instrument (1)"
  end
  if value == 2 then
    return "Leg Security Type: Underlying Leg (2)"
  end
  if value == 0xFF then
    return "Leg Security Type: No Value"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
eurex_derivatives_eti_t7_v2_5.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
eurex_derivatives_eti_t7_v2_5.leg_ratio_qty = {}

-- Size Of: Leg Ratio Qty
eurex_derivatives_eti_t7_v2_5.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
eurex_derivatives_eti_t7_v2_5.leg_ratio_qty.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
eurex_derivatives_eti_t7_v2_5.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Symbol
eurex_derivatives_eti_t7_v2_5.leg_symbol = {}

-- Size Of: Leg Symbol
eurex_derivatives_eti_t7_v2_5.leg_symbol.size = 4

-- Display: Leg Symbol
eurex_derivatives_eti_t7_v2_5.leg_symbol.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
eurex_derivatives_eti_t7_v2_5.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_symbol.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Leg Price
eurex_derivatives_eti_t7_v2_5.leg_price = {}

-- Size Of: Leg Price
eurex_derivatives_eti_t7_v2_5.leg_price.size = 8

-- Display: Leg Price
eurex_derivatives_eti_t7_v2_5.leg_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Translate: Leg Price
eurex_derivatives_eti_t7_v2_5.leg_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Leg Price
eurex_derivatives_eti_t7_v2_5.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.leg_price.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.leg_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Instrmt Leg Grp Comp
eurex_derivatives_eti_t7_v2_5.instrmt_leg_grp_comp = {}

-- Size Of: Instrmt Leg Grp Comp
eurex_derivatives_eti_t7_v2_5.instrmt_leg_grp_comp.size =
  eurex_derivatives_eti_t7_v2_5.leg_security_id.size + 
  eurex_derivatives_eti_t7_v2_5.leg_price.size + 
  eurex_derivatives_eti_t7_v2_5.leg_symbol.size + 
  eurex_derivatives_eti_t7_v2_5.leg_ratio_qty.size + 
  eurex_derivatives_eti_t7_v2_5.leg_side.size + 
  eurex_derivatives_eti_t7_v2_5.leg_security_type.size + 
  eurex_derivatives_eti_t7_v2_5.pad_6.size;

-- Display: Instrmt Leg Grp Comp
eurex_derivatives_eti_t7_v2_5.instrmt_leg_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrmt Leg Grp Comp
eurex_derivatives_eti_t7_v2_5.instrmt_leg_grp_comp.fields = function(buffer, offset, packet, parent, instrmt_leg_grp_comp_index)
  local index = offset

  -- Implicit Instrmt Leg Grp Comp Index
  if instrmt_leg_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.instrmt_leg_grp_comp_index, instrmt_leg_grp_comp_index)
    iteration:set_generated()
  end

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_security_id = eurex_derivatives_eti_t7_v2_5.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_price = eurex_derivatives_eti_t7_v2_5.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Symbol: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_symbol = eurex_derivatives_eti_t7_v2_5.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_ratio_qty = eurex_derivatives_eti_t7_v2_5.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = eurex_derivatives_eti_t7_v2_5.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_security_type = eurex_derivatives_eti_t7_v2_5.leg_security_type.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eti_t7_v2_5.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmt Leg Grp Comp
eurex_derivatives_eti_t7_v2_5.instrmt_leg_grp_comp.dissect = function(buffer, offset, packet, parent, instrmt_leg_grp_comp_index)
  if show.instrmt_leg_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.instrmt_leg_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.instrmt_leg_grp_comp.fields(buffer, offset, packet, parent, instrmt_leg_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.instrmt_leg_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.instrmt_leg_grp_comp.fields(buffer, offset, packet, parent, instrmt_leg_grp_comp_index)
  end
end

-- Implied Market Indicator
eurex_derivatives_eti_t7_v2_5.implied_market_indicator = {}

-- Size Of: Implied Market Indicator
eurex_derivatives_eti_t7_v2_5.implied_market_indicator.size = 1

-- Display: Implied Market Indicator
eurex_derivatives_eti_t7_v2_5.implied_market_indicator.display = function(value)
  if value == 0 then
    return "Implied Market Indicator: Notimplied (0)"
  end
  if value == 3 then
    return "Implied Market Indicator: Impliedinout (3)"
  end
  if value == 0xFF then
    return "Implied Market Indicator: No Value"
  end

  return "Implied Market Indicator: Unknown("..value..")"
end

-- Dissect: Implied Market Indicator
eurex_derivatives_eti_t7_v2_5.implied_market_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.implied_market_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.implied_market_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.implied_market_indicator, range, value, display)

  return offset + length, value
end

-- Multileg Model
eurex_derivatives_eti_t7_v2_5.multileg_model = {}

-- Size Of: Multileg Model
eurex_derivatives_eti_t7_v2_5.multileg_model.size = 1

-- Display: Multileg Model
eurex_derivatives_eti_t7_v2_5.multileg_model.display = function(value)
  if value == 0 then
    return "Multileg Model: Predefined Multileg Security (0)"
  end
  if value == 1 then
    return "Multileg Model: Userdefined Multleg (1)"
  end
  if value == 0xFF then
    return "Multileg Model: No Value"
  end

  return "Multileg Model: Unknown("..value..")"
end

-- Dissect: Multileg Model
eurex_derivatives_eti_t7_v2_5.multileg_model.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.multileg_model.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.multileg_model.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.multileg_model, range, value, display)

  return offset + length, value
end

-- Security Sub Type
eurex_derivatives_eti_t7_v2_5.security_sub_type = {}

-- Size Of: Security Sub Type
eurex_derivatives_eti_t7_v2_5.security_sub_type.size = 4

-- Display: Security Sub Type
eurex_derivatives_eti_t7_v2_5.security_sub_type.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
eurex_derivatives_eti_t7_v2_5.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.security_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Number Of Securities
eurex_derivatives_eti_t7_v2_5.number_of_securities = {}

-- Size Of: Number Of Securities
eurex_derivatives_eti_t7_v2_5.number_of_securities.size = 4

-- Display: Number Of Securities
eurex_derivatives_eti_t7_v2_5.number_of_securities.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Number Of Securities: No Value"
  end

  return "Number Of Securities: "..value
end

-- Dissect: Number Of Securities
eurex_derivatives_eti_t7_v2_5.number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.number_of_securities.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eti_t7_v2_5.number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.number_of_securities, range, value, display)

  return offset + length, value
end

-- Security Response Id
eurex_derivatives_eti_t7_v2_5.security_response_id = {}

-- Size Of: Security Response Id
eurex_derivatives_eti_t7_v2_5.security_response_id.size = 8

-- Display: Security Response Id
eurex_derivatives_eti_t7_v2_5.security_response_id.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Security Response Id: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Security Response Id: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Security Response Id
eurex_derivatives_eti_t7_v2_5.security_response_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.security_response_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.security_response_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.security_response_id, range, value, display)

  return offset + length, value
end

-- Last Update Time
eurex_derivatives_eti_t7_v2_5.last_update_time = {}

-- Size Of: Last Update Time
eurex_derivatives_eti_t7_v2_5.last_update_time.size = 8

-- Display: Last Update Time
eurex_derivatives_eti_t7_v2_5.last_update_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Update Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Last Update Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Update Time
eurex_derivatives_eti_t7_v2_5.last_update_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.last_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eti_t7_v2_5.last_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- High Limit Price
eurex_derivatives_eti_t7_v2_5.high_limit_price = {}

-- Size Of: High Limit Price
eurex_derivatives_eti_t7_v2_5.high_limit_price.size = 8

-- Display: High Limit Price
eurex_derivatives_eti_t7_v2_5.high_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Translate: High Limit Price
eurex_derivatives_eti_t7_v2_5.high_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: High Limit Price
eurex_derivatives_eti_t7_v2_5.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.high_limit_price.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.high_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Low Limit Price
eurex_derivatives_eti_t7_v2_5.low_limit_price = {}

-- Size Of: Low Limit Price
eurex_derivatives_eti_t7_v2_5.low_limit_price.size = 8

-- Display: Low Limit Price
eurex_derivatives_eti_t7_v2_5.low_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
eurex_derivatives_eti_t7_v2_5.low_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Low Limit Price
eurex_derivatives_eti_t7_v2_5.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_eti_t7_v2_5.low_limit_price.translate(raw)
  local display = eurex_derivatives_eti_t7_v2_5.low_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Add Complex Instrument Response
eurex_derivatives_eti_t7_v2_5.add_complex_instrument_response = {}

-- Read runtime size of: Add Complex Instrument Response
eurex_derivatives_eti_t7_v2_5.add_complex_instrument_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Add Complex Instrument Response
eurex_derivatives_eti_t7_v2_5.add_complex_instrument_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Complex Instrument Response
eurex_derivatives_eti_t7_v2_5.add_complex_instrument_response.fields = function(buffer, offset, packet, parent, size_of_add_complex_instrument_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_derivatives_eti_t7_v2_5.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, low_limit_price = eurex_derivatives_eti_t7_v2_5.low_limit_price.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, high_limit_price = eurex_derivatives_eti_t7_v2_5.high_limit_price.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eti_t7_v2_5.security_id.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_update_time = eurex_derivatives_eti_t7_v2_5.last_update_time.dissect(buffer, index, packet, parent)

  -- Security Response Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, security_response_id = eurex_derivatives_eti_t7_v2_5.security_response_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Number Of Securities: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_securities = eurex_derivatives_eti_t7_v2_5.number_of_securities.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer Nullable
  index, security_sub_type = eurex_derivatives_eti_t7_v2_5.security_sub_type.dissect(buffer, index, packet, parent)

  -- Multileg Model: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, multileg_model = eurex_derivatives_eti_t7_v2_5.multileg_model.dissect(buffer, index, packet, parent)

  -- Implied Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, implied_market_indicator = eurex_derivatives_eti_t7_v2_5.implied_market_indicator.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_legs = eurex_derivatives_eti_t7_v2_5.no_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Instrmt Leg Grp Comp
  for instrmt_leg_grp_comp_index = 1, no_legs do
    index, instrmt_leg_grp_comp = eurex_derivatives_eti_t7_v2_5.instrmt_leg_grp_comp.dissect(buffer, index, packet, parent, instrmt_leg_grp_comp_index)
  end

  return index
end

-- Dissect: Add Complex Instrument Response
eurex_derivatives_eti_t7_v2_5.add_complex_instrument_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_add_complex_instrument_response = eurex_derivatives_eti_t7_v2_5.add_complex_instrument_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.add_complex_instrument_response then
    local range = buffer(offset, size_of_add_complex_instrument_response)
    local display = eurex_derivatives_eti_t7_v2_5.add_complex_instrument_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.add_complex_instrument_response, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.add_complex_instrument_response.fields(buffer, offset, packet, parent, size_of_add_complex_instrument_response)

  return offset + size_of_add_complex_instrument_response
end

-- Add Complex Instrument Request
eurex_derivatives_eti_t7_v2_5.add_complex_instrument_request = {}

-- Read runtime size of: Add Complex Instrument Request
eurex_derivatives_eti_t7_v2_5.add_complex_instrument_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Add Complex Instrument Request
eurex_derivatives_eti_t7_v2_5.add_complex_instrument_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Complex Instrument Request
eurex_derivatives_eti_t7_v2_5.add_complex_instrument_request.fields = function(buffer, offset, packet, parent, size_of_add_complex_instrument_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = eurex_derivatives_eti_t7_v2_5.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_eti_t7_v2_5.request_header_comp.dissect(buffer, index, packet, parent)

  -- Compliance Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, compliance_id = eurex_derivatives_eti_t7_v2_5.compliance_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eti_t7_v2_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer Nullable
  index, security_sub_type = eurex_derivatives_eti_t7_v2_5.security_sub_type.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, product_complex = eurex_derivatives_eti_t7_v2_5.product_complex.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_legs = eurex_derivatives_eti_t7_v2_5.no_legs.dissect(buffer, index, packet, parent)

  -- Compliance Text: 20 Byte Ascii String Nullable
  index, compliance_text = eurex_derivatives_eti_t7_v2_5.compliance_text.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eti_t7_v2_5.pad_2.dissect(buffer, index, packet, parent)

  -- Repeating: Instrmt Leg Grp Comp
  for instrmt_leg_grp_comp_index = 1, no_legs do
    index, instrmt_leg_grp_comp = eurex_derivatives_eti_t7_v2_5.instrmt_leg_grp_comp.dissect(buffer, index, packet, parent, instrmt_leg_grp_comp_index)
  end

  return index
end

-- Dissect: Add Complex Instrument Request
eurex_derivatives_eti_t7_v2_5.add_complex_instrument_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_add_complex_instrument_request = eurex_derivatives_eti_t7_v2_5.add_complex_instrument_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.add_complex_instrument_request then
    local range = buffer(offset, size_of_add_complex_instrument_request)
    local display = eurex_derivatives_eti_t7_v2_5.add_complex_instrument_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.add_complex_instrument_request, range, display)
  end

  eurex_derivatives_eti_t7_v2_5.add_complex_instrument_request.fields(buffer, offset, packet, parent, size_of_add_complex_instrument_request)

  return offset + size_of_add_complex_instrument_request
end

-- Payload
eurex_derivatives_eti_t7_v2_5.payload = {}

-- Calculate runtime size of: Payload
eurex_derivatives_eti_t7_v2_5.payload.size = function(buffer, offset, template_id)
  -- Size of Add Complex Instrument Request
  if template_id == 10301 then
    return eurex_derivatives_eti_t7_v2_5.add_complex_instrument_request.size(buffer, offset)
  end
  -- Size of Add Complex Instrument Response
  if template_id == 10302 then
    return eurex_derivatives_eti_t7_v2_5.add_complex_instrument_response.size(buffer, offset)
  end
  -- Size of Broadcast Error Notification
  if template_id == 10032 then
    return eurex_derivatives_eti_t7_v2_5.broadcast_error_notification.size(buffer, offset)
  end
  -- Size of Cross Request
  if template_id == 10118 then
    return eurex_derivatives_eti_t7_v2_5.cross_request.size(buffer, offset)
  end
  -- Size of Cross Request Response
  if template_id == 10119 then
    return eurex_derivatives_eti_t7_v2_5.cross_request_response.size(buffer, offset)
  end
  -- Size of Delete All Order Broadcast
  if template_id == 10122 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_order_broadcast.size(buffer, offset)
  end
  -- Size of Delete All Order Nr Response
  if template_id == 10124 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_order_nr_response.size(buffer, offset)
  end
  -- Size of Delete All Order Quote Event Broadcast
  if template_id == 10308 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_order_quote_event_broadcast.size(buffer, offset)
  end
  -- Size of Delete All Order Request
  if template_id == 10120 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_order_request.size(buffer, offset)
  end
  -- Size of Delete All Order Response
  if template_id == 10121 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_order_response.size(buffer, offset)
  end
  -- Size of Delete All Quote Broadcast
  if template_id == 10410 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_quote_broadcast.size(buffer, offset)
  end
  -- Size of Delete All Quote Request
  if template_id == 10408 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_quote_request.size(buffer, offset)
  end
  -- Size of Delete All Quote Response
  if template_id == 10409 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_quote_response.size(buffer, offset)
  end
  -- Size of Delete Order Broadcast
  if template_id == 10112 then
    return eurex_derivatives_eti_t7_v2_5.delete_order_broadcast.size(buffer, offset)
  end
  -- Size of Delete Order Complex Request
  if template_id == 10123 then
    return eurex_derivatives_eti_t7_v2_5.delete_order_complex_request.size(buffer, offset)
  end
  -- Size of Delete Order Nr Response
  if template_id == 10111 then
    return eurex_derivatives_eti_t7_v2_5.delete_order_nr_response.size(buffer, offset)
  end
  -- Size of Delete Order Response
  if template_id == 10110 then
    return eurex_derivatives_eti_t7_v2_5.delete_order_response.size(buffer, offset)
  end
  -- Size of Delete Order Single Request
  if template_id == 10109 then
    return eurex_derivatives_eti_t7_v2_5.delete_order_single_request.size(buffer, offset)
  end
  -- Size of Forced Logout Notification
  if template_id == 10012 then
    return eurex_derivatives_eti_t7_v2_5.forced_logout_notification.size(buffer, offset)
  end
  -- Size of Gateway Request
  if template_id == 10020 then
    return eurex_derivatives_eti_t7_v2_5.gateway_request.size(buffer, offset)
  end
  -- Size of Gateway Response
  if template_id == 10021 then
    return eurex_derivatives_eti_t7_v2_5.gateway_response.size(buffer, offset)
  end
  -- Size of Heartbeat
  if template_id == 10011 then
    return eurex_derivatives_eti_t7_v2_5.heartbeat.size(buffer, offset)
  end
  -- Size of Heartbeat Notification
  if template_id == 10023 then
    return eurex_derivatives_eti_t7_v2_5.heartbeat_notification.size(buffer, offset)
  end
  -- Size of Inquire Enrichment Rule Id List Request
  if template_id == 10040 then
    return eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_request.size(buffer, offset)
  end
  -- Size of Inquire Enrichment Rule Id List Response
  if template_id == 10041 then
    return eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_response.size(buffer, offset)
  end
  -- Size of Inquire Mm Parameter Request
  if template_id == 10305 then
    return eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_request.size(buffer, offset)
  end
  -- Size of Inquire Mm Parameter Response
  if template_id == 10306 then
    return eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_response.size(buffer, offset)
  end
  -- Size of Inquire Session List Request
  if template_id == 10035 then
    return eurex_derivatives_eti_t7_v2_5.inquire_session_list_request.size(buffer, offset)
  end
  -- Size of Inquire Session List Response
  if template_id == 10036 then
    return eurex_derivatives_eti_t7_v2_5.inquire_session_list_response.size(buffer, offset)
  end
  -- Size of Inquire User Request
  if template_id == 10038 then
    return eurex_derivatives_eti_t7_v2_5.inquire_user_request.size(buffer, offset)
  end
  -- Size of Inquire User Response
  if template_id == 10039 then
    return eurex_derivatives_eti_t7_v2_5.inquire_user_response.size(buffer, offset)
  end
  -- Size of Legal Notification Broadcast
  if template_id == 10037 then
    return eurex_derivatives_eti_t7_v2_5.legal_notification_broadcast.size(buffer, offset)
  end
  -- Size of Logon Request
  if template_id == 10000 then
    return eurex_derivatives_eti_t7_v2_5.logon_request.size(buffer, offset)
  end
  -- Size of Logon Response
  if template_id == 10001 then
    return eurex_derivatives_eti_t7_v2_5.logon_response.size(buffer, offset)
  end
  -- Size of Logout Request
  if template_id == 10002 then
    return eurex_derivatives_eti_t7_v2_5.logout_request.size(buffer, offset)
  end
  -- Size of Logout Response
  if template_id == 10003 then
    return eurex_derivatives_eti_t7_v2_5.logout_response.size(buffer, offset)
  end
  -- Size of Mm Parameter Definition Request
  if template_id == 10303 then
    return eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_request.size(buffer, offset)
  end
  -- Size of Mm Parameter Definition Response
  if template_id == 10304 then
    return eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_response.size(buffer, offset)
  end
  -- Size of Mass Quote Request
  if template_id == 10405 then
    return eurex_derivatives_eti_t7_v2_5.mass_quote_request.size(buffer, offset)
  end
  -- Size of Mass Quote Response
  if template_id == 10406 then
    return eurex_derivatives_eti_t7_v2_5.mass_quote_response.size(buffer, offset)
  end
  -- Size of Modify Order Complex Request
  if template_id == 10114 then
    return eurex_derivatives_eti_t7_v2_5.modify_order_complex_request.size(buffer, offset)
  end
  -- Size of Modify Order Nr Response
  if template_id == 10108 then
    return eurex_derivatives_eti_t7_v2_5.modify_order_nr_response.size(buffer, offset)
  end
  -- Size of Modify Order Response
  if template_id == 10107 then
    return eurex_derivatives_eti_t7_v2_5.modify_order_response.size(buffer, offset)
  end
  -- Size of Modify Order Single Request
  if template_id == 10106 then
    return eurex_derivatives_eti_t7_v2_5.modify_order_single_request.size(buffer, offset)
  end
  -- Size of Modify Order Single Short Request
  if template_id == 10126 then
    return eurex_derivatives_eti_t7_v2_5.modify_order_single_short_request.size(buffer, offset)
  end
  -- Size of New Order Complex Request
  if template_id == 10113 then
    return eurex_derivatives_eti_t7_v2_5.new_order_complex_request.size(buffer, offset)
  end
  -- Size of New Order Nr Response
  if template_id == 10102 then
    return eurex_derivatives_eti_t7_v2_5.new_order_nr_response.size(buffer, offset)
  end
  -- Size of New Order Response
  if template_id == 10101 then
    return eurex_derivatives_eti_t7_v2_5.new_order_response.size(buffer, offset)
  end
  -- Size of New Order Single Request
  if template_id == 10100 then
    return eurex_derivatives_eti_t7_v2_5.new_order_single_request.size(buffer, offset)
  end
  -- Size of New Order Single Short Request
  if template_id == 10125 then
    return eurex_derivatives_eti_t7_v2_5.new_order_single_short_request.size(buffer, offset)
  end
  -- Size of News Broadcast
  if template_id == 10031 then
    return eurex_derivatives_eti_t7_v2_5.news_broadcast.size(buffer, offset)
  end
  -- Size of Order Exec Notification
  if template_id == 10104 then
    return eurex_derivatives_eti_t7_v2_5.order_exec_notification.size(buffer, offset)
  end
  -- Size of Order Exec Report Broadcast
  if template_id == 10117 then
    return eurex_derivatives_eti_t7_v2_5.order_exec_report_broadcast.size(buffer, offset)
  end
  -- Size of Order Exec Response
  if template_id == 10103 then
    return eurex_derivatives_eti_t7_v2_5.order_exec_response.size(buffer, offset)
  end
  -- Size of Party Action Report
  if template_id == 10042 then
    return eurex_derivatives_eti_t7_v2_5.party_action_report.size(buffer, offset)
  end
  -- Size of Party Entitlements Update Report
  if template_id == 10034 then
    return eurex_derivatives_eti_t7_v2_5.party_entitlements_update_report.size(buffer, offset)
  end
  -- Size of Quote Activation Notification
  if template_id == 10411 then
    return eurex_derivatives_eti_t7_v2_5.quote_activation_notification.size(buffer, offset)
  end
  -- Size of Quote Activation Request
  if template_id == 10403 then
    return eurex_derivatives_eti_t7_v2_5.quote_activation_request.size(buffer, offset)
  end
  -- Size of Quote Activation Response
  if template_id == 10404 then
    return eurex_derivatives_eti_t7_v2_5.quote_activation_response.size(buffer, offset)
  end
  -- Size of Quote Execution Report
  if template_id == 10407 then
    return eurex_derivatives_eti_t7_v2_5.quote_execution_report.size(buffer, offset)
  end
  -- Size of Rfq Request
  if template_id == 10401 then
    return eurex_derivatives_eti_t7_v2_5.rfq_request.size(buffer, offset)
  end
  -- Size of Rfq Response
  if template_id == 10402 then
    return eurex_derivatives_eti_t7_v2_5.rfq_response.size(buffer, offset)
  end
  -- Size of Reject
  if template_id == 10010 then
    return eurex_derivatives_eti_t7_v2_5.reject.size(buffer, offset)
  end
  -- Size of Retransmit Me Message Request
  if template_id == 10026 then
    return eurex_derivatives_eti_t7_v2_5.retransmit_me_message_request.size(buffer, offset)
  end
  -- Size of Retransmit Me Message Response
  if template_id == 10027 then
    return eurex_derivatives_eti_t7_v2_5.retransmit_me_message_response.size(buffer, offset)
  end
  -- Size of Retransmit Request
  if template_id == 10008 then
    return eurex_derivatives_eti_t7_v2_5.retransmit_request.size(buffer, offset)
  end
  -- Size of Retransmit Response
  if template_id == 10009 then
    return eurex_derivatives_eti_t7_v2_5.retransmit_response.size(buffer, offset)
  end
  -- Size of Risk Notification Broadcast
  if template_id == 10033 then
    return eurex_derivatives_eti_t7_v2_5.risk_notification_broadcast.size(buffer, offset)
  end
  -- Size of Service Availability Broadcast
  if template_id == 10030 then
    return eurex_derivatives_eti_t7_v2_5.service_availability_broadcast.size(buffer, offset)
  end
  -- Size of Subscribe Request
  if template_id == 10025 then
    return eurex_derivatives_eti_t7_v2_5.subscribe_request.size(buffer, offset)
  end
  -- Size of Subscribe Response
  if template_id == 10005 then
    return eurex_derivatives_eti_t7_v2_5.subscribe_response.size(buffer, offset)
  end
  -- Size of Tm Trading Session Status Broadcast
  if template_id == 10501 then
    return eurex_derivatives_eti_t7_v2_5.tm_trading_session_status_broadcast.size(buffer, offset)
  end
  -- Size of Throttle Update Notification
  if template_id == 10028 then
    return eurex_derivatives_eti_t7_v2_5.throttle_update_notification.size(buffer, offset)
  end
  -- Size of Trade Broadcast
  if template_id == 10500 then
    return eurex_derivatives_eti_t7_v2_5.trade_broadcast.size(buffer, offset)
  end
  -- Size of Trading Session Status Broadcast
  if template_id == 10307 then
    return eurex_derivatives_eti_t7_v2_5.trading_session_status_broadcast.size(buffer, offset)
  end
  -- Size of Unsubscribe Request
  if template_id == 10006 then
    return eurex_derivatives_eti_t7_v2_5.unsubscribe_request.size(buffer, offset)
  end
  -- Size of Unsubscribe Response
  if template_id == 10007 then
    return eurex_derivatives_eti_t7_v2_5.unsubscribe_response.size(buffer, offset)
  end
  -- Size of User Login Request
  if template_id == 10018 then
    return eurex_derivatives_eti_t7_v2_5.user_login_request.size(buffer, offset)
  end
  -- Size of User Login Response
  if template_id == 10019 then
    return eurex_derivatives_eti_t7_v2_5.user_login_response.size(buffer, offset)
  end
  -- Size of User Logout Request
  if template_id == 10029 then
    return eurex_derivatives_eti_t7_v2_5.user_logout_request.size(buffer, offset)
  end
  -- Size of User Logout Response
  if template_id == 10024 then
    return eurex_derivatives_eti_t7_v2_5.user_logout_response.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
eurex_derivatives_eti_t7_v2_5.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
eurex_derivatives_eti_t7_v2_5.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Add Complex Instrument Request
  if template_id == 10301 then
    return eurex_derivatives_eti_t7_v2_5.add_complex_instrument_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Complex Instrument Response
  if template_id == 10302 then
    return eurex_derivatives_eti_t7_v2_5.add_complex_instrument_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broadcast Error Notification
  if template_id == 10032 then
    return eurex_derivatives_eti_t7_v2_5.broadcast_error_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request
  if template_id == 10118 then
    return eurex_derivatives_eti_t7_v2_5.cross_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request Response
  if template_id == 10119 then
    return eurex_derivatives_eti_t7_v2_5.cross_request_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Broadcast
  if template_id == 10122 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_order_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Nr Response
  if template_id == 10124 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_order_nr_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Quote Event Broadcast
  if template_id == 10308 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_order_quote_event_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Request
  if template_id == 10120 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_order_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Response
  if template_id == 10121 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Broadcast
  if template_id == 10410 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_quote_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Request
  if template_id == 10408 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Response
  if template_id == 10409 then
    return eurex_derivatives_eti_t7_v2_5.delete_all_quote_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Broadcast
  if template_id == 10112 then
    return eurex_derivatives_eti_t7_v2_5.delete_order_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Complex Request
  if template_id == 10123 then
    return eurex_derivatives_eti_t7_v2_5.delete_order_complex_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Nr Response
  if template_id == 10111 then
    return eurex_derivatives_eti_t7_v2_5.delete_order_nr_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Response
  if template_id == 10110 then
    return eurex_derivatives_eti_t7_v2_5.delete_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Single Request
  if template_id == 10109 then
    return eurex_derivatives_eti_t7_v2_5.delete_order_single_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Forced Logout Notification
  if template_id == 10012 then
    return eurex_derivatives_eti_t7_v2_5.forced_logout_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Request
  if template_id == 10020 then
    return eurex_derivatives_eti_t7_v2_5.gateway_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Response
  if template_id == 10021 then
    return eurex_derivatives_eti_t7_v2_5.gateway_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if template_id == 10011 then
    return eurex_derivatives_eti_t7_v2_5.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Notification
  if template_id == 10023 then
    return eurex_derivatives_eti_t7_v2_5.heartbeat_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Enrichment Rule Id List Request
  if template_id == 10040 then
    return eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Enrichment Rule Id List Response
  if template_id == 10041 then
    return eurex_derivatives_eti_t7_v2_5.inquire_enrichment_rule_id_list_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Mm Parameter Request
  if template_id == 10305 then
    return eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Mm Parameter Response
  if template_id == 10306 then
    return eurex_derivatives_eti_t7_v2_5.inquire_mm_parameter_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Session List Request
  if template_id == 10035 then
    return eurex_derivatives_eti_t7_v2_5.inquire_session_list_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Session List Response
  if template_id == 10036 then
    return eurex_derivatives_eti_t7_v2_5.inquire_session_list_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inquire User Request
  if template_id == 10038 then
    return eurex_derivatives_eti_t7_v2_5.inquire_user_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inquire User Response
  if template_id == 10039 then
    return eurex_derivatives_eti_t7_v2_5.inquire_user_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Legal Notification Broadcast
  if template_id == 10037 then
    return eurex_derivatives_eti_t7_v2_5.legal_notification_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Request
  if template_id == 10000 then
    return eurex_derivatives_eti_t7_v2_5.logon_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Response
  if template_id == 10001 then
    return eurex_derivatives_eti_t7_v2_5.logon_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if template_id == 10002 then
    return eurex_derivatives_eti_t7_v2_5.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response
  if template_id == 10003 then
    return eurex_derivatives_eti_t7_v2_5.logout_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mm Parameter Definition Request
  if template_id == 10303 then
    return eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mm Parameter Definition Response
  if template_id == 10304 then
    return eurex_derivatives_eti_t7_v2_5.mm_parameter_definition_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Request
  if template_id == 10405 then
    return eurex_derivatives_eti_t7_v2_5.mass_quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Response
  if template_id == 10406 then
    return eurex_derivatives_eti_t7_v2_5.mass_quote_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Complex Request
  if template_id == 10114 then
    return eurex_derivatives_eti_t7_v2_5.modify_order_complex_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Nr Response
  if template_id == 10108 then
    return eurex_derivatives_eti_t7_v2_5.modify_order_nr_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if template_id == 10107 then
    return eurex_derivatives_eti_t7_v2_5.modify_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Single Request
  if template_id == 10106 then
    return eurex_derivatives_eti_t7_v2_5.modify_order_single_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Single Short Request
  if template_id == 10126 then
    return eurex_derivatives_eti_t7_v2_5.modify_order_single_short_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Complex Request
  if template_id == 10113 then
    return eurex_derivatives_eti_t7_v2_5.new_order_complex_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Nr Response
  if template_id == 10102 then
    return eurex_derivatives_eti_t7_v2_5.new_order_nr_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response
  if template_id == 10101 then
    return eurex_derivatives_eti_t7_v2_5.new_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single Request
  if template_id == 10100 then
    return eurex_derivatives_eti_t7_v2_5.new_order_single_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single Short Request
  if template_id == 10125 then
    return eurex_derivatives_eti_t7_v2_5.new_order_single_short_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Broadcast
  if template_id == 10031 then
    return eurex_derivatives_eti_t7_v2_5.news_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Notification
  if template_id == 10104 then
    return eurex_derivatives_eti_t7_v2_5.order_exec_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Report Broadcast
  if template_id == 10117 then
    return eurex_derivatives_eti_t7_v2_5.order_exec_report_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Response
  if template_id == 10103 then
    return eurex_derivatives_eti_t7_v2_5.order_exec_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Party Action Report
  if template_id == 10042 then
    return eurex_derivatives_eti_t7_v2_5.party_action_report.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Party Entitlements Update Report
  if template_id == 10034 then
    return eurex_derivatives_eti_t7_v2_5.party_entitlements_update_report.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Activation Notification
  if template_id == 10411 then
    return eurex_derivatives_eti_t7_v2_5.quote_activation_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Activation Request
  if template_id == 10403 then
    return eurex_derivatives_eti_t7_v2_5.quote_activation_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Activation Response
  if template_id == 10404 then
    return eurex_derivatives_eti_t7_v2_5.quote_activation_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Execution Report
  if template_id == 10407 then
    return eurex_derivatives_eti_t7_v2_5.quote_execution_report.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Request
  if template_id == 10401 then
    return eurex_derivatives_eti_t7_v2_5.rfq_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Response
  if template_id == 10402 then
    return eurex_derivatives_eti_t7_v2_5.rfq_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject
  if template_id == 10010 then
    return eurex_derivatives_eti_t7_v2_5.reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Me Message Request
  if template_id == 10026 then
    return eurex_derivatives_eti_t7_v2_5.retransmit_me_message_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Me Message Response
  if template_id == 10027 then
    return eurex_derivatives_eti_t7_v2_5.retransmit_me_message_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request
  if template_id == 10008 then
    return eurex_derivatives_eti_t7_v2_5.retransmit_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Response
  if template_id == 10009 then
    return eurex_derivatives_eti_t7_v2_5.retransmit_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Notification Broadcast
  if template_id == 10033 then
    return eurex_derivatives_eti_t7_v2_5.risk_notification_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Service Availability Broadcast
  if template_id == 10030 then
    return eurex_derivatives_eti_t7_v2_5.service_availability_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscribe Request
  if template_id == 10025 then
    return eurex_derivatives_eti_t7_v2_5.subscribe_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscribe Response
  if template_id == 10005 then
    return eurex_derivatives_eti_t7_v2_5.subscribe_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tm Trading Session Status Broadcast
  if template_id == 10501 then
    return eurex_derivatives_eti_t7_v2_5.tm_trading_session_status_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Throttle Update Notification
  if template_id == 10028 then
    return eurex_derivatives_eti_t7_v2_5.throttle_update_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Broadcast
  if template_id == 10500 then
    return eurex_derivatives_eti_t7_v2_5.trade_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Broadcast
  if template_id == 10307 then
    return eurex_derivatives_eti_t7_v2_5.trading_session_status_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsubscribe Request
  if template_id == 10006 then
    return eurex_derivatives_eti_t7_v2_5.unsubscribe_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsubscribe Response
  if template_id == 10007 then
    return eurex_derivatives_eti_t7_v2_5.unsubscribe_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Login Request
  if template_id == 10018 then
    return eurex_derivatives_eti_t7_v2_5.user_login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Login Response
  if template_id == 10019 then
    return eurex_derivatives_eti_t7_v2_5.user_login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Logout Request
  if template_id == 10029 then
    return eurex_derivatives_eti_t7_v2_5.user_logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Logout Response
  if template_id == 10024 then
    return eurex_derivatives_eti_t7_v2_5.user_logout_response.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
eurex_derivatives_eti_t7_v2_5.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return eurex_derivatives_eti_t7_v2_5.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = eurex_derivatives_eti_t7_v2_5.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = eurex_derivatives_eti_t7_v2_5.payload.display(buffer, packet, parent)
  local element = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.payload, range, display)

  return eurex_derivatives_eti_t7_v2_5.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Template Id
eurex_derivatives_eti_t7_v2_5.template_id = {}

-- Size Of: Template Id
eurex_derivatives_eti_t7_v2_5.template_id.size = 2

-- Display: Template Id
eurex_derivatives_eti_t7_v2_5.template_id.display = function(value)
  if value == 0xFFFF then
    return "Template Id: No Value"
  end
  if value == 10301 then
    return "Template Id: Add Complex Instrument Request (10301)"
  end
  if value == 10302 then
    return "Template Id: Add Complex Instrument Response (10302)"
  end
  if value == 10032 then
    return "Template Id: Broadcast Error Notification (10032)"
  end
  if value == 10118 then
    return "Template Id: Cross Request (10118)"
  end
  if value == 10119 then
    return "Template Id: Cross Request Response (10119)"
  end
  if value == 10122 then
    return "Template Id: Delete All Order Broadcast (10122)"
  end
  if value == 10124 then
    return "Template Id: Delete All Order Nr Response (10124)"
  end
  if value == 10308 then
    return "Template Id: Delete All Order Quote Event Broadcast (10308)"
  end
  if value == 10120 then
    return "Template Id: Delete All Order Request (10120)"
  end
  if value == 10121 then
    return "Template Id: Delete All Order Response (10121)"
  end
  if value == 10410 then
    return "Template Id: Delete All Quote Broadcast (10410)"
  end
  if value == 10408 then
    return "Template Id: Delete All Quote Request (10408)"
  end
  if value == 10409 then
    return "Template Id: Delete All Quote Response (10409)"
  end
  if value == 10112 then
    return "Template Id: Delete Order Broadcast (10112)"
  end
  if value == 10123 then
    return "Template Id: Delete Order Complex Request (10123)"
  end
  if value == 10111 then
    return "Template Id: Delete Order Nr Response (10111)"
  end
  if value == 10110 then
    return "Template Id: Delete Order Response (10110)"
  end
  if value == 10109 then
    return "Template Id: Delete Order Single Request (10109)"
  end
  if value == 10012 then
    return "Template Id: Forced Logout Notification (10012)"
  end
  if value == 10020 then
    return "Template Id: Gateway Request (10020)"
  end
  if value == 10021 then
    return "Template Id: Gateway Response (10021)"
  end
  if value == 10011 then
    return "Template Id: Heartbeat (10011)"
  end
  if value == 10023 then
    return "Template Id: Heartbeat Notification (10023)"
  end
  if value == 10040 then
    return "Template Id: Inquire Enrichment Rule Id List Request (10040)"
  end
  if value == 10041 then
    return "Template Id: Inquire Enrichment Rule Id List Response (10041)"
  end
  if value == 10305 then
    return "Template Id: Inquire Mm Parameter Request (10305)"
  end
  if value == 10306 then
    return "Template Id: Inquire Mm Parameter Response (10306)"
  end
  if value == 10035 then
    return "Template Id: Inquire Session List Request (10035)"
  end
  if value == 10036 then
    return "Template Id: Inquire Session List Response (10036)"
  end
  if value == 10038 then
    return "Template Id: Inquire User Request (10038)"
  end
  if value == 10039 then
    return "Template Id: Inquire User Response (10039)"
  end
  if value == 10037 then
    return "Template Id: Legal Notification Broadcast (10037)"
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
  if value == 10303 then
    return "Template Id: Mm Parameter Definition Request (10303)"
  end
  if value == 10304 then
    return "Template Id: Mm Parameter Definition Response (10304)"
  end
  if value == 10405 then
    return "Template Id: Mass Quote Request (10405)"
  end
  if value == 10406 then
    return "Template Id: Mass Quote Response (10406)"
  end
  if value == 10114 then
    return "Template Id: Modify Order Complex Request (10114)"
  end
  if value == 10108 then
    return "Template Id: Modify Order Nr Response (10108)"
  end
  if value == 10107 then
    return "Template Id: Modify Order Response (10107)"
  end
  if value == 10106 then
    return "Template Id: Modify Order Single Request (10106)"
  end
  if value == 10126 then
    return "Template Id: Modify Order Single Short Request (10126)"
  end
  if value == 10113 then
    return "Template Id: New Order Complex Request (10113)"
  end
  if value == 10102 then
    return "Template Id: New Order Nr Response (10102)"
  end
  if value == 10101 then
    return "Template Id: New Order Response (10101)"
  end
  if value == 10100 then
    return "Template Id: New Order Single Request (10100)"
  end
  if value == 10125 then
    return "Template Id: New Order Single Short Request (10125)"
  end
  if value == 10031 then
    return "Template Id: News Broadcast (10031)"
  end
  if value == 10104 then
    return "Template Id: Order Exec Notification (10104)"
  end
  if value == 10117 then
    return "Template Id: Order Exec Report Broadcast (10117)"
  end
  if value == 10103 then
    return "Template Id: Order Exec Response (10103)"
  end
  if value == 10042 then
    return "Template Id: Party Action Report (10042)"
  end
  if value == 10034 then
    return "Template Id: Party Entitlements Update Report (10034)"
  end
  if value == 10411 then
    return "Template Id: Quote Activation Notification (10411)"
  end
  if value == 10403 then
    return "Template Id: Quote Activation Request (10403)"
  end
  if value == 10404 then
    return "Template Id: Quote Activation Response (10404)"
  end
  if value == 10407 then
    return "Template Id: Quote Execution Report (10407)"
  end
  if value == 10401 then
    return "Template Id: Rfq Request (10401)"
  end
  if value == 10402 then
    return "Template Id: Rfq Response (10402)"
  end
  if value == 10010 then
    return "Template Id: Reject (10010)"
  end
  if value == 10026 then
    return "Template Id: Retransmit Me Message Request (10026)"
  end
  if value == 10027 then
    return "Template Id: Retransmit Me Message Response (10027)"
  end
  if value == 10008 then
    return "Template Id: Retransmit Request (10008)"
  end
  if value == 10009 then
    return "Template Id: Retransmit Response (10009)"
  end
  if value == 10033 then
    return "Template Id: Risk Notification Broadcast (10033)"
  end
  if value == 10030 then
    return "Template Id: Service Availability Broadcast (10030)"
  end
  if value == 10025 then
    return "Template Id: Subscribe Request (10025)"
  end
  if value == 10005 then
    return "Template Id: Subscribe Response (10005)"
  end
  if value == 10501 then
    return "Template Id: Tm Trading Session Status Broadcast (10501)"
  end
  if value == 10028 then
    return "Template Id: Throttle Update Notification (10028)"
  end
  if value == 10500 then
    return "Template Id: Trade Broadcast (10500)"
  end
  if value == 10307 then
    return "Template Id: Trading Session Status Broadcast (10307)"
  end
  if value == 10006 then
    return "Template Id: Unsubscribe Request (10006)"
  end
  if value == 10007 then
    return "Template Id: Unsubscribe Response (10007)"
  end
  if value == 10018 then
    return "Template Id: User Login Request (10018)"
  end
  if value == 10019 then
    return "Template Id: User Login Response (10019)"
  end
  if value == 10029 then
    return "Template Id: User Logout Request (10029)"
  end
  if value == 10024 then
    return "Template Id: User Logout Response (10024)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
eurex_derivatives_eti_t7_v2_5.template_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.template_id, range, value, display)

  return offset + length, value
end

-- Body Len
eurex_derivatives_eti_t7_v2_5.body_len = {}

-- Size Of: Body Len
eurex_derivatives_eti_t7_v2_5.body_len.size = 4

-- Display: Body Len
eurex_derivatives_eti_t7_v2_5.body_len.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Body Len: No Value"
  end

  return "Body Len: "..value
end

-- Dissect: Body Len
eurex_derivatives_eti_t7_v2_5.body_len.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v2_5.body_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v2_5.body_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.body_len, range, value, display)

  return offset + length, value
end

-- Message Header
eurex_derivatives_eti_t7_v2_5.message_header = {}

-- Size Of: Message Header
eurex_derivatives_eti_t7_v2_5.message_header.size =
  eurex_derivatives_eti_t7_v2_5.body_len.size + 
  eurex_derivatives_eti_t7_v2_5.template_id.size;

-- Display: Message Header
eurex_derivatives_eti_t7_v2_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
eurex_derivatives_eti_t7_v2_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 4 Byte Unsigned Fixed Width Integer Nullable
  index, body_len = eurex_derivatives_eti_t7_v2_5.body_len.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 82 values
  index, template_id = eurex_derivatives_eti_t7_v2_5.template_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
eurex_derivatives_eti_t7_v2_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.message_header, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v2_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v2_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v2_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
eurex_derivatives_eti_t7_v2_5.message = {}

-- Display: Message
eurex_derivatives_eti_t7_v2_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
eurex_derivatives_eti_t7_v2_5.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = eurex_derivatives_eti_t7_v2_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 81 branches
  index = eurex_derivatives_eti_t7_v2_5.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
eurex_derivatives_eti_t7_v2_5.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_eurex_derivatives_eti_t7_v2_5.fields.message, buffer(offset, 0))
    local current = eurex_derivatives_eti_t7_v2_5.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = eurex_derivatives_eti_t7_v2_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    eurex_derivatives_eti_t7_v2_5.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < eurex_derivatives_eti_t7_v2_5.message_header.size(buffer, index) then
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
eurex_derivatives_eti_t7_v2_5.packet = {}

-- Dissect Packet
eurex_derivatives_eti_t7_v2_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = eurex_derivatives_eti_t7_v2_5.message.dissect(buffer, index, packet, parent, size_of_message)
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
function omi_eurex_derivatives_eti_t7_v2_5.init()
end

-- Dissector for Eurex Derivatives Eti T7 2.5
function omi_eurex_derivatives_eti_t7_v2_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_eurex_derivatives_eti_t7_v2_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_eurex_derivatives_eti_t7_v2_5, buffer(), omi_eurex_derivatives_eti_t7_v2_5.description, "("..buffer:len().." Bytes)")
  return eurex_derivatives_eti_t7_v2_5.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_eurex_derivatives_eti_t7_v2_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
eurex_derivatives_eti_t7_v2_5.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Eurex Derivatives Eti T7 2.5
local function omi_eurex_derivatives_eti_t7_v2_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not eurex_derivatives_eti_t7_v2_5.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_eurex_derivatives_eti_t7_v2_5
  omi_eurex_derivatives_eti_t7_v2_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Eurex Derivatives Eti T7 2.5
omi_eurex_derivatives_eti_t7_v2_5:register_heuristic("tcp", omi_eurex_derivatives_eti_t7_v2_5_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 2.5
--   Date: Friday, November 7, 2014
--   Specification: eurex_eti_manual_V251.pdf
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
