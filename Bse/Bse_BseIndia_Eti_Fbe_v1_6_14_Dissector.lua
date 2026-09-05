-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bse BseIndia Eti Fbe 1.6.14 Protocol
local omi_bse_bseindia_eti_fbe_v1_6_14 = Proto("Omi.Bse.BseIndia.Eti.Fbe.v1.6.14", "Bse BseIndia Eti Fbe 1.6.14")

-- Protocol table
local bse_bseindia_eti_fbe_v1_6_14 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bse BseIndia Eti Fbe 1.6.14 Fields
omi_bse_bseindia_eti_fbe_v1_6_14.fields.account = ProtoField.new("Account", "bse.bseindia.eti.fbe.v1.6.14.account", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.account_type = ProtoField.new("Account Type", "bse.bseindia.eti.fbe.v1.6.14.accounttype", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.accrued_interest_amt = ProtoField.new("Accrued Interest Amt", "bse.bseindia.eti.fbe.v1.6.14.accruedinterestamt", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.activity_time = ProtoField.new("Activity Time", "bse.bseindia.eti.fbe.v1.6.14.activitytime", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "bse.bseindia.eti.fbe.v1.6.14.aggressorindicator", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.algo_id = ProtoField.new("Algo Id", "bse.bseindia.eti.fbe.v1.6.14.algoid", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.alignment_padding = ProtoField.new("Alignment Padding", "bse.bseindia.eti.fbe.v1.6.14.alignmentpadding", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.all_or_none_flag = ProtoField.new("All Or None Flag", "bse.bseindia.eti.fbe.v1.6.14.allornoneflag", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_beg_msg_id = ProtoField.new("Appl Beg Msg Id", "bse.bseindia.eti.fbe.v1.6.14.applbegmsgid", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_beg_seq_num = ProtoField.new("Appl Beg Seq Num", "bse.bseindia.eti.fbe.v1.6.14.applbegseqnum", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_end_msg_id = ProtoField.new("Appl End Msg Id", "bse.bseindia.eti.fbe.v1.6.14.applendmsgid", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_end_seq_num = ProtoField.new("Appl End Seq Num", "bse.bseindia.eti.fbe.v1.6.14.applendseqnum", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_id = ProtoField.new("Appl Id", "bse.bseindia.eti.fbe.v1.6.14.applid", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_id_status = ProtoField.new("Appl Id Status", "bse.bseindia.eti.fbe.v1.6.14.applidstatus", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_msg_id = ProtoField.new("Appl Msg Id", "bse.bseindia.eti.fbe.v1.6.14.applmsgid", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_resend_flag = ProtoField.new("Appl Resend Flag", "bse.bseindia.eti.fbe.v1.6.14.applresendflag", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_seq_indicator = ProtoField.new("Appl Seq Indicator", "bse.bseindia.eti.fbe.v1.6.14.applseqindicator", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "bse.bseindia.eti.fbe.v1.6.14.applseqnum", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_seq_status = ProtoField.new("Appl Seq Status", "bse.bseindia.eti.fbe.v1.6.14.applseqstatus", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_seq_trade_date = ProtoField.new("Appl Seq Trade Date", "bse.bseindia.eti.fbe.v1.6.14.applseqtradedate", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_sub_id = ProtoField.new("Appl Sub Id", "bse.bseindia.eti.fbe.v1.6.14.applsubid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_total_message_count = ProtoField.new("Appl Total Message Count", "bse.bseindia.eti.fbe.v1.6.14.appltotalmessagecount", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_usage_orders = ProtoField.new("Appl Usage Orders", "bse.bseindia.eti.fbe.v1.6.14.applusageorders", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_usage_quotes = ProtoField.new("Appl Usage Quotes", "bse.bseindia.eti.fbe.v1.6.14.applusagequotes", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.application_system_name = ProtoField.new("Application System Name", "bse.bseindia.eti.fbe.v1.6.14.applicationsystemname", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.application_system_vendor = ProtoField.new("Application System Vendor", "bse.bseindia.eti.fbe.v1.6.14.applicationsystemvendor", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.application_system_version = ProtoField.new("Application System Version", "bse.bseindia.eti.fbe.v1.6.14.applicationsystemversion", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.auto_accept_indicator = ProtoField.new("Auto Accept Indicator", "bse.bseindia.eti.fbe.v1.6.14.autoacceptindicator", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.bid_cxl_size = ProtoField.new("Bid Cxl Size", "bse.bseindia.eti.fbe.v1.6.14.bidcxlsize", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.bid_px = ProtoField.new("Bid Px", "bse.bseindia.eti.fbe.v1.6.14.bidpx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.bid_size = ProtoField.new("Bid Size", "bse.bseindia.eti.fbe.v1.6.14.bidsize", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.body_len = ProtoField.new("Body Len", "bse.bseindia.eti.fbe.v1.6.14.bodylen", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.business_unit_symbol = ProtoField.new("Business Unit Symbol", "bse.bseindia.eti.fbe.v1.6.14.businessunitsymbol", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "bse.bseindia.eti.fbe.v1.6.14.clordid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.clearing_trade_price = ProtoField.new("Clearing Trade Price", "bse.bseindia.eti.fbe.v1.6.14.clearingtradeprice", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.clearing_trade_qty = ProtoField.new("Clearing Trade Qty", "bse.bseindia.eti.fbe.v1.6.14.clearingtradeqty", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.client_code = ProtoField.new("Client Code", "bse.bseindia.eti.fbe.v1.6.14.clientcode", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.cp_code = ProtoField.new("Cp Code", "bse.bseindia.eti.fbe.v1.6.14.cpcode", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.cum_qty = ProtoField.new("Cum Qty", "bse.bseindia.eti.fbe.v1.6.14.cumqty", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "bse.bseindia.eti.fbe.v1.6.14.custorderhandlinginst", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.cxl_qty = ProtoField.new("Cxl Qty", "bse.bseindia.eti.fbe.v1.6.14.cxlqty", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.days_left_for_passwd_expiry = ProtoField.new("Days Left For Passwd Expiry", "bse.bseindia.eti.fbe.v1.6.14.daysleftforpasswdexpiry", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.default_cstm_appl_ver_id = ProtoField.new("Default Cstm Appl Ver Id", "bse.bseindia.eti.fbe.v1.6.14.defaultcstmapplverid", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delta_qty_flag = ProtoField.new("Delta Qty Flag", "bse.bseindia.eti.fbe.v1.6.14.deltaqtyflag", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.duration = ProtoField.new("Duration", "bse.bseindia.eti.fbe.v1.6.14.duration", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.enrichment_rule_id = ProtoField.new("Enrichment Rule Id", "bse.bseindia.eti.fbe.v1.6.14.enrichmentruleid", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.exec_id = ProtoField.new("Exec Id", "bse.bseindia.eti.fbe.v1.6.14.execid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.exec_inst = ProtoField.new("Exec Inst", "bse.bseindia.eti.fbe.v1.6.14.execinst", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "bse.bseindia.eti.fbe.v1.6.14.execrestatementreason", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.exec_type = ProtoField.new("Exec Type", "bse.bseindia.eti.fbe.v1.6.14.exectype", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.expire_date = ProtoField.new("Expire Date", "bse.bseindia.eti.fbe.v1.6.14.expiredate", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_dirty_px = ProtoField.new("Fill Dirty Px", "bse.bseindia.eti.fbe.v1.6.14.filldirtypx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "bse.bseindia.eti.fbe.v1.6.14.fillexecid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_liquidity_ind = ProtoField.new("Fill Liquidity Ind", "bse.bseindia.eti.fbe.v1.6.14.fillliquidityind", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_match_id = ProtoField.new("Fill Match Id", "bse.bseindia.eti.fbe.v1.6.14.fillmatchid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_px = ProtoField.new("Fill Px", "bse.bseindia.eti.fbe.v1.6.14.fillpx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_qty = ProtoField.new("Fill Qty", "bse.bseindia.eti.fbe.v1.6.14.fillqty", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_yield = ProtoField.new("Fill Yield", "bse.bseindia.eti.fbe.v1.6.14.fillyield", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.filler1 = ProtoField.new("Filler1", "bse.bseindia.eti.fbe.v1.6.14.filler1", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.filler2 = ProtoField.new("Filler2", "bse.bseindia.eti.fbe.v1.6.14.filler2", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.filler3 = ProtoField.new("Filler3", "bse.bseindia.eti.fbe.v1.6.14.filler3", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.filler4 = ProtoField.new("Filler4", "bse.bseindia.eti.fbe.v1.6.14.filler4", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.filler4v2 = ProtoField.new("Filler4v2", "bse.bseindia.eti.fbe.v1.6.14.filler4v2", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fills_grp_comp = ProtoField.new("Fills Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.fillsgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fix_engine_name = ProtoField.new("Fix Engine Name", "bse.bseindia.eti.fbe.v1.6.14.fixenginename", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fix_engine_vendor = ProtoField.new("Fix Engine Vendor", "bse.bseindia.eti.fbe.v1.6.14.fixenginevendor", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fix_engine_version = ProtoField.new("Fix Engine Version", "bse.bseindia.eti.fbe.v1.6.14.fixengineversion", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.free_text_3 = ProtoField.new("Free Text 3", "bse.bseindia.eti.fbe.v1.6.14.freetext3", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.gateway_id = ProtoField.new("Gateway Id", "bse.bseindia.eti.fbe.v1.6.14.gatewayid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.gateway_sub_id = ProtoField.new("Gateway Sub Id", "bse.bseindia.eti.fbe.v1.6.14.gatewaysubid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.grace_logins_left = ProtoField.new("Grace Logins Left", "bse.bseindia.eti.fbe.v1.6.14.graceloginsleft", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "bse.bseindia.eti.fbe.v1.6.14.grosstradeamt", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.headline = ProtoField.new("Headline", "bse.bseindia.eti.fbe.v1.6.14.headline", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "bse.bseindia.eti.fbe.v1.6.14.heartbtint", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.increment_decrement_status = ProtoField.new("Increment Decrement Status", "bse.bseindia.eti.fbe.v1.6.14.incrementdecrementstatus", ftypes.INT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.initialization_vector = ProtoField.new("Initialization Vector", "bse.bseindia.eti.fbe.v1.6.14.initializationvector", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.instrmnt_leg_exec_grp_comp = ProtoField.new("Instrmnt Leg Exec Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.instrmntlegexecgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.last_fragment = ProtoField.new("Last Fragment", "bse.bseindia.eti.fbe.v1.6.14.lastfragment", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.last_login_ip = ProtoField.new("Last Login Ip", "bse.bseindia.eti.fbe.v1.6.14.lastloginip", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.last_login_time = ProtoField.new("Last Login Time", "bse.bseindia.eti.fbe.v1.6.14.lastlogintime", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.last_px = ProtoField.new("Last Px", "bse.bseindia.eti.fbe.v1.6.14.lastpx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.last_qty = ProtoField.new("Last Qty", "bse.bseindia.eti.fbe.v1.6.14.lastqty", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.leaves_qty = ProtoField.new("Leaves Qty", "bse.bseindia.eti.fbe.v1.6.14.leavesqty", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_account = ProtoField.new("Leg Account", "bse.bseindia.eti.fbe.v1.6.14.legaccount", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_exec_id = ProtoField.new("Leg Exec Id", "bse.bseindia.eti.fbe.v1.6.14.legexecid", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_last_px = ProtoField.new("Leg Last Px", "bse.bseindia.eti.fbe.v1.6.14.leglastpx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "bse.bseindia.eti.fbe.v1.6.14.leglastqty", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_ord_grp_comp = ProtoField.new("Leg Ord Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.legordgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_position_effect = ProtoField.new("Leg Position Effect", "bse.bseindia.eti.fbe.v1.6.14.legpositioneffect", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_security_id = ProtoField.new("Leg Security Id", "bse.bseindia.eti.fbe.v1.6.14.legsecurityid", ftypes.INT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_side = ProtoField.new("Leg Side", "bse.bseindia.eti.fbe.v1.6.14.legside", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.list_update_action = ProtoField.new("List Update Action", "bse.bseindia.eti.fbe.v1.6.14.listupdateaction", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.market_id = ProtoField.new("Market Id", "bse.bseindia.eti.fbe.v1.6.14.marketid", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.market_segment_id = ProtoField.new("Market Segment Id", "bse.bseindia.eti.fbe.v1.6.14.marketsegmentid", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.mass_action_reason = ProtoField.new("Mass Action Reason", "bse.bseindia.eti.fbe.v1.6.14.massactionreason", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "bse.bseindia.eti.fbe.v1.6.14.massactionreportid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.match_date = ProtoField.new("Match Date", "bse.bseindia.eti.fbe.v1.6.14.matchdate", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.match_sub_type = ProtoField.new("Match Sub Type", "bse.bseindia.eti.fbe.v1.6.14.matchsubtype", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.match_type = ProtoField.new("Match Type", "bse.bseindia.eti.fbe.v1.6.14.matchtype", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.matching_engine_status = ProtoField.new("Matching Engine Status", "bse.bseindia.eti.fbe.v1.6.14.matchingenginestatus", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.matching_engine_trade_date = ProtoField.new("Matching Engine Trade Date", "bse.bseindia.eti.fbe.v1.6.14.matchingenginetradedate", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.max_price_percentage = ProtoField.new("Max Price Percentage", "bse.bseindia.eti.fbe.v1.6.14.maxpricepercentage", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.max_show = ProtoField.new("Max Show", "bse.bseindia.eti.fbe.v1.6.14.maxshow", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.member_type = ProtoField.new("Member Type", "bse.bseindia.eti.fbe.v1.6.14.membertype", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.message_tag = ProtoField.new("Message Tag", "bse.bseindia.eti.fbe.v1.6.14.messagetag", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "bse.bseindia.eti.fbe.v1.6.14.msgseqnum", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_exec_grp_comp = ProtoField.new("Multi Leg Exec Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.multilegexecgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_fill_grp_comp = ProtoField.new("Multi Leg Fill Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.multilegfillgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_grp_comp = ProtoField.new("Multi Leg Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.multileggrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_ord_grp_comp = ProtoField.new("Multi Leg Ord Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.multilegordgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_reporting_type = ProtoField.new("Multi Leg Reporting Type", "bse.bseindia.eti.fbe.v1.6.14.multilegreportingtype", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.network_msg_id = ProtoField.new("Network Msg Id", "bse.bseindia.eti.fbe.v1.6.14.networkmsgid", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_password = ProtoField.new("New Password", "bse.bseindia.eti.fbe.v1.6.14.newpassword", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_fills = ProtoField.new("No Fills", "bse.bseindia.eti.fbe.v1.6.14.nofills", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_fills_index = ProtoField.new("No Fills Index", "bse.bseindia.eti.fbe.v1.6.14.nofillsindex", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_leg_execs = ProtoField.new("No Leg Execs", "bse.bseindia.eti.fbe.v1.6.14.nolegexecs", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_legs = ProtoField.new("No Legs", "bse.bseindia.eti.fbe.v1.6.14.nolegs", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_not_affected_orders = ProtoField.new("No Not Affected Orders", "bse.bseindia.eti.fbe.v1.6.14.nonotaffectedorders", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_not_affected_securities = ProtoField.new("No Not Affected Securities", "bse.bseindia.eti.fbe.v1.6.14.nonotaffectedsecurities", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_of_multi_leg = ProtoField.new("No Of Multi Leg", "bse.bseindia.eti.fbe.v1.6.14.noofmultileg", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_of_multi_leg_execs = ProtoField.new("No Of Multi Leg Execs", "bse.bseindia.eti.fbe.v1.6.14.noofmultilegexecs", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_of_partition = ProtoField.new("No Of Partition", "bse.bseindia.eti.fbe.v1.6.14.noofpartition", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_quote_entries = ProtoField.new("No Quote Entries", "bse.bseindia.eti.fbe.v1.6.14.noquoteentries", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_quote_events = ProtoField.new("No Quote Events", "bse.bseindia.eti.fbe.v1.6.14.noquoteevents", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_quote_events_index = ProtoField.new("No Quote Events Index", "bse.bseindia.eti.fbe.v1.6.14.noquoteeventsindex", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_sessions = ProtoField.new("No Sessions", "bse.bseindia.eti.fbe.v1.6.14.nosessions", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_aff_orig_cl_ord_id = ProtoField.new("Not Aff Orig Cl Ord Id", "bse.bseindia.eti.fbe.v1.6.14.notafforigclordid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_order_id = ProtoField.new("Not Affected Order Id", "bse.bseindia.eti.fbe.v1.6.14.notaffectedorderid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_orders_grp_comp = ProtoField.new("Not Affected Orders Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.notaffectedordersgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_securities_grp_comp = ProtoField.new("Not Affected Securities Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.notaffectedsecuritiesgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_security_id = ProtoField.new("Not Affected Security Id", "bse.bseindia.eti.fbe.v1.6.14.notaffectedsecurityid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.notif_header_comp = ProtoField.new("Notif Header Comp", "bse.bseindia.eti.fbe.v1.6.14.notifheadercomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.nr_response_header_me_comp = ProtoField.new("Nr Response Header Me Comp", "bse.bseindia.eti.fbe.v1.6.14.nrresponseheadermecomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.nrbc_header_comp = ProtoField.new("Nrbc Header Comp", "bse.bseindia.eti.fbe.v1.6.14.nrbcheadercomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.offer_cxl_size = ProtoField.new("Offer Cxl Size", "bse.bseindia.eti.fbe.v1.6.14.offercxlsize", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.offer_px = ProtoField.new("Offer Px", "bse.bseindia.eti.fbe.v1.6.14.offerpx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.offer_size = ProtoField.new("Offer Size", "bse.bseindia.eti.fbe.v1.6.14.offersize", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.ord_status = ProtoField.new("Ord Status", "bse.bseindia.eti.fbe.v1.6.14.ordstatus", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.ord_type = ProtoField.new("Ord Type", "bse.bseindia.eti.fbe.v1.6.14.ordtype", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_category = ProtoField.new("Order Category", "bse.bseindia.eti.fbe.v1.6.14.ordercategory", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_id = ProtoField.new("Order Id", "bse.bseindia.eti.fbe.v1.6.14.orderid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_qty = ProtoField.new("Order Qty", "bse.bseindia.eti.fbe.v1.6.14.orderqty", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_routing_indicator = ProtoField.new("Order Routing Indicator", "bse.bseindia.eti.fbe.v1.6.14.orderroutingindicator", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_side = ProtoField.new("Order Side", "bse.bseindia.eti.fbe.v1.6.14.orderside", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "bse.bseindia.eti.fbe.v1.6.14.origclordid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.orig_time = ProtoField.new("Orig Time", "bse.bseindia.eti.fbe.v1.6.14.origtime", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.orig_trade_id = ProtoField.new("Orig Trade Id", "bse.bseindia.eti.fbe.v1.6.14.origtradeid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad1 = ProtoField.new("Pad1", "bse.bseindia.eti.fbe.v1.6.14.pad1", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad2 = ProtoField.new("Pad2", "bse.bseindia.eti.fbe.v1.6.14.pad2", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad2v2 = ProtoField.new("Pad2v2", "bse.bseindia.eti.fbe.v1.6.14.pad2v2", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad3 = ProtoField.new("Pad3", "bse.bseindia.eti.fbe.v1.6.14.pad3", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad4 = ProtoField.new("Pad4", "bse.bseindia.eti.fbe.v1.6.14.pad4", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad5 = ProtoField.new("Pad5", "bse.bseindia.eti.fbe.v1.6.14.pad5", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad6 = ProtoField.new("Pad6", "bse.bseindia.eti.fbe.v1.6.14.pad6", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad7 = ProtoField.new("Pad7", "bse.bseindia.eti.fbe.v1.6.14.pad7", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.partition_id = ProtoField.new("Partition Id", "bse.bseindia.eti.fbe.v1.6.14.partitionid", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_detail_id_executing_unit = ProtoField.new("Party Detail Id Executing Unit", "bse.bseindia.eti.fbe.v1.6.14.partydetailidexecutingunit", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_beneficiary = ProtoField.new("Party Id Beneficiary", "bse.bseindia.eti.fbe.v1.6.14.partyidbeneficiary", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_entering_firm = ProtoField.new("Party Id Entering Firm", "bse.bseindia.eti.fbe.v1.6.14.partyidenteringfirm", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_entering_trader = ProtoField.new("Party Id Entering Trader", "bse.bseindia.eti.fbe.v1.6.14.partyidenteringtrader", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_executing_trader = ProtoField.new("Party Id Executing Trader", "bse.bseindia.eti.fbe.v1.6.14.partyidexecutingtrader", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_executing_unit = ProtoField.new("Party Id Executing Unit", "bse.bseindia.eti.fbe.v1.6.14.partyidexecutingunit", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_location_id = ProtoField.new("Party Id Location Id", "bse.bseindia.eti.fbe.v1.6.14.partyidlocationid", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_order_origination_firm = ProtoField.new("Party Id Order Origination Firm", "bse.bseindia.eti.fbe.v1.6.14.partyidorderoriginationfirm", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_session_id = ProtoField.new("Party Id Session Id", "bse.bseindia.eti.fbe.v1.6.14.partyidsessionid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_take_up_trading_firm = ProtoField.new("Party Id Take Up Trading Firm", "bse.bseindia.eti.fbe.v1.6.14.partyidtakeuptradingfirm", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.password = ProtoField.new("Password", "bse.bseindia.eti.fbe.v1.6.14.password", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.percentage_utilized = ProtoField.new("Percentage Utilized", "bse.bseindia.eti.fbe.v1.6.14.percentageutilized", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.position_effect = ProtoField.new("Position Effect", "bse.bseindia.eti.fbe.v1.6.14.positioneffect", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.price = ProtoField.new("Price", "bse.bseindia.eti.fbe.v1.6.14.price", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.price_mk_to_limit_px = ProtoField.new("Price Mk To Limit Px", "bse.bseindia.eti.fbe.v1.6.14.pricemktolimitpx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.price_validity_check_type = ProtoField.new("Price Validity Check Type", "bse.bseindia.eti.fbe.v1.6.14.pricevaliditychecktype", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.primary_order_id = ProtoField.new("Primary Order Id", "bse.bseindia.eti.fbe.v1.6.14.primaryorderid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.product_complex = ProtoField.new("Product Complex", "bse.bseindia.eti.fbe.v1.6.14.productcomplex", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_ack_grp_comp = ProtoField.new("Quote Entry Ack Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.quoteentryackgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_grp_comp = ProtoField.new("Quote Entry Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.quoteentrygrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_reject_reason = ProtoField.new("Quote Entry Reject Reason", "bse.bseindia.eti.fbe.v1.6.14.quoteentryrejectreason", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_status = ProtoField.new("Quote Entry Status", "bse.bseindia.eti.fbe.v1.6.14.quoteentrystatus", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_exec_id = ProtoField.new("Quote Event Exec Id", "bse.bseindia.eti.fbe.v1.6.14.quoteeventexecid", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_grp_comp = ProtoField.new("Quote Event Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.quoteeventgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_liquidity_ind = ProtoField.new("Quote Event Liquidity Ind", "bse.bseindia.eti.fbe.v1.6.14.quoteeventliquidityind", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_match_id = ProtoField.new("Quote Event Match Id", "bse.bseindia.eti.fbe.v1.6.14.quoteeventmatchid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_px = ProtoField.new("Quote Event Px", "bse.bseindia.eti.fbe.v1.6.14.quoteeventpx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_qty = ProtoField.new("Quote Event Qty", "bse.bseindia.eti.fbe.v1.6.14.quoteeventqty", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_reason = ProtoField.new("Quote Event Reason", "bse.bseindia.eti.fbe.v1.6.14.quoteeventreason", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_side = ProtoField.new("Quote Event Side", "bse.bseindia.eti.fbe.v1.6.14.quoteeventside", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_type = ProtoField.new("Quote Event Type", "bse.bseindia.eti.fbe.v1.6.14.quoteeventtype", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_id = ProtoField.new("Quote Id", "bse.bseindia.eti.fbe.v1.6.14.quoteid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_leg_exec_grp_comp = ProtoField.new("Quote Leg Exec Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.quotelegexecgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_msg_id = ProtoField.new("Quote Msg Id", "bse.bseindia.eti.fbe.v1.6.14.quotemsgid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_response_id = ProtoField.new("Quote Response Id", "bse.bseindia.eti.fbe.v1.6.14.quoteresponseid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_size_type = ProtoField.new("Quote Size Type", "bse.bseindia.eti.fbe.v1.6.14.quotesizetype", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.rbc_header_comp = ProtoField.new("Rbc Header Comp", "bse.bseindia.eti.fbe.v1.6.14.rbcheadercomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.rbc_header_me_comp = ProtoField.new("Rbc Header Me Comp", "bse.bseindia.eti.fbe.v1.6.14.rbcheadermecomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.ref_appl_id = ProtoField.new("Ref Appl Id", "bse.bseindia.eti.fbe.v1.6.14.refapplid", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.ref_appl_last_msg_id = ProtoField.new("Ref Appl Last Msg Id", "bse.bseindia.eti.fbe.v1.6.14.refappllastmsgid", ftypes.BYTES)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.ref_appl_last_seq_num = ProtoField.new("Ref Appl Last Seq Num", "bse.bseindia.eti.fbe.v1.6.14.refappllastseqnum", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.ref_appl_sub_id = ProtoField.new("Ref Appl Sub Id", "bse.bseindia.eti.fbe.v1.6.14.refapplsubid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.regulatory_id = ProtoField.new("Regulatory Id", "bse.bseindia.eti.fbe.v1.6.14.regulatoryid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.regulatory_text = ProtoField.new("Regulatory Text", "bse.bseindia.eti.fbe.v1.6.14.regulatorytext", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.related_product_complex = ProtoField.new("Related Product Complex", "bse.bseindia.eti.fbe.v1.6.14.relatedproductcomplex", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.related_security_id = ProtoField.new("Related Security Id", "bse.bseindia.eti.fbe.v1.6.14.relatedsecurityid", ftypes.INT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.related_symbol = ProtoField.new("Related Symbol", "bse.bseindia.eti.fbe.v1.6.14.relatedsymbol", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.request_header_comp = ProtoField.new("Request Header Comp", "bse.bseindia.eti.fbe.v1.6.14.requestheadercomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.request_out = ProtoField.new("Request Out", "bse.bseindia.eti.fbe.v1.6.14.requestout", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.request_time = ProtoField.new("Request Time", "bse.bseindia.eti.fbe.v1.6.14.requesttime", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.requesting_party_clearing_firm = ProtoField.new("Requesting Party Clearing Firm", "bse.bseindia.eti.fbe.v1.6.14.requestingpartyclearingfirm", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.requesting_party_entering_firm = ProtoField.new("Requesting Party Entering Firm", "bse.bseindia.eti.fbe.v1.6.14.requestingpartyenteringfirm", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.requesting_party_id_executing_system = ProtoField.new("Requesting Party Id Executing System", "bse.bseindia.eti.fbe.v1.6.14.requestingpartyidexecutingsystem", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.response_header_comp = ProtoField.new("Response Header Comp", "bse.bseindia.eti.fbe.v1.6.14.responseheadercomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.response_header_me_comp = ProtoField.new("Response Header Me Comp", "bse.bseindia.eti.fbe.v1.6.14.responseheadermecomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.response_in = ProtoField.new("Response In", "bse.bseindia.eti.fbe.v1.6.14.responsein", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.risk_limit_action = ProtoField.new("Risk Limit Action", "bse.bseindia.eti.fbe.v1.6.14.risklimitaction", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.risk_mode_status = ProtoField.new("Risk Mode Status", "bse.bseindia.eti.fbe.v1.6.14.riskmodestatus", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.rollover_flag = ProtoField.new("Rollover Flag", "bse.bseindia.eti.fbe.v1.6.14.rolloverflag", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_clearing_firm = ProtoField.new("Root Party Clearing Firm", "bse.bseindia.eti.fbe.v1.6.14.rootpartyclearingfirm", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_clearing_organization = ProtoField.new("Root Party Clearing Organization", "bse.bseindia.eti.fbe.v1.6.14.rootpartyclearingorganization", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_executing_firm = ProtoField.new("Root Party Executing Firm", "bse.bseindia.eti.fbe.v1.6.14.rootpartyexecutingfirm", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_executing_trader = ProtoField.new("Root Party Executing Trader", "bse.bseindia.eti.fbe.v1.6.14.rootpartyexecutingtrader", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_beneficiary = ProtoField.new("Root Party Id Beneficiary", "bse.bseindia.eti.fbe.v1.6.14.rootpartyidbeneficiary", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_clearing_unit = ProtoField.new("Root Party Id Clearing Unit", "bse.bseindia.eti.fbe.v1.6.14.rootpartyidclearingunit", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_executing_trader = ProtoField.new("Root Party Id Executing Trader", "bse.bseindia.eti.fbe.v1.6.14.rootpartyidexecutingtrader", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_executing_unit = ProtoField.new("Root Party Id Executing Unit", "bse.bseindia.eti.fbe.v1.6.14.rootpartyidexecutingunit", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_order_origination_firm = ProtoField.new("Root Party Id Order Origination Firm", "bse.bseindia.eti.fbe.v1.6.14.rootpartyidorderoriginationfirm", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_session_id = ProtoField.new("Root Party Id Session Id", "bse.bseindia.eti.fbe.v1.6.14.rootpartyidsessionid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_take_up_trading_firm = ProtoField.new("Root Party Id Take Up Trading Firm", "bse.bseindia.eti.fbe.v1.6.14.rootpartyidtakeuptradingfirm", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.rrm_state = ProtoField.new("Rrm State", "bse.bseindia.eti.fbe.v1.6.14.rrmstate", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.scope_identifier = ProtoField.new("Scope Identifier", "bse.bseindia.eti.fbe.v1.6.14.scopeidentifier", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.secondary_gateway_id = ProtoField.new("Secondary Gateway Id", "bse.bseindia.eti.fbe.v1.6.14.secondarygatewayid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.secondary_gateway_sub_id = ProtoField.new("Secondary Gateway Sub Id", "bse.bseindia.eti.fbe.v1.6.14.secondarygatewaysubid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.security_id = ProtoField.new("Security Id", "bse.bseindia.eti.fbe.v1.6.14.securityid", ftypes.INT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.security_key = ProtoField.new("Security Key", "bse.bseindia.eti.fbe.v1.6.14.securitykey", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.segment_indicator = ProtoField.new("Segment Indicator", "bse.bseindia.eti.fbe.v1.6.14.segmentindicator", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.sender_location_id = ProtoField.new("Sender Location Id", "bse.bseindia.eti.fbe.v1.6.14.senderlocationid", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.sender_sub_id = ProtoField.new("Sender Sub Id", "bse.bseindia.eti.fbe.v1.6.14.sendersubid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.sending_time = ProtoField.new("Sending Time", "bse.bseindia.eti.fbe.v1.6.14.sendingtime", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_instance_id = ProtoField.new("Session Instance Id", "bse.bseindia.eti.fbe.v1.6.14.sessioninstanceid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_mode = ProtoField.new("Session Mode", "bse.bseindia.eti.fbe.v1.6.14.sessionmode", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "bse.bseindia.eti.fbe.v1.6.14.sessionrejectreason", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_status = ProtoField.new("Session Status", "bse.bseindia.eti.fbe.v1.6.14.sessionstatus", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_sub_mode = ProtoField.new("Session Sub Mode", "bse.bseindia.eti.fbe.v1.6.14.sessionsubmode", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.sessions_grp_comp = ProtoField.new("Sessions Grp Comp", "bse.bseindia.eti.fbe.v1.6.14.sessionsgrpcomp", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.settl_type = ProtoField.new("Settl Type", "bse.bseindia.eti.fbe.v1.6.14.settltype", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.side = ProtoField.new("Side", "bse.bseindia.eti.fbe.v1.6.14.side", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.side_last_px = ProtoField.new("Side Last Px", "bse.bseindia.eti.fbe.v1.6.14.sidelastpx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.side_last_qty = ProtoField.new("Side Last Qty", "bse.bseindia.eti.fbe.v1.6.14.sidelastqty", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.side_trade_id = ProtoField.new("Side Trade Id", "bse.bseindia.eti.fbe.v1.6.14.sidetradeid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.simple_security_id = ProtoField.new("Simple Security Id", "bse.bseindia.eti.fbe.v1.6.14.simplesecurityid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.status = ProtoField.new("Status", "bse.bseindia.eti.fbe.v1.6.14.status", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.stop_px = ProtoField.new("Stop Px", "bse.bseindia.eti.fbe.v1.6.14.stoppx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.stpc_flag = ProtoField.new("Stpc Flag", "bse.bseindia.eti.fbe.v1.6.14.stpcflag", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.strategy_link_id = ProtoField.new("Strategy Link Id", "bse.bseindia.eti.fbe.v1.6.14.strategylinkid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.subscription_scope = ProtoField.new("Subscription Scope", "bse.bseindia.eti.fbe.v1.6.14.subscriptionscope", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.target_party_id_desk_id = ProtoField.new("Target Party Id Desk Id", "bse.bseindia.eti.fbe.v1.6.14.targetpartyiddeskid", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.target_party_id_executing_trader = ProtoField.new("Target Party Id Executing Trader", "bse.bseindia.eti.fbe.v1.6.14.targetpartyidexecutingtrader", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.target_party_id_session_id = ProtoField.new("Target Party Id Session Id", "bse.bseindia.eti.fbe.v1.6.14.targetpartyidsessionid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.template_id = ProtoField.new("Template Id", "bse.bseindia.eti.fbe.v1.6.14.templateid", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.throttle_disconnect_limit = ProtoField.new("Throttle Disconnect Limit", "bse.bseindia.eti.fbe.v1.6.14.throttledisconnectlimit", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.throttle_no_msgs = ProtoField.new("Throttle No Msgs", "bse.bseindia.eti.fbe.v1.6.14.throttlenomsgs", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.throttle_time_interval = ProtoField.new("Throttle Time Interval", "bse.bseindia.eti.fbe.v1.6.14.throttletimeinterval", ftypes.INT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.time_in_force = ProtoField.new("Time In Force", "bse.bseindia.eti.fbe.v1.6.14.timeinforce", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.tot_num_trade_reports = ProtoField.new("Tot Num Trade Reports", "bse.bseindia.eti.fbe.v1.6.14.totnumtradereports", ftypes.INT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.total_collateral = ProtoField.new("Total Collateral", "bse.bseindia.eti.fbe.v1.6.14.totalcollateral", ftypes.INT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "bse.bseindia.eti.fbe.v1.6.14.tradsesevent", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trad_ses_mode = ProtoField.new("Trad Ses Mode", "bse.bseindia.eti.fbe.v1.6.14.tradsesmode", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_date = ProtoField.new("Trade Date", "bse.bseindia.eti.fbe.v1.6.14.tradedate", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_id = ProtoField.new("Trade Id", "bse.bseindia.eti.fbe.v1.6.14.tradeid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_manager_status = ProtoField.new("Trade Manager Status", "bse.bseindia.eti.fbe.v1.6.14.trademanagerstatus", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_manager_trade_date = ProtoField.new("Trade Manager Trade Date", "bse.bseindia.eti.fbe.v1.6.14.trademanagertradedate", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_report_type = ProtoField.new("Trade Report Type", "bse.bseindia.eti.fbe.v1.6.14.tradereporttype", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trading_capacity = ProtoField.new("Trading Capacity", "bse.bseindia.eti.fbe.v1.6.14.tradingcapacity", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "bse.bseindia.eti.fbe.v1.6.14.tradingsessionsubid", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.transact_time = ProtoField.new("Transact Time", "bse.bseindia.eti.fbe.v1.6.14.transacttime", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.transfer_reason = ProtoField.new("Transfer Reason", "bse.bseindia.eti.fbe.v1.6.14.transferreason", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trd_match_id = ProtoField.new("Trd Match Id", "bse.bseindia.eti.fbe.v1.6.14.trdmatchid", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trd_reg_ts_entry_time = ProtoField.new("Trd Reg Ts Entry Time", "bse.bseindia.eti.fbe.v1.6.14.trdregtsentrytime", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg Ts Time In", "bse.bseindia.eti.fbe.v1.6.14.trdregtstimein", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trd_reg_ts_time_out = ProtoField.new("Trd Reg Ts Time Out", "bse.bseindia.eti.fbe.v1.6.14.trdregtstimeout", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg Ts Time Priority", "bse.bseindia.eti.fbe.v1.6.14.trdregtstimepriority", ftypes.UINT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.triggered = ProtoField.new("Triggered", "bse.bseindia.eti.fbe.v1.6.14.triggered", ftypes.UINT8)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.underlying_dirty_price = ProtoField.new("Underlying Dirty Price", "bse.bseindia.eti.fbe.v1.6.14.underlyingdirtyprice", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.underlying_px = ProtoField.new("Underlying Px", "bse.bseindia.eti.fbe.v1.6.14.underlyingpx", ftypes.DOUBLE)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.unutilized_collateral = ProtoField.new("Unutilized Collateral", "bse.bseindia.eti.fbe.v1.6.14.unutilizedcollateral", ftypes.INT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.username = ProtoField.new("Username", "bse.bseindia.eti.fbe.v1.6.14.username", ftypes.UINT32)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.utilized_collateral = ProtoField.new("Utilized Collateral", "bse.bseindia.eti.fbe.v1.6.14.utilizedcollateral", ftypes.INT64)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.var_text = ProtoField.new("Var Text", "bse.bseindia.eti.fbe.v1.6.14.vartext", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.var_text_len = ProtoField.new("Var Text Len", "bse.bseindia.eti.fbe.v1.6.14.vartextlen", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.yield = ProtoField.new("Yield", "bse.bseindia.eti.fbe.v1.6.14.yield", ftypes.DOUBLE)

-- Bse BseIndia Eti Fbe 1.6.14 Headers
omi_bse_bseindia_eti_fbe_v1_6_14.fields.client_message = ProtoField.new("Client Message", "bse.bseindia.eti.fbe.v1.6.14.clientmessage", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.client_packet = ProtoField.new("Client Packet", "bse.bseindia.eti.fbe.v1.6.14.clientpacket", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.message_header = ProtoField.new("Message Header", "bse.bseindia.eti.fbe.v1.6.14.messageheader", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.server_message = ProtoField.new("Server Message", "bse.bseindia.eti.fbe.v1.6.14.servermessage", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.server_packet = ProtoField.new("Server Packet", "bse.bseindia.eti.fbe.v1.6.14.serverpacket", ftypes.STRING)

-- Bse BseIndia Eti 1.6.14 Application Messages
omi_bse_bseindia_eti_fbe_v1_6_14.fields.broadcast_error_notification = ProtoField.new("Broadcast Error Notification", "bse.bseindia.eti.fbe.v1.6.14.broadcasterrornotification", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.debt_inquiry_request = ProtoField.new("Debt Inquiry Request", "bse.bseindia.eti.fbe.v1.6.14.debtinquiryrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.debt_inquiry_response = ProtoField.new("Debt Inquiry Response", "bse.bseindia.eti.fbe.v1.6.14.debtinquiryresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_order_broadcast = ProtoField.new("Delete All Order Broadcast", "bse.bseindia.eti.fbe.v1.6.14.deleteallorderbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_order_nr_response = ProtoField.new("Delete All Order Nr Response", "bse.bseindia.eti.fbe.v1.6.14.deleteallordernrresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_order_quote_event_broadcast = ProtoField.new("Delete All Order Quote Event Broadcast", "bse.bseindia.eti.fbe.v1.6.14.deleteallorderquoteeventbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_order_request = ProtoField.new("Delete All Order Request", "bse.bseindia.eti.fbe.v1.6.14.deleteallorderrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_order_response = ProtoField.new("Delete All Order Response", "bse.bseindia.eti.fbe.v1.6.14.deleteallorderresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_quote_broadcast = ProtoField.new("Delete All Quote Broadcast", "bse.bseindia.eti.fbe.v1.6.14.deleteallquotebroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_quote_request = ProtoField.new("Delete All Quote Request", "bse.bseindia.eti.fbe.v1.6.14.deleteallquoterequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_quote_response = ProtoField.new("Delete All Quote Response", "bse.bseindia.eti.fbe.v1.6.14.deleteallquoteresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_order_broadcast = ProtoField.new("Delete Order Broadcast", "bse.bseindia.eti.fbe.v1.6.14.deleteorderbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_order_complex_request = ProtoField.new("Delete Order Complex Request", "bse.bseindia.eti.fbe.v1.6.14.deleteordercomplexrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_order_nr_response = ProtoField.new("Delete Order Nr Response", "bse.bseindia.eti.fbe.v1.6.14.deleteordernrresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_order_response = ProtoField.new("Delete Order Response", "bse.bseindia.eti.fbe.v1.6.14.deleteorderresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_order_single_request = ProtoField.new("Delete Order Single Request", "bse.bseindia.eti.fbe.v1.6.14.deleteordersinglerequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.forced_logout_notification = ProtoField.new("Forced Logout Notification", "bse.bseindia.eti.fbe.v1.6.14.forcedlogoutnotification", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.gateway_request = ProtoField.new("Gateway Request", "bse.bseindia.eti.fbe.v1.6.14.gatewayrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.gateway_response = ProtoField.new("Gateway Response", "bse.bseindia.eti.fbe.v1.6.14.gatewayresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.gw_order_acknowledgement = ProtoField.new("Gw Order Acknowledgement", "bse.bseindia.eti.fbe.v1.6.14.gworderacknowledgement", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.heartbeat = ProtoField.new("Heartbeat", "bse.bseindia.eti.fbe.v1.6.14.heartbeat", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.heartbeat_notification = ProtoField.new("Heartbeat Notification", "bse.bseindia.eti.fbe.v1.6.14.heartbeatnotification", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.inquire_session_list_request = ProtoField.new("Inquire Session List Request", "bse.bseindia.eti.fbe.v1.6.14.inquiresessionlistrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.inquire_session_list_response = ProtoField.new("Inquire Session List Response", "bse.bseindia.eti.fbe.v1.6.14.inquiresessionlistresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.logon_request = ProtoField.new("Logon Request", "bse.bseindia.eti.fbe.v1.6.14.logonrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.logon_response = ProtoField.new("Logon Response", "bse.bseindia.eti.fbe.v1.6.14.logonresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.logout_request = ProtoField.new("Logout Request", "bse.bseindia.eti.fbe.v1.6.14.logoutrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.logout_response = ProtoField.new("Logout Response", "bse.bseindia.eti.fbe.v1.6.14.logoutresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.mass_quote_request = ProtoField.new("Mass Quote Request", "bse.bseindia.eti.fbe.v1.6.14.massquoterequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.mass_quote_response = ProtoField.new("Mass Quote Response", "bse.bseindia.eti.fbe.v1.6.14.massquoteresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.modify_order_complex_request = ProtoField.new("Modify Order Complex Request", "bse.bseindia.eti.fbe.v1.6.14.modifyordercomplexrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.modify_order_nr_response = ProtoField.new("Modify Order Nr Response", "bse.bseindia.eti.fbe.v1.6.14.modifyordernrresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.modify_order_response = ProtoField.new("Modify Order Response", "bse.bseindia.eti.fbe.v1.6.14.modifyorderresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.modify_order_single_request = ProtoField.new("Modify Order Single Request", "bse.bseindia.eti.fbe.v1.6.14.modifyordersinglerequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.modify_order_single_short_request = ProtoField.new("Modify Order Single Short Request", "bse.bseindia.eti.fbe.v1.6.14.modifyordersingleshortrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_exec_report_broadcast = ProtoField.new("Multi Leg Exec Report Broadcast", "bse.bseindia.eti.fbe.v1.6.14.multilegexecreportbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_exec_response = ProtoField.new("Multi Leg Exec Response", "bse.bseindia.eti.fbe.v1.6.14.multilegexecresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_order_reject = ProtoField.new("Multi Leg Order Reject", "bse.bseindia.eti.fbe.v1.6.14.multilegorderreject", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_order_request = ProtoField.new("Multi Leg Order Request", "bse.bseindia.eti.fbe.v1.6.14.multilegorderrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_order_complex_request = ProtoField.new("New Order Complex Request", "bse.bseindia.eti.fbe.v1.6.14.newordercomplexrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_order_nr_response = ProtoField.new("New Order Nr Response", "bse.bseindia.eti.fbe.v1.6.14.newordernrresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_order_response = ProtoField.new("New Order Response", "bse.bseindia.eti.fbe.v1.6.14.neworderresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_order_single_request = ProtoField.new("New Order Single Request", "bse.bseindia.eti.fbe.v1.6.14.newordersinglerequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_order_single_short_request = ProtoField.new("New Order Single Short Request", "bse.bseindia.eti.fbe.v1.6.14.newordersingleshortrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.news_broadcast = ProtoField.new("News Broadcast", "bse.bseindia.eti.fbe.v1.6.14.newsbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_exec_notification = ProtoField.new("Order Exec Notification", "bse.bseindia.eti.fbe.v1.6.14.orderexecnotification", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_exec_report_broadcast = ProtoField.new("Order Exec Report Broadcast", "bse.bseindia.eti.fbe.v1.6.14.orderexecreportbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_exec_response = ProtoField.new("Order Exec Response", "bse.bseindia.eti.fbe.v1.6.14.orderexecresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_exec_report_broadcast = ProtoField.new("Quote Exec Report Broadcast", "bse.bseindia.eti.fbe.v1.6.14.quoteexecreportbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_execution_report = ProtoField.new("Quote Execution Report", "bse.bseindia.eti.fbe.v1.6.14.quoteexecutionreport", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.reject = ProtoField.new("Reject", "bse.bseindia.eti.fbe.v1.6.14.reject", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.retransmit_me_message_request = ProtoField.new("Retransmit Me Message Request", "bse.bseindia.eti.fbe.v1.6.14.retransmitmemessagerequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.retransmit_me_message_response = ProtoField.new("Retransmit Me Message Response", "bse.bseindia.eti.fbe.v1.6.14.retransmitmemessageresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.retransmit_request = ProtoField.new("Retransmit Request", "bse.bseindia.eti.fbe.v1.6.14.retransmitrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.retransmit_response = ProtoField.new("Retransmit Response", "bse.bseindia.eti.fbe.v1.6.14.retransmitresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.risk_collateral_alert_admin_broadcast = ProtoField.new("Risk Collateral Alert Admin Broadcast", "bse.bseindia.eti.fbe.v1.6.14.riskcollateralalertadminbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.risk_collateral_alert_broadcast = ProtoField.new("Risk Collateral Alert Broadcast", "bse.bseindia.eti.fbe.v1.6.14.riskcollateralalertbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.risk_notification_broadcast = ProtoField.new("Risk Notification Broadcast", "bse.bseindia.eti.fbe.v1.6.14.risknotificationbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.service_availability_broadcast = ProtoField.new("Service Availability Broadcast", "bse.bseindia.eti.fbe.v1.6.14.serviceavailabilitybroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_password_change_request = ProtoField.new("Session Password Change Request", "bse.bseindia.eti.fbe.v1.6.14.sessionpasswordchangerequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_password_change_response = ProtoField.new("Session Password Change Response", "bse.bseindia.eti.fbe.v1.6.14.sessionpasswordchangeresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_registration_request = ProtoField.new("Session Registration Request", "bse.bseindia.eti.fbe.v1.6.14.sessionregistrationrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_registration_response = ProtoField.new("Session Registration Response", "bse.bseindia.eti.fbe.v1.6.14.sessionregistrationresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.subscribe_request = ProtoField.new("Subscribe Request", "bse.bseindia.eti.fbe.v1.6.14.subscriberequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.subscribe_response = ProtoField.new("Subscribe Response", "bse.bseindia.eti.fbe.v1.6.14.subscriberesponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.throttle_update_notification = ProtoField.new("Throttle Update Notification", "bse.bseindia.eti.fbe.v1.6.14.throttleupdatenotification", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.tm_trading_session_status_broadcast = ProtoField.new("Tm Trading Session Status Broadcast", "bse.bseindia.eti.fbe.v1.6.14.tmtradingsessionstatusbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_broadcast = ProtoField.new("Trade Broadcast", "bse.bseindia.eti.fbe.v1.6.14.tradebroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_enhancement_broadcast = ProtoField.new("Trade Enhancement Broadcast", "bse.bseindia.eti.fbe.v1.6.14.tradeenhancementbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.trading_session_status_broadcast = ProtoField.new("Trading Session Status Broadcast", "bse.bseindia.eti.fbe.v1.6.14.tradingsessionstatusbroadcast", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.unsubscribe_request = ProtoField.new("Unsubscribe Request", "bse.bseindia.eti.fbe.v1.6.14.unsubscriberequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.unsubscribe_response = ProtoField.new("Unsubscribe Response", "bse.bseindia.eti.fbe.v1.6.14.unsubscriberesponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_login_request = ProtoField.new("User Login Request", "bse.bseindia.eti.fbe.v1.6.14.userloginrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_login_response = ProtoField.new("User Login Response", "bse.bseindia.eti.fbe.v1.6.14.userloginresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_logout_request = ProtoField.new("User Logout Request", "bse.bseindia.eti.fbe.v1.6.14.userlogoutrequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_logout_response = ProtoField.new("User Logout Response", "bse.bseindia.eti.fbe.v1.6.14.userlogoutresponse", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_password_change_request = ProtoField.new("User Password Change Request", "bse.bseindia.eti.fbe.v1.6.14.userpasswordchangerequest", ftypes.STRING)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_password_change_response = ProtoField.new("User Password Change Response", "bse.bseindia.eti.fbe.v1.6.14.userpasswordchangeresponse", ftypes.STRING)

-- Bse BseIndia Eti Fbe 1.6.14 generated fields
omi_bse_bseindia_eti_fbe_v1_6_14.fields.fills_grp_comp_index = ProtoField.new("Fills Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.fillsgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.instrmnt_leg_exec_grp_comp_index = ProtoField.new("Instrmnt Leg Exec Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.instrmntlegexecgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_ord_grp_comp_index = ProtoField.new("Leg Ord Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.legordgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_exec_grp_comp_index = ProtoField.new("Multi Leg Exec Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.multilegexecgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_fill_grp_comp_index = ProtoField.new("Multi Leg Fill Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.multilegfillgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_grp_comp_index = ProtoField.new("Multi Leg Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.multileggrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_ord_grp_comp_index = ProtoField.new("Multi Leg Ord Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.multilegordgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_orders_grp_comp_index = ProtoField.new("Not Affected Orders Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.notaffectedordersgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_securities_grp_comp_index = ProtoField.new("Not Affected Securities Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.notaffectedsecuritiesgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_ack_grp_comp_index = ProtoField.new("Quote Entry Ack Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.quoteentryackgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_grp_comp_index = ProtoField.new("Quote Entry Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.quoteentrygrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_grp_comp_index = ProtoField.new("Quote Event Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.quoteeventgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_leg_exec_grp_comp_index = ProtoField.new("Quote Leg Exec Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.quotelegexecgrpcompindex", ftypes.UINT16)
omi_bse_bseindia_eti_fbe_v1_6_14.fields.sessions_grp_comp_index = ProtoField.new("Sessions Grp Comp Index", "bse.bseindia.eti.fbe.v1.6.14.sessionsgrpcompindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bse BseIndia Eti Fbe 1.6.14 Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.indexes = true

-- Register Bse BseIndia Eti Fbe 1.6.14 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_bse_bseindia_eti_fbe_v1_6_14.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_bse_bseindia_eti_fbe_v1_6_14.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_bse_bseindia_eti_fbe_v1_6_14.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_bse_bseindia_eti_fbe_v1_6_14.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_application_messages then
    show.application_messages = omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_application_messages
  end
  if show.repeating_groups ~= omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_repeating_groups then
    show.repeating_groups = omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_repeating_groups
  end
  if show.structs ~= omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_structs then
    show.structs = omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_structs
  end
  if show.indexes ~= omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_indexes then
    show.indexes = omi_bse_bseindia_eti_fbe_v1_6_14.prefs.show_indexes
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
-- Bse BseIndia Eti Fbe 1.6.14 Fields
-----------------------------------------------------------------------

-- Account
bse_bseindia_eti_fbe_v1_6_14.account = {}

-- Size: Account
bse_bseindia_eti_fbe_v1_6_14.account.size = 2

-- Display: Account
bse_bseindia_eti_fbe_v1_6_14.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
bse_bseindia_eti_fbe_v1_6_14.account.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.account, range, value, display)

  return offset + length, value
end

-- Account Type
bse_bseindia_eti_fbe_v1_6_14.account_type = {}

-- Size: Account Type
bse_bseindia_eti_fbe_v1_6_14.account_type.size = 1

-- Display: Account Type
bse_bseindia_eti_fbe_v1_6_14.account_type.display = function(value)
  if value == 20 then
    return "Account Type: Own (20)"
  end
  if value == 30 then
    return "Account Type: Client (30)"
  end
  if value == 0xFF then
    return "Account Type: No Value"
  end

  return "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
bse_bseindia_eti_fbe_v1_6_14.account_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.account_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.account_type, range, value, display)

  return offset + length, value
end

-- Accrued Interest Amt
bse_bseindia_eti_fbe_v1_6_14.accrued_interest_amt = {}

-- Size: Accrued Interest Amt
bse_bseindia_eti_fbe_v1_6_14.accrued_interest_amt.size = 8

-- Display: Accrued Interest Amt
bse_bseindia_eti_fbe_v1_6_14.accrued_interest_amt.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Accrued Interest Amt: No Value"
  end

  return "Accrued Interest Amt: "..value
end

-- Translate: Accrued Interest Amt
bse_bseindia_eti_fbe_v1_6_14.accrued_interest_amt.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Accrued Interest Amt
bse_bseindia_eti_fbe_v1_6_14.accrued_interest_amt.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.accrued_interest_amt.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.accrued_interest_amt.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.accrued_interest_amt.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.accrued_interest_amt, range, value, display)

  return offset + length, value
end

-- Activity Time
bse_bseindia_eti_fbe_v1_6_14.activity_time = {}

-- Size: Activity Time
bse_bseindia_eti_fbe_v1_6_14.activity_time.size = 8

-- Display: Activity Time
bse_bseindia_eti_fbe_v1_6_14.activity_time.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Activity Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Activity Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Activity Time
bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.activity_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.activity_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.activity_time, range, value, display)

  return offset + length, value
end

-- Aggressor Indicator
bse_bseindia_eti_fbe_v1_6_14.aggressor_indicator = {}

-- Size: Aggressor Indicator
bse_bseindia_eti_fbe_v1_6_14.aggressor_indicator.size = 1

-- Display: Aggressor Indicator
bse_bseindia_eti_fbe_v1_6_14.aggressor_indicator.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.aggressor_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.aggressor_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.aggressor_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Algo Id
bse_bseindia_eti_fbe_v1_6_14.algo_id = {}

-- Size: Algo Id
bse_bseindia_eti_fbe_v1_6_14.algo_id.size = 16

-- Display: Algo Id
bse_bseindia_eti_fbe_v1_6_14.algo_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Algo Id: No Value"
  end

  return "Algo Id: "..value
end

-- Dissect: Algo Id
bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.algo_id.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.algo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.algo_id, range, value, display)

  return offset + length, value
end

-- Alignment Padding
bse_bseindia_eti_fbe_v1_6_14.alignment_padding = {}

-- Display: Alignment Padding
bse_bseindia_eti_fbe_v1_6_14.alignment_padding.display = function(value)
  return "Alignment Padding: "..value
end

-- Dissect runtime sized field: Alignment Padding
bse_bseindia_eti_fbe_v1_6_14.alignment_padding.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.alignment_padding.display(value, packet, parent, size)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.alignment_padding, range, value, display)

  return offset + size, value
end

-- All Or None Flag
bse_bseindia_eti_fbe_v1_6_14.all_or_none_flag = {}

-- Size: All Or None Flag
bse_bseindia_eti_fbe_v1_6_14.all_or_none_flag.size = 1

-- Display: All Or None Flag
bse_bseindia_eti_fbe_v1_6_14.all_or_none_flag.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "All Or None Flag: No Value"
  end

  if value == "Y" then
    return "All Or None Flag: Use All Or None (Y)"
  end
  if value == "N" then
    return "All Or None Flag: Use All Or None Not (N)"
  end

  return "All Or None Flag: Unknown("..value..")"
end

-- Dissect: All Or None Flag
bse_bseindia_eti_fbe_v1_6_14.all_or_none_flag.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.all_or_none_flag.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.all_or_none_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.all_or_none_flag, range, value, display)

  return offset + length, value
end

-- Appl Beg Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_beg_msg_id = {}

-- Size: Appl Beg Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_beg_msg_id.size = 16

-- Display: Appl Beg Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_beg_msg_id.display = function(value)
  return "Appl Beg Msg Id: "..value
end

-- Dissect: Appl Beg Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_beg_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_beg_msg_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_beg_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_beg_msg_id, range, value, display)

  return offset + length, value
end

-- Appl Beg Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_beg_seq_num = {}

-- Size: Appl Beg Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_beg_seq_num.size = 8

-- Display: Appl Beg Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_beg_seq_num.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Appl Beg Seq Num: No Value"
  end

  return "Appl Beg Seq Num: "..value
end

-- Dissect: Appl Beg Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_beg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_beg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_beg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_beg_seq_num, range, value, display)

  return offset + length, value
end

-- Appl End Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_end_msg_id = {}

-- Size: Appl End Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_end_msg_id.size = 16

-- Display: Appl End Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_end_msg_id.display = function(value)
  return "Appl End Msg Id: "..value
end

-- Dissect: Appl End Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_end_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_end_msg_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_end_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_end_msg_id, range, value, display)

  return offset + length, value
end

-- Appl End Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_end_seq_num = {}

-- Size: Appl End Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_end_seq_num.size = 8

-- Display: Appl End Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_end_seq_num.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Appl End Seq Num: No Value"
  end

  return "Appl End Seq Num: "..value
end

-- Dissect: Appl End Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_end_seq_num, range, value, display)

  return offset + length, value
end

-- Appl Id
bse_bseindia_eti_fbe_v1_6_14.appl_id = {}

-- Size: Appl Id
bse_bseindia_eti_fbe_v1_6_14.appl_id.size = 1

-- Display: Appl Id
bse_bseindia_eti_fbe_v1_6_14.appl_id.display = function(value)
  if value == 0 then
    return "Appl Id: Trade Enhancement (0)"
  end
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
  if value == 8 then
    return "Appl Id: Risk Admin (8)"
  end
  if value == 0xFF then
    return "Appl Id: No Value"
  end

  return "Appl Id: Unknown("..value..")"
end

-- Dissect: Appl Id
bse_bseindia_eti_fbe_v1_6_14.appl_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Appl Id Status
bse_bseindia_eti_fbe_v1_6_14.appl_id_status = {}

-- Size: Appl Id Status
bse_bseindia_eti_fbe_v1_6_14.appl_id_status.size = 4

-- Display: Appl Id Status
bse_bseindia_eti_fbe_v1_6_14.appl_id_status.display = function(value)
  if value == 105 then
    return "Appl Id Status: Outboundconversionerror (105)"
  end
  if value == 0xFFFFFFFF then
    return "Appl Id Status: No Value"
  end

  return "Appl Id Status: Unknown("..value..")"
end

-- Dissect: Appl Id Status
bse_bseindia_eti_fbe_v1_6_14.appl_id_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_id_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_id_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_id_status, range, value, display)

  return offset + length, value
end

-- Appl Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_msg_id = {}

-- Size: Appl Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_msg_id.size = 16

-- Display: Appl Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_msg_id.display = function(value)
  return "Appl Msg Id: "..value
end

-- Dissect: Appl Msg Id
bse_bseindia_eti_fbe_v1_6_14.appl_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_msg_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_msg_id, range, value, display)

  return offset + length, value
end

-- Appl Resend Flag
bse_bseindia_eti_fbe_v1_6_14.appl_resend_flag = {}

-- Size: Appl Resend Flag
bse_bseindia_eti_fbe_v1_6_14.appl_resend_flag.size = 1

-- Display: Appl Resend Flag
bse_bseindia_eti_fbe_v1_6_14.appl_resend_flag.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.appl_resend_flag.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_resend_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_resend_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_resend_flag, range, value, display)

  return offset + length, value
end

-- Appl Seq Indicator
bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator = {}

-- Size: Appl Seq Indicator
bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator.size = 1

-- Display: Appl Seq Indicator
bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_seq_indicator, range, value, display)

  return offset + length, value
end

-- Appl Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_seq_num = {}

-- Size: Appl Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_seq_num.size = 8

-- Display: Appl Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_seq_num.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Appl Seq Num: No Value"
  end

  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
bse_bseindia_eti_fbe_v1_6_14.appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Appl Seq Status
bse_bseindia_eti_fbe_v1_6_14.appl_seq_status = {}

-- Size: Appl Seq Status
bse_bseindia_eti_fbe_v1_6_14.appl_seq_status.size = 1

-- Display: Appl Seq Status
bse_bseindia_eti_fbe_v1_6_14.appl_seq_status.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.appl_seq_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_seq_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_seq_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_seq_status, range, value, display)

  return offset + length, value
end

-- Appl Seq Trade Date
bse_bseindia_eti_fbe_v1_6_14.appl_seq_trade_date = {}

-- Size: Appl Seq Trade Date
bse_bseindia_eti_fbe_v1_6_14.appl_seq_trade_date.size = 4

-- Display: Appl Seq Trade Date
bse_bseindia_eti_fbe_v1_6_14.appl_seq_trade_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Appl Seq Trade Date: No Value"
  end

  return "Appl Seq Trade Date: "..value
end

-- Dissect: Appl Seq Trade Date
bse_bseindia_eti_fbe_v1_6_14.appl_seq_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_seq_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_seq_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_seq_trade_date, range, value, display)

  return offset + length, value
end

-- Appl Sub Id
bse_bseindia_eti_fbe_v1_6_14.appl_sub_id = {}

-- Size: Appl Sub Id
bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.size = 4

-- Display: Appl Sub Id
bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Appl Sub Id: No Value"
  end

  return "Appl Sub Id: "..value
end

-- Dissect: Appl Sub Id
bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_sub_id, range, value, display)

  return offset + length, value
end

-- Appl Total Message Count
bse_bseindia_eti_fbe_v1_6_14.appl_total_message_count = {}

-- Size: Appl Total Message Count
bse_bseindia_eti_fbe_v1_6_14.appl_total_message_count.size = 2

-- Display: Appl Total Message Count
bse_bseindia_eti_fbe_v1_6_14.appl_total_message_count.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Appl Total Message Count: No Value"
  end

  return "Appl Total Message Count: "..value
end

-- Dissect: Appl Total Message Count
bse_bseindia_eti_fbe_v1_6_14.appl_total_message_count.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_total_message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.appl_total_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_total_message_count, range, value, display)

  return offset + length, value
end

-- Appl Usage Orders
bse_bseindia_eti_fbe_v1_6_14.appl_usage_orders = {}

-- Size: Appl Usage Orders
bse_bseindia_eti_fbe_v1_6_14.appl_usage_orders.size = 1

-- Display: Appl Usage Orders
bse_bseindia_eti_fbe_v1_6_14.appl_usage_orders.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.appl_usage_orders.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_usage_orders.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.appl_usage_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_usage_orders, range, value, display)

  return offset + length, value
end

-- Appl Usage Quotes
bse_bseindia_eti_fbe_v1_6_14.appl_usage_quotes = {}

-- Size: Appl Usage Quotes
bse_bseindia_eti_fbe_v1_6_14.appl_usage_quotes.size = 1

-- Display: Appl Usage Quotes
bse_bseindia_eti_fbe_v1_6_14.appl_usage_quotes.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.appl_usage_quotes.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.appl_usage_quotes.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.appl_usage_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.appl_usage_quotes, range, value, display)

  return offset + length, value
end

-- Application System Name
bse_bseindia_eti_fbe_v1_6_14.application_system_name = {}

-- Size: Application System Name
bse_bseindia_eti_fbe_v1_6_14.application_system_name.size = 30

-- Display: Application System Name
bse_bseindia_eti_fbe_v1_6_14.application_system_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Application System Name: No Value"
  end

  return "Application System Name: "..value
end

-- Dissect: Application System Name
bse_bseindia_eti_fbe_v1_6_14.application_system_name.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.application_system_name.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.application_system_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.application_system_name, range, value, display)

  return offset + length, value
end

-- Application System Vendor
bse_bseindia_eti_fbe_v1_6_14.application_system_vendor = {}

-- Size: Application System Vendor
bse_bseindia_eti_fbe_v1_6_14.application_system_vendor.size = 30

-- Display: Application System Vendor
bse_bseindia_eti_fbe_v1_6_14.application_system_vendor.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Application System Vendor: No Value"
  end

  return "Application System Vendor: "..value
end

-- Dissect: Application System Vendor
bse_bseindia_eti_fbe_v1_6_14.application_system_vendor.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.application_system_vendor.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.application_system_vendor.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.application_system_vendor, range, value, display)

  return offset + length, value
end

-- Application System Version
bse_bseindia_eti_fbe_v1_6_14.application_system_version = {}

-- Size: Application System Version
bse_bseindia_eti_fbe_v1_6_14.application_system_version.size = 30

-- Display: Application System Version
bse_bseindia_eti_fbe_v1_6_14.application_system_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Application System Version: No Value"
  end

  return "Application System Version: "..value
end

-- Dissect: Application System Version
bse_bseindia_eti_fbe_v1_6_14.application_system_version.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.application_system_version.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.application_system_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.application_system_version, range, value, display)

  return offset + length, value
end

-- Auto Accept Indicator
bse_bseindia_eti_fbe_v1_6_14.auto_accept_indicator = {}

-- Size: Auto Accept Indicator
bse_bseindia_eti_fbe_v1_6_14.auto_accept_indicator.size = 1

-- Display: Auto Accept Indicator
bse_bseindia_eti_fbe_v1_6_14.auto_accept_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Auto Accept Indicator: No Value"
  end

  if value == "Y" then
    return "Auto Accept Indicator: Accepted (Y)"
  end
  if value == "N" then
    return "Auto Accept Indicator: Rejected (N)"
  end

  return "Auto Accept Indicator: Unknown("..value..")"
end

-- Dissect: Auto Accept Indicator
bse_bseindia_eti_fbe_v1_6_14.auto_accept_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.auto_accept_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.auto_accept_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.auto_accept_indicator, range, value, display)

  return offset + length, value
end

-- Bid Cxl Size
bse_bseindia_eti_fbe_v1_6_14.bid_cxl_size = {}

-- Size: Bid Cxl Size
bse_bseindia_eti_fbe_v1_6_14.bid_cxl_size.size = 4

-- Display: Bid Cxl Size
bse_bseindia_eti_fbe_v1_6_14.bid_cxl_size.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Bid Cxl Size: No Value"
  end

  return "Bid Cxl Size: "..value
end

-- Dissect: Bid Cxl Size
bse_bseindia_eti_fbe_v1_6_14.bid_cxl_size.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.bid_cxl_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.bid_cxl_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.bid_cxl_size, range, value, display)

  return offset + length, value
end

-- Bid Px
bse_bseindia_eti_fbe_v1_6_14.bid_px = {}

-- Size: Bid Px
bse_bseindia_eti_fbe_v1_6_14.bid_px.size = 8

-- Display: Bid Px
bse_bseindia_eti_fbe_v1_6_14.bid_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Translate: Bid Px
bse_bseindia_eti_fbe_v1_6_14.bid_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Bid Px
bse_bseindia_eti_fbe_v1_6_14.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.bid_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.bid_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.bid_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Bid Size
bse_bseindia_eti_fbe_v1_6_14.bid_size = {}

-- Size: Bid Size
bse_bseindia_eti_fbe_v1_6_14.bid_size.size = 4

-- Display: Bid Size
bse_bseindia_eti_fbe_v1_6_14.bid_size.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
bse_bseindia_eti_fbe_v1_6_14.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Body Len
bse_bseindia_eti_fbe_v1_6_14.body_len = {}

-- Size: Body Len
bse_bseindia_eti_fbe_v1_6_14.body_len.size = 4

-- Display: Body Len
bse_bseindia_eti_fbe_v1_6_14.body_len.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Body Len: No Value"
  end

  return "Body Len: "..value
end

-- Dissect: Body Len
bse_bseindia_eti_fbe_v1_6_14.body_len.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.body_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.body_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.body_len, range, value, display)

  return offset + length, value
end

-- Business Unit Symbol
bse_bseindia_eti_fbe_v1_6_14.business_unit_symbol = {}

-- Size: Business Unit Symbol
bse_bseindia_eti_fbe_v1_6_14.business_unit_symbol.size = 8

-- Display: Business Unit Symbol
bse_bseindia_eti_fbe_v1_6_14.business_unit_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Business Unit Symbol: No Value"
  end

  return "Business Unit Symbol: "..value
end

-- Dissect: Business Unit Symbol
bse_bseindia_eti_fbe_v1_6_14.business_unit_symbol.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.business_unit_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.business_unit_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.business_unit_symbol, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.cl_ord_id = {}

-- Size: Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.size = 8

-- Display: Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Trade Price
bse_bseindia_eti_fbe_v1_6_14.clearing_trade_price = {}

-- Size: Clearing Trade Price
bse_bseindia_eti_fbe_v1_6_14.clearing_trade_price.size = 8

-- Display: Clearing Trade Price
bse_bseindia_eti_fbe_v1_6_14.clearing_trade_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Clearing Trade Price: No Value"
  end

  return "Clearing Trade Price: "..value
end

-- Translate: Clearing Trade Price
bse_bseindia_eti_fbe_v1_6_14.clearing_trade_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Clearing Trade Price
bse_bseindia_eti_fbe_v1_6_14.clearing_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.clearing_trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.clearing_trade_price.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.clearing_trade_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.clearing_trade_price, range, value, display)

  return offset + length, value
end

-- Clearing Trade Qty
bse_bseindia_eti_fbe_v1_6_14.clearing_trade_qty = {}

-- Size: Clearing Trade Qty
bse_bseindia_eti_fbe_v1_6_14.clearing_trade_qty.size = 4

-- Display: Clearing Trade Qty
bse_bseindia_eti_fbe_v1_6_14.clearing_trade_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Clearing Trade Qty: No Value"
  end

  return "Clearing Trade Qty: "..value
end

-- Dissect: Clearing Trade Qty
bse_bseindia_eti_fbe_v1_6_14.clearing_trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.clearing_trade_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.clearing_trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.clearing_trade_qty, range, value, display)

  return offset + length, value
end

-- Client Code
bse_bseindia_eti_fbe_v1_6_14.client_code = {}

-- Size: Client Code
bse_bseindia_eti_fbe_v1_6_14.client_code.size = 12

-- Display: Client Code
bse_bseindia_eti_fbe_v1_6_14.client_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Code: No Value"
  end

  return "Client Code: "..value
end

-- Dissect: Client Code
bse_bseindia_eti_fbe_v1_6_14.client_code.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.client_code.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.client_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.client_code, range, value, display)

  return offset + length, value
end

-- Cp Code
bse_bseindia_eti_fbe_v1_6_14.cp_code = {}

-- Size: Cp Code
bse_bseindia_eti_fbe_v1_6_14.cp_code.size = 12

-- Display: Cp Code
bse_bseindia_eti_fbe_v1_6_14.cp_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cp Code: No Value"
  end

  return "Cp Code: "..value
end

-- Dissect: Cp Code
bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.cp_code.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.cp_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.cp_code, range, value, display)

  return offset + length, value
end

-- Cum Qty
bse_bseindia_eti_fbe_v1_6_14.cum_qty = {}

-- Size: Cum Qty
bse_bseindia_eti_fbe_v1_6_14.cum_qty.size = 4

-- Display: Cum Qty
bse_bseindia_eti_fbe_v1_6_14.cum_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Cum Qty: No Value"
  end

  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Cust Order Handling Inst
bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst = {}

-- Size: Cust Order Handling Inst
bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.size = 1

-- Display: Cust Order Handling Inst
bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cust Order Handling Inst: No Value"
  end

  return "Cust Order Handling Inst: "..value
end

-- Dissect: Cust Order Handling Inst
bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Cxl Qty
bse_bseindia_eti_fbe_v1_6_14.cxl_qty = {}

-- Size: Cxl Qty
bse_bseindia_eti_fbe_v1_6_14.cxl_qty.size = 4

-- Display: Cxl Qty
bse_bseindia_eti_fbe_v1_6_14.cxl_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Cxl Qty: No Value"
  end

  return "Cxl Qty: "..value
end

-- Dissect: Cxl Qty
bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.cxl_qty, range, value, display)

  return offset + length, value
end

-- Days Left For Passwd Expiry
bse_bseindia_eti_fbe_v1_6_14.days_left_for_passwd_expiry = {}

-- Size: Days Left For Passwd Expiry
bse_bseindia_eti_fbe_v1_6_14.days_left_for_passwd_expiry.size = 1

-- Display: Days Left For Passwd Expiry
bse_bseindia_eti_fbe_v1_6_14.days_left_for_passwd_expiry.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "Days Left For Passwd Expiry: No Value"
  end

  return "Days Left For Passwd Expiry: "..value
end

-- Dissect: Days Left For Passwd Expiry
bse_bseindia_eti_fbe_v1_6_14.days_left_for_passwd_expiry.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.days_left_for_passwd_expiry.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.days_left_for_passwd_expiry.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.days_left_for_passwd_expiry, range, value, display)

  return offset + length, value
end

-- Default Cstm Appl Ver Id
bse_bseindia_eti_fbe_v1_6_14.default_cstm_appl_ver_id = {}

-- Size: Default Cstm Appl Ver Id
bse_bseindia_eti_fbe_v1_6_14.default_cstm_appl_ver_id.size = 30

-- Display: Default Cstm Appl Ver Id
bse_bseindia_eti_fbe_v1_6_14.default_cstm_appl_ver_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Cstm Appl Ver Id: No Value"
  end

  return "Default Cstm Appl Ver Id: "..value
end

-- Dissect: Default Cstm Appl Ver Id
bse_bseindia_eti_fbe_v1_6_14.default_cstm_appl_ver_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.default_cstm_appl_ver_id.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.default_cstm_appl_ver_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.default_cstm_appl_ver_id, range, value, display)

  return offset + length, value
end

-- Delta Qty Flag
bse_bseindia_eti_fbe_v1_6_14.delta_qty_flag = {}

-- Size: Delta Qty Flag
bse_bseindia_eti_fbe_v1_6_14.delta_qty_flag.size = 1

-- Display: Delta Qty Flag
bse_bseindia_eti_fbe_v1_6_14.delta_qty_flag.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Delta Qty Flag: No Value"
  end

  return "Delta Qty Flag: "..value
end

-- Dissect: Delta Qty Flag
bse_bseindia_eti_fbe_v1_6_14.delta_qty_flag.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.delta_qty_flag.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.delta_qty_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delta_qty_flag, range, value, display)

  return offset + length, value
end

-- Duration
bse_bseindia_eti_fbe_v1_6_14.duration = {}

-- Size: Duration
bse_bseindia_eti_fbe_v1_6_14.duration.size = 1

-- Display: Duration
bse_bseindia_eti_fbe_v1_6_14.duration.display = function(value)
  if value == 1 then
    return "Duration: Near (1)"
  end
  if value == 2 then
    return "Duration: Mid (2)"
  end
  if value == 3 then
    return "Duration: Far (3)"
  end
  if value == 0xFF then
    return "Duration: No Value"
  end

  return "Duration: Unknown("..value..")"
end

-- Dissect: Duration
bse_bseindia_eti_fbe_v1_6_14.duration.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.duration.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.duration, range, value, display)

  return offset + length, value
end

-- Enrichment Rule Id
bse_bseindia_eti_fbe_v1_6_14.enrichment_rule_id = {}

-- Size: Enrichment Rule Id
bse_bseindia_eti_fbe_v1_6_14.enrichment_rule_id.size = 2

-- Display: Enrichment Rule Id
bse_bseindia_eti_fbe_v1_6_14.enrichment_rule_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Enrichment Rule Id: No Value"
  end

  return "Enrichment Rule Id: "..value
end

-- Dissect: Enrichment Rule Id
bse_bseindia_eti_fbe_v1_6_14.enrichment_rule_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.enrichment_rule_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.enrichment_rule_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.enrichment_rule_id, range, value, display)

  return offset + length, value
end

-- Exec Id
bse_bseindia_eti_fbe_v1_6_14.exec_id = {}

-- Size: Exec Id
bse_bseindia_eti_fbe_v1_6_14.exec_id.size = 8

-- Display: Exec Id
bse_bseindia_eti_fbe_v1_6_14.exec_id.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Exec Id: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Exec Id: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Exec Id
bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
bse_bseindia_eti_fbe_v1_6_14.exec_inst = {}

-- Size: Exec Inst
bse_bseindia_eti_fbe_v1_6_14.exec_inst.size = 1

-- Display: Exec Inst
bse_bseindia_eti_fbe_v1_6_14.exec_inst.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.exec_inst.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.size = 2

-- Display: Exec Restatement Reason
bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.display = function(value)
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
  if value == 164 then
    return "Exec Restatement Reason: Oco Order Triggered (164)"
  end
  if value == 172 then
    return "Exec Restatement Reason: Stop Order Triggered (172)"
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
    return "Exec Restatement Reason: Pending Normal Orders Queried (213)"
  end
  if value == 214 then
    return "Exec Restatement Reason: Pending Stoploss Orders Queried (214)"
  end
  if value == 215 then
    return "Exec Restatement Reason: Rrm Order Added (215)"
  end
  if value == 216 then
    return "Exec Restatement Reason: Rrm Order Accepted (216)"
  end
  if value == 219 then
    return "Exec Restatement Reason: Rrm Order Deleted (219)"
  end
  if value == 220 then
    return "Exec Restatement Reason: Rrm Market Order Triggered (220)"
  end
  if value == 221 then
    return "Exec Restatement Reason: Prov Order Added (221)"
  end
  if value == 222 then
    return "Exec Restatement Reason: Prov Order Accepted (222)"
  end
  if value == 223 then
    return "Exec Restatement Reason: Prov Order Updation Rejected (223)"
  end
  if value == 224 then
    return "Exec Restatement Reason: Prov Order Updated Successfully (224)"
  end
  if value == 225 then
    return "Exec Restatement Reason: Prov Order Deleted (225)"
  end
  if value == 226 then
    return "Exec Restatement Reason: Prov Market Order Triggered (226)"
  end
  if value == 231 then
    return "Exec Restatement Reason: Callauc Order Deleted (231)"
  end
  if value == 232 then
    return "Exec Restatement Reason: Gtcl Order Deleted (232)"
  end
  if value == 233 then
    return "Exec Restatement Reason: Eod Order Deleted (233)"
  end
  if value == 234 then
    return "Exec Restatement Reason: Halt Order Deleted (234)"
  end
  if value == 235 then
    return "Exec Restatement Reason: Block Deal Order Timed Out (235)"
  end
  if value == 236 then
    return "Exec Restatement Reason: Out Of Price Band Order (236)"
  end
  if value == 237 then
    return "Exec Restatement Reason: Order Worse Than Close Price (237)"
  end
  if value == 238 then
    return "Exec Restatement Reason: Auction Market Order Triggered (238)"
  end
  if value == 239 then
    return "Exec Restatement Reason: Pending Blockdeal Orders Queried (239)"
  end
  if value == 240 then
    return "Exec Restatement Reason: Bu Suspended (240)"
  end
  if value == 241 then
    return "Exec Restatement Reason: Cooling Off Rrm Order Deleted (241)"
  end
  if value == 242 then
    return "Exec Restatement Reason: Mwpl Rrm Order Deleted (242)"
  end
  if value == 243 then
    return "Exec Restatement Reason: Call Auction Uncross Order Deleted (243)"
  end
  if value == 244 then
    return "Exec Restatement Reason: Collateral Rrm (244)"
  end
  if value == 245 then
    return "Exec Restatement Reason: Pending Market Orders Queried (245)"
  end
  if value == 246 then
    return "Exec Restatement Reason: Self Trade Order Deleted (246)"
  end
  if value == 247 then
    return "Exec Restatement Reason: Reverse Trade Order Deleted (247)"
  end
  if value == 248 then
    return "Exec Restatement Reason: Pending Oco Orders Queried (248)"
  end
  if value == 250 then
    return "Exec Restatement Reason: Client Rrm For Product (250)"
  end
  if value == 251 then
    return "Exec Restatement Reason: Client Suspended (251)"
  end
  if value == 252 then
    return "Exec Restatement Reason: Client Rrm For Contract (252)"
  end
  if value == 253 then
    return "Exec Restatement Reason: Member Rrm For Contract (253)"
  end
  if value == 265 then
    return "Exec Restatement Reason: Market Order Out Of Range (265)"
  end
  if value == 267 then
    return "Exec Restatement Reason: Limit Price Out Of Range (267)"
  end
  if value == 270 then
    return "Exec Restatement Reason: Matching Criteria Not Fulfilled (270)"
  end
  if value == 269 then
    return "Exec Restatement Reason: Price Level Quantity Exceeded (269)"
  end
  if value == 271 then
    return "Exec Restatement Reason: Client Debarred (271)"
  end
  if value == 0xFFFF then
    return "Exec Restatement Reason: No Value"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Exec Type
bse_bseindia_eti_fbe_v1_6_14.exec_type = {}

-- Size: Exec Type
bse_bseindia_eti_fbe_v1_6_14.exec_type.size = 1

-- Display: Exec Type
bse_bseindia_eti_fbe_v1_6_14.exec_type.display = function(value)
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
  if value == "M" then
    return "Exec Type: Rrm Accept (M)"
  end
  if value == "N" then
    return "Exec Type: Rrm Reject (N)"
  end
  if value == "X" then
    return "Exec Type: Prov Accept (X)"
  end
  if value == "Y" then
    return "Exec Type: Prov Reject (Y)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.exec_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Expire Date
bse_bseindia_eti_fbe_v1_6_14.expire_date = {}

-- Size: Expire Date
bse_bseindia_eti_fbe_v1_6_14.expire_date.size = 4

-- Display: Expire Date
bse_bseindia_eti_fbe_v1_6_14.expire_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Expire Date: No Value"
  end

  return "Expire Date: "..value
end

-- Dissect: Expire Date
bse_bseindia_eti_fbe_v1_6_14.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.expire_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Fill Dirty Px
bse_bseindia_eti_fbe_v1_6_14.fill_dirty_px = {}

-- Size: Fill Dirty Px
bse_bseindia_eti_fbe_v1_6_14.fill_dirty_px.size = 8

-- Display: Fill Dirty Px
bse_bseindia_eti_fbe_v1_6_14.fill_dirty_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Fill Dirty Px: No Value"
  end

  return "Fill Dirty Px: "..value
end

-- Translate: Fill Dirty Px
bse_bseindia_eti_fbe_v1_6_14.fill_dirty_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Fill Dirty Px
bse_bseindia_eti_fbe_v1_6_14.fill_dirty_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.fill_dirty_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.fill_dirty_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.fill_dirty_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_dirty_px, range, value, display)

  return offset + length, value
end

-- Fill Exec Id
bse_bseindia_eti_fbe_v1_6_14.fill_exec_id = {}

-- Size: Fill Exec Id
bse_bseindia_eti_fbe_v1_6_14.fill_exec_id.size = 4

-- Display: Fill Exec Id
bse_bseindia_eti_fbe_v1_6_14.fill_exec_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Fill Exec Id: No Value"
  end

  return "Fill Exec Id: "..value
end

-- Dissect: Fill Exec Id
bse_bseindia_eti_fbe_v1_6_14.fill_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.fill_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.fill_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_exec_id, range, value, display)

  return offset + length, value
end

-- Fill Liquidity Ind
bse_bseindia_eti_fbe_v1_6_14.fill_liquidity_ind = {}

-- Size: Fill Liquidity Ind
bse_bseindia_eti_fbe_v1_6_14.fill_liquidity_ind.size = 1

-- Display: Fill Liquidity Ind
bse_bseindia_eti_fbe_v1_6_14.fill_liquidity_ind.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.fill_liquidity_ind.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.fill_liquidity_ind.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.fill_liquidity_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Fill Match Id
bse_bseindia_eti_fbe_v1_6_14.fill_match_id = {}

-- Size: Fill Match Id
bse_bseindia_eti_fbe_v1_6_14.fill_match_id.size = 4

-- Display: Fill Match Id
bse_bseindia_eti_fbe_v1_6_14.fill_match_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Fill Match Id: No Value"
  end

  return "Fill Match Id: "..value
end

-- Dissect: Fill Match Id
bse_bseindia_eti_fbe_v1_6_14.fill_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.fill_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.fill_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_match_id, range, value, display)

  return offset + length, value
end

-- Fill Px
bse_bseindia_eti_fbe_v1_6_14.fill_px = {}

-- Size: Fill Px
bse_bseindia_eti_fbe_v1_6_14.fill_px.size = 8

-- Display: Fill Px
bse_bseindia_eti_fbe_v1_6_14.fill_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Fill Px: No Value"
  end

  return "Fill Px: "..value
end

-- Translate: Fill Px
bse_bseindia_eti_fbe_v1_6_14.fill_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Fill Px
bse_bseindia_eti_fbe_v1_6_14.fill_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.fill_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.fill_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.fill_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_px, range, value, display)

  return offset + length, value
end

-- Fill Qty
bse_bseindia_eti_fbe_v1_6_14.fill_qty = {}

-- Size: Fill Qty
bse_bseindia_eti_fbe_v1_6_14.fill_qty.size = 4

-- Display: Fill Qty
bse_bseindia_eti_fbe_v1_6_14.fill_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Fill Qty: No Value"
  end

  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
bse_bseindia_eti_fbe_v1_6_14.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.fill_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Fill Yield
bse_bseindia_eti_fbe_v1_6_14.fill_yield = {}

-- Size: Fill Yield
bse_bseindia_eti_fbe_v1_6_14.fill_yield.size = 8

-- Display: Fill Yield
bse_bseindia_eti_fbe_v1_6_14.fill_yield.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Fill Yield: No Value"
  end

  return "Fill Yield: "..value
end

-- Translate: Fill Yield
bse_bseindia_eti_fbe_v1_6_14.fill_yield.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Fill Yield
bse_bseindia_eti_fbe_v1_6_14.fill_yield.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.fill_yield.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.fill_yield.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.fill_yield.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fill_yield, range, value, display)

  return offset + length, value
end

-- Filler1
bse_bseindia_eti_fbe_v1_6_14.filler1 = {}

-- Size: Filler1
bse_bseindia_eti_fbe_v1_6_14.filler1.size = 8

-- Display: Filler1
bse_bseindia_eti_fbe_v1_6_14.filler1.display = function(value)
  return "Filler1: "..value
end

-- Dissect: Filler1
bse_bseindia_eti_fbe_v1_6_14.filler1.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.filler1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.filler1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.filler1, range, value, display)

  return offset + length, value
end

-- Filler2
bse_bseindia_eti_fbe_v1_6_14.filler2 = {}

-- Size: Filler2
bse_bseindia_eti_fbe_v1_6_14.filler2.size = 4

-- Display: Filler2
bse_bseindia_eti_fbe_v1_6_14.filler2.display = function(value)
  return "Filler2: "..value
end

-- Dissect: Filler2
bse_bseindia_eti_fbe_v1_6_14.filler2.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.filler2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.filler2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.filler2, range, value, display)

  return offset + length, value
end

-- Filler3
bse_bseindia_eti_fbe_v1_6_14.filler3 = {}

-- Size: Filler3
bse_bseindia_eti_fbe_v1_6_14.filler3.size = 4

-- Display: Filler3
bse_bseindia_eti_fbe_v1_6_14.filler3.display = function(value)
  return "Filler3: "..value
end

-- Dissect: Filler3
bse_bseindia_eti_fbe_v1_6_14.filler3.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.filler3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.filler3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.filler3, range, value, display)

  return offset + length, value
end

-- Filler4
bse_bseindia_eti_fbe_v1_6_14.filler4 = {}

-- Size: Filler4
bse_bseindia_eti_fbe_v1_6_14.filler4.size = 2

-- Display: Filler4
bse_bseindia_eti_fbe_v1_6_14.filler4.display = function(value)
  return "Filler4: "..value
end

-- Dissect: Filler4
bse_bseindia_eti_fbe_v1_6_14.filler4.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.filler4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.filler4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.filler4, range, value, display)

  return offset + length, value
end

-- Filler4v2
bse_bseindia_eti_fbe_v1_6_14.filler4v2 = {}

-- Size: Filler4v2
bse_bseindia_eti_fbe_v1_6_14.filler4v2.size = 2

-- Display: Filler4v2
bse_bseindia_eti_fbe_v1_6_14.filler4v2.display = function(value)
  return "Filler4v2: "..value
end

-- Dissect: Filler4v2
bse_bseindia_eti_fbe_v1_6_14.filler4v2.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.filler4v2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.filler4v2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.filler4v2, range, value, display)

  return offset + length, value
end

-- Fix Engine Name
bse_bseindia_eti_fbe_v1_6_14.fix_engine_name = {}

-- Size: Fix Engine Name
bse_bseindia_eti_fbe_v1_6_14.fix_engine_name.size = 30

-- Display: Fix Engine Name
bse_bseindia_eti_fbe_v1_6_14.fix_engine_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Engine Name: No Value"
  end

  return "Fix Engine Name: "..value
end

-- Dissect: Fix Engine Name
bse_bseindia_eti_fbe_v1_6_14.fix_engine_name.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.fix_engine_name.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.fix_engine_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fix_engine_name, range, value, display)

  return offset + length, value
end

-- Fix Engine Vendor
bse_bseindia_eti_fbe_v1_6_14.fix_engine_vendor = {}

-- Size: Fix Engine Vendor
bse_bseindia_eti_fbe_v1_6_14.fix_engine_vendor.size = 30

-- Display: Fix Engine Vendor
bse_bseindia_eti_fbe_v1_6_14.fix_engine_vendor.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Engine Vendor: No Value"
  end

  return "Fix Engine Vendor: "..value
end

-- Dissect: Fix Engine Vendor
bse_bseindia_eti_fbe_v1_6_14.fix_engine_vendor.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.fix_engine_vendor.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.fix_engine_vendor.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fix_engine_vendor, range, value, display)

  return offset + length, value
end

-- Fix Engine Version
bse_bseindia_eti_fbe_v1_6_14.fix_engine_version = {}

-- Size: Fix Engine Version
bse_bseindia_eti_fbe_v1_6_14.fix_engine_version.size = 30

-- Display: Fix Engine Version
bse_bseindia_eti_fbe_v1_6_14.fix_engine_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Engine Version: No Value"
  end

  return "Fix Engine Version: "..value
end

-- Dissect: Fix Engine Version
bse_bseindia_eti_fbe_v1_6_14.fix_engine_version.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.fix_engine_version.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.fix_engine_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fix_engine_version, range, value, display)

  return offset + length, value
end

-- Free Text 3
bse_bseindia_eti_fbe_v1_6_14.free_text_3 = {}

-- Size: Free Text 3
bse_bseindia_eti_fbe_v1_6_14.free_text_3.size = 12

-- Display: Free Text 3
bse_bseindia_eti_fbe_v1_6_14.free_text_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text 3: No Value"
  end

  return "Free Text 3: "..value
end

-- Dissect: Free Text 3
bse_bseindia_eti_fbe_v1_6_14.free_text_3.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.free_text_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.free_text_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.free_text_3, range, value, display)

  return offset + length, value
end

-- Gateway Id
bse_bseindia_eti_fbe_v1_6_14.gateway_id = {}

-- Size: Gateway Id
bse_bseindia_eti_fbe_v1_6_14.gateway_id.size = 4

-- Display: Gateway Id
bse_bseindia_eti_fbe_v1_6_14.gateway_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Gateway Id: No Value"
  end

  return "Gateway Id: "..value
end

-- Dissect: Gateway Id
bse_bseindia_eti_fbe_v1_6_14.gateway_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.gateway_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.gateway_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.gateway_id, range, value, display)

  return offset + length, value
end

-- Gateway Sub Id
bse_bseindia_eti_fbe_v1_6_14.gateway_sub_id = {}

-- Size: Gateway Sub Id
bse_bseindia_eti_fbe_v1_6_14.gateway_sub_id.size = 4

-- Display: Gateway Sub Id
bse_bseindia_eti_fbe_v1_6_14.gateway_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Gateway Sub Id: No Value"
  end

  return "Gateway Sub Id: "..value
end

-- Dissect: Gateway Sub Id
bse_bseindia_eti_fbe_v1_6_14.gateway_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.gateway_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.gateway_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.gateway_sub_id, range, value, display)

  return offset + length, value
end

-- Grace Logins Left
bse_bseindia_eti_fbe_v1_6_14.grace_logins_left = {}

-- Size: Grace Logins Left
bse_bseindia_eti_fbe_v1_6_14.grace_logins_left.size = 1

-- Display: Grace Logins Left
bse_bseindia_eti_fbe_v1_6_14.grace_logins_left.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "Grace Logins Left: No Value"
  end

  return "Grace Logins Left: "..value
end

-- Dissect: Grace Logins Left
bse_bseindia_eti_fbe_v1_6_14.grace_logins_left.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.grace_logins_left.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.grace_logins_left.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.grace_logins_left, range, value, display)

  return offset + length, value
end

-- Gross Trade Amt
bse_bseindia_eti_fbe_v1_6_14.gross_trade_amt = {}

-- Size: Gross Trade Amt
bse_bseindia_eti_fbe_v1_6_14.gross_trade_amt.size = 8

-- Display: Gross Trade Amt
bse_bseindia_eti_fbe_v1_6_14.gross_trade_amt.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Gross Trade Amt: No Value"
  end

  return "Gross Trade Amt: "..value
end

-- Translate: Gross Trade Amt
bse_bseindia_eti_fbe_v1_6_14.gross_trade_amt.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Gross Trade Amt
bse_bseindia_eti_fbe_v1_6_14.gross_trade_amt.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.gross_trade_amt.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.gross_trade_amt.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.gross_trade_amt.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.gross_trade_amt, range, value, display)

  return offset + length, value
end

-- Headline
bse_bseindia_eti_fbe_v1_6_14.headline = {}

-- Size: Headline
bse_bseindia_eti_fbe_v1_6_14.headline.size = 256

-- Display: Headline
bse_bseindia_eti_fbe_v1_6_14.headline.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Headline: No Value"
  end

  return "Headline: "..value
end

-- Dissect: Headline
bse_bseindia_eti_fbe_v1_6_14.headline.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.headline.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.headline, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
bse_bseindia_eti_fbe_v1_6_14.heart_bt_int = {}

-- Size: Heart Bt Int
bse_bseindia_eti_fbe_v1_6_14.heart_bt_int.size = 4

-- Display: Heart Bt Int
bse_bseindia_eti_fbe_v1_6_14.heart_bt_int.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Heart Bt Int: No Value"
  end

  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
bse_bseindia_eti_fbe_v1_6_14.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Increment Decrement Status
bse_bseindia_eti_fbe_v1_6_14.increment_decrement_status = {}

-- Size: Increment Decrement Status
bse_bseindia_eti_fbe_v1_6_14.increment_decrement_status.size = 1

-- Display: Increment Decrement Status
bse_bseindia_eti_fbe_v1_6_14.increment_decrement_status.display = function(value)
  if value == 1 then
    return "Increment Decrement Status: Increment (1)"
  end
  if value == 0 then
    return "Increment Decrement Status: No Change (0)"
  end
  if value == -1 then
    return "Increment Decrement Status: Decrement (-1)"
  end
  if value == 0x80 then
    return "Increment Decrement Status: No Value"
  end

  return "Increment Decrement Status: Unknown("..value..")"
end

-- Dissect: Increment Decrement Status
bse_bseindia_eti_fbe_v1_6_14.increment_decrement_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.increment_decrement_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.increment_decrement_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.increment_decrement_status, range, value, display)

  return offset + length, value
end

-- Initialization Vector
bse_bseindia_eti_fbe_v1_6_14.initialization_vector = {}

-- Size: Initialization Vector
bse_bseindia_eti_fbe_v1_6_14.initialization_vector.size = 16

-- Display: Initialization Vector
bse_bseindia_eti_fbe_v1_6_14.initialization_vector.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Initialization Vector: No Value"
  end

  return "Initialization Vector: "..value
end

-- Dissect: Initialization Vector
bse_bseindia_eti_fbe_v1_6_14.initialization_vector.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.initialization_vector.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.initialization_vector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.initialization_vector, range, value, display)

  return offset + length, value
end

-- Last Fragment
bse_bseindia_eti_fbe_v1_6_14.last_fragment = {}

-- Size: Last Fragment
bse_bseindia_eti_fbe_v1_6_14.last_fragment.size = 1

-- Display: Last Fragment
bse_bseindia_eti_fbe_v1_6_14.last_fragment.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.last_fragment.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Last Login Ip
bse_bseindia_eti_fbe_v1_6_14.last_login_ip = {}

-- Size: Last Login Ip
bse_bseindia_eti_fbe_v1_6_14.last_login_ip.size = 4

-- Display: Last Login Ip
bse_bseindia_eti_fbe_v1_6_14.last_login_ip.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Last Login Ip: No Value"
  end

  return "Last Login Ip: "..value
end

-- Dissect: Last Login Ip
bse_bseindia_eti_fbe_v1_6_14.last_login_ip.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.last_login_ip.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.last_login_ip.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.last_login_ip, range, value, display)

  return offset + length, value
end

-- Last Login Time
bse_bseindia_eti_fbe_v1_6_14.last_login_time = {}

-- Size: Last Login Time
bse_bseindia_eti_fbe_v1_6_14.last_login_time.size = 8

-- Display: Last Login Time
bse_bseindia_eti_fbe_v1_6_14.last_login_time.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Login Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Last Login Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Login Time
bse_bseindia_eti_fbe_v1_6_14.last_login_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.last_login_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.last_login_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.last_login_time, range, value, display)

  return offset + length, value
end

-- Last Px
bse_bseindia_eti_fbe_v1_6_14.last_px = {}

-- Size: Last Px
bse_bseindia_eti_fbe_v1_6_14.last_px.size = 8

-- Display: Last Px
bse_bseindia_eti_fbe_v1_6_14.last_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Last Px: No Value"
  end

  return "Last Px: "..value
end

-- Translate: Last Px
bse_bseindia_eti_fbe_v1_6_14.last_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Last Px
bse_bseindia_eti_fbe_v1_6_14.last_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.last_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.last_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
bse_bseindia_eti_fbe_v1_6_14.last_qty = {}

-- Size: Last Qty
bse_bseindia_eti_fbe_v1_6_14.last_qty.size = 4

-- Display: Last Qty
bse_bseindia_eti_fbe_v1_6_14.last_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Last Qty: No Value"
  end

  return "Last Qty: "..value
end

-- Dissect: Last Qty
bse_bseindia_eti_fbe_v1_6_14.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
bse_bseindia_eti_fbe_v1_6_14.leaves_qty = {}

-- Size: Leaves Qty
bse_bseindia_eti_fbe_v1_6_14.leaves_qty.size = 4

-- Display: Leaves Qty
bse_bseindia_eti_fbe_v1_6_14.leaves_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leaves Qty: No Value"
  end

  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
bse_bseindia_eti_fbe_v1_6_14.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Leg Account
bse_bseindia_eti_fbe_v1_6_14.leg_account = {}

-- Size: Leg Account
bse_bseindia_eti_fbe_v1_6_14.leg_account.size = 2

-- Display: Leg Account
bse_bseindia_eti_fbe_v1_6_14.leg_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Account: No Value"
  end

  return "Leg Account: "..value
end

-- Dissect: Leg Account
bse_bseindia_eti_fbe_v1_6_14.leg_account.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.leg_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.leg_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_account, range, value, display)

  return offset + length, value
end

-- Leg Exec Id
bse_bseindia_eti_fbe_v1_6_14.leg_exec_id = {}

-- Size: Leg Exec Id
bse_bseindia_eti_fbe_v1_6_14.leg_exec_id.size = 4

-- Display: Leg Exec Id
bse_bseindia_eti_fbe_v1_6_14.leg_exec_id.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leg Exec Id: No Value"
  end

  return "Leg Exec Id: "..value
end

-- Dissect: Leg Exec Id
bse_bseindia_eti_fbe_v1_6_14.leg_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.leg_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.leg_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_exec_id, range, value, display)

  return offset + length, value
end

-- Leg Last Px
bse_bseindia_eti_fbe_v1_6_14.leg_last_px = {}

-- Size: Leg Last Px
bse_bseindia_eti_fbe_v1_6_14.leg_last_px.size = 8

-- Display: Leg Last Px
bse_bseindia_eti_fbe_v1_6_14.leg_last_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Leg Last Px: No Value"
  end

  return "Leg Last Px: "..value
end

-- Translate: Leg Last Px
bse_bseindia_eti_fbe_v1_6_14.leg_last_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Leg Last Px
bse_bseindia_eti_fbe_v1_6_14.leg_last_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.leg_last_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.leg_last_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.leg_last_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Leg Last Qty
bse_bseindia_eti_fbe_v1_6_14.leg_last_qty = {}

-- Size: Leg Last Qty
bse_bseindia_eti_fbe_v1_6_14.leg_last_qty.size = 4

-- Display: Leg Last Qty
bse_bseindia_eti_fbe_v1_6_14.leg_last_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leg Last Qty: No Value"
  end

  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
bse_bseindia_eti_fbe_v1_6_14.leg_last_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.leg_last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.leg_last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Leg Position Effect
bse_bseindia_eti_fbe_v1_6_14.leg_position_effect = {}

-- Size: Leg Position Effect
bse_bseindia_eti_fbe_v1_6_14.leg_position_effect.size = 1

-- Display: Leg Position Effect
bse_bseindia_eti_fbe_v1_6_14.leg_position_effect.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Position Effect: No Value"
  end

  return "Leg Position Effect: "..value
end

-- Dissect: Leg Position Effect
bse_bseindia_eti_fbe_v1_6_14.leg_position_effect.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.leg_position_effect.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.leg_position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_position_effect, range, value, display)

  return offset + length, value
end

-- Leg Security Id
bse_bseindia_eti_fbe_v1_6_14.leg_security_id = {}

-- Size: Leg Security Id
bse_bseindia_eti_fbe_v1_6_14.leg_security_id.size = 8

-- Display: Leg Security Id
bse_bseindia_eti_fbe_v1_6_14.leg_security_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Security Id: No Value"
  end

  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
bse_bseindia_eti_fbe_v1_6_14.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eti_fbe_v1_6_14.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Leg Side
bse_bseindia_eti_fbe_v1_6_14.leg_side = {}

-- Size: Leg Side
bse_bseindia_eti_fbe_v1_6_14.leg_side.size = 1

-- Display: Leg Side
bse_bseindia_eti_fbe_v1_6_14.leg_side.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_side, range, value, display)

  return offset + length, value
end

-- List Update Action
bse_bseindia_eti_fbe_v1_6_14.list_update_action = {}

-- Size: List Update Action
bse_bseindia_eti_fbe_v1_6_14.list_update_action.size = 1

-- Display: List Update Action
bse_bseindia_eti_fbe_v1_6_14.list_update_action.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.list_update_action.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.list_update_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.list_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.list_update_action, range, value, display)

  return offset + length, value
end

-- Market Id
bse_bseindia_eti_fbe_v1_6_14.market_id = {}

-- Size: Market Id
bse_bseindia_eti_fbe_v1_6_14.market_id.size = 2

-- Display: Market Id
bse_bseindia_eti_fbe_v1_6_14.market_id.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.market_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Segment Id
bse_bseindia_eti_fbe_v1_6_14.market_segment_id = {}

-- Size: Market Segment Id
bse_bseindia_eti_fbe_v1_6_14.market_segment_id.size = 4

-- Display: Market Segment Id
bse_bseindia_eti_fbe_v1_6_14.market_segment_id.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Market Segment Id: No Value"
  end

  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Mass Action Reason
bse_bseindia_eti_fbe_v1_6_14.mass_action_reason = {}

-- Size: Mass Action Reason
bse_bseindia_eti_fbe_v1_6_14.mass_action_reason.size = 1

-- Display: Mass Action Reason
bse_bseindia_eti_fbe_v1_6_14.mass_action_reason.display = function(value)
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
  if value == 4 then
    return "Mass Action Reason: Stop Button Activated (4)"
  end
  if value == 5 then
    return "Mass Action Reason: Bussiness Unit Suspended (5)"
  end
  if value == 6 then
    return "Mass Action Reason: Session Loss (6)"
  end
  if value == 7 then
    return "Mass Action Reason: Collateral Rrm (7)"
  end
  if value == 8 then
    return "Mass Action Reason: Price Band Shrink (8)"
  end
  if value == 9 then
    return "Mass Action Reason: Orders Worse Than Close Price (9)"
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
    return "Mass Action Reason: Producttemporarilynottradable (111)"
  end
  if value == 114 then
    return "Mass Action Reason: Product State Closing (114)"
  end
  if value == 115 then
    return "Mass Action Reason: Product State Eod (115)"
  end
  if value == 116 then
    return "Mass Action Reason: Coolingoff (116)"
  end
  if value == 117 then
    return "Mass Action Reason: Mwplrrm (117)"
  end
  if value == 0xFF then
    return "Mass Action Reason: No Value"
  end

  return "Mass Action Reason: Unknown("..value..")"
end

-- Dissect: Mass Action Reason
bse_bseindia_eti_fbe_v1_6_14.mass_action_reason.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.mass_action_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.mass_action_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.mass_action_reason, range, value, display)

  return offset + length, value
end

-- Mass Action Report Id
bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id = {}

-- Size: Mass Action Report Id
bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.size = 8

-- Display: Mass Action Report Id
bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Mass Action Report Id: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Mass Action Report Id: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Mass Action Report Id
bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.mass_action_report_id, range, value, display)

  return offset + length, value
end

-- Match Date
bse_bseindia_eti_fbe_v1_6_14.match_date = {}

-- Size: Match Date
bse_bseindia_eti_fbe_v1_6_14.match_date.size = 4

-- Display: Match Date
bse_bseindia_eti_fbe_v1_6_14.match_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Match Date: No Value"
  end

  return "Match Date: "..value
end

-- Dissect: Match Date
bse_bseindia_eti_fbe_v1_6_14.match_date.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.match_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.match_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.match_date, range, value, display)

  return offset + length, value
end

-- Match Sub Type
bse_bseindia_eti_fbe_v1_6_14.match_sub_type = {}

-- Size: Match Sub Type
bse_bseindia_eti_fbe_v1_6_14.match_sub_type.size = 1

-- Display: Match Sub Type
bse_bseindia_eti_fbe_v1_6_14.match_sub_type.display = function(value)
  if value == 1 then
    return "Match Sub Type: Opening Auction (1)"
  end
  if value == 3 then
    return "Match Sub Type: Intraday Auction (3)"
  end
  if value == 0xFF then
    return "Match Sub Type: No Value"
  end

  return "Match Sub Type: Unknown("..value..")"
end

-- Dissect: Match Sub Type
bse_bseindia_eti_fbe_v1_6_14.match_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.match_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.match_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.match_sub_type, range, value, display)

  return offset + length, value
end

-- Match Type
bse_bseindia_eti_fbe_v1_6_14.match_type = {}

-- Size: Match Type
bse_bseindia_eti_fbe_v1_6_14.match_type.size = 1

-- Display: Match Type
bse_bseindia_eti_fbe_v1_6_14.match_type.display = function(value)
  if value == 4 then
    return "Match Type: Automatchincoming (4)"
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
bse_bseindia_eti_fbe_v1_6_14.match_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.match_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.match_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.match_type, range, value, display)

  return offset + length, value
end

-- Matching Engine Status
bse_bseindia_eti_fbe_v1_6_14.matching_engine_status = {}

-- Size: Matching Engine Status
bse_bseindia_eti_fbe_v1_6_14.matching_engine_status.size = 1

-- Display: Matching Engine Status
bse_bseindia_eti_fbe_v1_6_14.matching_engine_status.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.matching_engine_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.matching_engine_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.matching_engine_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.matching_engine_status, range, value, display)

  return offset + length, value
end

-- Matching Engine Trade Date
bse_bseindia_eti_fbe_v1_6_14.matching_engine_trade_date = {}

-- Size: Matching Engine Trade Date
bse_bseindia_eti_fbe_v1_6_14.matching_engine_trade_date.size = 4

-- Display: Matching Engine Trade Date
bse_bseindia_eti_fbe_v1_6_14.matching_engine_trade_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Matching Engine Trade Date: No Value"
  end

  return "Matching Engine Trade Date: "..value
end

-- Dissect: Matching Engine Trade Date
bse_bseindia_eti_fbe_v1_6_14.matching_engine_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.matching_engine_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.matching_engine_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.matching_engine_trade_date, range, value, display)

  return offset + length, value
end

-- Max Price Percentage
bse_bseindia_eti_fbe_v1_6_14.max_price_percentage = {}

-- Size: Max Price Percentage
bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.size = 8

-- Display: Max Price Percentage
bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Max Price Percentage: No Value"
  end

  return "Max Price Percentage: "..value
end

-- Translate: Max Price Percentage
bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Max Price Percentage
bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.max_price_percentage, range, value, display)

  return offset + length, value
end

-- Max Show
bse_bseindia_eti_fbe_v1_6_14.max_show = {}

-- Size: Max Show
bse_bseindia_eti_fbe_v1_6_14.max_show.size = 4

-- Display: Max Show
bse_bseindia_eti_fbe_v1_6_14.max_show.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Max Show: No Value"
  end

  return "Max Show: "..value
end

-- Dissect: Max Show
bse_bseindia_eti_fbe_v1_6_14.max_show.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.max_show.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.max_show.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.max_show, range, value, display)

  return offset + length, value
end

-- Member Type
bse_bseindia_eti_fbe_v1_6_14.member_type = {}

-- Size: Member Type
bse_bseindia_eti_fbe_v1_6_14.member_type.size = 1

-- Display: Member Type
bse_bseindia_eti_fbe_v1_6_14.member_type.display = function(value)
  if value == 1 then
    return "Member Type: Trading Member (1)"
  end
  if value == 2 then
    return "Member Type: Clearing Member (2)"
  end
  if value == 3 then
    return "Member Type: Proprietary (3)"
  end
  if value == 0xFF then
    return "Member Type: No Value"
  end

  return "Member Type: Unknown("..value..")"
end

-- Dissect: Member Type
bse_bseindia_eti_fbe_v1_6_14.member_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.member_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.member_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.member_type, range, value, display)

  return offset + length, value
end

-- Message Tag
bse_bseindia_eti_fbe_v1_6_14.message_tag = {}

-- Size: Message Tag
bse_bseindia_eti_fbe_v1_6_14.message_tag.size = 4

-- Display: Message Tag
bse_bseindia_eti_fbe_v1_6_14.message_tag.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Message Tag: No Value"
  end

  return "Message Tag: "..value
end

-- Dissect: Message Tag
bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.message_tag.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.message_tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.message_tag, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
bse_bseindia_eti_fbe_v1_6_14.msg_seq_num = {}

-- Size: Msg Seq Num
bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.size = 4

-- Display: Msg Seq Num
bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Msg Seq Num: No Value"
  end

  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Multi Leg Reporting Type
bse_bseindia_eti_fbe_v1_6_14.multi_leg_reporting_type = {}

-- Size: Multi Leg Reporting Type
bse_bseindia_eti_fbe_v1_6_14.multi_leg_reporting_type.size = 1

-- Display: Multi Leg Reporting Type
bse_bseindia_eti_fbe_v1_6_14.multi_leg_reporting_type.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.multi_leg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.multi_leg_reporting_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.multi_leg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_reporting_type, range, value, display)

  return offset + length, value
end

-- Network Msg Id
bse_bseindia_eti_fbe_v1_6_14.network_msg_id = {}

-- Size: Network Msg Id
bse_bseindia_eti_fbe_v1_6_14.network_msg_id.size = 8

-- Display: Network Msg Id
bse_bseindia_eti_fbe_v1_6_14.network_msg_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Network Msg Id: No Value"
  end

  return "Network Msg Id: "..value
end

-- Dissect: Network Msg Id
bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.network_msg_id, range, value, display)

  return offset + length, value
end

-- New Password
bse_bseindia_eti_fbe_v1_6_14.new_password = {}

-- Size: New Password
bse_bseindia_eti_fbe_v1_6_14.new_password.size = 32

-- Display: New Password
bse_bseindia_eti_fbe_v1_6_14.new_password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "New Password: No Value"
  end

  return "New Password: "..value
end

-- Dissect: New Password
bse_bseindia_eti_fbe_v1_6_14.new_password.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.new_password.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_password, range, value, display)

  return offset + length, value
end

-- No Fills
bse_bseindia_eti_fbe_v1_6_14.no_fills = {}

-- Size: No Fills
bse_bseindia_eti_fbe_v1_6_14.no_fills.size = 1

-- Display: No Fills
bse_bseindia_eti_fbe_v1_6_14.no_fills.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Fills: No Value"
  end

  return "No Fills: "..value
end

-- Dissect: No Fills
bse_bseindia_eti_fbe_v1_6_14.no_fills.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_fills.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_fills.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_fills, range, value, display)

  return offset + length, value
end

-- No Fills Index
bse_bseindia_eti_fbe_v1_6_14.no_fills_index = {}

-- Size: No Fills Index
bse_bseindia_eti_fbe_v1_6_14.no_fills_index.size = 1

-- Display: No Fills Index
bse_bseindia_eti_fbe_v1_6_14.no_fills_index.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Fills Index: No Value"
  end

  return "No Fills Index: "..value
end

-- Dissect: No Fills Index
bse_bseindia_eti_fbe_v1_6_14.no_fills_index.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_fills_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_fills_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_fills_index, range, value, display)

  return offset + length, value
end

-- No Leg Execs
bse_bseindia_eti_fbe_v1_6_14.no_leg_execs = {}

-- Size: No Leg Execs
bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.size = 2

-- Display: No Leg Execs
bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Leg Execs: No Value"
  end

  return "No Leg Execs: "..value
end

-- Dissect: No Leg Execs
bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_leg_execs, range, value, display)

  return offset + length, value
end

-- No Legs
bse_bseindia_eti_fbe_v1_6_14.no_legs = {}

-- Size: No Legs
bse_bseindia_eti_fbe_v1_6_14.no_legs.size = 1

-- Display: No Legs
bse_bseindia_eti_fbe_v1_6_14.no_legs.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Legs: No Value"
  end

  return "No Legs: "..value
end

-- Dissect: No Legs
bse_bseindia_eti_fbe_v1_6_14.no_legs.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_legs, range, value, display)

  return offset + length, value
end

-- No Not Affected Orders
bse_bseindia_eti_fbe_v1_6_14.no_not_affected_orders = {}

-- Size: No Not Affected Orders
bse_bseindia_eti_fbe_v1_6_14.no_not_affected_orders.size = 2

-- Display: No Not Affected Orders
bse_bseindia_eti_fbe_v1_6_14.no_not_affected_orders.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Not Affected Orders: No Value"
  end

  return "No Not Affected Orders: "..value
end

-- Dissect: No Not Affected Orders
bse_bseindia_eti_fbe_v1_6_14.no_not_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_not_affected_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_not_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_not_affected_orders, range, value, display)

  return offset + length, value
end

-- No Not Affected Securities
bse_bseindia_eti_fbe_v1_6_14.no_not_affected_securities = {}

-- Size: No Not Affected Securities
bse_bseindia_eti_fbe_v1_6_14.no_not_affected_securities.size = 2

-- Display: No Not Affected Securities
bse_bseindia_eti_fbe_v1_6_14.no_not_affected_securities.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Not Affected Securities: No Value"
  end

  return "No Not Affected Securities: "..value
end

-- Dissect: No Not Affected Securities
bse_bseindia_eti_fbe_v1_6_14.no_not_affected_securities.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_not_affected_securities.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_not_affected_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_not_affected_securities, range, value, display)

  return offset + length, value
end

-- No Of Multi Leg
bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg = {}

-- Size: No Of Multi Leg
bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg.size = 1

-- Display: No Of Multi Leg
bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Of Multi Leg: No Value"
  end

  return "No Of Multi Leg: "..value
end

-- Dissect: No Of Multi Leg
bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_of_multi_leg, range, value, display)

  return offset + length, value
end

-- No Of Multi Leg Execs
bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg_execs = {}

-- Size: No Of Multi Leg Execs
bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg_execs.size = 1

-- Display: No Of Multi Leg Execs
bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg_execs.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Of Multi Leg Execs: No Value"
  end

  return "No Of Multi Leg Execs: "..value
end

-- Dissect: No Of Multi Leg Execs
bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg_execs.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg_execs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg_execs.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_of_multi_leg_execs, range, value, display)

  return offset + length, value
end

-- No Of Partition
bse_bseindia_eti_fbe_v1_6_14.no_of_partition = {}

-- Size: No Of Partition
bse_bseindia_eti_fbe_v1_6_14.no_of_partition.size = 1

-- Display: No Of Partition
bse_bseindia_eti_fbe_v1_6_14.no_of_partition.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Of Partition: No Value"
  end

  return "No Of Partition: "..value
end

-- Dissect: No Of Partition
bse_bseindia_eti_fbe_v1_6_14.no_of_partition.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_of_partition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_of_partition.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_of_partition, range, value, display)

  return offset + length, value
end

-- No Quote Entries
bse_bseindia_eti_fbe_v1_6_14.no_quote_entries = {}

-- Size: No Quote Entries
bse_bseindia_eti_fbe_v1_6_14.no_quote_entries.size = 1

-- Display: No Quote Entries
bse_bseindia_eti_fbe_v1_6_14.no_quote_entries.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Quote Entries: No Value"
  end

  return "No Quote Entries: "..value
end

-- Dissect: No Quote Entries
bse_bseindia_eti_fbe_v1_6_14.no_quote_entries.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_quote_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_quote_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_quote_entries, range, value, display)

  return offset + length, value
end

-- No Quote Events
bse_bseindia_eti_fbe_v1_6_14.no_quote_events = {}

-- Size: No Quote Events
bse_bseindia_eti_fbe_v1_6_14.no_quote_events.size = 1

-- Display: No Quote Events
bse_bseindia_eti_fbe_v1_6_14.no_quote_events.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Quote Events: No Value"
  end

  return "No Quote Events: "..value
end

-- Dissect: No Quote Events
bse_bseindia_eti_fbe_v1_6_14.no_quote_events.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_quote_events.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_quote_events.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_quote_events, range, value, display)

  return offset + length, value
end

-- No Quote Events Index
bse_bseindia_eti_fbe_v1_6_14.no_quote_events_index = {}

-- Size: No Quote Events Index
bse_bseindia_eti_fbe_v1_6_14.no_quote_events_index.size = 1

-- Display: No Quote Events Index
bse_bseindia_eti_fbe_v1_6_14.no_quote_events_index.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Quote Events Index: No Value"
  end

  return "No Quote Events Index: "..value
end

-- Dissect: No Quote Events Index
bse_bseindia_eti_fbe_v1_6_14.no_quote_events_index.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_quote_events_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_quote_events_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_quote_events_index, range, value, display)

  return offset + length, value
end

-- No Sessions
bse_bseindia_eti_fbe_v1_6_14.no_sessions = {}

-- Size: No Sessions
bse_bseindia_eti_fbe_v1_6_14.no_sessions.size = 2

-- Display: No Sessions
bse_bseindia_eti_fbe_v1_6_14.no_sessions.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Sessions: No Value"
  end

  return "No Sessions: "..value
end

-- Dissect: No Sessions
bse_bseindia_eti_fbe_v1_6_14.no_sessions.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.no_sessions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.no_sessions.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.no_sessions, range, value, display)

  return offset + length, value
end

-- Not Aff Orig Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.not_aff_orig_cl_ord_id = {}

-- Size: Not Aff Orig Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.not_aff_orig_cl_ord_id.size = 8

-- Display: Not Aff Orig Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.not_aff_orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Not Aff Orig Cl Ord Id: No Value"
  end

  return "Not Aff Orig Cl Ord Id: "..value
end

-- Dissect: Not Aff Orig Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.not_aff_orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.not_aff_orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.not_aff_orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_aff_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Not Affected Order Id
bse_bseindia_eti_fbe_v1_6_14.not_affected_order_id = {}

-- Size: Not Affected Order Id
bse_bseindia_eti_fbe_v1_6_14.not_affected_order_id.size = 8

-- Display: Not Affected Order Id
bse_bseindia_eti_fbe_v1_6_14.not_affected_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Not Affected Order Id: No Value"
  end

  return "Not Affected Order Id: "..value
end

-- Dissect: Not Affected Order Id
bse_bseindia_eti_fbe_v1_6_14.not_affected_order_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.not_affected_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.not_affected_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_order_id, range, value, display)

  return offset + length, value
end

-- Not Affected Security Id
bse_bseindia_eti_fbe_v1_6_14.not_affected_security_id = {}

-- Size: Not Affected Security Id
bse_bseindia_eti_fbe_v1_6_14.not_affected_security_id.size = 8

-- Display: Not Affected Security Id
bse_bseindia_eti_fbe_v1_6_14.not_affected_security_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Not Affected Security Id: No Value"
  end

  return "Not Affected Security Id: "..value
end

-- Dissect: Not Affected Security Id
bse_bseindia_eti_fbe_v1_6_14.not_affected_security_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.not_affected_security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.not_affected_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_security_id, range, value, display)

  return offset + length, value
end

-- Offer Cxl Size
bse_bseindia_eti_fbe_v1_6_14.offer_cxl_size = {}

-- Size: Offer Cxl Size
bse_bseindia_eti_fbe_v1_6_14.offer_cxl_size.size = 4

-- Display: Offer Cxl Size
bse_bseindia_eti_fbe_v1_6_14.offer_cxl_size.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Offer Cxl Size: No Value"
  end

  return "Offer Cxl Size: "..value
end

-- Dissect: Offer Cxl Size
bse_bseindia_eti_fbe_v1_6_14.offer_cxl_size.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.offer_cxl_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.offer_cxl_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.offer_cxl_size, range, value, display)

  return offset + length, value
end

-- Offer Px
bse_bseindia_eti_fbe_v1_6_14.offer_px = {}

-- Size: Offer Px
bse_bseindia_eti_fbe_v1_6_14.offer_px.size = 8

-- Display: Offer Px
bse_bseindia_eti_fbe_v1_6_14.offer_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Translate: Offer Px
bse_bseindia_eti_fbe_v1_6_14.offer_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Offer Px
bse_bseindia_eti_fbe_v1_6_14.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.offer_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.offer_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.offer_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Offer Size
bse_bseindia_eti_fbe_v1_6_14.offer_size = {}

-- Size: Offer Size
bse_bseindia_eti_fbe_v1_6_14.offer_size.size = 4

-- Display: Offer Size
bse_bseindia_eti_fbe_v1_6_14.offer_size.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
bse_bseindia_eti_fbe_v1_6_14.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.offer_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Ord Status
bse_bseindia_eti_fbe_v1_6_14.ord_status = {}

-- Size: Ord Status
bse_bseindia_eti_fbe_v1_6_14.ord_status.size = 1

-- Display: Ord Status
bse_bseindia_eti_fbe_v1_6_14.ord_status.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Ord Type
bse_bseindia_eti_fbe_v1_6_14.ord_type = {}

-- Size: Ord Type
bse_bseindia_eti_fbe_v1_6_14.ord_type.size = 1

-- Display: Ord Type
bse_bseindia_eti_fbe_v1_6_14.ord_type.display = function(value)
  if value == 2 then
    return "Ord Type: Limit (2)"
  end
  if value == 3 then
    return "Ord Type: Stop (3)"
  end
  if value == 4 then
    return "Ord Type: Stop Limit (4)"
  end
  if value == 5 then
    return "Ord Type: Marketto Limit (5)"
  end
  if value == 6 then
    return "Ord Type: Block Deal (6)"
  end
  if value == 7 then
    return "Ord Type: Quote (7)"
  end
  if value == 0xFF then
    return "Ord Type: No Value"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
bse_bseindia_eti_fbe_v1_6_14.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.ord_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Category
bse_bseindia_eti_fbe_v1_6_14.order_category = {}

-- Size: Order Category
bse_bseindia_eti_fbe_v1_6_14.order_category.size = 1

-- Display: Order Category
bse_bseindia_eti_fbe_v1_6_14.order_category.display = function(value)
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
  if value == "3" then
    return "Order Category: Multi Leg Order (3)"
  end

  return "Order Category: Unknown("..value..")"
end

-- Dissect: Order Category
bse_bseindia_eti_fbe_v1_6_14.order_category.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.order_category.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.order_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_category, range, value, display)

  return offset + length, value
end

-- Order Id
bse_bseindia_eti_fbe_v1_6_14.order_id = {}

-- Size: Order Id
bse_bseindia_eti_fbe_v1_6_14.order_id.size = 8

-- Display: Order Id
bse_bseindia_eti_fbe_v1_6_14.order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
bse_bseindia_eti_fbe_v1_6_14.order_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
bse_bseindia_eti_fbe_v1_6_14.order_qty = {}

-- Size: Order Qty
bse_bseindia_eti_fbe_v1_6_14.order_qty.size = 4

-- Display: Order Qty
bse_bseindia_eti_fbe_v1_6_14.order_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty
bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Routing Indicator
bse_bseindia_eti_fbe_v1_6_14.order_routing_indicator = {}

-- Size: Order Routing Indicator
bse_bseindia_eti_fbe_v1_6_14.order_routing_indicator.size = 1

-- Display: Order Routing Indicator
bse_bseindia_eti_fbe_v1_6_14.order_routing_indicator.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.order_routing_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.order_routing_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.order_routing_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_routing_indicator, range, value, display)

  return offset + length, value
end

-- Order Side
bse_bseindia_eti_fbe_v1_6_14.order_side = {}

-- Size: Order Side
bse_bseindia_eti_fbe_v1_6_14.order_side.size = 1

-- Display: Order Side
bse_bseindia_eti_fbe_v1_6_14.order_side.display = function(value)
  if value == 1 then
    return "Order Side: Buy (1)"
  end
  if value == 2 then
    return "Order Side: Sell (2)"
  end
  if value == 3 then
    return "Order Side: Recall (3)"
  end
  if value == 4 then
    return "Order Side: Earlyreturn (4)"
  end
  if value == 0xFF then
    return "Order Side: No Value"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
bse_bseindia_eti_fbe_v1_6_14.order_side.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.order_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_side, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Orig Time
bse_bseindia_eti_fbe_v1_6_14.orig_time = {}

-- Size: Orig Time
bse_bseindia_eti_fbe_v1_6_14.orig_time.size = 8

-- Display: Orig Time
bse_bseindia_eti_fbe_v1_6_14.orig_time.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Orig Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Orig Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Orig Time
bse_bseindia_eti_fbe_v1_6_14.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Orig Trade Id
bse_bseindia_eti_fbe_v1_6_14.orig_trade_id = {}

-- Size: Orig Trade Id
bse_bseindia_eti_fbe_v1_6_14.orig_trade_id.size = 4

-- Display: Orig Trade Id
bse_bseindia_eti_fbe_v1_6_14.orig_trade_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Orig Trade Id: No Value"
  end

  return "Orig Trade Id: "..value
end

-- Dissect: Orig Trade Id
bse_bseindia_eti_fbe_v1_6_14.orig_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.orig_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.orig_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.orig_trade_id, range, value, display)

  return offset + length, value
end

-- Pad1
bse_bseindia_eti_fbe_v1_6_14.pad1 = {}

-- Size: Pad1
bse_bseindia_eti_fbe_v1_6_14.pad1.size = 1

-- Display: Pad1
bse_bseindia_eti_fbe_v1_6_14.pad1.display = function(value)
  return "Pad1: "..value
end

-- Dissect: Pad1
bse_bseindia_eti_fbe_v1_6_14.pad1.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.pad1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.pad1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad1, range, value, display)

  return offset + length, value
end

-- Pad2
bse_bseindia_eti_fbe_v1_6_14.pad2 = {}

-- Size: Pad2
bse_bseindia_eti_fbe_v1_6_14.pad2.size = 2

-- Display: Pad2
bse_bseindia_eti_fbe_v1_6_14.pad2.display = function(value)
  return "Pad2: "..value
end

-- Dissect: Pad2
bse_bseindia_eti_fbe_v1_6_14.pad2.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.pad2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.pad2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad2, range, value, display)

  return offset + length, value
end

-- Pad2v2
bse_bseindia_eti_fbe_v1_6_14.pad2v2 = {}

-- Size: Pad2v2
bse_bseindia_eti_fbe_v1_6_14.pad2v2.size = 2

-- Display: Pad2v2
bse_bseindia_eti_fbe_v1_6_14.pad2v2.display = function(value)
  return "Pad2v2: "..value
end

-- Dissect: Pad2v2
bse_bseindia_eti_fbe_v1_6_14.pad2v2.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.pad2v2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.pad2v2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad2v2, range, value, display)

  return offset + length, value
end

-- Pad3
bse_bseindia_eti_fbe_v1_6_14.pad3 = {}

-- Size: Pad3
bse_bseindia_eti_fbe_v1_6_14.pad3.size = 3

-- Display: Pad3
bse_bseindia_eti_fbe_v1_6_14.pad3.display = function(value)
  return "Pad3: "..value
end

-- Dissect: Pad3
bse_bseindia_eti_fbe_v1_6_14.pad3.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.pad3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.pad3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad3, range, value, display)

  return offset + length, value
end

-- Pad4
bse_bseindia_eti_fbe_v1_6_14.pad4 = {}

-- Size: Pad4
bse_bseindia_eti_fbe_v1_6_14.pad4.size = 4

-- Display: Pad4
bse_bseindia_eti_fbe_v1_6_14.pad4.display = function(value)
  return "Pad4: "..value
end

-- Dissect: Pad4
bse_bseindia_eti_fbe_v1_6_14.pad4.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.pad4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.pad4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad4, range, value, display)

  return offset + length, value
end

-- Pad5
bse_bseindia_eti_fbe_v1_6_14.pad5 = {}

-- Size: Pad5
bse_bseindia_eti_fbe_v1_6_14.pad5.size = 5

-- Display: Pad5
bse_bseindia_eti_fbe_v1_6_14.pad5.display = function(value)
  return "Pad5: "..value
end

-- Dissect: Pad5
bse_bseindia_eti_fbe_v1_6_14.pad5.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.pad5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.pad5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad5, range, value, display)

  return offset + length, value
end

-- Pad6
bse_bseindia_eti_fbe_v1_6_14.pad6 = {}

-- Size: Pad6
bse_bseindia_eti_fbe_v1_6_14.pad6.size = 6

-- Display: Pad6
bse_bseindia_eti_fbe_v1_6_14.pad6.display = function(value)
  return "Pad6: "..value
end

-- Dissect: Pad6
bse_bseindia_eti_fbe_v1_6_14.pad6.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.pad6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.pad6.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad6, range, value, display)

  return offset + length, value
end

-- Pad7
bse_bseindia_eti_fbe_v1_6_14.pad7 = {}

-- Size: Pad7
bse_bseindia_eti_fbe_v1_6_14.pad7.size = 7

-- Display: Pad7
bse_bseindia_eti_fbe_v1_6_14.pad7.display = function(value)
  return "Pad7: "..value
end

-- Dissect: Pad7
bse_bseindia_eti_fbe_v1_6_14.pad7.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.pad7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.pad7.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.pad7, range, value, display)

  return offset + length, value
end

-- Partition Id
bse_bseindia_eti_fbe_v1_6_14.partition_id = {}

-- Size: Partition Id
bse_bseindia_eti_fbe_v1_6_14.partition_id.size = 2

-- Display: Partition Id
bse_bseindia_eti_fbe_v1_6_14.partition_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Partition Id: No Value"
  end

  return "Partition Id: "..value
end

-- Dissect: Partition Id
bse_bseindia_eti_fbe_v1_6_14.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Party Detail Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.party_detail_id_executing_unit = {}

-- Size: Party Detail Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.party_detail_id_executing_unit.size = 4

-- Display: Party Detail Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.party_detail_id_executing_unit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Detail Id Executing Unit: No Value"
  end

  return "Party Detail Id Executing Unit: "..value
end

-- Dissect: Party Detail Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.party_detail_id_executing_unit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.party_detail_id_executing_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.party_detail_id_executing_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_detail_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Party Id Beneficiary
bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary = {}

-- Size: Party Id Beneficiary
bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary.size = 9

-- Display: Party Id Beneficiary
bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Beneficiary: No Value"
  end

  return "Party Id Beneficiary: "..value
end

-- Dissect: Party Id Beneficiary
bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_beneficiary, range, value, display)

  return offset + length, value
end

-- Party Id Entering Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_entering_firm = {}

-- Size: Party Id Entering Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_entering_firm.size = 1

-- Display: Party Id Entering Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_entering_firm.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.party_id_entering_firm.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_entering_firm, range, value, display)

  return offset + length, value
end

-- Party Id Entering Trader
bse_bseindia_eti_fbe_v1_6_14.party_id_entering_trader = {}

-- Size: Party Id Entering Trader
bse_bseindia_eti_fbe_v1_6_14.party_id_entering_trader.size = 4

-- Display: Party Id Entering Trader
bse_bseindia_eti_fbe_v1_6_14.party_id_entering_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Entering Trader: No Value"
  end

  return "Party Id Entering Trader: "..value
end

-- Dissect: Party Id Entering Trader
bse_bseindia_eti_fbe_v1_6_14.party_id_entering_trader.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_entering_trader, range, value, display)

  return offset + length, value
end

-- Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.party_id_executing_trader = {}

-- Size: Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.party_id_executing_trader.size = 4

-- Display: Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.party_id_executing_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Executing Trader: No Value"
  end

  return "Party Id Executing Trader: "..value
end

-- Dissect: Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.party_id_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.party_id_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.party_id_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Party Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.party_id_executing_unit = {}

-- Size: Party Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.party_id_executing_unit.size = 4

-- Display: Party Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.party_id_executing_unit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Executing Unit: No Value"
  end

  return "Party Id Executing Unit: "..value
end

-- Dissect: Party Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.party_id_executing_unit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.party_id_executing_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.party_id_executing_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Party Id Location Id
bse_bseindia_eti_fbe_v1_6_14.party_id_location_id = {}

-- Size: Party Id Location Id
bse_bseindia_eti_fbe_v1_6_14.party_id_location_id.size = 2

-- Display: Party Id Location Id
bse_bseindia_eti_fbe_v1_6_14.party_id_location_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Location Id: No Value"
  end

  return "Party Id Location Id: "..value
end

-- Dissect: Party Id Location Id
bse_bseindia_eti_fbe_v1_6_14.party_id_location_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.party_id_location_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.party_id_location_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_location_id, range, value, display)

  return offset + length, value
end

-- Party Id Order Origination Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm = {}

-- Size: Party Id Order Origination Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm.size = 7

-- Display: Party Id Order Origination Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Order Origination Firm: No Value"
  end

  return "Party Id Order Origination Firm: "..value
end

-- Dissect: Party Id Order Origination Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_order_origination_firm, range, value, display)

  return offset + length, value
end

-- Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.party_id_session_id = {}

-- Size: Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.size = 4

-- Display: Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Session Id: No Value"
  end

  return "Party Id Session Id: "..value
end

-- Dissect: Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_session_id, range, value, display)

  return offset + length, value
end

-- Party Id Take Up Trading Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm = {}

-- Size: Party Id Take Up Trading Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm.size = 5

-- Display: Party Id Take Up Trading Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Take Up Trading Firm: No Value"
  end

  return "Party Id Take Up Trading Firm: "..value
end

-- Dissect: Party Id Take Up Trading Firm
bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.party_id_take_up_trading_firm, range, value, display)

  return offset + length, value
end

-- Password
bse_bseindia_eti_fbe_v1_6_14.password = {}

-- Size: Password
bse_bseindia_eti_fbe_v1_6_14.password.size = 32

-- Display: Password
bse_bseindia_eti_fbe_v1_6_14.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
bse_bseindia_eti_fbe_v1_6_14.password.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.password.size
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

  local display = bse_bseindia_eti_fbe_v1_6_14.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.password, range, value, display)

  return offset + length, value
end

-- Percentage Utilized
bse_bseindia_eti_fbe_v1_6_14.percentage_utilized = {}

-- Size: Percentage Utilized
bse_bseindia_eti_fbe_v1_6_14.percentage_utilized.size = 4

-- Display: Percentage Utilized
bse_bseindia_eti_fbe_v1_6_14.percentage_utilized.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Percentage Utilized: No Value"
  end

  return "Percentage Utilized: "..value
end

-- Dissect: Percentage Utilized
bse_bseindia_eti_fbe_v1_6_14.percentage_utilized.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.percentage_utilized.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.percentage_utilized.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.percentage_utilized, range, value, display)

  return offset + length, value
end

-- Position Effect
bse_bseindia_eti_fbe_v1_6_14.position_effect = {}

-- Size: Position Effect
bse_bseindia_eti_fbe_v1_6_14.position_effect.size = 1

-- Display: Position Effect
bse_bseindia_eti_fbe_v1_6_14.position_effect.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Position Effect: No Value"
  end

  return "Position Effect: "..value
end

-- Dissect: Position Effect
bse_bseindia_eti_fbe_v1_6_14.position_effect.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.position_effect.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.position_effect, range, value, display)

  return offset + length, value
end

-- Price
bse_bseindia_eti_fbe_v1_6_14.price = {}

-- Size: Price
bse_bseindia_eti_fbe_v1_6_14.price.size = 8

-- Display: Price
bse_bseindia_eti_fbe_v1_6_14.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
bse_bseindia_eti_fbe_v1_6_14.price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price
bse_bseindia_eti_fbe_v1_6_14.price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.price.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.price, range, value, display)

  return offset + length, value
end

-- Price Mk To Limit Px
bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px = {}

-- Size: Price Mk To Limit Px
bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.size = 8

-- Display: Price Mk To Limit Px
bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Price Mk To Limit Px: No Value"
  end

  return "Price Mk To Limit Px: "..value
end

-- Translate: Price Mk To Limit Px
bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price Mk To Limit Px
bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.price_mk_to_limit_px, range, value, display)

  return offset + length, value
end

-- Price Validity Check Type
bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type = {}

-- Size: Price Validity Check Type
bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.size = 1

-- Display: Price Validity Check Type
bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.display = function(value)
  if value == 0 then
    return "Price Validity Check Type: None (0)"
  end
  if value == 0xFF then
    return "Price Validity Check Type: No Value"
  end

  return "Price Validity Check Type: Unknown("..value..")"
end

-- Dissect: Price Validity Check Type
bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.price_validity_check_type, range, value, display)

  return offset + length, value
end

-- Primary Order Id
bse_bseindia_eti_fbe_v1_6_14.primary_order_id = {}

-- Size: Primary Order Id
bse_bseindia_eti_fbe_v1_6_14.primary_order_id.size = 8

-- Display: Primary Order Id
bse_bseindia_eti_fbe_v1_6_14.primary_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Primary Order Id: No Value"
  end

  return "Primary Order Id: "..value
end

-- Dissect: Primary Order Id
bse_bseindia_eti_fbe_v1_6_14.primary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.primary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.primary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.primary_order_id, range, value, display)

  return offset + length, value
end

-- Product Complex
bse_bseindia_eti_fbe_v1_6_14.product_complex = {}

-- Size: Product Complex
bse_bseindia_eti_fbe_v1_6_14.product_complex.size = 1

-- Display: Product Complex
bse_bseindia_eti_fbe_v1_6_14.product_complex.display = function(value)
  if value == 1 then
    return "Product Complex: Simpleinstrument (1)"
  end
  if value == 2 then
    return "Product Complex: Standardoptionstrategy (2)"
  end
  if value == 5 then
    return "Product Complex: Futures Spread (5)"
  end
  if value == 0xFF then
    return "Product Complex: No Value"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.product_complex.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.product_complex.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Quote Entry Reject Reason
bse_bseindia_eti_fbe_v1_6_14.quote_entry_reject_reason = {}

-- Size: Quote Entry Reject Reason
bse_bseindia_eti_fbe_v1_6_14.quote_entry_reject_reason.size = 4

-- Display: Quote Entry Reject Reason
bse_bseindia_eti_fbe_v1_6_14.quote_entry_reject_reason.display = function(value)
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
  if value == 131 then
    return "Quote Entry Reject Reason: Cant Proc In Curr Instr State (131)"
  end
  if value == 132 then
    return "Quote Entry Reject Reason: Location Id Not Set (132)"
  end
  if value == 133 then
    return "Quote Entry Reject Reason: Client Code Not Set (133)"
  end
  if value == 134 then
    return "Quote Entry Reject Reason: Client Cannot Be Modified (134)"
  end
  if value == 135 then
    return "Quote Entry Reject Reason: Client Type Not Set (135)"
  end
  if value == 136 then
    return "Quote Entry Reject Reason: Invalid Client Code For Client Type Own (136)"
  end
  if value == 137 then
    return "Quote Entry Reject Reason: Own Client Type Not Allowed (137)"
  end
  if value == 138 then
    return "Quote Entry Reject Reason: Message Tag Not Set (138)"
  end
  if value == 139 then
    return "Quote Entry Reject Reason: Price Beyond Circuit Limit (139)"
  end
  if value == 140 then
    return "Quote Entry Reject Reason: Quantity Not A Multiple Of Lot Size (140)"
  end
  if value == 141 then
    return "Quote Entry Reject Reason: Quotes Not Allowed In Rrm (141)"
  end
  if value == 142 then
    return "Quote Entry Reject Reason: Amount Exceeds Tvl (142)"
  end
  if value == 143 then
    return "Quote Entry Reject Reason: Quotes Not Allowed In Auction (143)"
  end
  if value == 144 then
    return "Quote Entry Reject Reason: Client Code Debarred (144)"
  end
  if value == 145 then
    return "Quote Entry Reject Reason: Price Not Multiple Of Tick Size (145)"
  end
  if value == 146 then
    return "Quote Entry Reject Reason: Quotes Not Allowed In Post Closing (146)"
  end
  if value == 147 then
    return "Quote Entry Reject Reason: Participant Code Cannot Be Modified (147)"
  end
  if value == 148 then
    return "Quote Entry Reject Reason: Client Type Cannot Be Modified (148)"
  end
  if value == 149 then
    return "Quote Entry Reject Reason: Quoting Not Allowed (149)"
  end
  if value == 150 then
    return "Quote Entry Reject Reason: Invalid Participant Code (150)"
  end
  if value == 151 then
    return "Quote Entry Reject Reason: Price Band Not Set (151)"
  end
  if value == 152 then
    return "Quote Entry Reject Reason: Tick Size Notset (152)"
  end
  if value == 153 then
    return "Quote Entry Reject Reason: Client Type Not Allowed (153)"
  end
  if value == 154 then
    return "Quote Entry Reject Reason: Invalid Value (154)"
  end
  if value == 155 then
    return "Quote Entry Reject Reason: Client Code Not Allowed To Trade In Trading Restriction Window Pit (155)"
  end
  if value == 156 then
    return "Quote Entry Reject Reason: Deactivatedvide Seb Icirdtd 290722 (156)"
  end
  if value == 157 then
    return "Quote Entry Reject Reason: Bid Price Not In Lpp Range (157)"
  end
  if value == 158 then
    return "Quote Entry Reject Reason: Ask Price Not In Lpp Range (158)"
  end
  if value == 159 then
    return "Quote Entry Reject Reason: Price Level Quantity Exceeded (159)"
  end
  if value == 0xFFFFFFFF then
    return "Quote Entry Reject Reason: No Value"
  end

  return "Quote Entry Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Entry Reject Reason
bse_bseindia_eti_fbe_v1_6_14.quote_entry_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_entry_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_entry_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Entry Status
bse_bseindia_eti_fbe_v1_6_14.quote_entry_status = {}

-- Size: Quote Entry Status
bse_bseindia_eti_fbe_v1_6_14.quote_entry_status.size = 1

-- Display: Quote Entry Status
bse_bseindia_eti_fbe_v1_6_14.quote_entry_status.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.quote_entry_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_entry_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_entry_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_status, range, value, display)

  return offset + length, value
end

-- Quote Event Exec Id
bse_bseindia_eti_fbe_v1_6_14.quote_event_exec_id = {}

-- Size: Quote Event Exec Id
bse_bseindia_eti_fbe_v1_6_14.quote_event_exec_id.size = 4

-- Display: Quote Event Exec Id
bse_bseindia_eti_fbe_v1_6_14.quote_event_exec_id.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Quote Event Exec Id: No Value"
  end

  return "Quote Event Exec Id: "..value
end

-- Dissect: Quote Event Exec Id
bse_bseindia_eti_fbe_v1_6_14.quote_event_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_event_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_event_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_exec_id, range, value, display)

  return offset + length, value
end

-- Quote Event Liquidity Ind
bse_bseindia_eti_fbe_v1_6_14.quote_event_liquidity_ind = {}

-- Size: Quote Event Liquidity Ind
bse_bseindia_eti_fbe_v1_6_14.quote_event_liquidity_ind.size = 1

-- Display: Quote Event Liquidity Ind
bse_bseindia_eti_fbe_v1_6_14.quote_event_liquidity_ind.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.quote_event_liquidity_ind.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_event_liquidity_ind.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_event_liquidity_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Quote Event Match Id
bse_bseindia_eti_fbe_v1_6_14.quote_event_match_id = {}

-- Size: Quote Event Match Id
bse_bseindia_eti_fbe_v1_6_14.quote_event_match_id.size = 4

-- Display: Quote Event Match Id
bse_bseindia_eti_fbe_v1_6_14.quote_event_match_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Quote Event Match Id: No Value"
  end

  return "Quote Event Match Id: "..value
end

-- Dissect: Quote Event Match Id
bse_bseindia_eti_fbe_v1_6_14.quote_event_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_event_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_event_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_match_id, range, value, display)

  return offset + length, value
end

-- Quote Event Px
bse_bseindia_eti_fbe_v1_6_14.quote_event_px = {}

-- Size: Quote Event Px
bse_bseindia_eti_fbe_v1_6_14.quote_event_px.size = 8

-- Display: Quote Event Px
bse_bseindia_eti_fbe_v1_6_14.quote_event_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Quote Event Px: No Value"
  end

  return "Quote Event Px: "..value
end

-- Translate: Quote Event Px
bse_bseindia_eti_fbe_v1_6_14.quote_event_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Quote Event Px
bse_bseindia_eti_fbe_v1_6_14.quote_event_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_event_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.quote_event_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_event_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_px, range, value, display)

  return offset + length, value
end

-- Quote Event Qty
bse_bseindia_eti_fbe_v1_6_14.quote_event_qty = {}

-- Size: Quote Event Qty
bse_bseindia_eti_fbe_v1_6_14.quote_event_qty.size = 4

-- Display: Quote Event Qty
bse_bseindia_eti_fbe_v1_6_14.quote_event_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Quote Event Qty: No Value"
  end

  return "Quote Event Qty: "..value
end

-- Dissect: Quote Event Qty
bse_bseindia_eti_fbe_v1_6_14.quote_event_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_event_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_event_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_qty, range, value, display)

  return offset + length, value
end

-- Quote Event Reason
bse_bseindia_eti_fbe_v1_6_14.quote_event_reason = {}

-- Size: Quote Event Reason
bse_bseindia_eti_fbe_v1_6_14.quote_event_reason.size = 1

-- Display: Quote Event Reason
bse_bseindia_eti_fbe_v1_6_14.quote_event_reason.display = function(value)
  if value == 14 then
    return "Quote Event Reason: Pendingcancellationexecuted (14)"
  end
  if value == 15 then
    return "Quote Event Reason: Invalidprice (15)"
  end
  if value == 16 then
    return "Quote Event Reason: Selftradequotedeleted (16)"
  end
  if value == 17 then
    return "Quote Event Reason: Reversetradequotedeleted (17)"
  end
  if value == 18 then
    return "Quote Event Reason: Client Rrm Quotedeleted (18)"
  end
  if value == 20 then
    return "Quote Event Reason: Price Level Quantity Exceeded (20)"
  end
  if value == 21 then
    return "Quote Event Reason: Client Debarred (21)"
  end
  if value == 0xFF then
    return "Quote Event Reason: No Value"
  end

  return "Quote Event Reason: Unknown("..value..")"
end

-- Dissect: Quote Event Reason
bse_bseindia_eti_fbe_v1_6_14.quote_event_reason.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_event_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_reason, range, value, display)

  return offset + length, value
end

-- Quote Event Side
bse_bseindia_eti_fbe_v1_6_14.quote_event_side = {}

-- Size: Quote Event Side
bse_bseindia_eti_fbe_v1_6_14.quote_event_side.size = 1

-- Display: Quote Event Side
bse_bseindia_eti_fbe_v1_6_14.quote_event_side.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.quote_event_side.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_event_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_event_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_side, range, value, display)

  return offset + length, value
end

-- Quote Event Type
bse_bseindia_eti_fbe_v1_6_14.quote_event_type = {}

-- Size: Quote Event Type
bse_bseindia_eti_fbe_v1_6_14.quote_event_type.size = 1

-- Display: Quote Event Type
bse_bseindia_eti_fbe_v1_6_14.quote_event_type.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.quote_event_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_type, range, value, display)

  return offset + length, value
end

-- Quote Id
bse_bseindia_eti_fbe_v1_6_14.quote_id = {}

-- Size: Quote Id
bse_bseindia_eti_fbe_v1_6_14.quote_id.size = 8

-- Display: Quote Id
bse_bseindia_eti_fbe_v1_6_14.quote_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Id: No Value"
  end

  return "Quote Id: "..value
end

-- Dissect: Quote Id
bse_bseindia_eti_fbe_v1_6_14.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Quote Msg Id
bse_bseindia_eti_fbe_v1_6_14.quote_msg_id = {}

-- Size: Quote Msg Id
bse_bseindia_eti_fbe_v1_6_14.quote_msg_id.size = 8

-- Display: Quote Msg Id
bse_bseindia_eti_fbe_v1_6_14.quote_msg_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Msg Id: No Value"
  end

  return "Quote Msg Id: "..value
end

-- Dissect: Quote Msg Id
bse_bseindia_eti_fbe_v1_6_14.quote_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_msg_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_msg_id, range, value, display)

  return offset + length, value
end

-- Quote Response Id
bse_bseindia_eti_fbe_v1_6_14.quote_response_id = {}

-- Size: Quote Response Id
bse_bseindia_eti_fbe_v1_6_14.quote_response_id.size = 8

-- Display: Quote Response Id
bse_bseindia_eti_fbe_v1_6_14.quote_response_id.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Response Id: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Quote Response Id: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Quote Response Id
bse_bseindia_eti_fbe_v1_6_14.quote_response_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_response_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_response_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_response_id, range, value, display)

  return offset + length, value
end

-- Quote Size Type
bse_bseindia_eti_fbe_v1_6_14.quote_size_type = {}

-- Size: Quote Size Type
bse_bseindia_eti_fbe_v1_6_14.quote_size_type.size = 1

-- Display: Quote Size Type
bse_bseindia_eti_fbe_v1_6_14.quote_size_type.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.quote_size_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.quote_size_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.quote_size_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_size_type, range, value, display)

  return offset + length, value
end

-- Ref Appl Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_id = {}

-- Size: Ref Appl Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_id.size = 1

-- Display: Ref Appl Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_id.display = function(value)
  if value == 0 then
    return "Ref Appl Id: Trade Enhancement (0)"
  end
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
  if value == 8 then
    return "Ref Appl Id: Risk Admin (8)"
  end
  if value == 0xFF then
    return "Ref Appl Id: No Value"
  end

  return "Ref Appl Id: Unknown("..value..")"
end

-- Dissect: Ref Appl Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.ref_appl_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.ref_appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.ref_appl_id, range, value, display)

  return offset + length, value
end

-- Ref Appl Last Msg Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_msg_id = {}

-- Size: Ref Appl Last Msg Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_msg_id.size = 16

-- Display: Ref Appl Last Msg Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_msg_id.display = function(value)
  return "Ref Appl Last Msg Id: "..value
end

-- Dissect: Ref Appl Last Msg Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_msg_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_msg_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_msg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.ref_appl_last_msg_id, range, value, display)

  return offset + length, value
end

-- Ref Appl Last Seq Num
bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_seq_num = {}

-- Size: Ref Appl Last Seq Num
bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_seq_num.size = 8

-- Display: Ref Appl Last Seq Num
bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_seq_num.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Ref Appl Last Seq Num: No Value"
  end

  return "Ref Appl Last Seq Num: "..value
end

-- Dissect: Ref Appl Last Seq Num
bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.ref_appl_last_seq_num, range, value, display)

  return offset + length, value
end

-- Ref Appl Sub Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_sub_id = {}

-- Size: Ref Appl Sub Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_sub_id.size = 4

-- Display: Ref Appl Sub Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Ref Appl Sub Id: No Value"
  end

  return "Ref Appl Sub Id: "..value
end

-- Dissect: Ref Appl Sub Id
bse_bseindia_eti_fbe_v1_6_14.ref_appl_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.ref_appl_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.ref_appl_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.ref_appl_sub_id, range, value, display)

  return offset + length, value
end

-- Regulatory Id
bse_bseindia_eti_fbe_v1_6_14.regulatory_id = {}

-- Size: Regulatory Id
bse_bseindia_eti_fbe_v1_6_14.regulatory_id.size = 4

-- Display: Regulatory Id
bse_bseindia_eti_fbe_v1_6_14.regulatory_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Regulatory Id: No Value"
  end

  return "Regulatory Id: "..value
end

-- Dissect: Regulatory Id
bse_bseindia_eti_fbe_v1_6_14.regulatory_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.regulatory_id, range, value, display)

  return offset + length, value
end

-- Regulatory Text
bse_bseindia_eti_fbe_v1_6_14.regulatory_text = {}

-- Size: Regulatory Text
bse_bseindia_eti_fbe_v1_6_14.regulatory_text.size = 20

-- Display: Regulatory Text
bse_bseindia_eti_fbe_v1_6_14.regulatory_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Regulatory Text: No Value"
  end

  return "Regulatory Text: "..value
end

-- Dissect: Regulatory Text
bse_bseindia_eti_fbe_v1_6_14.regulatory_text.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.regulatory_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.regulatory_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.regulatory_text, range, value, display)

  return offset + length, value
end

-- Related Product Complex
bse_bseindia_eti_fbe_v1_6_14.related_product_complex = {}

-- Size: Related Product Complex
bse_bseindia_eti_fbe_v1_6_14.related_product_complex.size = 1

-- Display: Related Product Complex
bse_bseindia_eti_fbe_v1_6_14.related_product_complex.display = function(value)
  if value == 2 then
    return "Related Product Complex: Standardoptionstrategy (2)"
  end
  if value == 5 then
    return "Related Product Complex: Futures Spread (5)"
  end
  if value == 0xFF then
    return "Related Product Complex: No Value"
  end

  return "Related Product Complex: Unknown("..value..")"
end

-- Dissect: Related Product Complex
bse_bseindia_eti_fbe_v1_6_14.related_product_complex.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.related_product_complex.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.related_product_complex.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.related_product_complex, range, value, display)

  return offset + length, value
end

-- Related Security Id
bse_bseindia_eti_fbe_v1_6_14.related_security_id = {}

-- Size: Related Security Id
bse_bseindia_eti_fbe_v1_6_14.related_security_id.size = 8

-- Display: Related Security Id
bse_bseindia_eti_fbe_v1_6_14.related_security_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Related Security Id: No Value"
  end

  return "Related Security Id: "..value
end

-- Dissect: Related Security Id
bse_bseindia_eti_fbe_v1_6_14.related_security_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.related_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eti_fbe_v1_6_14.related_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.related_security_id, range, value, display)

  return offset + length, value
end

-- Related Symbol
bse_bseindia_eti_fbe_v1_6_14.related_symbol = {}

-- Size: Related Symbol
bse_bseindia_eti_fbe_v1_6_14.related_symbol.size = 4

-- Display: Related Symbol
bse_bseindia_eti_fbe_v1_6_14.related_symbol.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Related Symbol: No Value"
  end

  return "Related Symbol: "..value
end

-- Dissect: Related Symbol
bse_bseindia_eti_fbe_v1_6_14.related_symbol.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.related_symbol.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.related_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.related_symbol, range, value, display)

  return offset + length, value
end

-- Request Out
bse_bseindia_eti_fbe_v1_6_14.request_out = {}

-- Size: Request Out
bse_bseindia_eti_fbe_v1_6_14.request_out.size = 8

-- Display: Request Out
bse_bseindia_eti_fbe_v1_6_14.request_out.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Request Out: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Request Out: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Out
bse_bseindia_eti_fbe_v1_6_14.request_out.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.request_out.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.request_out.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.request_out, range, value, display)

  return offset + length, value
end

-- Request Time
bse_bseindia_eti_fbe_v1_6_14.request_time = {}

-- Size: Request Time
bse_bseindia_eti_fbe_v1_6_14.request_time.size = 8

-- Display: Request Time
bse_bseindia_eti_fbe_v1_6_14.request_time.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Request Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Request Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Time
bse_bseindia_eti_fbe_v1_6_14.request_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.request_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.request_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.request_time, range, value, display)

  return offset + length, value
end

-- Requesting Party Clearing Firm
bse_bseindia_eti_fbe_v1_6_14.requesting_party_clearing_firm = {}

-- Size: Requesting Party Clearing Firm
bse_bseindia_eti_fbe_v1_6_14.requesting_party_clearing_firm.size = 9

-- Display: Requesting Party Clearing Firm
bse_bseindia_eti_fbe_v1_6_14.requesting_party_clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Clearing Firm: No Value"
  end

  return "Requesting Party Clearing Firm: "..value
end

-- Dissect: Requesting Party Clearing Firm
bse_bseindia_eti_fbe_v1_6_14.requesting_party_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.requesting_party_clearing_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.requesting_party_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.requesting_party_clearing_firm, range, value, display)

  return offset + length, value
end

-- Requesting Party Entering Firm
bse_bseindia_eti_fbe_v1_6_14.requesting_party_entering_firm = {}

-- Size: Requesting Party Entering Firm
bse_bseindia_eti_fbe_v1_6_14.requesting_party_entering_firm.size = 9

-- Display: Requesting Party Entering Firm
bse_bseindia_eti_fbe_v1_6_14.requesting_party_entering_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Entering Firm: No Value"
  end

  return "Requesting Party Entering Firm: "..value
end

-- Dissect: Requesting Party Entering Firm
bse_bseindia_eti_fbe_v1_6_14.requesting_party_entering_firm.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.requesting_party_entering_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.requesting_party_entering_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.requesting_party_entering_firm, range, value, display)

  return offset + length, value
end

-- Requesting Party Id Executing System
bse_bseindia_eti_fbe_v1_6_14.requesting_party_id_executing_system = {}

-- Size: Requesting Party Id Executing System
bse_bseindia_eti_fbe_v1_6_14.requesting_party_id_executing_system.size = 4

-- Display: Requesting Party Id Executing System
bse_bseindia_eti_fbe_v1_6_14.requesting_party_id_executing_system.display = function(value)
  if value == 1 then
    return "Requesting Party Id Executing System: Eurex Clearing (1)"
  end
  if value == 0xFFFFFFFF then
    return "Requesting Party Id Executing System: No Value"
  end

  return "Requesting Party Id Executing System: Unknown("..value..")"
end

-- Dissect: Requesting Party Id Executing System
bse_bseindia_eti_fbe_v1_6_14.requesting_party_id_executing_system.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.requesting_party_id_executing_system.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.requesting_party_id_executing_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.requesting_party_id_executing_system, range, value, display)

  return offset + length, value
end

-- Response In
bse_bseindia_eti_fbe_v1_6_14.response_in = {}

-- Size: Response In
bse_bseindia_eti_fbe_v1_6_14.response_in.size = 8

-- Display: Response In
bse_bseindia_eti_fbe_v1_6_14.response_in.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Response In: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Response In: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Response In
bse_bseindia_eti_fbe_v1_6_14.response_in.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.response_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.response_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.response_in, range, value, display)

  return offset + length, value
end

-- Risk Limit Action
bse_bseindia_eti_fbe_v1_6_14.risk_limit_action = {}

-- Size: Risk Limit Action
bse_bseindia_eti_fbe_v1_6_14.risk_limit_action.size = 1

-- Display: Risk Limit Action
bse_bseindia_eti_fbe_v1_6_14.risk_limit_action.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.risk_limit_action.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.risk_limit_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.risk_limit_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.risk_limit_action, range, value, display)

  return offset + length, value
end

-- Risk Mode Status
bse_bseindia_eti_fbe_v1_6_14.risk_mode_status = {}

-- Size: Risk Mode Status
bse_bseindia_eti_fbe_v1_6_14.risk_mode_status.size = 1

-- Display: Risk Mode Status
bse_bseindia_eti_fbe_v1_6_14.risk_mode_status.display = function(value)
  if value == 1 then
    return "Risk Mode Status: In (1)"
  end
  if value == 2 then
    return "Risk Mode Status: Out (2)"
  end
  if value == 0xFF then
    return "Risk Mode Status: No Value"
  end

  return "Risk Mode Status: Unknown("..value..")"
end

-- Dissect: Risk Mode Status
bse_bseindia_eti_fbe_v1_6_14.risk_mode_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.risk_mode_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.risk_mode_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.risk_mode_status, range, value, display)

  return offset + length, value
end

-- Rollover Flag
bse_bseindia_eti_fbe_v1_6_14.rollover_flag = {}

-- Size: Rollover Flag
bse_bseindia_eti_fbe_v1_6_14.rollover_flag.size = 1

-- Display: Rollover Flag
bse_bseindia_eti_fbe_v1_6_14.rollover_flag.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "Rollover Flag: No Value"
  end

  return "Rollover Flag: "..value
end

-- Dissect: Rollover Flag
bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.rollover_flag, range, value, display)

  return offset + length, value
end

-- Root Party Clearing Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_firm = {}

-- Size: Root Party Clearing Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_firm.size = 5

-- Display: Root Party Clearing Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Clearing Firm: No Value"
  end

  return "Root Party Clearing Firm: "..value
end

-- Dissect: Root Party Clearing Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_clearing_firm, range, value, display)

  return offset + length, value
end

-- Root Party Clearing Organization
bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_organization = {}

-- Size: Root Party Clearing Organization
bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_organization.size = 4

-- Display: Root Party Clearing Organization
bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_organization.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Clearing Organization: No Value"
  end

  return "Root Party Clearing Organization: "..value
end

-- Dissect: Root Party Clearing Organization
bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_organization.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_organization.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_organization.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_clearing_organization, range, value, display)

  return offset + length, value
end

-- Root Party Executing Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_executing_firm = {}

-- Size: Root Party Executing Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_executing_firm.size = 5

-- Display: Root Party Executing Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_executing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Executing Firm: No Value"
  end

  return "Root Party Executing Firm: "..value
end

-- Dissect: Root Party Executing Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_executing_firm.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_executing_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_executing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_executing_firm, range, value, display)

  return offset + length, value
end

-- Root Party Executing Trader
bse_bseindia_eti_fbe_v1_6_14.root_party_executing_trader = {}

-- Size: Root Party Executing Trader
bse_bseindia_eti_fbe_v1_6_14.root_party_executing_trader.size = 6

-- Display: Root Party Executing Trader
bse_bseindia_eti_fbe_v1_6_14.root_party_executing_trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Executing Trader: No Value"
  end

  return "Root Party Executing Trader: "..value
end

-- Dissect: Root Party Executing Trader
bse_bseindia_eti_fbe_v1_6_14.root_party_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_executing_trader.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_executing_trader, range, value, display)

  return offset + length, value
end

-- Root Party Id Beneficiary
bse_bseindia_eti_fbe_v1_6_14.root_party_id_beneficiary = {}

-- Size: Root Party Id Beneficiary
bse_bseindia_eti_fbe_v1_6_14.root_party_id_beneficiary.size = 9

-- Display: Root Party Id Beneficiary
bse_bseindia_eti_fbe_v1_6_14.root_party_id_beneficiary.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Id Beneficiary: No Value"
  end

  return "Root Party Id Beneficiary: "..value
end

-- Dissect: Root Party Id Beneficiary
bse_bseindia_eti_fbe_v1_6_14.root_party_id_beneficiary.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_id_beneficiary.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_id_beneficiary.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_beneficiary, range, value, display)

  return offset + length, value
end

-- Root Party Id Clearing Unit
bse_bseindia_eti_fbe_v1_6_14.root_party_id_clearing_unit = {}

-- Size: Root Party Id Clearing Unit
bse_bseindia_eti_fbe_v1_6_14.root_party_id_clearing_unit.size = 4

-- Display: Root Party Id Clearing Unit
bse_bseindia_eti_fbe_v1_6_14.root_party_id_clearing_unit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Root Party Id Clearing Unit: No Value"
  end

  return "Root Party Id Clearing Unit: "..value
end

-- Dissect: Root Party Id Clearing Unit
bse_bseindia_eti_fbe_v1_6_14.root_party_id_clearing_unit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_id_clearing_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_id_clearing_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_clearing_unit, range, value, display)

  return offset + length, value
end

-- Root Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_trader = {}

-- Size: Root Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_trader.size = 4

-- Display: Root Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Root Party Id Executing Trader: No Value"
  end

  return "Root Party Id Executing Trader: "..value
end

-- Dissect: Root Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Root Party Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_unit = {}

-- Size: Root Party Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_unit.size = 4

-- Display: Root Party Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_unit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Root Party Id Executing Unit: No Value"
  end

  return "Root Party Id Executing Unit: "..value
end

-- Dissect: Root Party Id Executing Unit
bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_unit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Root Party Id Order Origination Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_id_order_origination_firm = {}

-- Size: Root Party Id Order Origination Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_id_order_origination_firm.size = 7

-- Display: Root Party Id Order Origination Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_id_order_origination_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Id Order Origination Firm: No Value"
  end

  return "Root Party Id Order Origination Firm: "..value
end

-- Dissect: Root Party Id Order Origination Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_id_order_origination_firm.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_id_order_origination_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_id_order_origination_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_order_origination_firm, range, value, display)

  return offset + length, value
end

-- Root Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.root_party_id_session_id = {}

-- Size: Root Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.root_party_id_session_id.size = 4

-- Display: Root Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.root_party_id_session_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Root Party Id Session Id: No Value"
  end

  return "Root Party Id Session Id: "..value
end

-- Dissect: Root Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.root_party_id_session_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_id_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_id_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_session_id, range, value, display)

  return offset + length, value
end

-- Root Party Id Take Up Trading Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_id_take_up_trading_firm = {}

-- Size: Root Party Id Take Up Trading Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_id_take_up_trading_firm.size = 5

-- Display: Root Party Id Take Up Trading Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_id_take_up_trading_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Root Party Id Take Up Trading Firm: No Value"
  end

  return "Root Party Id Take Up Trading Firm: "..value
end

-- Dissect: Root Party Id Take Up Trading Firm
bse_bseindia_eti_fbe_v1_6_14.root_party_id_take_up_trading_firm.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.root_party_id_take_up_trading_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.root_party_id_take_up_trading_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.root_party_id_take_up_trading_firm, range, value, display)

  return offset + length, value
end

-- Rrm State
bse_bseindia_eti_fbe_v1_6_14.rrm_state = {}

-- Size: Rrm State
bse_bseindia_eti_fbe_v1_6_14.rrm_state.size = 1

-- Display: Rrm State
bse_bseindia_eti_fbe_v1_6_14.rrm_state.display = function(value)
  if value == 0 then
    return "Rrm State: No Rrm (0)"
  end
  if value == 1 then
    return "Rrm State: In Rrm (1)"
  end
  if value == 2 then
    return "Rrm State: Out Of Rrm (2)"
  end
  if value == 0xFF then
    return "Rrm State: No Value"
  end

  return "Rrm State: Unknown("..value..")"
end

-- Dissect: Rrm State
bse_bseindia_eti_fbe_v1_6_14.rrm_state.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.rrm_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.rrm_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.rrm_state, range, value, display)

  return offset + length, value
end

-- Scope Identifier
bse_bseindia_eti_fbe_v1_6_14.scope_identifier = {}

-- Size: Scope Identifier
bse_bseindia_eti_fbe_v1_6_14.scope_identifier.size = 1

-- Display: Scope Identifier
bse_bseindia_eti_fbe_v1_6_14.scope_identifier.display = function(value)
  if value == 1 then
    return "Scope Identifier: Membersuspension (1)"
  end
  if value == 2 then
    return "Scope Identifier: Positionlimitsuspension (2)"
  end
  if value == 3 then
    return "Scope Identifier: Collateralsuspension (3)"
  end
  if value == 4 then
    return "Scope Identifier: Coolingoffsuspension (4)"
  end
  if value == 5 then
    return "Scope Identifier: Positionlimitrrm (5)"
  end
  if value == 6 then
    return "Scope Identifier: Market (6)"
  end
  if value == 7 then
    return "Scope Identifier: Coolingoffrrm (7)"
  end
  if value == 8 then
    return "Scope Identifier: Collateralrrm (8)"
  end
  if value == 9 then
    return "Scope Identifier: Positionlimitrrmnear (9)"
  end
  if value == 0xFF then
    return "Scope Identifier: No Value"
  end

  return "Scope Identifier: Unknown("..value..")"
end

-- Dissect: Scope Identifier
bse_bseindia_eti_fbe_v1_6_14.scope_identifier.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.scope_identifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.scope_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.scope_identifier, range, value, display)

  return offset + length, value
end

-- Secondary Gateway Id
bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_id = {}

-- Size: Secondary Gateway Id
bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_id.size = 4

-- Display: Secondary Gateway Id
bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Secondary Gateway Id: No Value"
  end

  return "Secondary Gateway Id: "..value
end

-- Dissect: Secondary Gateway Id
bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.secondary_gateway_id, range, value, display)

  return offset + length, value
end

-- Secondary Gateway Sub Id
bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_sub_id = {}

-- Size: Secondary Gateway Sub Id
bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_sub_id.size = 4

-- Display: Secondary Gateway Sub Id
bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Secondary Gateway Sub Id: No Value"
  end

  return "Secondary Gateway Sub Id: "..value
end

-- Dissect: Secondary Gateway Sub Id
bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.secondary_gateway_sub_id, range, value, display)

  return offset + length, value
end

-- Security Id
bse_bseindia_eti_fbe_v1_6_14.security_id = {}

-- Size: Security Id
bse_bseindia_eti_fbe_v1_6_14.security_id.size = 8

-- Display: Security Id
bse_bseindia_eti_fbe_v1_6_14.security_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
bse_bseindia_eti_fbe_v1_6_14.security_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eti_fbe_v1_6_14.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Key
bse_bseindia_eti_fbe_v1_6_14.security_key = {}

-- Size: Security Key
bse_bseindia_eti_fbe_v1_6_14.security_key.size = 32

-- Display: Security Key
bse_bseindia_eti_fbe_v1_6_14.security_key.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Key: No Value"
  end

  return "Security Key: "..value
end

-- Dissect: Security Key
bse_bseindia_eti_fbe_v1_6_14.security_key.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.security_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.security_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.security_key, range, value, display)

  return offset + length, value
end

-- Segment Indicator
bse_bseindia_eti_fbe_v1_6_14.segment_indicator = {}

-- Size: Segment Indicator
bse_bseindia_eti_fbe_v1_6_14.segment_indicator.size = 1

-- Display: Segment Indicator
bse_bseindia_eti_fbe_v1_6_14.segment_indicator.display = function(value)
  if value == 1 then
    return "Segment Indicator: Cash (1)"
  end
  if value == 2 then
    return "Segment Indicator: Equity (2)"
  end
  if value == 3 then
    return "Segment Indicator: Repo (3)"
  end
  if value == 4 then
    return "Segment Indicator: Slb (4)"
  end
  if value == 5 then
    return "Segment Indicator: Sauc (5)"
  end
  if value == 6 then
    return "Segment Indicator: Debt (6)"
  end
  if value == 7 then
    return "Segment Indicator: Currency Derivatives (7)"
  end
  if value == 8 then
    return "Segment Indicator: Currency Asset Class (8)"
  end
  if value == 9 then
    return "Segment Indicator: Interest Rate Asset Class (9)"
  end
  if value == 10 then
    return "Segment Indicator: Inx (10)"
  end
  if value == 11 then
    return "Segment Indicator: Equity Derivatives (11)"
  end
  if value == 12 then
    return "Segment Indicator: Derivatives (12)"
  end
  if value == 13 then
    return "Segment Indicator: Eurex (13)"
  end
  if value == 14 then
    return "Segment Indicator: Eex (14)"
  end
  if value == 15 then
    return "Segment Indicator: Commodity Derivatives (15)"
  end
  if value == 16 then
    return "Segment Indicator: Electronic Gold Receipts (16)"
  end
  if value == 0xFF then
    return "Segment Indicator: No Value"
  end

  return "Segment Indicator: Unknown("..value..")"
end

-- Dissect: Segment Indicator
bse_bseindia_eti_fbe_v1_6_14.segment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.segment_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.segment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.segment_indicator, range, value, display)

  return offset + length, value
end

-- Sender Location Id
bse_bseindia_eti_fbe_v1_6_14.sender_location_id = {}

-- Size: Sender Location Id
bse_bseindia_eti_fbe_v1_6_14.sender_location_id.size = 8

-- Display: Sender Location Id
bse_bseindia_eti_fbe_v1_6_14.sender_location_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Sender Location Id: No Value"
  end

  return "Sender Location Id: "..value
end

-- Dissect: Sender Location Id
bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.sender_location_id, range, value, display)

  return offset + length, value
end

-- Sender Sub Id
bse_bseindia_eti_fbe_v1_6_14.sender_sub_id = {}

-- Size: Sender Sub Id
bse_bseindia_eti_fbe_v1_6_14.sender_sub_id.size = 4

-- Display: Sender Sub Id
bse_bseindia_eti_fbe_v1_6_14.sender_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Sender Sub Id: No Value"
  end

  return "Sender Sub Id: "..value
end

-- Dissect: Sender Sub Id
bse_bseindia_eti_fbe_v1_6_14.sender_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.sender_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.sender_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.sender_sub_id, range, value, display)

  return offset + length, value
end

-- Sending Time
bse_bseindia_eti_fbe_v1_6_14.sending_time = {}

-- Size: Sending Time
bse_bseindia_eti_fbe_v1_6_14.sending_time.size = 8

-- Display: Sending Time
bse_bseindia_eti_fbe_v1_6_14.sending_time.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Sending Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sending Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
bse_bseindia_eti_fbe_v1_6_14.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Session Instance Id
bse_bseindia_eti_fbe_v1_6_14.session_instance_id = {}

-- Size: Session Instance Id
bse_bseindia_eti_fbe_v1_6_14.session_instance_id.size = 4

-- Display: Session Instance Id
bse_bseindia_eti_fbe_v1_6_14.session_instance_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Session Instance Id: No Value"
  end

  return "Session Instance Id: "..value
end

-- Dissect: Session Instance Id
bse_bseindia_eti_fbe_v1_6_14.session_instance_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.session_instance_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.session_instance_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_instance_id, range, value, display)

  return offset + length, value
end

-- Session Mode
bse_bseindia_eti_fbe_v1_6_14.session_mode = {}

-- Size: Session Mode
bse_bseindia_eti_fbe_v1_6_14.session_mode.size = 1

-- Display: Session Mode
bse_bseindia_eti_fbe_v1_6_14.session_mode.display = function(value)
  if value == 1 then
    return "Session Mode: Hf (1)"
  end
  if value == 2 then
    return "Session Mode: Lf (2)"
  end
  if value == 0xFF then
    return "Session Mode: No Value"
  end

  return "Session Mode: Unknown("..value..")"
end

-- Dissect: Session Mode
bse_bseindia_eti_fbe_v1_6_14.session_mode.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.session_mode.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.session_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_mode, range, value, display)

  return offset + length, value
end

-- Session Reject Reason
bse_bseindia_eti_fbe_v1_6_14.session_reject_reason = {}

-- Size: Session Reject Reason
bse_bseindia_eti_fbe_v1_6_14.session_reject_reason.size = 4

-- Display: Session Reject Reason
bse_bseindia_eti_fbe_v1_6_14.session_reject_reason.display = function(value)
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
  if value == 10004 then
    return "Session Reject Reason: Bu Book Order Limit Exceeded (10004)"
  end
  if value == 10005 then
    return "Session Reject Reason: Session Book Order Limit Exceeded (10005)"
  end
  if value == 10006 then
    return "Session Reject Reason: Activity Timestamp Not Matched (10006)"
  end
  if value == 10008 then
    return "Session Reject Reason: Price Not In Lpp Range (10008)"
  end
  if value == 0xFFFFFFFF then
    return "Session Reject Reason: No Value"
  end

  return "Session Reject Reason: Unknown("..value..")"
end

-- Dissect: Session Reject Reason
bse_bseindia_eti_fbe_v1_6_14.session_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.session_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.session_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_reject_reason, range, value, display)

  return offset + length, value
end

-- Session Status
bse_bseindia_eti_fbe_v1_6_14.session_status = {}

-- Size: Session Status
bse_bseindia_eti_fbe_v1_6_14.session_status.size = 1

-- Display: Session Status
bse_bseindia_eti_fbe_v1_6_14.session_status.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.session_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_status, range, value, display)

  return offset + length, value
end

-- Session Sub Mode
bse_bseindia_eti_fbe_v1_6_14.session_sub_mode = {}

-- Size: Session Sub Mode
bse_bseindia_eti_fbe_v1_6_14.session_sub_mode.size = 1

-- Display: Session Sub Mode
bse_bseindia_eti_fbe_v1_6_14.session_sub_mode.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.session_sub_mode.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.session_sub_mode.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.session_sub_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_sub_mode, range, value, display)

  return offset + length, value
end

-- Settl Type
bse_bseindia_eti_fbe_v1_6_14.settl_type = {}

-- Size: Settl Type
bse_bseindia_eti_fbe_v1_6_14.settl_type.size = 4

-- Display: Settl Type
bse_bseindia_eti_fbe_v1_6_14.settl_type.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Settl Type: No Value"
  end

  return "Settl Type: "..value
end

-- Dissect: Settl Type
bse_bseindia_eti_fbe_v1_6_14.settl_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.settl_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.settl_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.settl_type, range, value, display)

  return offset + length, value
end

-- Side
bse_bseindia_eti_fbe_v1_6_14.side = {}

-- Size: Side
bse_bseindia_eti_fbe_v1_6_14.side.size = 1

-- Display: Side
bse_bseindia_eti_fbe_v1_6_14.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end
  if value == 3 then
    return "Side: Recall (3)"
  end
  if value == 4 then
    return "Side: Earlyreturn (4)"
  end
  if value == 0xFF then
    return "Side: No Value"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
bse_bseindia_eti_fbe_v1_6_14.side.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.side, range, value, display)

  return offset + length, value
end

-- Side Last Px
bse_bseindia_eti_fbe_v1_6_14.side_last_px = {}

-- Size: Side Last Px
bse_bseindia_eti_fbe_v1_6_14.side_last_px.size = 8

-- Display: Side Last Px
bse_bseindia_eti_fbe_v1_6_14.side_last_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Side Last Px: No Value"
  end

  return "Side Last Px: "..value
end

-- Translate: Side Last Px
bse_bseindia_eti_fbe_v1_6_14.side_last_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Side Last Px
bse_bseindia_eti_fbe_v1_6_14.side_last_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.side_last_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.side_last_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.side_last_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.side_last_px, range, value, display)

  return offset + length, value
end

-- Side Last Qty
bse_bseindia_eti_fbe_v1_6_14.side_last_qty = {}

-- Size: Side Last Qty
bse_bseindia_eti_fbe_v1_6_14.side_last_qty.size = 4

-- Display: Side Last Qty
bse_bseindia_eti_fbe_v1_6_14.side_last_qty.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Side Last Qty: No Value"
  end

  return "Side Last Qty: "..value
end

-- Dissect: Side Last Qty
bse_bseindia_eti_fbe_v1_6_14.side_last_qty.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.side_last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.side_last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.side_last_qty, range, value, display)

  return offset + length, value
end

-- Side Trade Id
bse_bseindia_eti_fbe_v1_6_14.side_trade_id = {}

-- Size: Side Trade Id
bse_bseindia_eti_fbe_v1_6_14.side_trade_id.size = 4

-- Display: Side Trade Id
bse_bseindia_eti_fbe_v1_6_14.side_trade_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Side Trade Id: No Value"
  end

  return "Side Trade Id: "..value
end

-- Dissect: Side Trade Id
bse_bseindia_eti_fbe_v1_6_14.side_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.side_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.side_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.side_trade_id, range, value, display)

  return offset + length, value
end

-- Simple Security Id
bse_bseindia_eti_fbe_v1_6_14.simple_security_id = {}

-- Size: Simple Security Id
bse_bseindia_eti_fbe_v1_6_14.simple_security_id.size = 4

-- Display: Simple Security Id
bse_bseindia_eti_fbe_v1_6_14.simple_security_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Simple Security Id: No Value"
  end

  return "Simple Security Id: "..value
end

-- Dissect: Simple Security Id
bse_bseindia_eti_fbe_v1_6_14.simple_security_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.simple_security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.simple_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.simple_security_id, range, value, display)

  return offset + length, value
end

-- Status
bse_bseindia_eti_fbe_v1_6_14.status = {}

-- Size: Status
bse_bseindia_eti_fbe_v1_6_14.status.size = 1

-- Display: Status
bse_bseindia_eti_fbe_v1_6_14.status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Status: No Value"
  end

  if value == "N" then
    return "Status: Reject (N)"
  end
  if value == "Y" then
    return "Status: Accept (Y)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
bse_bseindia_eti_fbe_v1_6_14.status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bse_bseindia_eti_fbe_v1_6_14.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.status, range, value, display)

  return offset + length, value
end

-- Stop Px
bse_bseindia_eti_fbe_v1_6_14.stop_px = {}

-- Size: Stop Px
bse_bseindia_eti_fbe_v1_6_14.stop_px.size = 8

-- Display: Stop Px
bse_bseindia_eti_fbe_v1_6_14.stop_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Translate: Stop Px
bse_bseindia_eti_fbe_v1_6_14.stop_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
bse_bseindia_eti_fbe_v1_6_14.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.stop_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.stop_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Stpc Flag
bse_bseindia_eti_fbe_v1_6_14.stpc_flag = {}

-- Size: Stpc Flag
bse_bseindia_eti_fbe_v1_6_14.stpc_flag.size = 1

-- Display: Stpc Flag
bse_bseindia_eti_fbe_v1_6_14.stpc_flag.display = function(value)
  if value == 0 then
    return "Stpc Flag: Passive (0)"
  end
  if value == 1 then
    return "Stpc Flag: Active (1)"
  end
  if value == 0xFF then
    return "Stpc Flag: No Value"
  end

  return "Stpc Flag: Unknown("..value..")"
end

-- Dissect: Stpc Flag
bse_bseindia_eti_fbe_v1_6_14.stpc_flag.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.stpc_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.stpc_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.stpc_flag, range, value, display)

  return offset + length, value
end

-- Strategy Link Id
bse_bseindia_eti_fbe_v1_6_14.strategy_link_id = {}

-- Size: Strategy Link Id
bse_bseindia_eti_fbe_v1_6_14.strategy_link_id.size = 4

-- Display: Strategy Link Id
bse_bseindia_eti_fbe_v1_6_14.strategy_link_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Strategy Link Id: No Value"
  end

  return "Strategy Link Id: "..value
end

-- Dissect: Strategy Link Id
bse_bseindia_eti_fbe_v1_6_14.strategy_link_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.strategy_link_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.strategy_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.strategy_link_id, range, value, display)

  return offset + length, value
end

-- Subscription Scope
bse_bseindia_eti_fbe_v1_6_14.subscription_scope = {}

-- Size: Subscription Scope
bse_bseindia_eti_fbe_v1_6_14.subscription_scope.size = 4

-- Display: Subscription Scope
bse_bseindia_eti_fbe_v1_6_14.subscription_scope.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Subscription Scope: No Value"
  end

  return "Subscription Scope: "..value
end

-- Dissect: Subscription Scope
bse_bseindia_eti_fbe_v1_6_14.subscription_scope.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.subscription_scope.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.subscription_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.subscription_scope, range, value, display)

  return offset + length, value
end

-- Target Party Id Desk Id
bse_bseindia_eti_fbe_v1_6_14.target_party_id_desk_id = {}

-- Size: Target Party Id Desk Id
bse_bseindia_eti_fbe_v1_6_14.target_party_id_desk_id.size = 3

-- Display: Target Party Id Desk Id
bse_bseindia_eti_fbe_v1_6_14.target_party_id_desk_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Target Party Id Desk Id: No Value"
  end

  return "Target Party Id Desk Id: "..value
end

-- Dissect: Target Party Id Desk Id
bse_bseindia_eti_fbe_v1_6_14.target_party_id_desk_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.target_party_id_desk_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bse_bseindia_eti_fbe_v1_6_14.target_party_id_desk_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.target_party_id_desk_id, range, value, display)

  return offset + length, value
end

-- Target Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.target_party_id_executing_trader = {}

-- Size: Target Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.target_party_id_executing_trader.size = 4

-- Display: Target Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.target_party_id_executing_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Target Party Id Executing Trader: No Value"
  end

  return "Target Party Id Executing Trader: "..value
end

-- Dissect: Target Party Id Executing Trader
bse_bseindia_eti_fbe_v1_6_14.target_party_id_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.target_party_id_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.target_party_id_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.target_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Target Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id = {}

-- Size: Target Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.size = 4

-- Display: Target Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Target Party Id Session Id: No Value"
  end

  return "Target Party Id Session Id: "..value
end

-- Dissect: Target Party Id Session Id
bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.target_party_id_session_id, range, value, display)

  return offset + length, value
end

-- Template Id
bse_bseindia_eti_fbe_v1_6_14.template_id = {}

-- Size: Template Id
bse_bseindia_eti_fbe_v1_6_14.template_id.size = 2

-- Display: Template Id
bse_bseindia_eti_fbe_v1_6_14.template_id.display = function(value)
  if value == 0xFFFF then
    return "Template Id: No Value"
  end
  if value == 10032 then
    return "Template Id: Broadcast Error Notification (10032)"
  end
  if value == 10390 then
    return "Template Id: Debt Inquiry Request (10390)"
  end
  if value == 10391 then
    return "Template Id: Debt Inquiry Response (10391)"
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
  if value == 10022 then
    return "Template Id: Gateway Response (10022)"
  end
  if value == 10990 then
    return "Template Id: Gw Order Acknowledgement (10990)"
  end
  if value == 10011 then
    return "Template Id: Heartbeat (10011)"
  end
  if value == 10023 then
    return "Template Id: Heartbeat Notification (10023)"
  end
  if value == 10035 then
    return "Template Id: Inquire Session List Request (10035)"
  end
  if value == 10036 then
    return "Template Id: Inquire Session List Response (10036)"
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
  if value == 10994 then
    return "Template Id: Multi Leg Exec Report Broadcast (10994)"
  end
  if value == 10993 then
    return "Template Id: Multi Leg Exec Response (10993)"
  end
  if value == 10992 then
    return "Template Id: Multi Leg Order Reject (10992)"
  end
  if value == 10991 then
    return "Template Id: Multi Leg Order Request (10991)"
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
  if value == 10412 then
    return "Template Id: Quote Exec Report Broadcast (10412)"
  end
  if value == 10407 then
    return "Template Id: Quote Execution Report (10407)"
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
  if value == 10048 then
    return "Template Id: Risk Collateral Alert Admin Broadcast (10048)"
  end
  if value == 10049 then
    return "Template Id: Risk Collateral Alert Broadcast (10049)"
  end
  if value == 10033 then
    return "Template Id: Risk Notification Broadcast (10033)"
  end
  if value == 10030 then
    return "Template Id: Service Availability Broadcast (10030)"
  end
  if value == 10997 then
    return "Template Id: Session Password Change Request (10997)"
  end
  if value == 10995 then
    return "Template Id: Session Password Change Response (10995)"
  end
  if value == 10053 then
    return "Template Id: Session Registration Request (10053)"
  end
  if value == 10054 then
    return "Template Id: Session Registration Response (10054)"
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
  if value == 10989 then
    return "Template Id: Trade Enhancement Broadcast (10989)"
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
  if value == 10996 then
    return "Template Id: User Password Change Request (10996)"
  end
  if value == 10043 then
    return "Template Id: User Password Change Response (10043)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
bse_bseindia_eti_fbe_v1_6_14.template_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.template_id, range, value, display)

  return offset + length, value
end

-- Throttle Disconnect Limit
bse_bseindia_eti_fbe_v1_6_14.throttle_disconnect_limit = {}

-- Size: Throttle Disconnect Limit
bse_bseindia_eti_fbe_v1_6_14.throttle_disconnect_limit.size = 4

-- Display: Throttle Disconnect Limit
bse_bseindia_eti_fbe_v1_6_14.throttle_disconnect_limit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Throttle Disconnect Limit: No Value"
  end

  return "Throttle Disconnect Limit: "..value
end

-- Dissect: Throttle Disconnect Limit
bse_bseindia_eti_fbe_v1_6_14.throttle_disconnect_limit.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.throttle_disconnect_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.throttle_disconnect_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.throttle_disconnect_limit, range, value, display)

  return offset + length, value
end

-- Throttle No Msgs
bse_bseindia_eti_fbe_v1_6_14.throttle_no_msgs = {}

-- Size: Throttle No Msgs
bse_bseindia_eti_fbe_v1_6_14.throttle_no_msgs.size = 4

-- Display: Throttle No Msgs
bse_bseindia_eti_fbe_v1_6_14.throttle_no_msgs.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Throttle No Msgs: No Value"
  end

  return "Throttle No Msgs: "..value
end

-- Dissect: Throttle No Msgs
bse_bseindia_eti_fbe_v1_6_14.throttle_no_msgs.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.throttle_no_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.throttle_no_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.throttle_no_msgs, range, value, display)

  return offset + length, value
end

-- Throttle Time Interval
bse_bseindia_eti_fbe_v1_6_14.throttle_time_interval = {}

-- Size: Throttle Time Interval
bse_bseindia_eti_fbe_v1_6_14.throttle_time_interval.size = 8

-- Display: Throttle Time Interval
bse_bseindia_eti_fbe_v1_6_14.throttle_time_interval.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Throttle Time Interval: No Value"
  end

  return "Throttle Time Interval: "..value
end

-- Dissect: Throttle Time Interval
bse_bseindia_eti_fbe_v1_6_14.throttle_time_interval.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.throttle_time_interval.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eti_fbe_v1_6_14.throttle_time_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.throttle_time_interval, range, value, display)

  return offset + length, value
end

-- Time In Force
bse_bseindia_eti_fbe_v1_6_14.time_in_force = {}

-- Size: Time In Force
bse_bseindia_eti_fbe_v1_6_14.time_in_force.size = 1

-- Display: Time In Force
bse_bseindia_eti_fbe_v1_6_14.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Day (0)"
  end
  if value == 3 then
    return "Time In Force: Ioc (3)"
  end
  if value == 7 then
    return "Time In Force: Gtcl (7)"
  end
  if value == 0xFF then
    return "Time In Force: No Value"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
bse_bseindia_eti_fbe_v1_6_14.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Tot Num Trade Reports
bse_bseindia_eti_fbe_v1_6_14.tot_num_trade_reports = {}

-- Size: Tot Num Trade Reports
bse_bseindia_eti_fbe_v1_6_14.tot_num_trade_reports.size = 4

-- Display: Tot Num Trade Reports
bse_bseindia_eti_fbe_v1_6_14.tot_num_trade_reports.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Tot Num Trade Reports: No Value"
  end

  return "Tot Num Trade Reports: "..value
end

-- Dissect: Tot Num Trade Reports
bse_bseindia_eti_fbe_v1_6_14.tot_num_trade_reports.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.tot_num_trade_reports.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bse_bseindia_eti_fbe_v1_6_14.tot_num_trade_reports.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.tot_num_trade_reports, range, value, display)

  return offset + length, value
end

-- Total Collateral
bse_bseindia_eti_fbe_v1_6_14.total_collateral = {}

-- Size: Total Collateral
bse_bseindia_eti_fbe_v1_6_14.total_collateral.size = 8

-- Display: Total Collateral
bse_bseindia_eti_fbe_v1_6_14.total_collateral.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Total Collateral: No Value"
  end

  return "Total Collateral: "..value
end

-- Dissect: Total Collateral
bse_bseindia_eti_fbe_v1_6_14.total_collateral.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.total_collateral.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eti_fbe_v1_6_14.total_collateral.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.total_collateral, range, value, display)

  return offset + length, value
end

-- Trad Ses Event
bse_bseindia_eti_fbe_v1_6_14.trad_ses_event = {}

-- Size: Trad Ses Event
bse_bseindia_eti_fbe_v1_6_14.trad_ses_event.size = 1

-- Display: Trad Ses Event
bse_bseindia_eti_fbe_v1_6_14.trad_ses_event.display = function(value)
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
  if value == 0xFF then
    return "Trad Ses Event: No Value"
  end

  return "Trad Ses Event: Unknown("..value..")"
end

-- Dissect: Trad Ses Event
bse_bseindia_eti_fbe_v1_6_14.trad_ses_event.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trad_ses_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.trad_ses_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trad_ses_event, range, value, display)

  return offset + length, value
end

-- Trad Ses Mode
bse_bseindia_eti_fbe_v1_6_14.trad_ses_mode = {}

-- Size: Trad Ses Mode
bse_bseindia_eti_fbe_v1_6_14.trad_ses_mode.size = 1

-- Display: Trad Ses Mode
bse_bseindia_eti_fbe_v1_6_14.trad_ses_mode.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.trad_ses_mode.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trad_ses_mode.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.trad_ses_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trad_ses_mode, range, value, display)

  return offset + length, value
end

-- Trade Date
bse_bseindia_eti_fbe_v1_6_14.trade_date = {}

-- Size: Trade Date
bse_bseindia_eti_fbe_v1_6_14.trade_date.size = 4

-- Display: Trade Date
bse_bseindia_eti_fbe_v1_6_14.trade_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
bse_bseindia_eti_fbe_v1_6_14.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Id
bse_bseindia_eti_fbe_v1_6_14.trade_id = {}

-- Size: Trade Id
bse_bseindia_eti_fbe_v1_6_14.trade_id.size = 4

-- Display: Trade Id
bse_bseindia_eti_fbe_v1_6_14.trade_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trade Id: No Value"
  end

  return "Trade Id: "..value
end

-- Dissect: Trade Id
bse_bseindia_eti_fbe_v1_6_14.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Manager Status
bse_bseindia_eti_fbe_v1_6_14.trade_manager_status = {}

-- Size: Trade Manager Status
bse_bseindia_eti_fbe_v1_6_14.trade_manager_status.size = 1

-- Display: Trade Manager Status
bse_bseindia_eti_fbe_v1_6_14.trade_manager_status.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.trade_manager_status.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trade_manager_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.trade_manager_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_manager_status, range, value, display)

  return offset + length, value
end

-- Trade Manager Trade Date
bse_bseindia_eti_fbe_v1_6_14.trade_manager_trade_date = {}

-- Size: Trade Manager Trade Date
bse_bseindia_eti_fbe_v1_6_14.trade_manager_trade_date.size = 4

-- Display: Trade Manager Trade Date
bse_bseindia_eti_fbe_v1_6_14.trade_manager_trade_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trade Manager Trade Date: No Value"
  end

  return "Trade Manager Trade Date: "..value
end

-- Dissect: Trade Manager Trade Date
bse_bseindia_eti_fbe_v1_6_14.trade_manager_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trade_manager_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.trade_manager_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_manager_trade_date, range, value, display)

  return offset + length, value
end

-- Trade Report Type
bse_bseindia_eti_fbe_v1_6_14.trade_report_type = {}

-- Size: Trade Report Type
bse_bseindia_eti_fbe_v1_6_14.trade_report_type.size = 1

-- Display: Trade Report Type
bse_bseindia_eti_fbe_v1_6_14.trade_report_type.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "Trade Report Type: No Value"
  end

  return "Trade Report Type: "..value
end

-- Dissect: Trade Report Type
bse_bseindia_eti_fbe_v1_6_14.trade_report_type.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trade_report_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.trade_report_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_report_type, range, value, display)

  return offset + length, value
end

-- Trading Capacity
bse_bseindia_eti_fbe_v1_6_14.trading_capacity = {}

-- Size: Trading Capacity
bse_bseindia_eti_fbe_v1_6_14.trading_capacity.size = 1

-- Display: Trading Capacity
bse_bseindia_eti_fbe_v1_6_14.trading_capacity.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "Trading Capacity: No Value"
  end

  return "Trading Capacity: "..value
end

-- Dissect: Trading Capacity
bse_bseindia_eti_fbe_v1_6_14.trading_capacity.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trading_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.trading_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
bse_bseindia_eti_fbe_v1_6_14.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
bse_bseindia_eti_fbe_v1_6_14.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
bse_bseindia_eti_fbe_v1_6_14.trading_session_sub_id.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "Trading Session Sub Id: No Value"
  end

  return "Trading Session Sub Id: "..value
end

-- Dissect: Trading Session Sub Id
bse_bseindia_eti_fbe_v1_6_14.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Transact Time
bse_bseindia_eti_fbe_v1_6_14.transact_time = {}

-- Size: Transact Time
bse_bseindia_eti_fbe_v1_6_14.transact_time.size = 8

-- Display: Transact Time
bse_bseindia_eti_fbe_v1_6_14.transact_time.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Transact Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transact Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
bse_bseindia_eti_fbe_v1_6_14.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Transfer Reason
bse_bseindia_eti_fbe_v1_6_14.transfer_reason = {}

-- Size: Transfer Reason
bse_bseindia_eti_fbe_v1_6_14.transfer_reason.size = 1

-- Display: Transfer Reason
bse_bseindia_eti_fbe_v1_6_14.transfer_reason.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.transfer_reason.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.transfer_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.transfer_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.transfer_reason, range, value, display)

  return offset + length, value
end

-- Trd Match Id
bse_bseindia_eti_fbe_v1_6_14.trd_match_id = {}

-- Size: Trd Match Id
bse_bseindia_eti_fbe_v1_6_14.trd_match_id.size = 4

-- Display: Trd Match Id
bse_bseindia_eti_fbe_v1_6_14.trd_match_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trd Match Id: No Value"
  end

  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
bse_bseindia_eti_fbe_v1_6_14.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Entry Time
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_entry_time = {}

-- Size: Trd Reg Ts Entry Time
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_entry_time.size = 8

-- Display: Trd Reg Ts Entry Time
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_entry_time.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Entry Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trd Reg Ts Entry Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Entry Time
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_entry_time.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_entry_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_entry_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trd_reg_ts_entry_time, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Time In
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_in = {}

-- Size: Trd Reg Ts Time In
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_in.size = 8

-- Display: Trd Reg Ts Time In
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_in.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Time In: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trd Reg Ts Time In: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time In
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_in.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trd_reg_ts_time_in, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Time Out
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out = {}

-- Size: Trd Reg Ts Time Out
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.size = 8

-- Display: Trd Reg Ts Time Out
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Time Out: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trd Reg Ts Time Out: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time Out
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trd_reg_ts_time_out, range, value, display)

  return offset + length, value
end

-- Trd Reg Ts Time Priority
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_priority = {}

-- Size: Trd Reg Ts Time Priority
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_priority.size = 8

-- Display: Trd Reg Ts Time Priority
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_priority.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Time Priority: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trd Reg Ts Time Priority: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time Priority
bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_priority.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trd_reg_ts_time_priority, range, value, display)

  return offset + length, value
end

-- Triggered
bse_bseindia_eti_fbe_v1_6_14.triggered = {}

-- Size: Triggered
bse_bseindia_eti_fbe_v1_6_14.triggered.size = 1

-- Display: Triggered
bse_bseindia_eti_fbe_v1_6_14.triggered.display = function(value)
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
bse_bseindia_eti_fbe_v1_6_14.triggered.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.triggered.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.triggered.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.triggered, range, value, display)

  return offset + length, value
end

-- Underlying Dirty Price
bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price = {}

-- Size: Underlying Dirty Price
bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.size = 8

-- Display: Underlying Dirty Price
bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Underlying Dirty Price: No Value"
  end

  return "Underlying Dirty Price: "..value
end

-- Translate: Underlying Dirty Price
bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Underlying Dirty Price
bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.underlying_dirty_price, range, value, display)

  return offset + length, value
end

-- Underlying Px
bse_bseindia_eti_fbe_v1_6_14.underlying_px = {}

-- Size: Underlying Px
bse_bseindia_eti_fbe_v1_6_14.underlying_px.size = 8

-- Display: Underlying Px
bse_bseindia_eti_fbe_v1_6_14.underlying_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Underlying Px: No Value"
  end

  return "Underlying Px: "..value
end

-- Translate: Underlying Px
bse_bseindia_eti_fbe_v1_6_14.underlying_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Underlying Px
bse_bseindia_eti_fbe_v1_6_14.underlying_px.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.underlying_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.underlying_px.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.underlying_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.underlying_px, range, value, display)

  return offset + length, value
end

-- Unutilized Collateral
bse_bseindia_eti_fbe_v1_6_14.unutilized_collateral = {}

-- Size: Unutilized Collateral
bse_bseindia_eti_fbe_v1_6_14.unutilized_collateral.size = 8

-- Display: Unutilized Collateral
bse_bseindia_eti_fbe_v1_6_14.unutilized_collateral.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Unutilized Collateral: No Value"
  end

  return "Unutilized Collateral: "..value
end

-- Dissect: Unutilized Collateral
bse_bseindia_eti_fbe_v1_6_14.unutilized_collateral.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.unutilized_collateral.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eti_fbe_v1_6_14.unutilized_collateral.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.unutilized_collateral, range, value, display)

  return offset + length, value
end

-- Username
bse_bseindia_eti_fbe_v1_6_14.username = {}

-- Size: Username
bse_bseindia_eti_fbe_v1_6_14.username.size = 4

-- Display: Username
bse_bseindia_eti_fbe_v1_6_14.username.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
bse_bseindia_eti_fbe_v1_6_14.username.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.username.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.username, range, value, display)

  return offset + length, value
end

-- Utilized Collateral
bse_bseindia_eti_fbe_v1_6_14.utilized_collateral = {}

-- Size: Utilized Collateral
bse_bseindia_eti_fbe_v1_6_14.utilized_collateral.size = 8

-- Display: Utilized Collateral
bse_bseindia_eti_fbe_v1_6_14.utilized_collateral.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Utilized Collateral: No Value"
  end

  return "Utilized Collateral: "..value
end

-- Dissect: Utilized Collateral
bse_bseindia_eti_fbe_v1_6_14.utilized_collateral.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.utilized_collateral.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bse_bseindia_eti_fbe_v1_6_14.utilized_collateral.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.utilized_collateral, range, value, display)

  return offset + length, value
end

-- Var Text
bse_bseindia_eti_fbe_v1_6_14.var_text = {}

-- Display: Var Text
bse_bseindia_eti_fbe_v1_6_14.var_text.display = function(value)
  return "Var Text: "..value
end

-- Dissect runtime sized field: Var Text
bse_bseindia_eti_fbe_v1_6_14.var_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = bse_bseindia_eti_fbe_v1_6_14.var_text.display(value, packet, parent, size)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.var_text, range, value, display)

  return offset + size, value
end

-- Var Text Len
bse_bseindia_eti_fbe_v1_6_14.var_text_len = {}

-- Size: Var Text Len
bse_bseindia_eti_fbe_v1_6_14.var_text_len.size = 2

-- Display: Var Text Len
bse_bseindia_eti_fbe_v1_6_14.var_text_len.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Var Text Len: No Value"
  end

  return "Var Text Len: "..value
end

-- Dissect: Var Text Len
bse_bseindia_eti_fbe_v1_6_14.var_text_len.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.var_text_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bse_bseindia_eti_fbe_v1_6_14.var_text_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.var_text_len, range, value, display)

  return offset + length, value
end

-- Yield
bse_bseindia_eti_fbe_v1_6_14.yield = {}

-- Size: Yield
bse_bseindia_eti_fbe_v1_6_14.yield.size = 8

-- Display: Yield
bse_bseindia_eti_fbe_v1_6_14.yield.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Yield: No Value"
  end

  return "Yield: "..value
end

-- Translate: Yield
bse_bseindia_eti_fbe_v1_6_14.yield.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Yield
bse_bseindia_eti_fbe_v1_6_14.yield.dissect = function(buffer, offset, packet, parent)
  local length = bse_bseindia_eti_fbe_v1_6_14.yield.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bse_bseindia_eti_fbe_v1_6_14.yield.translate(raw)
  local display = bse_bseindia_eti_fbe_v1_6_14.yield.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.yield, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bse BseIndia Eti Fbe 1.6.14
-----------------------------------------------------------------------

-- Response Header Comp
bse_bseindia_eti_fbe_v1_6_14.response_header_comp = {}

-- Size: Response Header Comp
bse_bseindia_eti_fbe_v1_6_14.response_header_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.request_time.size + 
  bse_bseindia_eti_fbe_v1_6_14.sending_time.size + 
  bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad4.size

-- Display: Response Header Comp
bse_bseindia_eti_fbe_v1_6_14.response_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Header Comp
bse_bseindia_eti_fbe_v1_6_14.response_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = bse_bseindia_eti_fbe_v1_6_14.request_time.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = bse_bseindia_eti_fbe_v1_6_14.sending_time.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Comp
bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.response_header_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.response_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- User Password Change Response
bse_bseindia_eti_fbe_v1_6_14.user_password_change_response = {}

-- Read runtime size of: User Password Change Response
bse_bseindia_eti_fbe_v1_6_14.user_password_change_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: User Password Change Response
bse_bseindia_eti_fbe_v1_6_14.user_password_change_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Password Change Response
bse_bseindia_eti_fbe_v1_6_14.user_password_change_response.fields = function(buffer, offset, packet, parent, size_of_user_password_change_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Password Change Response
bse_bseindia_eti_fbe_v1_6_14.user_password_change_response.dissect = function(buffer, offset, packet, parent, size_of_user_password_change_response)
  local size_of_user_password_change_response = bse_bseindia_eti_fbe_v1_6_14.user_password_change_response.size(buffer, offset)
  local index = offset + size_of_user_password_change_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_password_change_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.user_password_change_response.fields(buffer, offset, packet, parent, size_of_user_password_change_response)
    parent:set_len(size_of_user_password_change_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.user_password_change_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.user_password_change_response.fields(buffer, offset, packet, parent, size_of_user_password_change_response)

    return index
  end
end

-- User Logout Response
bse_bseindia_eti_fbe_v1_6_14.user_logout_response = {}

-- Read runtime size of: User Logout Response
bse_bseindia_eti_fbe_v1_6_14.user_logout_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: User Logout Response
bse_bseindia_eti_fbe_v1_6_14.user_logout_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Logout Response
bse_bseindia_eti_fbe_v1_6_14.user_logout_response.fields = function(buffer, offset, packet, parent, size_of_user_logout_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Logout Response
bse_bseindia_eti_fbe_v1_6_14.user_logout_response.dissect = function(buffer, offset, packet, parent, size_of_user_logout_response)
  local size_of_user_logout_response = bse_bseindia_eti_fbe_v1_6_14.user_logout_response.size(buffer, offset)
  local index = offset + size_of_user_logout_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_logout_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.user_logout_response.fields(buffer, offset, packet, parent, size_of_user_logout_response)
    parent:set_len(size_of_user_logout_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.user_logout_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.user_logout_response.fields(buffer, offset, packet, parent, size_of_user_logout_response)

    return index
  end
end

-- User Login Response
bse_bseindia_eti_fbe_v1_6_14.user_login_response = {}

-- Read runtime size of: User Login Response
bse_bseindia_eti_fbe_v1_6_14.user_login_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: User Login Response
bse_bseindia_eti_fbe_v1_6_14.user_login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Login Response
bse_bseindia_eti_fbe_v1_6_14.user_login_response.fields = function(buffer, offset, packet, parent, size_of_user_login_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  -- Last Login Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_login_time = bse_bseindia_eti_fbe_v1_6_14.last_login_time.dissect(buffer, index, packet, parent)

  -- Days Left For Passwd Expiry: 1 Byte Unsigned Fixed Width Integer Nullable
  index, days_left_for_passwd_expiry = bse_bseindia_eti_fbe_v1_6_14.days_left_for_passwd_expiry.dissect(buffer, index, packet, parent)

  -- Grace Logins Left: 1 Byte Unsigned Fixed Width Integer Nullable
  index, grace_logins_left = bse_bseindia_eti_fbe_v1_6_14.grace_logins_left.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Login Response
bse_bseindia_eti_fbe_v1_6_14.user_login_response.dissect = function(buffer, offset, packet, parent, size_of_user_login_response)
  local size_of_user_login_response = bse_bseindia_eti_fbe_v1_6_14.user_login_response.size(buffer, offset)
  local index = offset + size_of_user_login_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_login_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.user_login_response.fields(buffer, offset, packet, parent, size_of_user_login_response)
    parent:set_len(size_of_user_login_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.user_login_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.user_login_response.fields(buffer, offset, packet, parent, size_of_user_login_response)

    return index
  end
end

-- Unsubscribe Response
bse_bseindia_eti_fbe_v1_6_14.unsubscribe_response = {}

-- Read runtime size of: Unsubscribe Response
bse_bseindia_eti_fbe_v1_6_14.unsubscribe_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Unsubscribe Response
bse_bseindia_eti_fbe_v1_6_14.unsubscribe_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsubscribe Response
bse_bseindia_eti_fbe_v1_6_14.unsubscribe_response.fields = function(buffer, offset, packet, parent, size_of_unsubscribe_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsubscribe Response
bse_bseindia_eti_fbe_v1_6_14.unsubscribe_response.dissect = function(buffer, offset, packet, parent, size_of_unsubscribe_response)
  local size_of_unsubscribe_response = bse_bseindia_eti_fbe_v1_6_14.unsubscribe_response.size(buffer, offset)
  local index = offset + size_of_unsubscribe_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.unsubscribe_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.unsubscribe_response.fields(buffer, offset, packet, parent, size_of_unsubscribe_response)
    parent:set_len(size_of_unsubscribe_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.unsubscribe_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.unsubscribe_response.fields(buffer, offset, packet, parent, size_of_unsubscribe_response)

    return index
  end
end

-- Rbc Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp = {}

-- Size: Rbc Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.size + 
  bse_bseindia_eti_fbe_v1_6_14.sending_time.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.partition_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_msg_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_resend_flag.size + 
  bse_bseindia_eti_fbe_v1_6_14.last_fragment.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad7.size

-- Display: Rbc Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rbc Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_out = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = bse_bseindia_eti_fbe_v1_6_14.sending_time.dissect(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_sub_id = bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = bse_bseindia_eti_fbe_v1_6_14.partition_id.dissect(buffer, index, packet, parent)

  -- Appl Msg Id: 16 Byte
  index, appl_msg_id = bse_bseindia_eti_fbe_v1_6_14.appl_msg_id.dissect(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, appl_id = bse_bseindia_eti_fbe_v1_6_14.appl_id.dissect(buffer, index, packet, parent)

  -- Appl Resend Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_resend_flag = bse_bseindia_eti_fbe_v1_6_14.appl_resend_flag.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = bse_bseindia_eti_fbe_v1_6_14.last_fragment.dissect(buffer, index, packet, parent)

  -- Pad7: 7 Byte
  index, pad7 = bse_bseindia_eti_fbe_v1_6_14.pad7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.rbc_header_me_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Broadcast
bse_bseindia_eti_fbe_v1_6_14.trading_session_status_broadcast = {}

-- Read runtime size of: Trading Session Status Broadcast
bse_bseindia_eti_fbe_v1_6_14.trading_session_status_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Trading Session Status Broadcast
bse_bseindia_eti_fbe_v1_6_14.trading_session_status_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Broadcast
bse_bseindia_eti_fbe_v1_6_14.trading_session_status_broadcast.fields = function(buffer, offset, packet, parent, size_of_trading_session_status_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 9 fields
  index, rbc_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = bse_bseindia_eti_fbe_v1_6_14.trade_date.dissect(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_event = bse_bseindia_eti_fbe_v1_6_14.trad_ses_event.dissect(buffer, index, packet, parent)

  -- Ref Appl Last Msg Id: 16 Byte
  index, ref_appl_last_msg_id = bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_msg_id.dissect(buffer, index, packet, parent)

  -- Pad7: 7 Byte
  index, pad7 = bse_bseindia_eti_fbe_v1_6_14.pad7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Broadcast
bse_bseindia_eti_fbe_v1_6_14.trading_session_status_broadcast.dissect = function(buffer, offset, packet, parent, size_of_trading_session_status_broadcast)
  local size_of_trading_session_status_broadcast = bse_bseindia_eti_fbe_v1_6_14.trading_session_status_broadcast.size(buffer, offset)
  local index = offset + size_of_trading_session_status_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trading_session_status_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.trading_session_status_broadcast.fields(buffer, offset, packet, parent, size_of_trading_session_status_broadcast)
    parent:set_len(size_of_trading_session_status_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.trading_session_status_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.trading_session_status_broadcast.fields(buffer, offset, packet, parent, size_of_trading_session_status_broadcast)

    return index
  end
end

-- Rbc Header Comp
bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp = {}

-- Size: Rbc Header Comp
bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.sending_time.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_seq_num.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.partition_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_resend_flag.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.last_fragment.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad7.size

-- Display: Rbc Header Comp
bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rbc Header Comp
bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = bse_bseindia_eti_fbe_v1_6_14.sending_time.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, appl_seq_num = bse_bseindia_eti_fbe_v1_6_14.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_sub_id = bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = bse_bseindia_eti_fbe_v1_6_14.partition_id.dissect(buffer, index, packet, parent)

  -- Appl Resend Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_resend_flag = bse_bseindia_eti_fbe_v1_6_14.appl_resend_flag.dissect(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, appl_id = bse_bseindia_eti_fbe_v1_6_14.appl_id.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = bse_bseindia_eti_fbe_v1_6_14.last_fragment.dissect(buffer, index, packet, parent)

  -- Pad7: 7 Byte
  index, pad7 = bse_bseindia_eti_fbe_v1_6_14.pad7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Comp
bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.rbc_header_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Trade Enhancement Broadcast
bse_bseindia_eti_fbe_v1_6_14.trade_enhancement_broadcast = {}

-- Read runtime size of: Trade Enhancement Broadcast
bse_bseindia_eti_fbe_v1_6_14.trade_enhancement_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Trade Enhancement Broadcast
bse_bseindia_eti_fbe_v1_6_14.trade_enhancement_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Enhancement Broadcast
bse_bseindia_eti_fbe_v1_6_14.trade_enhancement_broadcast.fields = function(buffer, offset, packet, parent, size_of_trade_enhancement_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Clearing Trade Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, clearing_trade_price = bse_bseindia_eti_fbe_v1_6_14.clearing_trade_price.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = bse_bseindia_eti_fbe_v1_6_14.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_id = bse_bseindia_eti_fbe_v1_6_14.trade_id.dissect(buffer, index, packet, parent)

  -- Root Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, root_party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.root_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, side_trade_id = bse_bseindia_eti_fbe_v1_6_14.side_trade_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Match Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, match_date = bse_bseindia_eti_fbe_v1_6_14.match_date.dissect(buffer, index, packet, parent)

  -- Clearing Trade Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, clearing_trade_qty = bse_bseindia_eti_fbe_v1_6_14.clearing_trade_qty.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Auto Accept Indicator: 1 Byte Ascii String Enum with 2 values
  index, auto_accept_indicator = bse_bseindia_eti_fbe_v1_6_14.auto_accept_indicator.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Pad5: 5 Byte
  index, pad5 = bse_bseindia_eti_fbe_v1_6_14.pad5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Enhancement Broadcast
bse_bseindia_eti_fbe_v1_6_14.trade_enhancement_broadcast.dissect = function(buffer, offset, packet, parent, size_of_trade_enhancement_broadcast)
  local size_of_trade_enhancement_broadcast = bse_bseindia_eti_fbe_v1_6_14.trade_enhancement_broadcast.size(buffer, offset)
  local index = offset + size_of_trade_enhancement_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_enhancement_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.trade_enhancement_broadcast.fields(buffer, offset, packet, parent, size_of_trade_enhancement_broadcast)
    parent:set_len(size_of_trade_enhancement_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.trade_enhancement_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.trade_enhancement_broadcast.fields(buffer, offset, packet, parent, size_of_trade_enhancement_broadcast)

    return index
  end
end

-- Trade Broadcast
bse_bseindia_eti_fbe_v1_6_14.trade_broadcast = {}

-- Read runtime size of: Trade Broadcast
bse_bseindia_eti_fbe_v1_6_14.trade_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Trade Broadcast
bse_bseindia_eti_fbe_v1_6_14.trade_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Broadcast
bse_bseindia_eti_fbe_v1_6_14.trade_broadcast.fields = function(buffer, offset, packet, parent, size_of_trade_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Related Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, related_security_id = bse_bseindia_eti_fbe_v1_6_14.related_security_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = bse_bseindia_eti_fbe_v1_6_14.last_px.dissect(buffer, index, packet, parent)

  -- Side Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, side_last_px = bse_bseindia_eti_fbe_v1_6_14.side_last_px.dissect(buffer, index, packet, parent)

  -- Clearing Trade Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, clearing_trade_price = bse_bseindia_eti_fbe_v1_6_14.clearing_trade_price.dissect(buffer, index, packet, parent)

  -- Yield: 8 Byte Unsigned Fixed Width Integer Nullable
  index, yield = bse_bseindia_eti_fbe_v1_6_14.yield.dissect(buffer, index, packet, parent)

  -- Underlying Dirty Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_dirty_price = bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = bse_bseindia_eti_fbe_v1_6_14.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_id = bse_bseindia_eti_fbe_v1_6_14.trade_id.dissect(buffer, index, packet, parent)

  -- Orig Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, orig_trade_id = bse_bseindia_eti_fbe_v1_6_14.orig_trade_id.dissect(buffer, index, packet, parent)

  -- Root Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, root_party_id_executing_unit = bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_unit.dissect(buffer, index, packet, parent)

  -- Root Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, root_party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.root_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Root Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, root_party_id_executing_trader = bse_bseindia_eti_fbe_v1_6_14.root_party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Root Party Id Clearing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, root_party_id_clearing_unit = bse_bseindia_eti_fbe_v1_6_14.root_party_id_clearing_unit.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = bse_bseindia_eti_fbe_v1_6_14.leaves_qty.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Related Symbol: 4 Byte Signed Fixed Width Integer Nullable
  index, related_symbol = bse_bseindia_eti_fbe_v1_6_14.related_symbol.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, last_qty = bse_bseindia_eti_fbe_v1_6_14.last_qty.dissect(buffer, index, packet, parent)

  -- Side Last Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, side_last_qty = bse_bseindia_eti_fbe_v1_6_14.side_last_qty.dissect(buffer, index, packet, parent)

  -- Clearing Trade Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, clearing_trade_qty = bse_bseindia_eti_fbe_v1_6_14.clearing_trade_qty.dissect(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, side_trade_id = bse_bseindia_eti_fbe_v1_6_14.side_trade_id.dissect(buffer, index, packet, parent)

  -- Match Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, match_date = bse_bseindia_eti_fbe_v1_6_14.match_date.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = bse_bseindia_eti_fbe_v1_6_14.trd_match_id.dissect(buffer, index, packet, parent)

  -- Strategy Link Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, strategy_link_id = bse_bseindia_eti_fbe_v1_6_14.strategy_link_id.dissect(buffer, index, packet, parent)

  -- Tot Num Trade Reports: 4 Byte Signed Fixed Width Integer Nullable
  index, tot_num_trade_reports = bse_bseindia_eti_fbe_v1_6_14.tot_num_trade_reports.dissect(buffer, index, packet, parent)

  -- Filler4v2: 2 Byte
  index, filler4v2 = bse_bseindia_eti_fbe_v1_6_14.filler4v2.dissect(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, multi_leg_reporting_type = bse_bseindia_eti_fbe_v1_6_14.multi_leg_reporting_type.dissect(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trade_report_type = bse_bseindia_eti_fbe_v1_6_14.trade_report_type.dissect(buffer, index, packet, parent)

  -- Transfer Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, transfer_reason = bse_bseindia_eti_fbe_v1_6_14.transfer_reason.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  -- Root Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, root_party_id_beneficiary = bse_bseindia_eti_fbe_v1_6_14.root_party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Root Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, root_party_id_take_up_trading_firm = bse_bseindia_eti_fbe_v1_6_14.root_party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Root Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, root_party_id_order_origination_firm = bse_bseindia_eti_fbe_v1_6_14.root_party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, match_type = bse_bseindia_eti_fbe_v1_6_14.match_type.dissect(buffer, index, packet, parent)

  -- Match Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, match_sub_type = bse_bseindia_eti_fbe_v1_6_14.match_sub_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_indicator = bse_bseindia_eti_fbe_v1_6_14.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trading_capacity = bse_bseindia_eti_fbe_v1_6_14.trading_capacity.dissect(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String Nullable
  index, account = bse_bseindia_eti_fbe_v1_6_14.account.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String
  index, position_effect = bse_bseindia_eti_fbe_v1_6_14.position_effect.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = bse_bseindia_eti_fbe_v1_6_14.free_text_3.dissect(buffer, index, packet, parent)

  -- Order Category: 1 Byte Ascii String Enum with 3 values
  index, order_category = bse_bseindia_eti_fbe_v1_6_14.order_category.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ord_type = bse_bseindia_eti_fbe_v1_6_14.ord_type.dissect(buffer, index, packet, parent)

  -- Related Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, related_product_complex = bse_bseindia_eti_fbe_v1_6_14.related_product_complex.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_side = bse_bseindia_eti_fbe_v1_6_14.order_side.dissect(buffer, index, packet, parent)

  -- Root Party Clearing Organization: 4 Byte Ascii String Nullable
  index, root_party_clearing_organization = bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_organization.dissect(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String Nullable
  index, root_party_executing_firm = bse_bseindia_eti_fbe_v1_6_14.root_party_executing_firm.dissect(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String Nullable
  index, root_party_executing_trader = bse_bseindia_eti_fbe_v1_6_14.root_party_executing_trader.dissect(buffer, index, packet, parent)

  -- Root Party Clearing Firm: 5 Byte Ascii String Nullable
  index, root_party_clearing_firm = bse_bseindia_eti_fbe_v1_6_14.root_party_clearing_firm.dissect(buffer, index, packet, parent)

  -- Pad7: 7 Byte
  index, pad7 = bse_bseindia_eti_fbe_v1_6_14.pad7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Broadcast
bse_bseindia_eti_fbe_v1_6_14.trade_broadcast.dissect = function(buffer, offset, packet, parent, size_of_trade_broadcast)
  local size_of_trade_broadcast = bse_bseindia_eti_fbe_v1_6_14.trade_broadcast.size(buffer, offset)
  local index = offset + size_of_trade_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.trade_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.trade_broadcast.fields(buffer, offset, packet, parent, size_of_trade_broadcast)
    parent:set_len(size_of_trade_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.trade_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.trade_broadcast.fields(buffer, offset, packet, parent, size_of_trade_broadcast)

    return index
  end
end

-- Notif Header Comp
bse_bseindia_eti_fbe_v1_6_14.notif_header_comp = {}

-- Size: Notif Header Comp
bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.sending_time.size

-- Display: Notif Header Comp
bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Notif Header Comp
bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = bse_bseindia_eti_fbe_v1_6_14.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Notif Header Comp
bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.notif_header_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Throttle Update Notification
bse_bseindia_eti_fbe_v1_6_14.throttle_update_notification = {}

-- Read runtime size of: Throttle Update Notification
bse_bseindia_eti_fbe_v1_6_14.throttle_update_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Throttle Update Notification
bse_bseindia_eti_fbe_v1_6_14.throttle_update_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Throttle Update Notification
bse_bseindia_eti_fbe_v1_6_14.throttle_update_notification.fields = function(buffer, offset, packet, parent, size_of_throttle_update_notification)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.dissect(buffer, index, packet, parent)

  -- Throttle Time Interval: 8 Byte Signed Fixed Width Integer Nullable
  index, throttle_time_interval = bse_bseindia_eti_fbe_v1_6_14.throttle_time_interval.dissect(buffer, index, packet, parent)

  -- Throttle No Msgs: 4 Byte Unsigned Fixed Width Integer Nullable
  index, throttle_no_msgs = bse_bseindia_eti_fbe_v1_6_14.throttle_no_msgs.dissect(buffer, index, packet, parent)

  -- Throttle Disconnect Limit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, throttle_disconnect_limit = bse_bseindia_eti_fbe_v1_6_14.throttle_disconnect_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Throttle Update Notification
bse_bseindia_eti_fbe_v1_6_14.throttle_update_notification.dissect = function(buffer, offset, packet, parent, size_of_throttle_update_notification)
  local size_of_throttle_update_notification = bse_bseindia_eti_fbe_v1_6_14.throttle_update_notification.size(buffer, offset)
  local index = offset + size_of_throttle_update_notification

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.throttle_update_notification, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.throttle_update_notification.fields(buffer, offset, packet, parent, size_of_throttle_update_notification)
    parent:set_len(size_of_throttle_update_notification)
    local display = bse_bseindia_eti_fbe_v1_6_14.throttle_update_notification.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.throttle_update_notification.fields(buffer, offset, packet, parent, size_of_throttle_update_notification)

    return index
  end
end

-- Tm Trading Session Status Broadcast
bse_bseindia_eti_fbe_v1_6_14.tm_trading_session_status_broadcast = {}

-- Read runtime size of: Tm Trading Session Status Broadcast
bse_bseindia_eti_fbe_v1_6_14.tm_trading_session_status_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Tm Trading Session Status Broadcast
bse_bseindia_eti_fbe_v1_6_14.tm_trading_session_status_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tm Trading Session Status Broadcast
bse_bseindia_eti_fbe_v1_6_14.tm_trading_session_status_broadcast.fields = function(buffer, offset, packet, parent, size_of_tm_trading_session_status_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_event = bse_bseindia_eti_fbe_v1_6_14.trad_ses_event.dissect(buffer, index, packet, parent)

  -- Pad7: 7 Byte
  index, pad7 = bse_bseindia_eti_fbe_v1_6_14.pad7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tm Trading Session Status Broadcast
bse_bseindia_eti_fbe_v1_6_14.tm_trading_session_status_broadcast.dissect = function(buffer, offset, packet, parent, size_of_tm_trading_session_status_broadcast)
  local size_of_tm_trading_session_status_broadcast = bse_bseindia_eti_fbe_v1_6_14.tm_trading_session_status_broadcast.size(buffer, offset)
  local index = offset + size_of_tm_trading_session_status_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.tm_trading_session_status_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.tm_trading_session_status_broadcast.fields(buffer, offset, packet, parent, size_of_tm_trading_session_status_broadcast)
    parent:set_len(size_of_tm_trading_session_status_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.tm_trading_session_status_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.tm_trading_session_status_broadcast.fields(buffer, offset, packet, parent, size_of_tm_trading_session_status_broadcast)

    return index
  end
end

-- Subscribe Response
bse_bseindia_eti_fbe_v1_6_14.subscribe_response = {}

-- Read runtime size of: Subscribe Response
bse_bseindia_eti_fbe_v1_6_14.subscribe_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Subscribe Response
bse_bseindia_eti_fbe_v1_6_14.subscribe_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscribe Response
bse_bseindia_eti_fbe_v1_6_14.subscribe_response.fields = function(buffer, offset, packet, parent, size_of_subscribe_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_sub_id = bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscribe Response
bse_bseindia_eti_fbe_v1_6_14.subscribe_response.dissect = function(buffer, offset, packet, parent, size_of_subscribe_response)
  local size_of_subscribe_response = bse_bseindia_eti_fbe_v1_6_14.subscribe_response.size(buffer, offset)
  local index = offset + size_of_subscribe_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.subscribe_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.subscribe_response.fields(buffer, offset, packet, parent, size_of_subscribe_response)
    parent:set_len(size_of_subscribe_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.subscribe_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.subscribe_response.fields(buffer, offset, packet, parent, size_of_subscribe_response)

    return index
  end
end

-- Session Registration Response
bse_bseindia_eti_fbe_v1_6_14.session_registration_response = {}

-- Read runtime size of: Session Registration Response
bse_bseindia_eti_fbe_v1_6_14.session_registration_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Session Registration Response
bse_bseindia_eti_fbe_v1_6_14.session_registration_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Registration Response
bse_bseindia_eti_fbe_v1_6_14.session_registration_response.fields = function(buffer, offset, packet, parent, size_of_session_registration_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 2 values
  index, status = bse_bseindia_eti_fbe_v1_6_14.status.dissect(buffer, index, packet, parent)

  -- Pad1: 1 Byte
  index, pad1 = bse_bseindia_eti_fbe_v1_6_14.pad1.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = bse_bseindia_eti_fbe_v1_6_14.var_text_len.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = bse_bseindia_eti_fbe_v1_6_14.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = bse_bseindia_eti_fbe_v1_6_14.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Session Registration Response
bse_bseindia_eti_fbe_v1_6_14.session_registration_response.dissect = function(buffer, offset, packet, parent, size_of_session_registration_response)
  local size_of_session_registration_response = bse_bseindia_eti_fbe_v1_6_14.session_registration_response.size(buffer, offset)
  local index = offset + size_of_session_registration_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_registration_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.session_registration_response.fields(buffer, offset, packet, parent, size_of_session_registration_response)
    parent:set_len(size_of_session_registration_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.session_registration_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.session_registration_response.fields(buffer, offset, packet, parent, size_of_session_registration_response)

    return index
  end
end

-- Session Password Change Response
bse_bseindia_eti_fbe_v1_6_14.session_password_change_response = {}

-- Read runtime size of: Session Password Change Response
bse_bseindia_eti_fbe_v1_6_14.session_password_change_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Session Password Change Response
bse_bseindia_eti_fbe_v1_6_14.session_password_change_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Password Change Response
bse_bseindia_eti_fbe_v1_6_14.session_password_change_response.fields = function(buffer, offset, packet, parent, size_of_session_password_change_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Password Change Response
bse_bseindia_eti_fbe_v1_6_14.session_password_change_response.dissect = function(buffer, offset, packet, parent, size_of_session_password_change_response)
  local size_of_session_password_change_response = bse_bseindia_eti_fbe_v1_6_14.session_password_change_response.size(buffer, offset)
  local index = offset + size_of_session_password_change_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_password_change_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.session_password_change_response.fields(buffer, offset, packet, parent, size_of_session_password_change_response)
    parent:set_len(size_of_session_password_change_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.session_password_change_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.session_password_change_response.fields(buffer, offset, packet, parent, size_of_session_password_change_response)

    return index
  end
end

-- Nrbc Header Comp
bse_bseindia_eti_fbe_v1_6_14.nrbc_header_comp = {}

-- Size: Nrbc Header Comp
bse_bseindia_eti_fbe_v1_6_14.nrbc_header_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.sending_time.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.last_fragment.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad2.size

-- Display: Nrbc Header Comp
bse_bseindia_eti_fbe_v1_6_14.nrbc_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nrbc Header Comp
bse_bseindia_eti_fbe_v1_6_14.nrbc_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = bse_bseindia_eti_fbe_v1_6_14.sending_time.dissect(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_sub_id = bse_bseindia_eti_fbe_v1_6_14.appl_sub_id.dissect(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, appl_id = bse_bseindia_eti_fbe_v1_6_14.appl_id.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = bse_bseindia_eti_fbe_v1_6_14.last_fragment.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nrbc Header Comp
bse_bseindia_eti_fbe_v1_6_14.nrbc_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.nrbc_header_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.nrbc_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.nrbc_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.nrbc_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Service Availability Broadcast
bse_bseindia_eti_fbe_v1_6_14.service_availability_broadcast = {}

-- Read runtime size of: Service Availability Broadcast
bse_bseindia_eti_fbe_v1_6_14.service_availability_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Service Availability Broadcast
bse_bseindia_eti_fbe_v1_6_14.service_availability_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Service Availability Broadcast
bse_bseindia_eti_fbe_v1_6_14.service_availability_broadcast.fields = function(buffer, offset, packet, parent, size_of_service_availability_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Nrbc Header Comp: Struct of 5 fields
  index, nrbc_header_comp = bse_bseindia_eti_fbe_v1_6_14.nrbc_header_comp.dissect(buffer, index, packet, parent)

  -- Matching Engine Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, matching_engine_trade_date = bse_bseindia_eti_fbe_v1_6_14.matching_engine_trade_date.dissect(buffer, index, packet, parent)

  -- Trade Manager Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_manager_trade_date = bse_bseindia_eti_fbe_v1_6_14.trade_manager_trade_date.dissect(buffer, index, packet, parent)

  -- Appl Seq Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_seq_trade_date = bse_bseindia_eti_fbe_v1_6_14.appl_seq_trade_date.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = bse_bseindia_eti_fbe_v1_6_14.partition_id.dissect(buffer, index, packet, parent)

  -- Matching Engine Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, matching_engine_status = bse_bseindia_eti_fbe_v1_6_14.matching_engine_status.dissect(buffer, index, packet, parent)

  -- Trade Manager Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trade_manager_status = bse_bseindia_eti_fbe_v1_6_14.trade_manager_status.dissect(buffer, index, packet, parent)

  -- Appl Seq Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_status = bse_bseindia_eti_fbe_v1_6_14.appl_seq_status.dissect(buffer, index, packet, parent)

  -- Pad7: 7 Byte
  index, pad7 = bse_bseindia_eti_fbe_v1_6_14.pad7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Service Availability Broadcast
bse_bseindia_eti_fbe_v1_6_14.service_availability_broadcast.dissect = function(buffer, offset, packet, parent, size_of_service_availability_broadcast)
  local size_of_service_availability_broadcast = bse_bseindia_eti_fbe_v1_6_14.service_availability_broadcast.size(buffer, offset)
  local index = offset + size_of_service_availability_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.service_availability_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.service_availability_broadcast.fields(buffer, offset, packet, parent, size_of_service_availability_broadcast)
    parent:set_len(size_of_service_availability_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.service_availability_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.service_availability_broadcast.fields(buffer, offset, packet, parent, size_of_service_availability_broadcast)

    return index
  end
end

-- Risk Notification Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_notification_broadcast = {}

-- Read runtime size of: Risk Notification Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_notification_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Risk Notification Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_notification_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Notification Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_notification_broadcast.fields = function(buffer, offset, packet, parent, size_of_risk_notification_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = bse_bseindia_eti_fbe_v1_6_14.transact_time.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = bse_bseindia_eti_fbe_v1_6_14.trade_date.dissect(buffer, index, packet, parent)

  -- Party Detail Id Executing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_detail_id_executing_unit = bse_bseindia_eti_fbe_v1_6_14.party_detail_id_executing_unit.dissect(buffer, index, packet, parent)

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, requesting_party_id_executing_system = bse_bseindia_eti_fbe_v1_6_14.requesting_party_id_executing_system.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = bse_bseindia_eti_fbe_v1_6_14.market_id.dissect(buffer, index, packet, parent)

  -- Risk Mode Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, risk_mode_status = bse_bseindia_eti_fbe_v1_6_14.risk_mode_status.dissect(buffer, index, packet, parent)

  -- Segment Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, segment_indicator = bse_bseindia_eti_fbe_v1_6_14.segment_indicator.dissect(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String Enum with 2 values
  index, list_update_action = bse_bseindia_eti_fbe_v1_6_14.list_update_action.dissect(buffer, index, packet, parent)

  -- Risk Limit Action: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, risk_limit_action = bse_bseindia_eti_fbe_v1_6_14.risk_limit_action.dissect(buffer, index, packet, parent)

  -- Scope Identifier: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, scope_identifier = bse_bseindia_eti_fbe_v1_6_14.scope_identifier.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Requesting Party Entering Firm: 9 Byte Ascii String Nullable
  index, requesting_party_entering_firm = bse_bseindia_eti_fbe_v1_6_14.requesting_party_entering_firm.dissect(buffer, index, packet, parent)

  -- Requesting Party Clearing Firm: 9 Byte Ascii String Nullable
  index, requesting_party_clearing_firm = bse_bseindia_eti_fbe_v1_6_14.requesting_party_clearing_firm.dissect(buffer, index, packet, parent)

  -- Business Unit Symbol: 8 Byte Ascii String Nullable
  index, business_unit_symbol = bse_bseindia_eti_fbe_v1_6_14.business_unit_symbol.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Notification Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_notification_broadcast.dissect = function(buffer, offset, packet, parent, size_of_risk_notification_broadcast)
  local size_of_risk_notification_broadcast = bse_bseindia_eti_fbe_v1_6_14.risk_notification_broadcast.size(buffer, offset)
  local index = offset + size_of_risk_notification_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.risk_notification_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.risk_notification_broadcast.fields(buffer, offset, packet, parent, size_of_risk_notification_broadcast)
    parent:set_len(size_of_risk_notification_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.risk_notification_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.risk_notification_broadcast.fields(buffer, offset, packet, parent, size_of_risk_notification_broadcast)

    return index
  end
end

-- Risk Collateral Alert Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_broadcast = {}

-- Read runtime size of: Risk Collateral Alert Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Risk Collateral Alert Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Collateral Alert Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_broadcast.fields = function(buffer, offset, packet, parent, size_of_risk_collateral_alert_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_time = bse_bseindia_eti_fbe_v1_6_14.orig_time.dissect(buffer, index, packet, parent)

  -- Percentage Utilized: 4 Byte Signed Fixed Width Integer Nullable
  index, percentage_utilized = bse_bseindia_eti_fbe_v1_6_14.percentage_utilized.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = bse_bseindia_eti_fbe_v1_6_14.market_id.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = bse_bseindia_eti_fbe_v1_6_14.var_text_len.dissect(buffer, index, packet, parent)

  -- Rrm State: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, rrm_state = bse_bseindia_eti_fbe_v1_6_14.rrm_state.dissect(buffer, index, packet, parent)

  -- Member Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, member_type = bse_bseindia_eti_fbe_v1_6_14.member_type.dissect(buffer, index, packet, parent)

  -- Increment Decrement Status: 1 Byte Signed Fixed Width Integer Enum with 4 values
  index, increment_decrement_status = bse_bseindia_eti_fbe_v1_6_14.increment_decrement_status.dissect(buffer, index, packet, parent)

  -- Segment Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, segment_indicator = bse_bseindia_eti_fbe_v1_6_14.segment_indicator.dissect(buffer, index, packet, parent)

  -- Duration: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, duration = bse_bseindia_eti_fbe_v1_6_14.duration.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Business Unit Symbol: 8 Byte Ascii String Nullable
  index, business_unit_symbol = bse_bseindia_eti_fbe_v1_6_14.business_unit_symbol.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = bse_bseindia_eti_fbe_v1_6_14.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = bse_bseindia_eti_fbe_v1_6_14.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Risk Collateral Alert Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_broadcast.dissect = function(buffer, offset, packet, parent, size_of_risk_collateral_alert_broadcast)
  local size_of_risk_collateral_alert_broadcast = bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_broadcast.size(buffer, offset)
  local index = offset + size_of_risk_collateral_alert_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.risk_collateral_alert_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_broadcast.fields(buffer, offset, packet, parent, size_of_risk_collateral_alert_broadcast)
    parent:set_len(size_of_risk_collateral_alert_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_broadcast.fields(buffer, offset, packet, parent, size_of_risk_collateral_alert_broadcast)

    return index
  end
end

-- Risk Collateral Alert Admin Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_admin_broadcast = {}

-- Read runtime size of: Risk Collateral Alert Admin Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_admin_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Risk Collateral Alert Admin Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_admin_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Collateral Alert Admin Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_admin_broadcast.fields = function(buffer, offset, packet, parent, size_of_risk_collateral_alert_admin_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Total Collateral: 8 Byte Signed Fixed Width Integer Nullable
  index, total_collateral = bse_bseindia_eti_fbe_v1_6_14.total_collateral.dissect(buffer, index, packet, parent)

  -- Utilized Collateral: 8 Byte Signed Fixed Width Integer Nullable
  index, utilized_collateral = bse_bseindia_eti_fbe_v1_6_14.utilized_collateral.dissect(buffer, index, packet, parent)

  -- Unutilized Collateral: 8 Byte Signed Fixed Width Integer Nullable
  index, unutilized_collateral = bse_bseindia_eti_fbe_v1_6_14.unutilized_collateral.dissect(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_time = bse_bseindia_eti_fbe_v1_6_14.orig_time.dissect(buffer, index, packet, parent)

  -- Percentage Utilized: 4 Byte Signed Fixed Width Integer Nullable
  index, percentage_utilized = bse_bseindia_eti_fbe_v1_6_14.percentage_utilized.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = bse_bseindia_eti_fbe_v1_6_14.market_id.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = bse_bseindia_eti_fbe_v1_6_14.var_text_len.dissect(buffer, index, packet, parent)

  -- Rrm State: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, rrm_state = bse_bseindia_eti_fbe_v1_6_14.rrm_state.dissect(buffer, index, packet, parent)

  -- Member Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, member_type = bse_bseindia_eti_fbe_v1_6_14.member_type.dissect(buffer, index, packet, parent)

  -- Increment Decrement Status: 1 Byte Signed Fixed Width Integer Enum with 4 values
  index, increment_decrement_status = bse_bseindia_eti_fbe_v1_6_14.increment_decrement_status.dissect(buffer, index, packet, parent)

  -- Segment Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, segment_indicator = bse_bseindia_eti_fbe_v1_6_14.segment_indicator.dissect(buffer, index, packet, parent)

  -- Duration: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, duration = bse_bseindia_eti_fbe_v1_6_14.duration.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Business Unit Symbol: 8 Byte Ascii String Nullable
  index, business_unit_symbol = bse_bseindia_eti_fbe_v1_6_14.business_unit_symbol.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = bse_bseindia_eti_fbe_v1_6_14.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = bse_bseindia_eti_fbe_v1_6_14.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Risk Collateral Alert Admin Broadcast
bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_admin_broadcast.dissect = function(buffer, offset, packet, parent, size_of_risk_collateral_alert_admin_broadcast)
  local size_of_risk_collateral_alert_admin_broadcast = bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_admin_broadcast.size(buffer, offset)
  local index = offset + size_of_risk_collateral_alert_admin_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.risk_collateral_alert_admin_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_admin_broadcast.fields(buffer, offset, packet, parent, size_of_risk_collateral_alert_admin_broadcast)
    parent:set_len(size_of_risk_collateral_alert_admin_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_admin_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_admin_broadcast.fields(buffer, offset, packet, parent, size_of_risk_collateral_alert_admin_broadcast)

    return index
  end
end

-- Retransmit Response
bse_bseindia_eti_fbe_v1_6_14.retransmit_response = {}

-- Read runtime size of: Retransmit Response
bse_bseindia_eti_fbe_v1_6_14.retransmit_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Retransmit Response
bse_bseindia_eti_fbe_v1_6_14.retransmit_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Response
bse_bseindia_eti_fbe_v1_6_14.retransmit_response.fields = function(buffer, offset, packet, parent, size_of_retransmit_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  -- Appl End Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, appl_end_seq_num = bse_bseindia_eti_fbe_v1_6_14.appl_end_seq_num.dissect(buffer, index, packet, parent)

  -- Ref Appl Last Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, ref_appl_last_seq_num = bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_seq_num.dissect(buffer, index, packet, parent)

  -- Appl Total Message Count: 2 Byte Unsigned Fixed Width Integer Nullable
  index, appl_total_message_count = bse_bseindia_eti_fbe_v1_6_14.appl_total_message_count.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Response
bse_bseindia_eti_fbe_v1_6_14.retransmit_response.dissect = function(buffer, offset, packet, parent, size_of_retransmit_response)
  local size_of_retransmit_response = bse_bseindia_eti_fbe_v1_6_14.retransmit_response.size(buffer, offset)
  local index = offset + size_of_retransmit_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.retransmit_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.retransmit_response.fields(buffer, offset, packet, parent, size_of_retransmit_response)
    parent:set_len(size_of_retransmit_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.retransmit_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.retransmit_response.fields(buffer, offset, packet, parent, size_of_retransmit_response)

    return index
  end
end

-- Retransmit Me Message Response
bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_response = {}

-- Read runtime size of: Retransmit Me Message Response
bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Retransmit Me Message Response
bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Me Message Response
bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_response.fields = function(buffer, offset, packet, parent, size_of_retransmit_me_message_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  -- Appl Total Message Count: 2 Byte Unsigned Fixed Width Integer Nullable
  index, appl_total_message_count = bse_bseindia_eti_fbe_v1_6_14.appl_total_message_count.dissect(buffer, index, packet, parent)

  -- Appl End Msg Id: 16 Byte
  index, appl_end_msg_id = bse_bseindia_eti_fbe_v1_6_14.appl_end_msg_id.dissect(buffer, index, packet, parent)

  -- Ref Appl Last Msg Id: 16 Byte
  index, ref_appl_last_msg_id = bse_bseindia_eti_fbe_v1_6_14.ref_appl_last_msg_id.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Me Message Response
bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_response.dissect = function(buffer, offset, packet, parent, size_of_retransmit_me_message_response)
  local size_of_retransmit_me_message_response = bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_response.size(buffer, offset)
  local index = offset + size_of_retransmit_me_message_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.retransmit_me_message_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_response.fields(buffer, offset, packet, parent, size_of_retransmit_me_message_response)
    parent:set_len(size_of_retransmit_me_message_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_response.fields(buffer, offset, packet, parent, size_of_retransmit_me_message_response)

    return index
  end
end

-- Nr Response Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp = {}

-- Size: Nr Response Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.request_time.size + 
  bse_bseindia_eti_fbe_v1_6_14.request_out.size + 
  bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_in.size + 
  bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.size + 
  bse_bseindia_eti_fbe_v1_6_14.response_in.size + 
  bse_bseindia_eti_fbe_v1_6_14.sending_time.size + 
  bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.size + 
  bse_bseindia_eti_fbe_v1_6_14.last_fragment.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad3.size

-- Display: Nr Response Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nr Response Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = bse_bseindia_eti_fbe_v1_6_14.request_time.dissect(buffer, index, packet, parent)

  -- Request Out: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_out = bse_bseindia_eti_fbe_v1_6_14.request_out.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_in = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_out = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.dissect(buffer, index, packet, parent)

  -- Response In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, response_in = bse_bseindia_eti_fbe_v1_6_14.response_in.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = bse_bseindia_eti_fbe_v1_6_14.sending_time.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = bse_bseindia_eti_fbe_v1_6_14.last_fragment.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nr Response Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.nr_response_header_me_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.fields(buffer, offset, packet, parent)
  end
end

-- Reject
bse_bseindia_eti_fbe_v1_6_14.reject = {}

-- Read runtime size of: Reject
bse_bseindia_eti_fbe_v1_6_14.reject.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Reject
bse_bseindia_eti_fbe_v1_6_14.reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject
bse_bseindia_eti_fbe_v1_6_14.reject.fields = function(buffer, offset, packet, parent, size_of_reject)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Session Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, session_reject_reason = bse_bseindia_eti_fbe_v1_6_14.session_reject_reason.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = bse_bseindia_eti_fbe_v1_6_14.var_text_len.dissect(buffer, index, packet, parent)

  -- Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_status = bse_bseindia_eti_fbe_v1_6_14.session_status.dissect(buffer, index, packet, parent)

  -- Pad1: 1 Byte
  index, pad1 = bse_bseindia_eti_fbe_v1_6_14.pad1.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = bse_bseindia_eti_fbe_v1_6_14.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = bse_bseindia_eti_fbe_v1_6_14.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Reject
bse_bseindia_eti_fbe_v1_6_14.reject.dissect = function(buffer, offset, packet, parent, size_of_reject)
  local size_of_reject = bse_bseindia_eti_fbe_v1_6_14.reject.size(buffer, offset)
  local index = offset + size_of_reject

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.reject, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.reject.fields(buffer, offset, packet, parent, size_of_reject)
    parent:set_len(size_of_reject)
    local display = bse_bseindia_eti_fbe_v1_6_14.reject.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.reject.fields(buffer, offset, packet, parent, size_of_reject)

    return index
  end
end

-- Quote Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_leg_exec_grp_comp = {}

-- Size: Quote Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_leg_exec_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.leg_security_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.leg_last_px.size + 
  bse_bseindia_eti_fbe_v1_6_14.leg_last_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.leg_exec_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.leg_side.size + 
  bse_bseindia_eti_fbe_v1_6_14.no_quote_events_index.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad6.size

-- Display: Quote Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_leg_exec_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_leg_exec_grp_comp.fields = function(buffer, offset, packet, parent, quote_leg_exec_grp_comp_index)
  local index = offset

  -- Implicit Quote Leg Exec Grp Comp Index
  if quote_leg_exec_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_leg_exec_grp_comp_index, quote_leg_exec_grp_comp_index)
    iteration:set_generated()
  end

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_security_id = bse_bseindia_eti_fbe_v1_6_14.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_last_px = bse_bseindia_eti_fbe_v1_6_14.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_last_qty = bse_bseindia_eti_fbe_v1_6_14.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Exec Id: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_exec_id = bse_bseindia_eti_fbe_v1_6_14.leg_exec_id.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = bse_bseindia_eti_fbe_v1_6_14.leg_side.dissect(buffer, index, packet, parent)

  -- No Quote Events Index: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_quote_events_index = bse_bseindia_eti_fbe_v1_6_14.no_quote_events_index.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_leg_exec_grp_comp.dissect = function(buffer, offset, packet, parent, quote_leg_exec_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_leg_exec_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.quote_leg_exec_grp_comp.fields(buffer, offset, packet, parent, quote_leg_exec_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.quote_leg_exec_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.quote_leg_exec_grp_comp.fields(buffer, offset, packet, parent, quote_leg_exec_grp_comp_index)
  end
end

-- Quote Event Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_event_grp_comp = {}

-- Size: Quote Event Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_event_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.order_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.sender_location_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.security_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_event_px.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_msg_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_event_match_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.message_tag.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_event_exec_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_event_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_event_type.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_event_side.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_event_liquidity_ind.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_event_reason.size + 
  bse_bseindia_eti_fbe_v1_6_14.account_type.size + 
  bse_bseindia_eti_fbe_v1_6_14.algo_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.client_code.size + 
  bse_bseindia_eti_fbe_v1_6_14.cp_code.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad3.size

-- Display: Quote Event Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_event_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Event Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_event_grp_comp.fields = function(buffer, offset, packet, parent, quote_event_grp_comp_index)
  local index = offset

  -- Implicit Quote Event Grp Comp Index
  if quote_event_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_grp_comp_index, quote_event_grp_comp_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Quote Event Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_event_px = bse_bseindia_eti_fbe_v1_6_14.quote_event_px.dissect(buffer, index, packet, parent)

  -- Quote Msg Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_msg_id = bse_bseindia_eti_fbe_v1_6_14.quote_msg_id.dissect(buffer, index, packet, parent)

  -- Quote Event Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, quote_event_match_id = bse_bseindia_eti_fbe_v1_6_14.quote_event_match_id.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Quote Event Exec Id: 4 Byte Signed Fixed Width Integer Nullable
  index, quote_event_exec_id = bse_bseindia_eti_fbe_v1_6_14.quote_event_exec_id.dissect(buffer, index, packet, parent)

  -- Quote Event Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, quote_event_qty = bse_bseindia_eti_fbe_v1_6_14.quote_event_qty.dissect(buffer, index, packet, parent)

  -- Quote Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_event_type = bse_bseindia_eti_fbe_v1_6_14.quote_event_type.dissect(buffer, index, packet, parent)

  -- Quote Event Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_event_side = bse_bseindia_eti_fbe_v1_6_14.quote_event_side.dissect(buffer, index, packet, parent)

  -- Quote Event Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_event_liquidity_ind = bse_bseindia_eti_fbe_v1_6_14.quote_event_liquidity_ind.dissect(buffer, index, packet, parent)

  -- Quote Event Reason: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, quote_event_reason = bse_bseindia_eti_fbe_v1_6_14.quote_event_reason.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Event Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_event_grp_comp.dissect = function(buffer, offset, packet, parent, quote_event_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_event_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.quote_event_grp_comp.fields(buffer, offset, packet, parent, quote_event_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.quote_event_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.quote_event_grp_comp.fields(buffer, offset, packet, parent, quote_event_grp_comp_index)
  end
end

-- Quote Execution Report
bse_bseindia_eti_fbe_v1_6_14.quote_execution_report = {}

-- Read runtime size of: Quote Execution Report
bse_bseindia_eti_fbe_v1_6_14.quote_execution_report.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Quote Execution Report
bse_bseindia_eti_fbe_v1_6_14.quote_execution_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Execution Report
bse_bseindia_eti_fbe_v1_6_14.quote_execution_report.fields = function(buffer, offset, packet, parent, size_of_quote_execution_report)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 9 fields
  index, rbc_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_leg_execs = bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.dissect(buffer, index, packet, parent)

  -- No Quote Events: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_quote_events = bse_bseindia_eti_fbe_v1_6_14.no_quote_events.dissect(buffer, index, packet, parent)

  -- Stpc Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, stpc_flag = bse_bseindia_eti_fbe_v1_6_14.stpc_flag.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Event Grp Comp
  for quote_event_grp_comp_index = 1, no_quote_events do
    index, quote_event_grp_comp = bse_bseindia_eti_fbe_v1_6_14.quote_event_grp_comp.dissect(buffer, index, packet, parent, quote_event_grp_comp_index)
  end

  -- Repeating: Quote Leg Exec Grp Comp
  for quote_leg_exec_grp_comp_index = 1, no_leg_execs do
    index, quote_leg_exec_grp_comp = bse_bseindia_eti_fbe_v1_6_14.quote_leg_exec_grp_comp.dissect(buffer, index, packet, parent, quote_leg_exec_grp_comp_index)
  end

  return index
end

-- Dissect: Quote Execution Report
bse_bseindia_eti_fbe_v1_6_14.quote_execution_report.dissect = function(buffer, offset, packet, parent, size_of_quote_execution_report)
  local size_of_quote_execution_report = bse_bseindia_eti_fbe_v1_6_14.quote_execution_report.size(buffer, offset)
  local index = offset + size_of_quote_execution_report

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_execution_report, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.quote_execution_report.fields(buffer, offset, packet, parent, size_of_quote_execution_report)
    parent:set_len(size_of_quote_execution_report)
    local display = bse_bseindia_eti_fbe_v1_6_14.quote_execution_report.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.quote_execution_report.fields(buffer, offset, packet, parent, size_of_quote_execution_report)

    return index
  end
end

-- Quote Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.quote_exec_report_broadcast = {}

-- Read runtime size of: Quote Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.quote_exec_report_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Quote Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.quote_exec_report_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.quote_exec_report_broadcast.fields = function(buffer, offset, packet, parent, size_of_quote_exec_report_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 9 fields
  index, rbc_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- No Quote Events: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_quote_events = bse_bseindia_eti_fbe_v1_6_14.no_quote_events.dissect(buffer, index, packet, parent)

  -- Stpc Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, stpc_flag = bse_bseindia_eti_fbe_v1_6_14.stpc_flag.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Event Grp Comp
  for quote_event_grp_comp_index = 1, no_quote_events do
    index, quote_event_grp_comp = bse_bseindia_eti_fbe_v1_6_14.quote_event_grp_comp.dissect(buffer, index, packet, parent, quote_event_grp_comp_index)
  end

  return index
end

-- Dissect: Quote Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.quote_exec_report_broadcast.dissect = function(buffer, offset, packet, parent, size_of_quote_exec_report_broadcast)
  local size_of_quote_exec_report_broadcast = bse_bseindia_eti_fbe_v1_6_14.quote_exec_report_broadcast.size(buffer, offset)
  local index = offset + size_of_quote_exec_report_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_exec_report_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.quote_exec_report_broadcast.fields(buffer, offset, packet, parent, size_of_quote_exec_report_broadcast)
    parent:set_len(size_of_quote_exec_report_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.quote_exec_report_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.quote_exec_report_broadcast.fields(buffer, offset, packet, parent, size_of_quote_exec_report_broadcast)

    return index
  end
end

-- Instrmnt Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp = {}

-- Size: Instrmnt Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.leg_security_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.leg_last_px.size + 
  bse_bseindia_eti_fbe_v1_6_14.leg_last_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.leg_exec_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.leg_side.size + 
  bse_bseindia_eti_fbe_v1_6_14.no_fills_index.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad6.size

-- Display: Instrmnt Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrmnt Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.fields = function(buffer, offset, packet, parent, instrmnt_leg_exec_grp_comp_index)
  local index = offset

  -- Implicit Instrmnt Leg Exec Grp Comp Index
  if instrmnt_leg_exec_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.instrmnt_leg_exec_grp_comp_index, instrmnt_leg_exec_grp_comp_index)
    iteration:set_generated()
  end

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_security_id = bse_bseindia_eti_fbe_v1_6_14.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_last_px = bse_bseindia_eti_fbe_v1_6_14.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_last_qty = bse_bseindia_eti_fbe_v1_6_14.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Exec Id: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_exec_id = bse_bseindia_eti_fbe_v1_6_14.leg_exec_id.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = bse_bseindia_eti_fbe_v1_6_14.leg_side.dissect(buffer, index, packet, parent)

  -- No Fills Index: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_fills_index = bse_bseindia_eti_fbe_v1_6_14.no_fills_index.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmnt Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.dissect = function(buffer, offset, packet, parent, instrmnt_leg_exec_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.instrmnt_leg_exec_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.fields(buffer, offset, packet, parent, instrmnt_leg_exec_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.fields(buffer, offset, packet, parent, instrmnt_leg_exec_grp_comp_index)
  end
end

-- Fills Grp Comp
bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp = {}

-- Size: Fills Grp Comp
bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.fill_px.size + 
  bse_bseindia_eti_fbe_v1_6_14.fill_yield.size + 
  bse_bseindia_eti_fbe_v1_6_14.fill_dirty_px.size + 
  bse_bseindia_eti_fbe_v1_6_14.fill_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.fill_match_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.fill_exec_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.fill_liquidity_ind.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad3.size

-- Display: Fills Grp Comp
bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fills Grp Comp
bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp.fields = function(buffer, offset, packet, parent, fills_grp_comp_index)
  local index = offset

  -- Implicit Fills Grp Comp Index
  if fills_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fills_grp_comp_index, fills_grp_comp_index)
    iteration:set_generated()
  end

  -- Fill Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, fill_px = bse_bseindia_eti_fbe_v1_6_14.fill_px.dissect(buffer, index, packet, parent)

  -- Fill Yield: 8 Byte Unsigned Fixed Width Integer Nullable
  index, fill_yield = bse_bseindia_eti_fbe_v1_6_14.fill_yield.dissect(buffer, index, packet, parent)

  -- Fill Dirty Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, fill_dirty_px = bse_bseindia_eti_fbe_v1_6_14.fill_dirty_px.dissect(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, fill_qty = bse_bseindia_eti_fbe_v1_6_14.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, fill_match_id = bse_bseindia_eti_fbe_v1_6_14.fill_match_id.dissect(buffer, index, packet, parent)

  -- Fill Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, fill_exec_id = bse_bseindia_eti_fbe_v1_6_14.fill_exec_id.dissect(buffer, index, packet, parent)

  -- Fill Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, fill_liquidity_ind = bse_bseindia_eti_fbe_v1_6_14.fill_liquidity_ind.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Grp Comp
bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp.dissect = function(buffer, offset, packet, parent, fills_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.fills_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp.fields(buffer, offset, packet, parent, fills_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp.fields(buffer, offset, packet, parent, fills_grp_comp_index)
  end
end

-- Response Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp = {}

-- Size: Response Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.request_time.size + 
  bse_bseindia_eti_fbe_v1_6_14.request_out.size + 
  bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_in.size + 
  bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.size + 
  bse_bseindia_eti_fbe_v1_6_14.response_in.size + 
  bse_bseindia_eti_fbe_v1_6_14.sending_time.size + 
  bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.size + 
  bse_bseindia_eti_fbe_v1_6_14.partition_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.appl_msg_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.last_fragment.size

-- Display: Response Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = bse_bseindia_eti_fbe_v1_6_14.request_time.dissect(buffer, index, packet, parent)

  -- Request Out: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_out = bse_bseindia_eti_fbe_v1_6_14.request_out.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_in = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_in.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_out = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_out.dissect(buffer, index, packet, parent)

  -- Response In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, response_in = bse_bseindia_eti_fbe_v1_6_14.response_in.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = bse_bseindia_eti_fbe_v1_6_14.sending_time.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = bse_bseindia_eti_fbe_v1_6_14.partition_id.dissect(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, appl_id = bse_bseindia_eti_fbe_v1_6_14.appl_id.dissect(buffer, index, packet, parent)

  -- Appl Msg Id: 16 Byte
  index, appl_msg_id = bse_bseindia_eti_fbe_v1_6_14.appl_msg_id.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = bse_bseindia_eti_fbe_v1_6_14.last_fragment.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Me Comp
bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.response_header_me_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.fields(buffer, offset, packet, parent)
  end
end

-- Order Exec Response
bse_bseindia_eti_fbe_v1_6_14.order_exec_response = {}

-- Read runtime size of: Order Exec Response
bse_bseindia_eti_fbe_v1_6_14.order_exec_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Order Exec Response
bse_bseindia_eti_fbe_v1_6_14.order_exec_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Exec Response
bse_bseindia_eti_fbe_v1_6_14.order_exec_response.fields = function(buffer, offset, packet, parent, size_of_order_exec_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_entry_time = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_entry_time.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = bse_bseindia_eti_fbe_v1_6_14.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect(buffer, index, packet, parent)

  -- Filler4v2: 2 Byte
  index, filler4v2 = bse_bseindia_eti_fbe_v1_6_14.filler4v2.dissect(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_leg_execs = bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, triggered = bse_bseindia_eti_fbe_v1_6_14.triggered.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_fills = bse_bseindia_eti_fbe_v1_6_14.no_fills.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Repeating: Fills Grp Comp
  for fills_grp_comp_index = 1, no_fills do
    index, fills_grp_comp = bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp.dissect(buffer, index, packet, parent, fills_grp_comp_index)
  end

  -- Repeating: Instrmnt Leg Exec Grp Comp
  for instrmnt_leg_exec_grp_comp_index = 1, no_leg_execs do
    index, instrmnt_leg_exec_grp_comp = bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.dissect(buffer, index, packet, parent, instrmnt_leg_exec_grp_comp_index)
  end

  return index
end

-- Dissect: Order Exec Response
bse_bseindia_eti_fbe_v1_6_14.order_exec_response.dissect = function(buffer, offset, packet, parent, size_of_order_exec_response)
  local size_of_order_exec_response = bse_bseindia_eti_fbe_v1_6_14.order_exec_response.size(buffer, offset)
  local index = offset + size_of_order_exec_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_exec_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.order_exec_response.fields(buffer, offset, packet, parent, size_of_order_exec_response)
    parent:set_len(size_of_order_exec_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.order_exec_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.order_exec_response.fields(buffer, offset, packet, parent, size_of_order_exec_response)

    return index
  end
end

-- Leg Ord Grp Comp
bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp = {}

-- Size: Leg Ord Grp Comp
bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.leg_account.size + 
  bse_bseindia_eti_fbe_v1_6_14.leg_position_effect.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad5.size

-- Display: Leg Ord Grp Comp
bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Ord Grp Comp
bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp.fields = function(buffer, offset, packet, parent, leg_ord_grp_comp_index)
  local index = offset

  -- Implicit Leg Ord Grp Comp Index
  if leg_ord_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_ord_grp_comp_index, leg_ord_grp_comp_index)
    iteration:set_generated()
  end

  -- Leg Account: 2 Byte Ascii String Nullable
  index, leg_account = bse_bseindia_eti_fbe_v1_6_14.leg_account.dissect(buffer, index, packet, parent)

  -- Leg Position Effect: 1 Byte Ascii String
  index, leg_position_effect = bse_bseindia_eti_fbe_v1_6_14.leg_position_effect.dissect(buffer, index, packet, parent)

  -- Pad5: 5 Byte
  index, pad5 = bse_bseindia_eti_fbe_v1_6_14.pad5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Ord Grp Comp
bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp.dissect = function(buffer, offset, packet, parent, leg_ord_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.leg_ord_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp.fields(buffer, offset, packet, parent, leg_ord_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp.fields(buffer, offset, packet, parent, leg_ord_grp_comp_index)
  end
end

-- Order Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.order_exec_report_broadcast = {}

-- Read runtime size of: Order Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.order_exec_report_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Order Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.order_exec_report_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.order_exec_report_broadcast.fields = function(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 9 fields
  index, rbc_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Max Price Percentage: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_price_percentage = bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_entry_time = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_entry_time.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, stop_px = bse_bseindia_eti_fbe_v1_6_14.stop_px.dissect(buffer, index, packet, parent)

  -- Underlying Dirty Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_dirty_price = bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.dissect(buffer, index, packet, parent)

  -- Yield: 8 Byte Unsigned Fixed Width Integer Nullable
  index, yield = bse_bseindia_eti_fbe_v1_6_14.yield.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = bse_bseindia_eti_fbe_v1_6_14.leaves_qty.dissect(buffer, index, packet, parent)

  -- Max Show: 4 Byte Signed Fixed Width Integer Nullable
  index, max_show = bse_bseindia_eti_fbe_v1_6_14.max_show.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = bse_bseindia_eti_fbe_v1_6_14.expire_date.dissect(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_unit = bse_bseindia_eti_fbe_v1_6_14.party_id_executing_unit.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_trader = bse_bseindia_eti_fbe_v1_6_14.party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_entering_trader = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_trader.dissect(buffer, index, packet, parent)

  -- Filler4v2: 2 Byte
  index, filler4v2 = bse_bseindia_eti_fbe_v1_6_14.filler4v2.dissect(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_leg_execs = bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_entering_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_firm.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ord_type = bse_bseindia_eti_fbe_v1_6_14.ord_type.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trading_capacity = bse_bseindia_eti_fbe_v1_6_14.trading_capacity.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = bse_bseindia_eti_fbe_v1_6_14.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = bse_bseindia_eti_fbe_v1_6_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trading_session_sub_id = bse_bseindia_eti_fbe_v1_6_14.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Stpc Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, stpc_flag = bse_bseindia_eti_fbe_v1_6_14.stpc_flag.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String Nullable
  index, account = bse_bseindia_eti_fbe_v1_6_14.account.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String
  index, position_effect = bse_bseindia_eti_fbe_v1_6_14.position_effect.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String Nullable
  index, party_id_location_id = bse_bseindia_eti_fbe_v1_6_14.party_id_location_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Regulatory Text: 20 Byte Ascii String Nullable
  index, regulatory_text = bse_bseindia_eti_fbe_v1_6_14.regulatory_text.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = bse_bseindia_eti_fbe_v1_6_14.free_text_3.dissect(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_fills = bse_bseindia_eti_fbe_v1_6_14.no_fills.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_legs = bse_bseindia_eti_fbe_v1_6_14.no_legs.dissect(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, triggered = bse_bseindia_eti_fbe_v1_6_14.triggered.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Ord Grp Comp
  for leg_ord_grp_comp_index = 1, no_legs do
    index, leg_ord_grp_comp = bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp.dissect(buffer, index, packet, parent, leg_ord_grp_comp_index)
  end

  -- Repeating: Fills Grp Comp
  for fills_grp_comp_index = 1, no_fills do
    index, fills_grp_comp = bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp.dissect(buffer, index, packet, parent, fills_grp_comp_index)
  end

  -- Repeating: Instrmnt Leg Exec Grp Comp
  for instrmnt_leg_exec_grp_comp_index = 1, no_leg_execs do
    index, instrmnt_leg_exec_grp_comp = bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.dissect(buffer, index, packet, parent, instrmnt_leg_exec_grp_comp_index)
  end

  return index
end

-- Dissect: Order Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.order_exec_report_broadcast.dissect = function(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)
  local size_of_order_exec_report_broadcast = bse_bseindia_eti_fbe_v1_6_14.order_exec_report_broadcast.size(buffer, offset)
  local index = offset + size_of_order_exec_report_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_exec_report_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.order_exec_report_broadcast.fields(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)
    parent:set_len(size_of_order_exec_report_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.order_exec_report_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.order_exec_report_broadcast.fields(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)

    return index
  end
end

-- Order Exec Notification
bse_bseindia_eti_fbe_v1_6_14.order_exec_notification = {}

-- Read runtime size of: Order Exec Notification
bse_bseindia_eti_fbe_v1_6_14.order_exec_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Order Exec Notification
bse_bseindia_eti_fbe_v1_6_14.order_exec_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Exec Notification
bse_bseindia_eti_fbe_v1_6_14.order_exec_notification.fields = function(buffer, offset, packet, parent, size_of_order_exec_notification)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 9 fields
  index, rbc_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = bse_bseindia_eti_fbe_v1_6_14.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_leg_execs = bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.dissect(buffer, index, packet, parent)

  -- Filler4v2: 2 Byte
  index, filler4v2 = bse_bseindia_eti_fbe_v1_6_14.filler4v2.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, triggered = bse_bseindia_eti_fbe_v1_6_14.triggered.dissect(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_fills = bse_bseindia_eti_fbe_v1_6_14.no_fills.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String Nullable
  index, account = bse_bseindia_eti_fbe_v1_6_14.account.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = bse_bseindia_eti_fbe_v1_6_14.free_text_3.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  -- Repeating: Fills Grp Comp
  for fills_grp_comp_index = 1, no_fills do
    index, fills_grp_comp = bse_bseindia_eti_fbe_v1_6_14.fills_grp_comp.dissect(buffer, index, packet, parent, fills_grp_comp_index)
  end

  -- Repeating: Instrmnt Leg Exec Grp Comp
  for instrmnt_leg_exec_grp_comp_index = 1, no_leg_execs do
    index, instrmnt_leg_exec_grp_comp = bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.dissect(buffer, index, packet, parent, instrmnt_leg_exec_grp_comp_index)
  end

  return index
end

-- Dissect: Order Exec Notification
bse_bseindia_eti_fbe_v1_6_14.order_exec_notification.dissect = function(buffer, offset, packet, parent, size_of_order_exec_notification)
  local size_of_order_exec_notification = bse_bseindia_eti_fbe_v1_6_14.order_exec_notification.size(buffer, offset)
  local index = offset + size_of_order_exec_notification

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.order_exec_notification, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.order_exec_notification.fields(buffer, offset, packet, parent, size_of_order_exec_notification)
    parent:set_len(size_of_order_exec_notification)
    local display = bse_bseindia_eti_fbe_v1_6_14.order_exec_notification.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.order_exec_notification.fields(buffer, offset, packet, parent, size_of_order_exec_notification)

    return index
  end
end

-- News Broadcast
bse_bseindia_eti_fbe_v1_6_14.news_broadcast = {}

-- Read runtime size of: News Broadcast
bse_bseindia_eti_fbe_v1_6_14.news_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: News Broadcast
bse_bseindia_eti_fbe_v1_6_14.news_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Broadcast
bse_bseindia_eti_fbe_v1_6_14.news_broadcast.fields = function(buffer, offset, packet, parent, size_of_news_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_time = bse_bseindia_eti_fbe_v1_6_14.orig_time.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = bse_bseindia_eti_fbe_v1_6_14.var_text_len.dissect(buffer, index, packet, parent)

  -- Headline: 256 Byte Ascii String Nullable
  index, headline = bse_bseindia_eti_fbe_v1_6_14.headline.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = bse_bseindia_eti_fbe_v1_6_14.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = bse_bseindia_eti_fbe_v1_6_14.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: News Broadcast
bse_bseindia_eti_fbe_v1_6_14.news_broadcast.dissect = function(buffer, offset, packet, parent, size_of_news_broadcast)
  local size_of_news_broadcast = bse_bseindia_eti_fbe_v1_6_14.news_broadcast.size(buffer, offset)
  local index = offset + size_of_news_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.news_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.news_broadcast.fields(buffer, offset, packet, parent, size_of_news_broadcast)
    parent:set_len(size_of_news_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.news_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.news_broadcast.fields(buffer, offset, packet, parent, size_of_news_broadcast)

    return index
  end
end

-- New Order Response
bse_bseindia_eti_fbe_v1_6_14.new_order_response = {}

-- Read runtime size of: New Order Response
bse_bseindia_eti_fbe_v1_6_14.new_order_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: New Order Response
bse_bseindia_eti_fbe_v1_6_14.new_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response
bse_bseindia_eti_fbe_v1_6_14.new_order_response.fields = function(buffer, offset, packet, parent, size_of_new_order_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Price Mk To Limit Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_mk_to_limit_px = bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.dissect(buffer, index, packet, parent)

  -- Yield: 8 Byte Unsigned Fixed Width Integer Nullable
  index, yield = bse_bseindia_eti_fbe_v1_6_14.yield.dissect(buffer, index, packet, parent)

  -- Underlying Dirty Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_dirty_price = bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_entry_time = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_entry_time.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Filler4v2: 2 Byte
  index, filler4v2 = bse_bseindia_eti_fbe_v1_6_14.filler4v2.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response
bse_bseindia_eti_fbe_v1_6_14.new_order_response.dissect = function(buffer, offset, packet, parent, size_of_new_order_response)
  local size_of_new_order_response = bse_bseindia_eti_fbe_v1_6_14.new_order_response.size(buffer, offset)
  local index = offset + size_of_new_order_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_order_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.new_order_response.fields(buffer, offset, packet, parent, size_of_new_order_response)
    parent:set_len(size_of_new_order_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.new_order_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.new_order_response.fields(buffer, offset, packet, parent, size_of_new_order_response)

    return index
  end
end

-- New Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.new_order_nr_response = {}

-- Read runtime size of: New Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.new_order_nr_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: New Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.new_order_nr_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.new_order_nr_response.fields = function(buffer, offset, packet, parent, size_of_new_order_nr_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Price Mk To Limit Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_mk_to_limit_px = bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.dissect(buffer, index, packet, parent)

  -- Yield: 8 Byte Unsigned Fixed Width Integer Nullable
  index, yield = bse_bseindia_eti_fbe_v1_6_14.yield.dissect(buffer, index, packet, parent)

  -- Underlying Dirty Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_dirty_price = bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Filler4v2: 2 Byte
  index, filler4v2 = bse_bseindia_eti_fbe_v1_6_14.filler4v2.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.new_order_nr_response.dissect = function(buffer, offset, packet, parent, size_of_new_order_nr_response)
  local size_of_new_order_nr_response = bse_bseindia_eti_fbe_v1_6_14.new_order_nr_response.size(buffer, offset)
  local index = offset + size_of_new_order_nr_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_order_nr_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.new_order_nr_response.fields(buffer, offset, packet, parent, size_of_new_order_nr_response)
    parent:set_len(size_of_new_order_nr_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.new_order_nr_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.new_order_nr_response.fields(buffer, offset, packet, parent, size_of_new_order_nr_response)

    return index
  end
end

-- Multi Leg Order Reject
bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_reject = {}

-- Read runtime size of: Multi Leg Order Reject
bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_reject.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Multi Leg Order Reject
bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multi Leg Order Reject
bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_reject.fields = function(buffer, offset, packet, parent, size_of_multi_leg_order_reject)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Session Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, session_reject_reason = bse_bseindia_eti_fbe_v1_6_14.session_reject_reason.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = bse_bseindia_eti_fbe_v1_6_14.var_text_len.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = bse_bseindia_eti_fbe_v1_6_14.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = bse_bseindia_eti_fbe_v1_6_14.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Multi Leg Order Reject
bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_reject.dissect = function(buffer, offset, packet, parent, size_of_multi_leg_order_reject)
  local size_of_multi_leg_order_reject = bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_reject.size(buffer, offset)
  local index = offset + size_of_multi_leg_order_reject

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_order_reject, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_reject.fields(buffer, offset, packet, parent, size_of_multi_leg_order_reject)
    parent:set_len(size_of_multi_leg_order_reject)
    local display = bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_reject.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_reject.fields(buffer, offset, packet, parent, size_of_multi_leg_order_reject)

    return index
  end
end

-- Multi Leg Fill Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_fill_grp_comp = {}

-- Size: Multi Leg Fill Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_fill_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.fill_px.size + 
  bse_bseindia_eti_fbe_v1_6_14.security_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.fill_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.fill_match_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.fill_exec_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad4.size

-- Display: Multi Leg Fill Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_fill_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multi Leg Fill Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_fill_grp_comp.fields = function(buffer, offset, packet, parent, multi_leg_fill_grp_comp_index)
  local index = offset

  -- Implicit Multi Leg Fill Grp Comp Index
  if multi_leg_fill_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_fill_grp_comp_index, multi_leg_fill_grp_comp_index)
    iteration:set_generated()
  end

  -- Fill Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, fill_px = bse_bseindia_eti_fbe_v1_6_14.fill_px.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, fill_qty = bse_bseindia_eti_fbe_v1_6_14.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, fill_match_id = bse_bseindia_eti_fbe_v1_6_14.fill_match_id.dissect(buffer, index, packet, parent)

  -- Fill Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, fill_exec_id = bse_bseindia_eti_fbe_v1_6_14.fill_exec_id.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Multi Leg Fill Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_fill_grp_comp.dissect = function(buffer, offset, packet, parent, multi_leg_fill_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_fill_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.multi_leg_fill_grp_comp.fields(buffer, offset, packet, parent, multi_leg_fill_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.multi_leg_fill_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.multi_leg_fill_grp_comp.fields(buffer, offset, packet, parent, multi_leg_fill_grp_comp_index)
  end
end

-- Multi Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_grp_comp = {}

-- Size: Multi Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.order_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.security_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.cum_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.cxl_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.size + 
  bse_bseindia_eti_fbe_v1_6_14.ord_status.size + 
  bse_bseindia_eti_fbe_v1_6_14.exec_type.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad4.size

-- Display: Multi Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multi Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_grp_comp.fields = function(buffer, offset, packet, parent, multi_leg_exec_grp_comp_index)
  local index = offset

  -- Implicit Multi Leg Exec Grp Comp Index
  if multi_leg_exec_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_exec_grp_comp_index, multi_leg_exec_grp_comp_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Multi Leg Exec Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_grp_comp.dissect = function(buffer, offset, packet, parent, multi_leg_exec_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_exec_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_grp_comp.fields(buffer, offset, packet, parent, multi_leg_exec_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_grp_comp.fields(buffer, offset, packet, parent, multi_leg_exec_grp_comp_index)
  end
end

-- Multi Leg Exec Response
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_response = {}

-- Read runtime size of: Multi Leg Exec Response
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Multi Leg Exec Response
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multi Leg Exec Response
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_response.fields = function(buffer, offset, packet, parent, size_of_multi_leg_exec_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_leg_execs = bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.dissect(buffer, index, packet, parent)

  -- No Of Multi Leg: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_of_multi_leg = bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg.dissect(buffer, index, packet, parent)

  -- No Of Multi Leg Execs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_of_multi_leg_execs = bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg_execs.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  -- Repeating: Multi Leg Exec Grp Comp
  for multi_leg_exec_grp_comp_index = 1, no_of_multi_leg do
    index, multi_leg_exec_grp_comp = bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_grp_comp.dissect(buffer, index, packet, parent, multi_leg_exec_grp_comp_index)
  end

  -- Repeating: Multi Leg Fill Grp Comp
  for multi_leg_fill_grp_comp_index = 1, no_of_multi_leg_execs do
    index, multi_leg_fill_grp_comp = bse_bseindia_eti_fbe_v1_6_14.multi_leg_fill_grp_comp.dissect(buffer, index, packet, parent, multi_leg_fill_grp_comp_index)
  end

  -- Repeating: Instrmnt Leg Exec Grp Comp
  for instrmnt_leg_exec_grp_comp_index = 1, no_leg_execs do
    index, instrmnt_leg_exec_grp_comp = bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.dissect(buffer, index, packet, parent, instrmnt_leg_exec_grp_comp_index)
  end

  return index
end

-- Dissect: Multi Leg Exec Response
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_response.dissect = function(buffer, offset, packet, parent, size_of_multi_leg_exec_response)
  local size_of_multi_leg_exec_response = bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_response.size(buffer, offset)
  local index = offset + size_of_multi_leg_exec_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_exec_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_response.fields(buffer, offset, packet, parent, size_of_multi_leg_exec_response)
    parent:set_len(size_of_multi_leg_exec_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_response.fields(buffer, offset, packet, parent, size_of_multi_leg_exec_response)

    return index
  end
end

-- Multi Leg Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_grp_comp = {}

-- Size: Multi Leg Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.security_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.order_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.price.size + 
  bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.size + 
  bse_bseindia_eti_fbe_v1_6_14.message_tag.size + 
  bse_bseindia_eti_fbe_v1_6_14.order_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.cum_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.cxl_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.size + 
  bse_bseindia_eti_fbe_v1_6_14.ord_status.size + 
  bse_bseindia_eti_fbe_v1_6_14.exec_type.size + 
  bse_bseindia_eti_fbe_v1_6_14.side.size + 
  bse_bseindia_eti_fbe_v1_6_14.ord_type.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad2.size

-- Display: Multi Leg Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multi Leg Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_grp_comp.fields = function(buffer, offset, packet, parent, multi_leg_grp_comp_index)
  local index = offset

  -- Implicit Multi Leg Grp Comp Index
  if multi_leg_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_grp_comp_index, multi_leg_grp_comp_index)
    iteration:set_generated()
  end

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Max Price Percentage: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_price_percentage = bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ord_type = bse_bseindia_eti_fbe_v1_6_14.ord_type.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Multi Leg Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_grp_comp.dissect = function(buffer, offset, packet, parent, multi_leg_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.multi_leg_grp_comp.fields(buffer, offset, packet, parent, multi_leg_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.multi_leg_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.multi_leg_grp_comp.fields(buffer, offset, packet, parent, multi_leg_grp_comp_index)
  end
end

-- Multi Leg Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_report_broadcast = {}

-- Read runtime size of: Multi Leg Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_report_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Multi Leg Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_report_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multi Leg Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_report_broadcast.fields = function(buffer, offset, packet, parent, size_of_multi_leg_exec_report_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 9 fields
  index, rbc_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- No Leg Execs: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_leg_execs = bse_bseindia_eti_fbe_v1_6_14.no_leg_execs.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- No Of Multi Leg: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_of_multi_leg = bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg.dissect(buffer, index, packet, parent)

  -- No Of Multi Leg Execs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_of_multi_leg_execs = bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg_execs.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  -- Repeating: Multi Leg Grp Comp
  for multi_leg_grp_comp_index = 1, no_of_multi_leg do
    index, multi_leg_grp_comp = bse_bseindia_eti_fbe_v1_6_14.multi_leg_grp_comp.dissect(buffer, index, packet, parent, multi_leg_grp_comp_index)
  end

  -- Repeating: Multi Leg Fill Grp Comp
  for multi_leg_fill_grp_comp_index = 1, no_of_multi_leg_execs do
    index, multi_leg_fill_grp_comp = bse_bseindia_eti_fbe_v1_6_14.multi_leg_fill_grp_comp.dissect(buffer, index, packet, parent, multi_leg_fill_grp_comp_index)
  end

  -- Repeating: Instrmnt Leg Exec Grp Comp
  for instrmnt_leg_exec_grp_comp_index = 1, no_leg_execs do
    index, instrmnt_leg_exec_grp_comp = bse_bseindia_eti_fbe_v1_6_14.instrmnt_leg_exec_grp_comp.dissect(buffer, index, packet, parent, instrmnt_leg_exec_grp_comp_index)
  end

  return index
end

-- Dissect: Multi Leg Exec Report Broadcast
bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_report_broadcast.dissect = function(buffer, offset, packet, parent, size_of_multi_leg_exec_report_broadcast)
  local size_of_multi_leg_exec_report_broadcast = bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_report_broadcast.size(buffer, offset)
  local index = offset + size_of_multi_leg_exec_report_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_exec_report_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_report_broadcast.fields(buffer, offset, packet, parent, size_of_multi_leg_exec_report_broadcast)
    parent:set_len(size_of_multi_leg_exec_report_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_report_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_report_broadcast.fields(buffer, offset, packet, parent, size_of_multi_leg_exec_report_broadcast)

    return index
  end
end

-- Modify Order Response
bse_bseindia_eti_fbe_v1_6_14.modify_order_response = {}

-- Read runtime size of: Modify Order Response
bse_bseindia_eti_fbe_v1_6_14.modify_order_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Modify Order Response
bse_bseindia_eti_fbe_v1_6_14.modify_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Response
bse_bseindia_eti_fbe_v1_6_14.modify_order_response.fields = function(buffer, offset, packet, parent, size_of_modify_order_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Price Mk To Limit Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_mk_to_limit_px = bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.dissect(buffer, index, packet, parent)

  -- Yield: 8 Byte Unsigned Fixed Width Integer Nullable
  index, yield = bse_bseindia_eti_fbe_v1_6_14.yield.dissect(buffer, index, packet, parent)

  -- Underlying Dirty Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_dirty_price = bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.dissect(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = bse_bseindia_eti_fbe_v1_6_14.trd_reg_ts_time_priority.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = bse_bseindia_eti_fbe_v1_6_14.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect(buffer, index, packet, parent)

  -- Filler4v2: 2 Byte
  index, filler4v2 = bse_bseindia_eti_fbe_v1_6_14.filler4v2.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Response
bse_bseindia_eti_fbe_v1_6_14.modify_order_response.dissect = function(buffer, offset, packet, parent, size_of_modify_order_response)
  local size_of_modify_order_response = bse_bseindia_eti_fbe_v1_6_14.modify_order_response.size(buffer, offset)
  local index = offset + size_of_modify_order_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.modify_order_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.modify_order_response.fields(buffer, offset, packet, parent, size_of_modify_order_response)
    parent:set_len(size_of_modify_order_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.modify_order_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.modify_order_response.fields(buffer, offset, packet, parent, size_of_modify_order_response)

    return index
  end
end

-- Modify Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.modify_order_nr_response = {}

-- Read runtime size of: Modify Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.modify_order_nr_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Modify Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.modify_order_nr_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.modify_order_nr_response.fields = function(buffer, offset, packet, parent, size_of_modify_order_nr_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Price Mk To Limit Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_mk_to_limit_px = bse_bseindia_eti_fbe_v1_6_14.price_mk_to_limit_px.dissect(buffer, index, packet, parent)

  -- Yield: 8 Byte Unsigned Fixed Width Integer Nullable
  index, yield = bse_bseindia_eti_fbe_v1_6_14.yield.dissect(buffer, index, packet, parent)

  -- Underlying Dirty Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_dirty_price = bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leaves_qty = bse_bseindia_eti_fbe_v1_6_14.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect(buffer, index, packet, parent)

  -- Filler4v2: 2 Byte
  index, filler4v2 = bse_bseindia_eti_fbe_v1_6_14.filler4v2.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.modify_order_nr_response.dissect = function(buffer, offset, packet, parent, size_of_modify_order_nr_response)
  local size_of_modify_order_nr_response = bse_bseindia_eti_fbe_v1_6_14.modify_order_nr_response.size(buffer, offset)
  local index = offset + size_of_modify_order_nr_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.modify_order_nr_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.modify_order_nr_response.fields(buffer, offset, packet, parent, size_of_modify_order_nr_response)
    parent:set_len(size_of_modify_order_nr_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.modify_order_nr_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.modify_order_nr_response.fields(buffer, offset, packet, parent, size_of_modify_order_nr_response)

    return index
  end
end

-- Quote Entry Ack Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_entry_ack_grp_comp = {}

-- Size: Quote Entry Ack Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_entry_ack_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.security_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.bid_cxl_size.size + 
  bse_bseindia_eti_fbe_v1_6_14.offer_cxl_size.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_entry_reject_reason.size + 
  bse_bseindia_eti_fbe_v1_6_14.quote_entry_status.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad3.size

-- Display: Quote Entry Ack Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_entry_ack_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Entry Ack Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_entry_ack_grp_comp.fields = function(buffer, offset, packet, parent, quote_entry_ack_grp_comp_index)
  local index = offset

  -- Implicit Quote Entry Ack Grp Comp Index
  if quote_entry_ack_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_ack_grp_comp_index, quote_entry_ack_grp_comp_index)
    iteration:set_generated()
  end

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Bid Cxl Size: 4 Byte Signed Fixed Width Integer Nullable
  index, bid_cxl_size = bse_bseindia_eti_fbe_v1_6_14.bid_cxl_size.dissect(buffer, index, packet, parent)

  -- Offer Cxl Size: 4 Byte Signed Fixed Width Integer Nullable
  index, offer_cxl_size = bse_bseindia_eti_fbe_v1_6_14.offer_cxl_size.dissect(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 46 values
  index, quote_entry_reject_reason = bse_bseindia_eti_fbe_v1_6_14.quote_entry_reject_reason.dissect(buffer, index, packet, parent)

  -- Quote Entry Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, quote_entry_status = bse_bseindia_eti_fbe_v1_6_14.quote_entry_status.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entry Ack Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_entry_ack_grp_comp.dissect = function(buffer, offset, packet, parent, quote_entry_ack_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_ack_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.quote_entry_ack_grp_comp.fields(buffer, offset, packet, parent, quote_entry_ack_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.quote_entry_ack_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.quote_entry_ack_grp_comp.fields(buffer, offset, packet, parent, quote_entry_ack_grp_comp_index)
  end
end

-- Mass Quote Response
bse_bseindia_eti_fbe_v1_6_14.mass_quote_response = {}

-- Read runtime size of: Mass Quote Response
bse_bseindia_eti_fbe_v1_6_14.mass_quote_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Mass Quote Response
bse_bseindia_eti_fbe_v1_6_14.mass_quote_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response
bse_bseindia_eti_fbe_v1_6_14.mass_quote_response.fields = function(buffer, offset, packet, parent, size_of_mass_quote_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_id = bse_bseindia_eti_fbe_v1_6_14.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Response Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_response_id = bse_bseindia_eti_fbe_v1_6_14.quote_response_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- No Quote Entries: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_quote_entries = bse_bseindia_eti_fbe_v1_6_14.no_quote_entries.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Entry Ack Grp Comp
  for quote_entry_ack_grp_comp_index = 1, no_quote_entries do
    index, quote_entry_ack_grp_comp = bse_bseindia_eti_fbe_v1_6_14.quote_entry_ack_grp_comp.dissect(buffer, index, packet, parent, quote_entry_ack_grp_comp_index)
  end

  return index
end

-- Dissect: Mass Quote Response
bse_bseindia_eti_fbe_v1_6_14.mass_quote_response.dissect = function(buffer, offset, packet, parent, size_of_mass_quote_response)
  local size_of_mass_quote_response = bse_bseindia_eti_fbe_v1_6_14.mass_quote_response.size(buffer, offset)
  local index = offset + size_of_mass_quote_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.mass_quote_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.mass_quote_response.fields(buffer, offset, packet, parent, size_of_mass_quote_response)
    parent:set_len(size_of_mass_quote_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.mass_quote_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.mass_quote_response.fields(buffer, offset, packet, parent, size_of_mass_quote_response)

    return index
  end
end

-- Logout Response
bse_bseindia_eti_fbe_v1_6_14.logout_response = {}

-- Read runtime size of: Logout Response
bse_bseindia_eti_fbe_v1_6_14.logout_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logout Response
bse_bseindia_eti_fbe_v1_6_14.logout_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response
bse_bseindia_eti_fbe_v1_6_14.logout_response.fields = function(buffer, offset, packet, parent, size_of_logout_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response
bse_bseindia_eti_fbe_v1_6_14.logout_response.dissect = function(buffer, offset, packet, parent, size_of_logout_response)
  local size_of_logout_response = bse_bseindia_eti_fbe_v1_6_14.logout_response.size(buffer, offset)
  local index = offset + size_of_logout_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.logout_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.logout_response.fields(buffer, offset, packet, parent, size_of_logout_response)
    parent:set_len(size_of_logout_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.logout_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.logout_response.fields(buffer, offset, packet, parent, size_of_logout_response)

    return index
  end
end

-- Logon Response
bse_bseindia_eti_fbe_v1_6_14.logon_response = {}

-- Read runtime size of: Logon Response
bse_bseindia_eti_fbe_v1_6_14.logon_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logon Response
bse_bseindia_eti_fbe_v1_6_14.logon_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response
bse_bseindia_eti_fbe_v1_6_14.logon_response.fields = function(buffer, offset, packet, parent, size_of_logon_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  -- Throttle Time Interval: 8 Byte Signed Fixed Width Integer Nullable
  index, throttle_time_interval = bse_bseindia_eti_fbe_v1_6_14.throttle_time_interval.dissect(buffer, index, packet, parent)

  -- Last Login Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_login_time = bse_bseindia_eti_fbe_v1_6_14.last_login_time.dissect(buffer, index, packet, parent)

  -- Last Login Ip: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_login_ip = bse_bseindia_eti_fbe_v1_6_14.last_login_ip.dissect(buffer, index, packet, parent)

  -- Throttle No Msgs: 4 Byte Unsigned Fixed Width Integer Nullable
  index, throttle_no_msgs = bse_bseindia_eti_fbe_v1_6_14.throttle_no_msgs.dissect(buffer, index, packet, parent)

  -- Throttle Disconnect Limit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, throttle_disconnect_limit = bse_bseindia_eti_fbe_v1_6_14.throttle_disconnect_limit.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer Nullable
  index, heart_bt_int = bse_bseindia_eti_fbe_v1_6_14.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Session Instance Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, session_instance_id = bse_bseindia_eti_fbe_v1_6_14.session_instance_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trad_ses_mode = bse_bseindia_eti_fbe_v1_6_14.trad_ses_mode.dissect(buffer, index, packet, parent)

  -- No Of Partition: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_of_partition = bse_bseindia_eti_fbe_v1_6_14.no_of_partition.dissect(buffer, index, packet, parent)

  -- Days Left For Passwd Expiry: 1 Byte Unsigned Fixed Width Integer Nullable
  index, days_left_for_passwd_expiry = bse_bseindia_eti_fbe_v1_6_14.days_left_for_passwd_expiry.dissect(buffer, index, packet, parent)

  -- Grace Logins Left: 1 Byte Unsigned Fixed Width Integer Nullable
  index, grace_logins_left = bse_bseindia_eti_fbe_v1_6_14.grace_logins_left.dissect(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String Nullable
  index, default_cstm_appl_ver_id = bse_bseindia_eti_fbe_v1_6_14.default_cstm_appl_ver_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response
bse_bseindia_eti_fbe_v1_6_14.logon_response.dissect = function(buffer, offset, packet, parent, size_of_logon_response)
  local size_of_logon_response = bse_bseindia_eti_fbe_v1_6_14.logon_response.size(buffer, offset)
  local index = offset + size_of_logon_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.logon_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.logon_response.fields(buffer, offset, packet, parent, size_of_logon_response)
    parent:set_len(size_of_logon_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.logon_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.logon_response.fields(buffer, offset, packet, parent, size_of_logon_response)

    return index
  end
end

-- Sessions Grp Comp
bse_bseindia_eti_fbe_v1_6_14.sessions_grp_comp = {}

-- Size: Sessions Grp Comp
bse_bseindia_eti_fbe_v1_6_14.sessions_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.session_mode.size + 
  bse_bseindia_eti_fbe_v1_6_14.session_sub_mode.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad2.size

-- Display: Sessions Grp Comp
bse_bseindia_eti_fbe_v1_6_14.sessions_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sessions Grp Comp
bse_bseindia_eti_fbe_v1_6_14.sessions_grp_comp.fields = function(buffer, offset, packet, parent, sessions_grp_comp_index)
  local index = offset

  -- Implicit Sessions Grp Comp Index
  if sessions_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.sessions_grp_comp_index, sessions_grp_comp_index)
    iteration:set_generated()
  end

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Session Mode: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_mode = bse_bseindia_eti_fbe_v1_6_14.session_mode.dissect(buffer, index, packet, parent)

  -- Session Sub Mode: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, session_sub_mode = bse_bseindia_eti_fbe_v1_6_14.session_sub_mode.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sessions Grp Comp
bse_bseindia_eti_fbe_v1_6_14.sessions_grp_comp.dissect = function(buffer, offset, packet, parent, sessions_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.sessions_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.sessions_grp_comp.fields(buffer, offset, packet, parent, sessions_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.sessions_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.sessions_grp_comp.fields(buffer, offset, packet, parent, sessions_grp_comp_index)
  end
end

-- Inquire Session List Response
bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_response = {}

-- Read runtime size of: Inquire Session List Response
bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Inquire Session List Response
bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquire Session List Response
bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_response.fields = function(buffer, offset, packet, parent, size_of_inquire_session_list_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  -- No Sessions: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_sessions = bse_bseindia_eti_fbe_v1_6_14.no_sessions.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  -- Repeating: Sessions Grp Comp
  for sessions_grp_comp_index = 1, no_sessions do
    index, sessions_grp_comp = bse_bseindia_eti_fbe_v1_6_14.sessions_grp_comp.dissect(buffer, index, packet, parent, sessions_grp_comp_index)
  end

  return index
end

-- Dissect: Inquire Session List Response
bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_response.dissect = function(buffer, offset, packet, parent, size_of_inquire_session_list_response)
  local size_of_inquire_session_list_response = bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_response.size(buffer, offset)
  local index = offset + size_of_inquire_session_list_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.inquire_session_list_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_response.fields(buffer, offset, packet, parent, size_of_inquire_session_list_response)
    parent:set_len(size_of_inquire_session_list_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_response.fields(buffer, offset, packet, parent, size_of_inquire_session_list_response)

    return index
  end
end

-- Heartbeat Notification
bse_bseindia_eti_fbe_v1_6_14.heartbeat_notification = {}

-- Read runtime size of: Heartbeat Notification
bse_bseindia_eti_fbe_v1_6_14.heartbeat_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Heartbeat Notification
bse_bseindia_eti_fbe_v1_6_14.heartbeat_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Notification
bse_bseindia_eti_fbe_v1_6_14.heartbeat_notification.fields = function(buffer, offset, packet, parent, size_of_heartbeat_notification)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Notification
bse_bseindia_eti_fbe_v1_6_14.heartbeat_notification.dissect = function(buffer, offset, packet, parent, size_of_heartbeat_notification)
  local size_of_heartbeat_notification = bse_bseindia_eti_fbe_v1_6_14.heartbeat_notification.size(buffer, offset)
  local index = offset + size_of_heartbeat_notification

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.heartbeat_notification, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.heartbeat_notification.fields(buffer, offset, packet, parent, size_of_heartbeat_notification)
    parent:set_len(size_of_heartbeat_notification)
    local display = bse_bseindia_eti_fbe_v1_6_14.heartbeat_notification.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.heartbeat_notification.fields(buffer, offset, packet, parent, size_of_heartbeat_notification)

    return index
  end
end

-- Gw Order Acknowledgement
bse_bseindia_eti_fbe_v1_6_14.gw_order_acknowledgement = {}

-- Read runtime size of: Gw Order Acknowledgement
bse_bseindia_eti_fbe_v1_6_14.gw_order_acknowledgement.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Gw Order Acknowledgement
bse_bseindia_eti_fbe_v1_6_14.gw_order_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gw Order Acknowledgement
bse_bseindia_eti_fbe_v1_6_14.gw_order_acknowledgement.fields = function(buffer, offset, packet, parent, size_of_gw_order_acknowledgement)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  -- Primary Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, primary_order_id = bse_bseindia_eti_fbe_v1_6_14.primary_order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gw Order Acknowledgement
bse_bseindia_eti_fbe_v1_6_14.gw_order_acknowledgement.dissect = function(buffer, offset, packet, parent, size_of_gw_order_acknowledgement)
  local size_of_gw_order_acknowledgement = bse_bseindia_eti_fbe_v1_6_14.gw_order_acknowledgement.size(buffer, offset)
  local index = offset + size_of_gw_order_acknowledgement

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.gw_order_acknowledgement, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.gw_order_acknowledgement.fields(buffer, offset, packet, parent, size_of_gw_order_acknowledgement)
    parent:set_len(size_of_gw_order_acknowledgement)
    local display = bse_bseindia_eti_fbe_v1_6_14.gw_order_acknowledgement.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.gw_order_acknowledgement.fields(buffer, offset, packet, parent, size_of_gw_order_acknowledgement)

    return index
  end
end

-- Gateway Response
bse_bseindia_eti_fbe_v1_6_14.gateway_response = {}

-- Read runtime size of: Gateway Response
bse_bseindia_eti_fbe_v1_6_14.gateway_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Gateway Response
bse_bseindia_eti_fbe_v1_6_14.gateway_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Response
bse_bseindia_eti_fbe_v1_6_14.gateway_response.fields = function(buffer, offset, packet, parent, size_of_gateway_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_comp.dissect(buffer, index, packet, parent)

  -- Gateway Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, gateway_id = bse_bseindia_eti_fbe_v1_6_14.gateway_id.dissect(buffer, index, packet, parent)

  -- Gateway Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, gateway_sub_id = bse_bseindia_eti_fbe_v1_6_14.gateway_sub_id.dissect(buffer, index, packet, parent)

  -- Secondary Gateway Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, secondary_gateway_id = bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_id.dissect(buffer, index, packet, parent)

  -- Secondary Gateway Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, secondary_gateway_sub_id = bse_bseindia_eti_fbe_v1_6_14.secondary_gateway_sub_id.dissect(buffer, index, packet, parent)

  -- Session Mode: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_mode = bse_bseindia_eti_fbe_v1_6_14.session_mode.dissect(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trad_ses_mode = bse_bseindia_eti_fbe_v1_6_14.trad_ses_mode.dissect(buffer, index, packet, parent)

  -- Security Key: 32 Byte Ascii String Nullable
  index, security_key = bse_bseindia_eti_fbe_v1_6_14.security_key.dissect(buffer, index, packet, parent)

  -- Initialization Vector: 16 Byte Ascii String Nullable
  index, initialization_vector = bse_bseindia_eti_fbe_v1_6_14.initialization_vector.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Response
bse_bseindia_eti_fbe_v1_6_14.gateway_response.dissect = function(buffer, offset, packet, parent, size_of_gateway_response)
  local size_of_gateway_response = bse_bseindia_eti_fbe_v1_6_14.gateway_response.size(buffer, offset)
  local index = offset + size_of_gateway_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.gateway_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.gateway_response.fields(buffer, offset, packet, parent, size_of_gateway_response)
    parent:set_len(size_of_gateway_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.gateway_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.gateway_response.fields(buffer, offset, packet, parent, size_of_gateway_response)

    return index
  end
end

-- Forced Logout Notification
bse_bseindia_eti_fbe_v1_6_14.forced_logout_notification = {}

-- Read runtime size of: Forced Logout Notification
bse_bseindia_eti_fbe_v1_6_14.forced_logout_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Forced Logout Notification
bse_bseindia_eti_fbe_v1_6_14.forced_logout_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Forced Logout Notification
bse_bseindia_eti_fbe_v1_6_14.forced_logout_notification.fields = function(buffer, offset, packet, parent, size_of_forced_logout_notification)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = bse_bseindia_eti_fbe_v1_6_14.var_text_len.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = bse_bseindia_eti_fbe_v1_6_14.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = bse_bseindia_eti_fbe_v1_6_14.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Forced Logout Notification
bse_bseindia_eti_fbe_v1_6_14.forced_logout_notification.dissect = function(buffer, offset, packet, parent, size_of_forced_logout_notification)
  local size_of_forced_logout_notification = bse_bseindia_eti_fbe_v1_6_14.forced_logout_notification.size(buffer, offset)
  local index = offset + size_of_forced_logout_notification

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.forced_logout_notification, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.forced_logout_notification.fields(buffer, offset, packet, parent, size_of_forced_logout_notification)
    parent:set_len(size_of_forced_logout_notification)
    local display = bse_bseindia_eti_fbe_v1_6_14.forced_logout_notification.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.forced_logout_notification.fields(buffer, offset, packet, parent, size_of_forced_logout_notification)

    return index
  end
end

-- Delete Order Response
bse_bseindia_eti_fbe_v1_6_14.delete_order_response = {}

-- Read runtime size of: Delete Order Response
bse_bseindia_eti_fbe_v1_6_14.delete_order_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Response
bse_bseindia_eti_fbe_v1_6_14.delete_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Response
bse_bseindia_eti_fbe_v1_6_14.delete_order_response.fields = function(buffer, offset, packet, parent, size_of_delete_order_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Response
bse_bseindia_eti_fbe_v1_6_14.delete_order_response.dissect = function(buffer, offset, packet, parent, size_of_delete_order_response)
  local size_of_delete_order_response = bse_bseindia_eti_fbe_v1_6_14.delete_order_response.size(buffer, offset)
  local index = offset + size_of_delete_order_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_order_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_order_response.fields(buffer, offset, packet, parent, size_of_delete_order_response)
    parent:set_len(size_of_delete_order_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_order_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_order_response.fields(buffer, offset, packet, parent, size_of_delete_order_response)

    return index
  end
end

-- Delete Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.delete_order_nr_response = {}

-- Read runtime size of: Delete Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.delete_order_nr_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.delete_order_nr_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.delete_order_nr_response.fields = function(buffer, offset, packet, parent, size_of_delete_order_nr_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.delete_order_nr_response.dissect = function(buffer, offset, packet, parent, size_of_delete_order_nr_response)
  local size_of_delete_order_nr_response = bse_bseindia_eti_fbe_v1_6_14.delete_order_nr_response.size(buffer, offset)
  local index = offset + size_of_delete_order_nr_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_order_nr_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_order_nr_response.fields(buffer, offset, packet, parent, size_of_delete_order_nr_response)
    parent:set_len(size_of_delete_order_nr_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_order_nr_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_order_nr_response.fields(buffer, offset, packet, parent, size_of_delete_order_nr_response)

    return index
  end
end

-- Delete Order Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_order_broadcast = {}

-- Read runtime size of: Delete Order Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_order_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_order_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_order_broadcast.fields = function(buffer, offset, packet, parent, size_of_delete_order_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 9 fields
  index, rbc_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = bse_bseindia_eti_fbe_v1_6_14.exec_id.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cum_qty = bse_bseindia_eti_fbe_v1_6_14.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, cxl_qty = bse_bseindia_eti_fbe_v1_6_14.cxl_qty.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_entering_trader = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_trader.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 52 values
  index, exec_restatement_reason = bse_bseindia_eti_fbe_v1_6_14.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_entering_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_firm.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = bse_bseindia_eti_fbe_v1_6_14.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 12 values
  index, exec_type = bse_bseindia_eti_fbe_v1_6_14.exec_type.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Pad5: 5 Byte
  index, pad5 = bse_bseindia_eti_fbe_v1_6_14.pad5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_order_broadcast.dissect = function(buffer, offset, packet, parent, size_of_delete_order_broadcast)
  local size_of_delete_order_broadcast = bse_bseindia_eti_fbe_v1_6_14.delete_order_broadcast.size(buffer, offset)
  local index = offset + size_of_delete_order_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_order_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_order_broadcast.fields(buffer, offset, packet, parent, size_of_delete_order_broadcast)
    parent:set_len(size_of_delete_order_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_order_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_order_broadcast.fields(buffer, offset, packet, parent, size_of_delete_order_broadcast)

    return index
  end
end

-- Not Affected Securities Grp Comp
bse_bseindia_eti_fbe_v1_6_14.not_affected_securities_grp_comp = {}

-- Size: Not Affected Securities Grp Comp
bse_bseindia_eti_fbe_v1_6_14.not_affected_securities_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.not_affected_security_id.size

-- Display: Not Affected Securities Grp Comp
bse_bseindia_eti_fbe_v1_6_14.not_affected_securities_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Affected Securities Grp Comp
bse_bseindia_eti_fbe_v1_6_14.not_affected_securities_grp_comp.fields = function(buffer, offset, packet, parent, not_affected_securities_grp_comp_index)
  local index = offset

  -- Implicit Not Affected Securities Grp Comp Index
  if not_affected_securities_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_securities_grp_comp_index, not_affected_securities_grp_comp_index)
    iteration:set_generated()
  end

  -- Not Affected Security Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, not_affected_security_id = bse_bseindia_eti_fbe_v1_6_14.not_affected_security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Affected Securities Grp Comp
bse_bseindia_eti_fbe_v1_6_14.not_affected_securities_grp_comp.dissect = function(buffer, offset, packet, parent, not_affected_securities_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_securities_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.not_affected_securities_grp_comp.fields(buffer, offset, packet, parent, not_affected_securities_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.not_affected_securities_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.not_affected_securities_grp_comp.fields(buffer, offset, packet, parent, not_affected_securities_grp_comp_index)
  end
end

-- Delete All Quote Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_response = {}

-- Read runtime size of: Delete All Quote Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Quote Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Quote Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_response.fields = function(buffer, offset, packet, parent, size_of_delete_all_quote_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_not_affected_securities = bse_bseindia_eti_fbe_v1_6_14.no_not_affected_securities.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  -- Repeating: Not Affected Securities Grp Comp
  for not_affected_securities_grp_comp_index = 1, no_not_affected_securities do
    index, not_affected_securities_grp_comp = bse_bseindia_eti_fbe_v1_6_14.not_affected_securities_grp_comp.dissect(buffer, index, packet, parent, not_affected_securities_grp_comp_index)
  end

  return index
end

-- Dissect: Delete All Quote Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_response.dissect = function(buffer, offset, packet, parent, size_of_delete_all_quote_response)
  local size_of_delete_all_quote_response = bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_response.size(buffer, offset)
  local index = offset + size_of_delete_all_quote_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_quote_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_response.fields(buffer, offset, packet, parent, size_of_delete_all_quote_response)
    parent:set_len(size_of_delete_all_quote_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_response.fields(buffer, offset, packet, parent, size_of_delete_all_quote_response)

    return index
  end
end

-- Delete All Quote Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_broadcast = {}

-- Read runtime size of: Delete All Quote Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Quote Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Quote Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_broadcast.fields = function(buffer, offset, packet, parent, size_of_delete_all_quote_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 9 fields
  index, rbc_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_entering_trader = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_trader.dissect(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_executing_trader = bse_bseindia_eti_fbe_v1_6_14.target_party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Filler3: 4 Byte
  index, filler3 = bse_bseindia_eti_fbe_v1_6_14.filler3.dissect(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_not_affected_securities = bse_bseindia_eti_fbe_v1_6_14.no_not_affected_securities.dissect(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, mass_action_reason = bse_bseindia_eti_fbe_v1_6_14.mass_action_reason.dissect(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_entering_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_firm.dissect(buffer, index, packet, parent)

  -- Target Party Id Desk Id: 3 Byte Ascii String Nullable
  index, target_party_id_desk_id = bse_bseindia_eti_fbe_v1_6_14.target_party_id_desk_id.dissect(buffer, index, packet, parent)

  -- Pad1: 1 Byte
  index, pad1 = bse_bseindia_eti_fbe_v1_6_14.pad1.dissect(buffer, index, packet, parent)

  -- Repeating: Not Affected Securities Grp Comp
  for not_affected_securities_grp_comp_index = 1, no_not_affected_securities do
    index, not_affected_securities_grp_comp = bse_bseindia_eti_fbe_v1_6_14.not_affected_securities_grp_comp.dissect(buffer, index, packet, parent, not_affected_securities_grp_comp_index)
  end

  return index
end

-- Dissect: Delete All Quote Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_broadcast.dissect = function(buffer, offset, packet, parent, size_of_delete_all_quote_broadcast)
  local size_of_delete_all_quote_broadcast = bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_broadcast.size(buffer, offset)
  local index = offset + size_of_delete_all_quote_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_quote_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_broadcast.fields(buffer, offset, packet, parent, size_of_delete_all_quote_broadcast)
    parent:set_len(size_of_delete_all_quote_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_broadcast.fields(buffer, offset, packet, parent, size_of_delete_all_quote_broadcast)

    return index
  end
end

-- Not Affected Orders Grp Comp
bse_bseindia_eti_fbe_v1_6_14.not_affected_orders_grp_comp = {}

-- Size: Not Affected Orders Grp Comp
bse_bseindia_eti_fbe_v1_6_14.not_affected_orders_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.not_affected_order_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.not_aff_orig_cl_ord_id.size

-- Display: Not Affected Orders Grp Comp
bse_bseindia_eti_fbe_v1_6_14.not_affected_orders_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Affected Orders Grp Comp
bse_bseindia_eti_fbe_v1_6_14.not_affected_orders_grp_comp.fields = function(buffer, offset, packet, parent, not_affected_orders_grp_comp_index)
  local index = offset

  -- Implicit Not Affected Orders Grp Comp Index
  if not_affected_orders_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_orders_grp_comp_index, not_affected_orders_grp_comp_index)
    iteration:set_generated()
  end

  -- Not Affected Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, not_affected_order_id = bse_bseindia_eti_fbe_v1_6_14.not_affected_order_id.dissect(buffer, index, packet, parent)

  -- Not Aff Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, not_aff_orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.not_aff_orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Affected Orders Grp Comp
bse_bseindia_eti_fbe_v1_6_14.not_affected_orders_grp_comp.dissect = function(buffer, offset, packet, parent, not_affected_orders_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.not_affected_orders_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.not_affected_orders_grp_comp.fields(buffer, offset, packet, parent, not_affected_orders_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.not_affected_orders_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.not_affected_orders_grp_comp.fields(buffer, offset, packet, parent, not_affected_orders_grp_comp_index)
  end
end

-- Delete All Order Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_response = {}

-- Read runtime size of: Delete All Order Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Order Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Order Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_response.fields = function(buffer, offset, packet, parent, size_of_delete_all_order_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- No Not Affected Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_not_affected_orders = bse_bseindia_eti_fbe_v1_6_14.no_not_affected_orders.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  -- Repeating: Not Affected Orders Grp Comp
  for not_affected_orders_grp_comp_index = 1, no_not_affected_orders do
    index, not_affected_orders_grp_comp = bse_bseindia_eti_fbe_v1_6_14.not_affected_orders_grp_comp.dissect(buffer, index, packet, parent, not_affected_orders_grp_comp_index)
  end

  return index
end

-- Dissect: Delete All Order Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_response.dissect = function(buffer, offset, packet, parent, size_of_delete_all_order_response)
  local size_of_delete_all_order_response = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_response.size(buffer, offset)
  local index = offset + size_of_delete_all_order_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_order_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_response.fields(buffer, offset, packet, parent, size_of_delete_all_order_response)
    parent:set_len(size_of_delete_all_order_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_all_order_response.fields(buffer, offset, packet, parent, size_of_delete_all_order_response)

    return index
  end
end

-- Delete All Order Quote Event Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_quote_event_broadcast = {}

-- Read runtime size of: Delete All Order Quote Event Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_quote_event_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Order Quote Event Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_quote_event_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Order Quote Event Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_quote_event_broadcast.fields = function(buffer, offset, packet, parent, size_of_delete_all_order_quote_event_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 9 fields
  index, rbc_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, mass_action_reason = bse_bseindia_eti_fbe_v1_6_14.mass_action_reason.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = bse_bseindia_eti_fbe_v1_6_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Quote Event Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_quote_event_broadcast.dissect = function(buffer, offset, packet, parent, size_of_delete_all_order_quote_event_broadcast)
  local size_of_delete_all_order_quote_event_broadcast = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_quote_event_broadcast.size(buffer, offset)
  local index = offset + size_of_delete_all_order_quote_event_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_order_quote_event_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_quote_event_broadcast.fields(buffer, offset, packet, parent, size_of_delete_all_order_quote_event_broadcast)
    parent:set_len(size_of_delete_all_order_quote_event_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_quote_event_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_all_order_quote_event_broadcast.fields(buffer, offset, packet, parent, size_of_delete_all_order_quote_event_broadcast)

    return index
  end
end

-- Delete All Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_nr_response = {}

-- Read runtime size of: Delete All Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_nr_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_nr_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_nr_response.fields = function(buffer, offset, packet, parent, size_of_delete_all_order_nr_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Nr Response
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_nr_response.dissect = function(buffer, offset, packet, parent, size_of_delete_all_order_nr_response)
  local size_of_delete_all_order_nr_response = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_nr_response.size(buffer, offset)
  local index = offset + size_of_delete_all_order_nr_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_order_nr_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_nr_response.fields(buffer, offset, packet, parent, size_of_delete_all_order_nr_response)
    parent:set_len(size_of_delete_all_order_nr_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_nr_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_all_order_nr_response.fields(buffer, offset, packet, parent, size_of_delete_all_order_nr_response)

    return index
  end
end

-- Delete All Order Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_broadcast = {}

-- Read runtime size of: Delete All Order Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Order Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Order Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_broadcast.fields = function(buffer, offset, packet, parent, size_of_delete_all_order_broadcast)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 9 fields
  index, rbc_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.rbc_header_me_comp.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_report_id = bse_bseindia_eti_fbe_v1_6_14.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_executing_trader = bse_bseindia_eti_fbe_v1_6_14.target_party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_entering_trader = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_trader.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Filler3: 4 Byte
  index, filler3 = bse_bseindia_eti_fbe_v1_6_14.filler3.dissect(buffer, index, packet, parent)

  -- No Not Affected Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_not_affected_orders = bse_bseindia_eti_fbe_v1_6_14.no_not_affected_orders.dissect(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_entering_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_entering_firm.dissect(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, mass_action_reason = bse_bseindia_eti_fbe_v1_6_14.mass_action_reason.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = bse_bseindia_eti_fbe_v1_6_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  -- Repeating: Not Affected Orders Grp Comp
  for not_affected_orders_grp_comp_index = 1, no_not_affected_orders do
    index, not_affected_orders_grp_comp = bse_bseindia_eti_fbe_v1_6_14.not_affected_orders_grp_comp.dissect(buffer, index, packet, parent, not_affected_orders_grp_comp_index)
  end

  return index
end

-- Dissect: Delete All Order Broadcast
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_broadcast.dissect = function(buffer, offset, packet, parent, size_of_delete_all_order_broadcast)
  local size_of_delete_all_order_broadcast = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_broadcast.size(buffer, offset)
  local index = offset + size_of_delete_all_order_broadcast

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_order_broadcast, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_broadcast.fields(buffer, offset, packet, parent, size_of_delete_all_order_broadcast)
    parent:set_len(size_of_delete_all_order_broadcast)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_broadcast.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_all_order_broadcast.fields(buffer, offset, packet, parent, size_of_delete_all_order_broadcast)

    return index
  end
end

-- Debt Inquiry Response
bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_response = {}

-- Read runtime size of: Debt Inquiry Response
bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Debt Inquiry Response
bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debt Inquiry Response
bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_response.fields = function(buffer, offset, packet, parent, size_of_debt_inquiry_response)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = bse_bseindia_eti_fbe_v1_6_14.nr_response_header_me_comp.dissect(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_px = bse_bseindia_eti_fbe_v1_6_14.underlying_px.dissect(buffer, index, packet, parent)

  -- Yield: 8 Byte Unsigned Fixed Width Integer Nullable
  index, yield = bse_bseindia_eti_fbe_v1_6_14.yield.dissect(buffer, index, packet, parent)

  -- Accrued Interest Amt: 8 Byte Unsigned Fixed Width Integer Nullable
  index, accrued_interest_amt = bse_bseindia_eti_fbe_v1_6_14.accrued_interest_amt.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: 8 Byte Unsigned Fixed Width Integer Nullable
  index, gross_trade_amt = bse_bseindia_eti_fbe_v1_6_14.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Underlying Dirty Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_dirty_price = bse_bseindia_eti_fbe_v1_6_14.underlying_dirty_price.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Settl Type: 4 Byte Unsigned Fixed Width Integer Nullable
  index, settl_type = bse_bseindia_eti_fbe_v1_6_14.settl_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debt Inquiry Response
bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_response.dissect = function(buffer, offset, packet, parent, size_of_debt_inquiry_response)
  local size_of_debt_inquiry_response = bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_response.size(buffer, offset)
  local index = offset + size_of_debt_inquiry_response

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.debt_inquiry_response, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_response.fields(buffer, offset, packet, parent, size_of_debt_inquiry_response)
    parent:set_len(size_of_debt_inquiry_response)
    local display = bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_response.fields(buffer, offset, packet, parent, size_of_debt_inquiry_response)

    return index
  end
end

-- Broadcast Error Notification
bse_bseindia_eti_fbe_v1_6_14.broadcast_error_notification = {}

-- Read runtime size of: Broadcast Error Notification
bse_bseindia_eti_fbe_v1_6_14.broadcast_error_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Broadcast Error Notification
bse_bseindia_eti_fbe_v1_6_14.broadcast_error_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Error Notification
bse_bseindia_eti_fbe_v1_6_14.broadcast_error_notification.fields = function(buffer, offset, packet, parent, size_of_broadcast_error_notification)
  local index = offset

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = bse_bseindia_eti_fbe_v1_6_14.notif_header_comp.dissect(buffer, index, packet, parent)

  -- Appl Id Status: 4 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_id_status = bse_bseindia_eti_fbe_v1_6_14.appl_id_status.dissect(buffer, index, packet, parent)

  -- Ref Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, ref_appl_sub_id = bse_bseindia_eti_fbe_v1_6_14.ref_appl_sub_id.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = bse_bseindia_eti_fbe_v1_6_14.var_text_len.dissect(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, ref_appl_id = bse_bseindia_eti_fbe_v1_6_14.ref_appl_id.dissect(buffer, index, packet, parent)

  -- Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_status = bse_bseindia_eti_fbe_v1_6_14.session_status.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = bse_bseindia_eti_fbe_v1_6_14.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = body_len ~= index

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = bse_bseindia_eti_fbe_v1_6_14.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Broadcast Error Notification
bse_bseindia_eti_fbe_v1_6_14.broadcast_error_notification.dissect = function(buffer, offset, packet, parent, size_of_broadcast_error_notification)
  local size_of_broadcast_error_notification = bse_bseindia_eti_fbe_v1_6_14.broadcast_error_notification.size(buffer, offset)
  local index = offset + size_of_broadcast_error_notification

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.broadcast_error_notification, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.broadcast_error_notification.fields(buffer, offset, packet, parent, size_of_broadcast_error_notification)
    parent:set_len(size_of_broadcast_error_notification)
    local display = bse_bseindia_eti_fbe_v1_6_14.broadcast_error_notification.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.broadcast_error_notification.fields(buffer, offset, packet, parent, size_of_broadcast_error_notification)

    return index
  end
end

-- Server Payload
bse_bseindia_eti_fbe_v1_6_14.server_payload = {}

-- Dissect: Server Payload
bse_bseindia_eti_fbe_v1_6_14.server_payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Broadcast Error Notification
  if template_id == 10032 then
    return bse_bseindia_eti_fbe_v1_6_14.broadcast_error_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Debt Inquiry Response
  if template_id == 10391 then
    return bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Broadcast
  if template_id == 10122 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_all_order_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Nr Response
  if template_id == 10124 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_all_order_nr_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Quote Event Broadcast
  if template_id == 10308 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_all_order_quote_event_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Response
  if template_id == 10121 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_all_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Broadcast
  if template_id == 10410 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Response
  if template_id == 10409 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Broadcast
  if template_id == 10112 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_order_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Nr Response
  if template_id == 10111 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_order_nr_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Response
  if template_id == 10110 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Forced Logout Notification
  if template_id == 10012 then
    return bse_bseindia_eti_fbe_v1_6_14.forced_logout_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Response
  if template_id == 10022 then
    return bse_bseindia_eti_fbe_v1_6_14.gateway_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gw Order Acknowledgement
  if template_id == 10990 then
    return bse_bseindia_eti_fbe_v1_6_14.gw_order_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Notification
  if template_id == 10023 then
    return bse_bseindia_eti_fbe_v1_6_14.heartbeat_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Session List Response
  if template_id == 10036 then
    return bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Response
  if template_id == 10001 then
    return bse_bseindia_eti_fbe_v1_6_14.logon_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response
  if template_id == 10003 then
    return bse_bseindia_eti_fbe_v1_6_14.logout_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Response
  if template_id == 10406 then
    return bse_bseindia_eti_fbe_v1_6_14.mass_quote_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Nr Response
  if template_id == 10108 then
    return bse_bseindia_eti_fbe_v1_6_14.modify_order_nr_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if template_id == 10107 then
    return bse_bseindia_eti_fbe_v1_6_14.modify_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Multi Leg Exec Report Broadcast
  if template_id == 10994 then
    return bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_report_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Multi Leg Exec Response
  if template_id == 10993 then
    return bse_bseindia_eti_fbe_v1_6_14.multi_leg_exec_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Multi Leg Order Reject
  if template_id == 10992 then
    return bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Nr Response
  if template_id == 10102 then
    return bse_bseindia_eti_fbe_v1_6_14.new_order_nr_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response
  if template_id == 10101 then
    return bse_bseindia_eti_fbe_v1_6_14.new_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Broadcast
  if template_id == 10031 then
    return bse_bseindia_eti_fbe_v1_6_14.news_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Notification
  if template_id == 10104 then
    return bse_bseindia_eti_fbe_v1_6_14.order_exec_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Report Broadcast
  if template_id == 10117 then
    return bse_bseindia_eti_fbe_v1_6_14.order_exec_report_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Response
  if template_id == 10103 then
    return bse_bseindia_eti_fbe_v1_6_14.order_exec_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Exec Report Broadcast
  if template_id == 10412 then
    return bse_bseindia_eti_fbe_v1_6_14.quote_exec_report_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Execution Report
  if template_id == 10407 then
    return bse_bseindia_eti_fbe_v1_6_14.quote_execution_report.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject
  if template_id == 10010 then
    return bse_bseindia_eti_fbe_v1_6_14.reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Me Message Response
  if template_id == 10027 then
    return bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Response
  if template_id == 10009 then
    return bse_bseindia_eti_fbe_v1_6_14.retransmit_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Collateral Alert Admin Broadcast
  if template_id == 10048 then
    return bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_admin_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Collateral Alert Broadcast
  if template_id == 10049 then
    return bse_bseindia_eti_fbe_v1_6_14.risk_collateral_alert_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Notification Broadcast
  if template_id == 10033 then
    return bse_bseindia_eti_fbe_v1_6_14.risk_notification_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Service Availability Broadcast
  if template_id == 10030 then
    return bse_bseindia_eti_fbe_v1_6_14.service_availability_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Password Change Response
  if template_id == 10995 then
    return bse_bseindia_eti_fbe_v1_6_14.session_password_change_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Registration Response
  if template_id == 10054 then
    return bse_bseindia_eti_fbe_v1_6_14.session_registration_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscribe Response
  if template_id == 10005 then
    return bse_bseindia_eti_fbe_v1_6_14.subscribe_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tm Trading Session Status Broadcast
  if template_id == 10501 then
    return bse_bseindia_eti_fbe_v1_6_14.tm_trading_session_status_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Throttle Update Notification
  if template_id == 10028 then
    return bse_bseindia_eti_fbe_v1_6_14.throttle_update_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Broadcast
  if template_id == 10500 then
    return bse_bseindia_eti_fbe_v1_6_14.trade_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Enhancement Broadcast
  if template_id == 10989 then
    return bse_bseindia_eti_fbe_v1_6_14.trade_enhancement_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Broadcast
  if template_id == 10307 then
    return bse_bseindia_eti_fbe_v1_6_14.trading_session_status_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsubscribe Response
  if template_id == 10007 then
    return bse_bseindia_eti_fbe_v1_6_14.unsubscribe_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Login Response
  if template_id == 10019 then
    return bse_bseindia_eti_fbe_v1_6_14.user_login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Logout Response
  if template_id == 10024 then
    return bse_bseindia_eti_fbe_v1_6_14.user_logout_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Password Change Response
  if template_id == 10043 then
    return bse_bseindia_eti_fbe_v1_6_14.user_password_change_response.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bse_bseindia_eti_fbe_v1_6_14.message_header = {}

-- Size: Message Header
bse_bseindia_eti_fbe_v1_6_14.message_header.size =
  bse_bseindia_eti_fbe_v1_6_14.body_len.size + 
  bse_bseindia_eti_fbe_v1_6_14.template_id.size

-- Display: Message Header
bse_bseindia_eti_fbe_v1_6_14.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bse_bseindia_eti_fbe_v1_6_14.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 4 Byte Unsigned Fixed Width Integer Nullable
  index, body_len = bse_bseindia_eti_fbe_v1_6_14.body_len.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 79 values
  index, template_id = bse_bseindia_eti_fbe_v1_6_14.template_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bse_bseindia_eti_fbe_v1_6_14.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.message_header, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Message
bse_bseindia_eti_fbe_v1_6_14.server_message = {}

-- Display: Server Message
bse_bseindia_eti_fbe_v1_6_14.server_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Message
bse_bseindia_eti_fbe_v1_6_14.server_message.fields = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = bse_bseindia_eti_fbe_v1_6_14.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 2, 2):le_uint()

  -- Server Payload: Runtime Type with 51 branches
  index = bse_bseindia_eti_fbe_v1_6_14.server_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Server Message
bse_bseindia_eti_fbe_v1_6_14.server_message.dissect = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset + size_of_server_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.server_message, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.server_message.fields(buffer, offset, packet, parent, size_of_server_message)
    parent:set_len(size_of_server_message)
    local display = bse_bseindia_eti_fbe_v1_6_14.server_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.server_message.fields(buffer, offset, packet, parent, size_of_server_message)

    return index
  end
end

-- Remaining Bytes For: Server Message
local server_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < bse_bseindia_eti_fbe_v1_6_14.message_header.size then
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

-- Server Packet
bse_bseindia_eti_fbe_v1_6_14.server_packet = {}

-- Verify required size of Tcp packet
bse_bseindia_eti_fbe_v1_6_14.server_packet.requiredsize = function(buffer)
  return buffer:len() >= bse_bseindia_eti_fbe_v1_6_14.message_header.size
end

-- Dissect Server Packet
bse_bseindia_eti_fbe_v1_6_14.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Message
  local end_of_payload = buffer:len()

  -- Server Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_message = server_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = bse_bseindia_eti_fbe_v1_6_14.server_message.dissect(buffer, index, packet, parent, size_of_server_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Request Header Comp
bse_bseindia_eti_fbe_v1_6_14.request_header_comp = {}

-- Size: Request Header Comp
bse_bseindia_eti_fbe_v1_6_14.request_header_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.size + 
  bse_bseindia_eti_fbe_v1_6_14.sender_sub_id.size

-- Display: Request Header Comp
bse_bseindia_eti_fbe_v1_6_14.request_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Header Comp
bse_bseindia_eti_fbe_v1_6_14.request_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = bse_bseindia_eti_fbe_v1_6_14.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Sender Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, sender_sub_id = bse_bseindia_eti_fbe_v1_6_14.sender_sub_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Header Comp
bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.request_header_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.request_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- User Password Change Request
bse_bseindia_eti_fbe_v1_6_14.user_password_change_request = {}

-- Read runtime size of: User Password Change Request
bse_bseindia_eti_fbe_v1_6_14.user_password_change_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: User Password Change Request
bse_bseindia_eti_fbe_v1_6_14.user_password_change_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Password Change Request
bse_bseindia_eti_fbe_v1_6_14.user_password_change_request.fields = function(buffer, offset, packet, parent, size_of_user_password_change_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer Nullable
  index, username = bse_bseindia_eti_fbe_v1_6_14.username.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String Nullable
  index, password = bse_bseindia_eti_fbe_v1_6_14.password.dissect(buffer, index, packet, parent)

  -- New Password: 32 Byte Ascii String Nullable
  index, new_password = bse_bseindia_eti_fbe_v1_6_14.new_password.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Password Change Request
bse_bseindia_eti_fbe_v1_6_14.user_password_change_request.dissect = function(buffer, offset, packet, parent, size_of_user_password_change_request)
  local size_of_user_password_change_request = bse_bseindia_eti_fbe_v1_6_14.user_password_change_request.size(buffer, offset)
  local index = offset + size_of_user_password_change_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_password_change_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.user_password_change_request.fields(buffer, offset, packet, parent, size_of_user_password_change_request)
    parent:set_len(size_of_user_password_change_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.user_password_change_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.user_password_change_request.fields(buffer, offset, packet, parent, size_of_user_password_change_request)

    return index
  end
end

-- User Logout Request
bse_bseindia_eti_fbe_v1_6_14.user_logout_request = {}

-- Read runtime size of: User Logout Request
bse_bseindia_eti_fbe_v1_6_14.user_logout_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: User Logout Request
bse_bseindia_eti_fbe_v1_6_14.user_logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Logout Request
bse_bseindia_eti_fbe_v1_6_14.user_logout_request.fields = function(buffer, offset, packet, parent, size_of_user_logout_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer Nullable
  index, username = bse_bseindia_eti_fbe_v1_6_14.username.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Logout Request
bse_bseindia_eti_fbe_v1_6_14.user_logout_request.dissect = function(buffer, offset, packet, parent, size_of_user_logout_request)
  local size_of_user_logout_request = bse_bseindia_eti_fbe_v1_6_14.user_logout_request.size(buffer, offset)
  local index = offset + size_of_user_logout_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_logout_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.user_logout_request.fields(buffer, offset, packet, parent, size_of_user_logout_request)
    parent:set_len(size_of_user_logout_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.user_logout_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.user_logout_request.fields(buffer, offset, packet, parent, size_of_user_logout_request)

    return index
  end
end

-- User Login Request
bse_bseindia_eti_fbe_v1_6_14.user_login_request = {}

-- Read runtime size of: User Login Request
bse_bseindia_eti_fbe_v1_6_14.user_login_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: User Login Request
bse_bseindia_eti_fbe_v1_6_14.user_login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Login Request
bse_bseindia_eti_fbe_v1_6_14.user_login_request.fields = function(buffer, offset, packet, parent, size_of_user_login_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer Nullable
  index, username = bse_bseindia_eti_fbe_v1_6_14.username.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String Nullable
  index, password = bse_bseindia_eti_fbe_v1_6_14.password.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Login Request
bse_bseindia_eti_fbe_v1_6_14.user_login_request.dissect = function(buffer, offset, packet, parent, size_of_user_login_request)
  local size_of_user_login_request = bse_bseindia_eti_fbe_v1_6_14.user_login_request.size(buffer, offset)
  local index = offset + size_of_user_login_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.user_login_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.user_login_request.fields(buffer, offset, packet, parent, size_of_user_login_request)
    parent:set_len(size_of_user_login_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.user_login_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.user_login_request.fields(buffer, offset, packet, parent, size_of_user_login_request)

    return index
  end
end

-- Unsubscribe Request
bse_bseindia_eti_fbe_v1_6_14.unsubscribe_request = {}

-- Read runtime size of: Unsubscribe Request
bse_bseindia_eti_fbe_v1_6_14.unsubscribe_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Unsubscribe Request
bse_bseindia_eti_fbe_v1_6_14.unsubscribe_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsubscribe Request
bse_bseindia_eti_fbe_v1_6_14.unsubscribe_request.fields = function(buffer, offset, packet, parent, size_of_unsubscribe_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Ref Appl Sub Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, ref_appl_sub_id = bse_bseindia_eti_fbe_v1_6_14.ref_appl_sub_id.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsubscribe Request
bse_bseindia_eti_fbe_v1_6_14.unsubscribe_request.dissect = function(buffer, offset, packet, parent, size_of_unsubscribe_request)
  local size_of_unsubscribe_request = bse_bseindia_eti_fbe_v1_6_14.unsubscribe_request.size(buffer, offset)
  local index = offset + size_of_unsubscribe_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.unsubscribe_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.unsubscribe_request.fields(buffer, offset, packet, parent, size_of_unsubscribe_request)
    parent:set_len(size_of_unsubscribe_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.unsubscribe_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.unsubscribe_request.fields(buffer, offset, packet, parent, size_of_unsubscribe_request)

    return index
  end
end

-- Subscribe Request
bse_bseindia_eti_fbe_v1_6_14.subscribe_request = {}

-- Read runtime size of: Subscribe Request
bse_bseindia_eti_fbe_v1_6_14.subscribe_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Subscribe Request
bse_bseindia_eti_fbe_v1_6_14.subscribe_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscribe Request
bse_bseindia_eti_fbe_v1_6_14.subscribe_request.fields = function(buffer, offset, packet, parent, size_of_subscribe_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer Nullable
  index, subscription_scope = bse_bseindia_eti_fbe_v1_6_14.subscription_scope.dissect(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, ref_appl_id = bse_bseindia_eti_fbe_v1_6_14.ref_appl_id.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscribe Request
bse_bseindia_eti_fbe_v1_6_14.subscribe_request.dissect = function(buffer, offset, packet, parent, size_of_subscribe_request)
  local size_of_subscribe_request = bse_bseindia_eti_fbe_v1_6_14.subscribe_request.size(buffer, offset)
  local index = offset + size_of_subscribe_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.subscribe_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.subscribe_request.fields(buffer, offset, packet, parent, size_of_subscribe_request)
    parent:set_len(size_of_subscribe_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.subscribe_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.subscribe_request.fields(buffer, offset, packet, parent, size_of_subscribe_request)

    return index
  end
end

-- Session Registration Request
bse_bseindia_eti_fbe_v1_6_14.session_registration_request = {}

-- Read runtime size of: Session Registration Request
bse_bseindia_eti_fbe_v1_6_14.session_registration_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Session Registration Request
bse_bseindia_eti_fbe_v1_6_14.session_registration_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Registration Request
bse_bseindia_eti_fbe_v1_6_14.session_registration_request.fields = function(buffer, offset, packet, parent, size_of_session_registration_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Registration Request
bse_bseindia_eti_fbe_v1_6_14.session_registration_request.dissect = function(buffer, offset, packet, parent, size_of_session_registration_request)
  local size_of_session_registration_request = bse_bseindia_eti_fbe_v1_6_14.session_registration_request.size(buffer, offset)
  local index = offset + size_of_session_registration_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_registration_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.session_registration_request.fields(buffer, offset, packet, parent, size_of_session_registration_request)
    parent:set_len(size_of_session_registration_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.session_registration_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.session_registration_request.fields(buffer, offset, packet, parent, size_of_session_registration_request)

    return index
  end
end

-- Session Password Change Request
bse_bseindia_eti_fbe_v1_6_14.session_password_change_request = {}

-- Read runtime size of: Session Password Change Request
bse_bseindia_eti_fbe_v1_6_14.session_password_change_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Session Password Change Request
bse_bseindia_eti_fbe_v1_6_14.session_password_change_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Password Change Request
bse_bseindia_eti_fbe_v1_6_14.session_password_change_request.fields = function(buffer, offset, packet, parent, size_of_session_password_change_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String Nullable
  index, password = bse_bseindia_eti_fbe_v1_6_14.password.dissect(buffer, index, packet, parent)

  -- New Password: 32 Byte Ascii String Nullable
  index, new_password = bse_bseindia_eti_fbe_v1_6_14.new_password.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Password Change Request
bse_bseindia_eti_fbe_v1_6_14.session_password_change_request.dissect = function(buffer, offset, packet, parent, size_of_session_password_change_request)
  local size_of_session_password_change_request = bse_bseindia_eti_fbe_v1_6_14.session_password_change_request.size(buffer, offset)
  local index = offset + size_of_session_password_change_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.session_password_change_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.session_password_change_request.fields(buffer, offset, packet, parent, size_of_session_password_change_request)
    parent:set_len(size_of_session_password_change_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.session_password_change_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.session_password_change_request.fields(buffer, offset, packet, parent, size_of_session_password_change_request)

    return index
  end
end

-- Retransmit Request
bse_bseindia_eti_fbe_v1_6_14.retransmit_request = {}

-- Read runtime size of: Retransmit Request
bse_bseindia_eti_fbe_v1_6_14.retransmit_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Retransmit Request
bse_bseindia_eti_fbe_v1_6_14.retransmit_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Request
bse_bseindia_eti_fbe_v1_6_14.retransmit_request.fields = function(buffer, offset, packet, parent, size_of_retransmit_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Appl Beg Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, appl_beg_seq_num = bse_bseindia_eti_fbe_v1_6_14.appl_beg_seq_num.dissect(buffer, index, packet, parent)

  -- Appl End Seq Num: 8 Byte Unsigned Fixed Width Integer Nullable
  index, appl_end_seq_num = bse_bseindia_eti_fbe_v1_6_14.appl_end_seq_num.dissect(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer Nullable
  index, subscription_scope = bse_bseindia_eti_fbe_v1_6_14.subscription_scope.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = bse_bseindia_eti_fbe_v1_6_14.partition_id.dissect(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, ref_appl_id = bse_bseindia_eti_fbe_v1_6_14.ref_appl_id.dissect(buffer, index, packet, parent)

  -- Pad1: 1 Byte
  index, pad1 = bse_bseindia_eti_fbe_v1_6_14.pad1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request
bse_bseindia_eti_fbe_v1_6_14.retransmit_request.dissect = function(buffer, offset, packet, parent, size_of_retransmit_request)
  local size_of_retransmit_request = bse_bseindia_eti_fbe_v1_6_14.retransmit_request.size(buffer, offset)
  local index = offset + size_of_retransmit_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.retransmit_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.retransmit_request.fields(buffer, offset, packet, parent, size_of_retransmit_request)
    parent:set_len(size_of_retransmit_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.retransmit_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.retransmit_request.fields(buffer, offset, packet, parent, size_of_retransmit_request)

    return index
  end
end

-- Retransmit Me Message Request
bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_request = {}

-- Read runtime size of: Retransmit Me Message Request
bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Retransmit Me Message Request
bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Me Message Request
bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_request.fields = function(buffer, offset, packet, parent, size_of_retransmit_me_message_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer Nullable
  index, subscription_scope = bse_bseindia_eti_fbe_v1_6_14.subscription_scope.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = bse_bseindia_eti_fbe_v1_6_14.partition_id.dissect(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, ref_appl_id = bse_bseindia_eti_fbe_v1_6_14.ref_appl_id.dissect(buffer, index, packet, parent)

  -- Appl Beg Msg Id: 16 Byte
  index, appl_beg_msg_id = bse_bseindia_eti_fbe_v1_6_14.appl_beg_msg_id.dissect(buffer, index, packet, parent)

  -- Appl End Msg Id: 16 Byte
  index, appl_end_msg_id = bse_bseindia_eti_fbe_v1_6_14.appl_end_msg_id.dissect(buffer, index, packet, parent)

  -- Pad1: 1 Byte
  index, pad1 = bse_bseindia_eti_fbe_v1_6_14.pad1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Me Message Request
bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_request.dissect = function(buffer, offset, packet, parent, size_of_retransmit_me_message_request)
  local size_of_retransmit_me_message_request = bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_request.size(buffer, offset)
  local index = offset + size_of_retransmit_me_message_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.retransmit_me_message_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_request.fields(buffer, offset, packet, parent, size_of_retransmit_me_message_request)
    parent:set_len(size_of_retransmit_me_message_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_request.fields(buffer, offset, packet, parent, size_of_retransmit_me_message_request)

    return index
  end
end

-- New Order Single Short Request
bse_bseindia_eti_fbe_v1_6_14.new_order_single_short_request = {}

-- Read runtime size of: New Order Single Short Request
bse_bseindia_eti_fbe_v1_6_14.new_order_single_short_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: New Order Single Short Request
bse_bseindia_eti_fbe_v1_6_14.new_order_single_short_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Short Request
bse_bseindia_eti_fbe_v1_6_14.new_order_single_short_request.fields = function(buffer, offset, packet, parent, size_of_new_order_single_short_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Max Show: 4 Byte Signed Fixed Width Integer Nullable
  index, max_show = bse_bseindia_eti_fbe_v1_6_14.max_show.dissect(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, simple_security_id = bse_bseindia_eti_fbe_v1_6_14.simple_security_id.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = bse_bseindia_eti_fbe_v1_6_14.time_in_force.dissect(buffer, index, packet, parent)

  -- Stpc Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, stpc_flag = bse_bseindia_eti_fbe_v1_6_14.stpc_flag.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = bse_bseindia_eti_fbe_v1_6_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Short Request
bse_bseindia_eti_fbe_v1_6_14.new_order_single_short_request.dissect = function(buffer, offset, packet, parent, size_of_new_order_single_short_request)
  local size_of_new_order_single_short_request = bse_bseindia_eti_fbe_v1_6_14.new_order_single_short_request.size(buffer, offset)
  local index = offset + size_of_new_order_single_short_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_order_single_short_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.new_order_single_short_request.fields(buffer, offset, packet, parent, size_of_new_order_single_short_request)
    parent:set_len(size_of_new_order_single_short_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.new_order_single_short_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.new_order_single_short_request.fields(buffer, offset, packet, parent, size_of_new_order_single_short_request)

    return index
  end
end

-- New Order Single Request
bse_bseindia_eti_fbe_v1_6_14.new_order_single_request = {}

-- Read runtime size of: New Order Single Request
bse_bseindia_eti_fbe_v1_6_14.new_order_single_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: New Order Single Request
bse_bseindia_eti_fbe_v1_6_14.new_order_single_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Request
bse_bseindia_eti_fbe_v1_6_14.new_order_single_request.fields = function(buffer, offset, packet, parent, size_of_new_order_single_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, stop_px = bse_bseindia_eti_fbe_v1_6_14.stop_px.dissect(buffer, index, packet, parent)

  -- Max Price Percentage: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_price_percentage = bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Max Show: 4 Byte Signed Fixed Width Integer Nullable
  index, max_show = bse_bseindia_eti_fbe_v1_6_14.max_show.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = bse_bseindia_eti_fbe_v1_6_14.expire_date.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, simple_security_id = bse_bseindia_eti_fbe_v1_6_14.simple_security_id.dissect(buffer, index, packet, parent)

  -- Regulatory Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, regulatory_id = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.dissect(buffer, index, packet, parent)

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ord_type = bse_bseindia_eti_fbe_v1_6_14.ord_type.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = bse_bseindia_eti_fbe_v1_6_14.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = bse_bseindia_eti_fbe_v1_6_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Stpc Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, stpc_flag = bse_bseindia_eti_fbe_v1_6_14.stpc_flag.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trading_session_sub_id = bse_bseindia_eti_fbe_v1_6_14.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trading_capacity = bse_bseindia_eti_fbe_v1_6_14.trading_capacity.dissect(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String Nullable
  index, account = bse_bseindia_eti_fbe_v1_6_14.account.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String
  index, position_effect = bse_bseindia_eti_fbe_v1_6_14.position_effect.dissect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String Nullable
  index, party_id_location_id = bse_bseindia_eti_fbe_v1_6_14.party_id_location_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Regulatory Text: 20 Byte Ascii String Nullable
  index, regulatory_text = bse_bseindia_eti_fbe_v1_6_14.regulatory_text.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = bse_bseindia_eti_fbe_v1_6_14.free_text_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Request
bse_bseindia_eti_fbe_v1_6_14.new_order_single_request.dissect = function(buffer, offset, packet, parent, size_of_new_order_single_request)
  local size_of_new_order_single_request = bse_bseindia_eti_fbe_v1_6_14.new_order_single_request.size(buffer, offset)
  local index = offset + size_of_new_order_single_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_order_single_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.new_order_single_request.fields(buffer, offset, packet, parent, size_of_new_order_single_request)
    parent:set_len(size_of_new_order_single_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.new_order_single_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.new_order_single_request.fields(buffer, offset, packet, parent, size_of_new_order_single_request)

    return index
  end
end

-- New Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.new_order_complex_request = {}

-- Read runtime size of: New Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.new_order_complex_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: New Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.new_order_complex_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.new_order_complex_request.fields = function(buffer, offset, packet, parent, size_of_new_order_complex_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Max Price Percentage: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_price_percentage = bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Max Show: 4 Byte Signed Fixed Width Integer Nullable
  index, max_show = bse_bseindia_eti_fbe_v1_6_14.max_show.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = bse_bseindia_eti_fbe_v1_6_14.expire_date.dissect(buffer, index, packet, parent)

  -- Regulatory Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, regulatory_id = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.dissect(buffer, index, packet, parent)

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ord_type = bse_bseindia_eti_fbe_v1_6_14.ord_type.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = bse_bseindia_eti_fbe_v1_6_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = bse_bseindia_eti_fbe_v1_6_14.time_in_force.dissect(buffer, index, packet, parent)

  -- Stpc Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, stpc_flag = bse_bseindia_eti_fbe_v1_6_14.stpc_flag.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trading_capacity = bse_bseindia_eti_fbe_v1_6_14.trading_capacity.dissect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String Nullable
  index, party_id_location_id = bse_bseindia_eti_fbe_v1_6_14.party_id_location_id.dissect(buffer, index, packet, parent)

  -- Regulatory Text: 20 Byte Ascii String Nullable
  index, regulatory_text = bse_bseindia_eti_fbe_v1_6_14.regulatory_text.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = bse_bseindia_eti_fbe_v1_6_14.free_text_3.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_legs = bse_bseindia_eti_fbe_v1_6_14.no_legs.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Ord Grp Comp
  for leg_ord_grp_comp_index = 1, no_legs do
    index, leg_ord_grp_comp = bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp.dissect(buffer, index, packet, parent, leg_ord_grp_comp_index)
  end

  return index
end

-- Dissect: New Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.new_order_complex_request.dissect = function(buffer, offset, packet, parent, size_of_new_order_complex_request)
  local size_of_new_order_complex_request = bse_bseindia_eti_fbe_v1_6_14.new_order_complex_request.size(buffer, offset)
  local index = offset + size_of_new_order_complex_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.new_order_complex_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.new_order_complex_request.fields(buffer, offset, packet, parent, size_of_new_order_complex_request)
    parent:set_len(size_of_new_order_complex_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.new_order_complex_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.new_order_complex_request.fields(buffer, offset, packet, parent, size_of_new_order_complex_request)

    return index
  end
end

-- Multi Leg Ord Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_ord_grp_comp = {}

-- Size: Multi Leg Ord Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_ord_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.security_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.price.size + 
  bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.size + 
  bse_bseindia_eti_fbe_v1_6_14.message_tag.size + 
  bse_bseindia_eti_fbe_v1_6_14.market_segment_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.order_qty.size + 
  bse_bseindia_eti_fbe_v1_6_14.product_complex.size + 
  bse_bseindia_eti_fbe_v1_6_14.side.size + 
  bse_bseindia_eti_fbe_v1_6_14.ord_type.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad1.size

-- Display: Multi Leg Ord Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_ord_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multi Leg Ord Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_ord_grp_comp.fields = function(buffer, offset, packet, parent, multi_leg_ord_grp_comp_index)
  local index = offset

  -- Implicit Multi Leg Ord Grp Comp Index
  if multi_leg_ord_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_ord_grp_comp_index, multi_leg_ord_grp_comp_index)
    iteration:set_generated()
  end

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Max Price Percentage: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_price_percentage = bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ord_type = bse_bseindia_eti_fbe_v1_6_14.ord_type.dissect(buffer, index, packet, parent)

  -- Pad1: 1 Byte
  index, pad1 = bse_bseindia_eti_fbe_v1_6_14.pad1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Multi Leg Ord Grp Comp
bse_bseindia_eti_fbe_v1_6_14.multi_leg_ord_grp_comp.dissect = function(buffer, offset, packet, parent, multi_leg_ord_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_ord_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.multi_leg_ord_grp_comp.fields(buffer, offset, packet, parent, multi_leg_ord_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.multi_leg_ord_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.multi_leg_ord_grp_comp.fields(buffer, offset, packet, parent, multi_leg_ord_grp_comp_index)
  end
end

-- Multi Leg Order Request
bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_request = {}

-- Read runtime size of: Multi Leg Order Request
bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Multi Leg Order Request
bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multi Leg Order Request
bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_request.fields = function(buffer, offset, packet, parent, size_of_multi_leg_order_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- All Or None Flag: 1 Byte Ascii String Enum with 2 values
  index, all_or_none_flag = bse_bseindia_eti_fbe_v1_6_14.all_or_none_flag.dissect(buffer, index, packet, parent)

  -- No Of Multi Leg: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_of_multi_leg = bse_bseindia_eti_fbe_v1_6_14.no_of_multi_leg.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Pad5: 5 Byte
  index, pad5 = bse_bseindia_eti_fbe_v1_6_14.pad5.dissect(buffer, index, packet, parent)

  -- Repeating: Multi Leg Ord Grp Comp
  for multi_leg_ord_grp_comp_index = 1, no_of_multi_leg do
    index, multi_leg_ord_grp_comp = bse_bseindia_eti_fbe_v1_6_14.multi_leg_ord_grp_comp.dissect(buffer, index, packet, parent, multi_leg_ord_grp_comp_index)
  end

  return index
end

-- Dissect: Multi Leg Order Request
bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_request.dissect = function(buffer, offset, packet, parent, size_of_multi_leg_order_request)
  local size_of_multi_leg_order_request = bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_request.size(buffer, offset)
  local index = offset + size_of_multi_leg_order_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.multi_leg_order_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_request.fields(buffer, offset, packet, parent, size_of_multi_leg_order_request)
    parent:set_len(size_of_multi_leg_order_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_request.fields(buffer, offset, packet, parent, size_of_multi_leg_order_request)

    return index
  end
end

-- Modify Order Single Short Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_single_short_request = {}

-- Read runtime size of: Modify Order Single Short Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_single_short_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Modify Order Single Short Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_single_short_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Single Short Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_single_short_request.fields = function(buffer, offset, packet, parent, size_of_modify_order_single_short_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Max Show: 4 Byte Signed Fixed Width Integer Nullable
  index, max_show = bse_bseindia_eti_fbe_v1_6_14.max_show.dissect(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, simple_security_id = bse_bseindia_eti_fbe_v1_6_14.simple_security_id.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = bse_bseindia_eti_fbe_v1_6_14.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = bse_bseindia_eti_fbe_v1_6_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Pad1: 1 Byte
  index, pad1 = bse_bseindia_eti_fbe_v1_6_14.pad1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Single Short Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_single_short_request.dissect = function(buffer, offset, packet, parent, size_of_modify_order_single_short_request)
  local size_of_modify_order_single_short_request = bse_bseindia_eti_fbe_v1_6_14.modify_order_single_short_request.size(buffer, offset)
  local index = offset + size_of_modify_order_single_short_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.modify_order_single_short_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.modify_order_single_short_request.fields(buffer, offset, packet, parent, size_of_modify_order_single_short_request)
    parent:set_len(size_of_modify_order_single_short_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.modify_order_single_short_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.modify_order_single_short_request.fields(buffer, offset, packet, parent, size_of_modify_order_single_short_request)

    return index
  end
end

-- Modify Order Single Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_single_request = {}

-- Read runtime size of: Modify Order Single Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_single_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Modify Order Single Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_single_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Single Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_single_request.fields = function(buffer, offset, packet, parent, size_of_modify_order_single_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, stop_px = bse_bseindia_eti_fbe_v1_6_14.stop_px.dissect(buffer, index, packet, parent)

  -- Max Price Percentage: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_price_percentage = bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Max Show: 4 Byte Signed Fixed Width Integer Nullable
  index, max_show = bse_bseindia_eti_fbe_v1_6_14.max_show.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = bse_bseindia_eti_fbe_v1_6_14.expire_date.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, simple_security_id = bse_bseindia_eti_fbe_v1_6_14.simple_security_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Regulatory Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, regulatory_id = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.dissect(buffer, index, packet, parent)

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ord_type = bse_bseindia_eti_fbe_v1_6_14.ord_type.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = bse_bseindia_eti_fbe_v1_6_14.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = bse_bseindia_eti_fbe_v1_6_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trading_session_sub_id = bse_bseindia_eti_fbe_v1_6_14.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trading_capacity = bse_bseindia_eti_fbe_v1_6_14.trading_capacity.dissect(buffer, index, packet, parent)

  -- Delta Qty Flag: 1 Byte Ascii String
  index, delta_qty_flag = bse_bseindia_eti_fbe_v1_6_14.delta_qty_flag.dissect(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String Nullable
  index, account = bse_bseindia_eti_fbe_v1_6_14.account.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String
  index, position_effect = bse_bseindia_eti_fbe_v1_6_14.position_effect.dissect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String Nullable
  index, party_id_location_id = bse_bseindia_eti_fbe_v1_6_14.party_id_location_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Regulatory Text: 20 Byte Ascii String Nullable
  index, regulatory_text = bse_bseindia_eti_fbe_v1_6_14.regulatory_text.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = bse_bseindia_eti_fbe_v1_6_14.free_text_3.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Single Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_single_request.dissect = function(buffer, offset, packet, parent, size_of_modify_order_single_request)
  local size_of_modify_order_single_request = bse_bseindia_eti_fbe_v1_6_14.modify_order_single_request.size(buffer, offset)
  local index = offset + size_of_modify_order_single_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.modify_order_single_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.modify_order_single_request.fields(buffer, offset, packet, parent, size_of_modify_order_single_request)
    parent:set_len(size_of_modify_order_single_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.modify_order_single_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.modify_order_single_request.fields(buffer, offset, packet, parent, size_of_modify_order_single_request)

    return index
  end
end

-- Modify Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_complex_request = {}

-- Read runtime size of: Modify Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_complex_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Modify Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_complex_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_complex_request.fields = function(buffer, offset, packet, parent, size_of_modify_order_complex_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = bse_bseindia_eti_fbe_v1_6_14.price.dissect(buffer, index, packet, parent)

  -- Max Price Percentage: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_price_percentage = bse_bseindia_eti_fbe_v1_6_14.max_price_percentage.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Activity Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, activity_time = bse_bseindia_eti_fbe_v1_6_14.activity_time.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Filler2: 4 Byte
  index, filler2 = bse_bseindia_eti_fbe_v1_6_14.filler2.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Max Show: 4 Byte Signed Fixed Width Integer Nullable
  index, max_show = bse_bseindia_eti_fbe_v1_6_14.max_show.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = bse_bseindia_eti_fbe_v1_6_14.expire_date.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Regulatory Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, regulatory_id = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.dissect(buffer, index, packet, parent)

  -- Filler4: 2 Byte
  index, filler4 = bse_bseindia_eti_fbe_v1_6_14.filler4.dissect(buffer, index, packet, parent)

  -- Party Id Take Up Trading Firm: 5 Byte Ascii String Nullable
  index, party_id_take_up_trading_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_take_up_trading_firm.dissect(buffer, index, packet, parent)

  -- Party Id Order Origination Firm: 7 Byte Ascii String Nullable
  index, party_id_order_origination_firm = bse_bseindia_eti_fbe_v1_6_14.party_id_order_origination_firm.dissect(buffer, index, packet, parent)

  -- Party Id Beneficiary: 9 Byte Ascii String Nullable
  index, party_id_beneficiary = bse_bseindia_eti_fbe_v1_6_14.party_id_beneficiary.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = bse_bseindia_eti_fbe_v1_6_14.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, product_complex = bse_bseindia_eti_fbe_v1_6_14.product_complex.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = bse_bseindia_eti_fbe_v1_6_14.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, ord_type = bse_bseindia_eti_fbe_v1_6_14.ord_type.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = bse_bseindia_eti_fbe_v1_6_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, time_in_force = bse_bseindia_eti_fbe_v1_6_14.time_in_force.dissect(buffer, index, packet, parent)

  -- Rollover Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rollover_flag = bse_bseindia_eti_fbe_v1_6_14.rollover_flag.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trading_capacity = bse_bseindia_eti_fbe_v1_6_14.trading_capacity.dissect(buffer, index, packet, parent)

  -- Delta Qty Flag: 1 Byte Ascii String
  index, delta_qty_flag = bse_bseindia_eti_fbe_v1_6_14.delta_qty_flag.dissect(buffer, index, packet, parent)

  -- Party Id Location Id: 2 Byte Ascii String Nullable
  index, party_id_location_id = bse_bseindia_eti_fbe_v1_6_14.party_id_location_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index, cust_order_handling_inst = bse_bseindia_eti_fbe_v1_6_14.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Regulatory Text: 20 Byte Ascii String Nullable
  index, regulatory_text = bse_bseindia_eti_fbe_v1_6_14.regulatory_text.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = bse_bseindia_eti_fbe_v1_6_14.free_text_3.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_legs = bse_bseindia_eti_fbe_v1_6_14.no_legs.dissect(buffer, index, packet, parent)

  -- Pad2v2: 2 Byte
  index, pad2v2 = bse_bseindia_eti_fbe_v1_6_14.pad2v2.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Ord Grp Comp
  for leg_ord_grp_comp_index = 1, no_legs do
    index, leg_ord_grp_comp = bse_bseindia_eti_fbe_v1_6_14.leg_ord_grp_comp.dissect(buffer, index, packet, parent, leg_ord_grp_comp_index)
  end

  return index
end

-- Dissect: Modify Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.modify_order_complex_request.dissect = function(buffer, offset, packet, parent, size_of_modify_order_complex_request)
  local size_of_modify_order_complex_request = bse_bseindia_eti_fbe_v1_6_14.modify_order_complex_request.size(buffer, offset)
  local index = offset + size_of_modify_order_complex_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.modify_order_complex_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.modify_order_complex_request.fields(buffer, offset, packet, parent, size_of_modify_order_complex_request)
    parent:set_len(size_of_modify_order_complex_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.modify_order_complex_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.modify_order_complex_request.fields(buffer, offset, packet, parent, size_of_modify_order_complex_request)

    return index
  end
end

-- Quote Entry Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_entry_grp_comp = {}

-- Size: Quote Entry Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_entry_grp_comp.size =
  bse_bseindia_eti_fbe_v1_6_14.security_id.size + 
  bse_bseindia_eti_fbe_v1_6_14.bid_px.size + 
  bse_bseindia_eti_fbe_v1_6_14.offer_px.size + 
  bse_bseindia_eti_fbe_v1_6_14.bid_size.size + 
  bse_bseindia_eti_fbe_v1_6_14.offer_size.size + 
  bse_bseindia_eti_fbe_v1_6_14.message_tag.size + 
  bse_bseindia_eti_fbe_v1_6_14.pad4.size

-- Display: Quote Entry Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_entry_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Entry Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_entry_grp_comp.fields = function(buffer, offset, packet, parent, quote_entry_grp_comp_index)
  local index = offset

  -- Implicit Quote Entry Grp Comp Index
  if quote_entry_grp_comp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_grp_comp_index, quote_entry_grp_comp_index)
    iteration:set_generated()
  end

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_px = bse_bseindia_eti_fbe_v1_6_14.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_px = bse_bseindia_eti_fbe_v1_6_14.offer_px.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Signed Fixed Width Integer Nullable
  index, bid_size = bse_bseindia_eti_fbe_v1_6_14.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Signed Fixed Width Integer Nullable
  index, offer_size = bse_bseindia_eti_fbe_v1_6_14.offer_size.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entry Grp Comp
bse_bseindia_eti_fbe_v1_6_14.quote_entry_grp_comp.dissect = function(buffer, offset, packet, parent, quote_entry_grp_comp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.quote_entry_grp_comp, buffer(offset, 0))
    local index = bse_bseindia_eti_fbe_v1_6_14.quote_entry_grp_comp.fields(buffer, offset, packet, parent, quote_entry_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = bse_bseindia_eti_fbe_v1_6_14.quote_entry_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bse_bseindia_eti_fbe_v1_6_14.quote_entry_grp_comp.fields(buffer, offset, packet, parent, quote_entry_grp_comp_index)
  end
end

-- Mass Quote Request
bse_bseindia_eti_fbe_v1_6_14.mass_quote_request = {}

-- Read runtime size of: Mass Quote Request
bse_bseindia_eti_fbe_v1_6_14.mass_quote_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Mass Quote Request
bse_bseindia_eti_fbe_v1_6_14.mass_quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Request
bse_bseindia_eti_fbe_v1_6_14.mass_quote_request.fields = function(buffer, offset, packet, parent, size_of_mass_quote_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Sender Location Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sender_location_id = bse_bseindia_eti_fbe_v1_6_14.sender_location_id.dissect(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_id = bse_bseindia_eti_fbe_v1_6_14.quote_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Regulatory Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, regulatory_id = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.dissect(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, enrichment_rule_id = bse_bseindia_eti_fbe_v1_6_14.enrichment_rule_id.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = bse_bseindia_eti_fbe_v1_6_14.account_type.dissect(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = bse_bseindia_eti_fbe_v1_6_14.price_validity_check_type.dissect(buffer, index, packet, parent)

  -- Quote Size Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_size_type = bse_bseindia_eti_fbe_v1_6_14.quote_size_type.dissect(buffer, index, packet, parent)

  -- Stpc Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, stpc_flag = bse_bseindia_eti_fbe_v1_6_14.stpc_flag.dissect(buffer, index, packet, parent)

  -- No Quote Entries: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_quote_entries = bse_bseindia_eti_fbe_v1_6_14.no_quote_entries.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Client Code: 12 Byte Ascii String Nullable
  index, client_code = bse_bseindia_eti_fbe_v1_6_14.client_code.dissect(buffer, index, packet, parent)

  -- Cp Code: 12 Byte Ascii String Nullable
  index, cp_code = bse_bseindia_eti_fbe_v1_6_14.cp_code.dissect(buffer, index, packet, parent)

  -- Pad1: 1 Byte
  index, pad1 = bse_bseindia_eti_fbe_v1_6_14.pad1.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Entry Grp Comp
  for quote_entry_grp_comp_index = 1, no_quote_entries do
    index, quote_entry_grp_comp = bse_bseindia_eti_fbe_v1_6_14.quote_entry_grp_comp.dissect(buffer, index, packet, parent, quote_entry_grp_comp_index)
  end

  return index
end

-- Dissect: Mass Quote Request
bse_bseindia_eti_fbe_v1_6_14.mass_quote_request.dissect = function(buffer, offset, packet, parent, size_of_mass_quote_request)
  local size_of_mass_quote_request = bse_bseindia_eti_fbe_v1_6_14.mass_quote_request.size(buffer, offset)
  local index = offset + size_of_mass_quote_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.mass_quote_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.mass_quote_request.fields(buffer, offset, packet, parent, size_of_mass_quote_request)
    parent:set_len(size_of_mass_quote_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.mass_quote_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.mass_quote_request.fields(buffer, offset, packet, parent, size_of_mass_quote_request)

    return index
  end
end

-- Logout Request
bse_bseindia_eti_fbe_v1_6_14.logout_request = {}

-- Read runtime size of: Logout Request
bse_bseindia_eti_fbe_v1_6_14.logout_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logout Request
bse_bseindia_eti_fbe_v1_6_14.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
bse_bseindia_eti_fbe_v1_6_14.logout_request.fields = function(buffer, offset, packet, parent, size_of_logout_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Request
bse_bseindia_eti_fbe_v1_6_14.logout_request.dissect = function(buffer, offset, packet, parent, size_of_logout_request)
  local size_of_logout_request = bse_bseindia_eti_fbe_v1_6_14.logout_request.size(buffer, offset)
  local index = offset + size_of_logout_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.logout_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.logout_request.fields(buffer, offset, packet, parent, size_of_logout_request)
    parent:set_len(size_of_logout_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.logout_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.logout_request.fields(buffer, offset, packet, parent, size_of_logout_request)

    return index
  end
end

-- Logon Request
bse_bseindia_eti_fbe_v1_6_14.logon_request = {}

-- Read runtime size of: Logon Request
bse_bseindia_eti_fbe_v1_6_14.logon_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logon Request
bse_bseindia_eti_fbe_v1_6_14.logon_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request
bse_bseindia_eti_fbe_v1_6_14.logon_request.fields = function(buffer, offset, packet, parent, size_of_logon_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer Nullable
  index, heart_bt_int = bse_bseindia_eti_fbe_v1_6_14.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String Nullable
  index, default_cstm_appl_ver_id = bse_bseindia_eti_fbe_v1_6_14.default_cstm_appl_ver_id.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String Nullable
  index, password = bse_bseindia_eti_fbe_v1_6_14.password.dissect(buffer, index, packet, parent)

  -- Appl Usage Orders: 1 Byte Ascii String Enum with 4 values
  index, appl_usage_orders = bse_bseindia_eti_fbe_v1_6_14.appl_usage_orders.dissect(buffer, index, packet, parent)

  -- Appl Usage Quotes: 1 Byte Ascii String Enum with 4 values
  index, appl_usage_quotes = bse_bseindia_eti_fbe_v1_6_14.appl_usage_quotes.dissect(buffer, index, packet, parent)

  -- Order Routing Indicator: 1 Byte Ascii String Enum with 2 values
  index, order_routing_indicator = bse_bseindia_eti_fbe_v1_6_14.order_routing_indicator.dissect(buffer, index, packet, parent)

  -- Fix Engine Name: 30 Byte Ascii String Nullable
  index, fix_engine_name = bse_bseindia_eti_fbe_v1_6_14.fix_engine_name.dissect(buffer, index, packet, parent)

  -- Fix Engine Version: 30 Byte Ascii String Nullable
  index, fix_engine_version = bse_bseindia_eti_fbe_v1_6_14.fix_engine_version.dissect(buffer, index, packet, parent)

  -- Fix Engine Vendor: 30 Byte Ascii String Nullable
  index, fix_engine_vendor = bse_bseindia_eti_fbe_v1_6_14.fix_engine_vendor.dissect(buffer, index, packet, parent)

  -- Application System Name: 30 Byte Ascii String Nullable
  index, application_system_name = bse_bseindia_eti_fbe_v1_6_14.application_system_name.dissect(buffer, index, packet, parent)

  -- Application System Version: 30 Byte Ascii String Nullable
  index, application_system_version = bse_bseindia_eti_fbe_v1_6_14.application_system_version.dissect(buffer, index, packet, parent)

  -- Application System Vendor: 30 Byte Ascii String Nullable
  index, application_system_vendor = bse_bseindia_eti_fbe_v1_6_14.application_system_vendor.dissect(buffer, index, packet, parent)

  -- Pad3: 3 Byte
  index, pad3 = bse_bseindia_eti_fbe_v1_6_14.pad3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request
bse_bseindia_eti_fbe_v1_6_14.logon_request.dissect = function(buffer, offset, packet, parent, size_of_logon_request)
  local size_of_logon_request = bse_bseindia_eti_fbe_v1_6_14.logon_request.size(buffer, offset)
  local index = offset + size_of_logon_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.logon_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.logon_request.fields(buffer, offset, packet, parent, size_of_logon_request)
    parent:set_len(size_of_logon_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.logon_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.logon_request.fields(buffer, offset, packet, parent, size_of_logon_request)

    return index
  end
end

-- Inquire Session List Request
bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_request = {}

-- Read runtime size of: Inquire Session List Request
bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Inquire Session List Request
bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquire Session List Request
bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_request.fields = function(buffer, offset, packet, parent, size_of_inquire_session_list_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire Session List Request
bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_request.dissect = function(buffer, offset, packet, parent, size_of_inquire_session_list_request)
  local size_of_inquire_session_list_request = bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_request.size(buffer, offset)
  local index = offset + size_of_inquire_session_list_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.inquire_session_list_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_request.fields(buffer, offset, packet, parent, size_of_inquire_session_list_request)
    parent:set_len(size_of_inquire_session_list_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_request.fields(buffer, offset, packet, parent, size_of_inquire_session_list_request)

    return index
  end
end

-- Heartbeat
bse_bseindia_eti_fbe_v1_6_14.heartbeat = {}

-- Read runtime size of: Heartbeat
bse_bseindia_eti_fbe_v1_6_14.heartbeat.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Heartbeat
bse_bseindia_eti_fbe_v1_6_14.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
bse_bseindia_eti_fbe_v1_6_14.heartbeat.fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
bse_bseindia_eti_fbe_v1_6_14.heartbeat.dissect = function(buffer, offset, packet, parent, size_of_heartbeat)
  local size_of_heartbeat = bse_bseindia_eti_fbe_v1_6_14.heartbeat.size(buffer, offset)
  local index = offset + size_of_heartbeat

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.heartbeat, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)
    parent:set_len(size_of_heartbeat)
    local display = bse_bseindia_eti_fbe_v1_6_14.heartbeat.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)

    return index
  end
end

-- Gateway Request
bse_bseindia_eti_fbe_v1_6_14.gateway_request = {}

-- Read runtime size of: Gateway Request
bse_bseindia_eti_fbe_v1_6_14.gateway_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Gateway Request
bse_bseindia_eti_fbe_v1_6_14.gateway_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Request
bse_bseindia_eti_fbe_v1_6_14.gateway_request.fields = function(buffer, offset, packet, parent, size_of_gateway_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String Nullable
  index, default_cstm_appl_ver_id = bse_bseindia_eti_fbe_v1_6_14.default_cstm_appl_ver_id.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String Nullable
  index, password = bse_bseindia_eti_fbe_v1_6_14.password.dissect(buffer, index, packet, parent)

  -- Pad6: 6 Byte
  index, pad6 = bse_bseindia_eti_fbe_v1_6_14.pad6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Request
bse_bseindia_eti_fbe_v1_6_14.gateway_request.dissect = function(buffer, offset, packet, parent, size_of_gateway_request)
  local size_of_gateway_request = bse_bseindia_eti_fbe_v1_6_14.gateway_request.size(buffer, offset)
  local index = offset + size_of_gateway_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.gateway_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.gateway_request.fields(buffer, offset, packet, parent, size_of_gateway_request)
    parent:set_len(size_of_gateway_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.gateway_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.gateway_request.fields(buffer, offset, packet, parent, size_of_gateway_request)

    return index
  end
end

-- Delete Order Single Request
bse_bseindia_eti_fbe_v1_6_14.delete_order_single_request = {}

-- Read runtime size of: Delete Order Single Request
bse_bseindia_eti_fbe_v1_6_14.delete_order_single_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Single Request
bse_bseindia_eti_fbe_v1_6_14.delete_order_single_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Single Request
bse_bseindia_eti_fbe_v1_6_14.delete_order_single_request.fields = function(buffer, offset, packet, parent, size_of_delete_order_single_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Simple Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, simple_security_id = bse_bseindia_eti_fbe_v1_6_14.simple_security_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Regulatory Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, regulatory_id = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Single Request
bse_bseindia_eti_fbe_v1_6_14.delete_order_single_request.dissect = function(buffer, offset, packet, parent, size_of_delete_order_single_request)
  local size_of_delete_order_single_request = bse_bseindia_eti_fbe_v1_6_14.delete_order_single_request.size(buffer, offset)
  local index = offset + size_of_delete_order_single_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_order_single_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_order_single_request.fields(buffer, offset, packet, parent, size_of_delete_order_single_request)
    parent:set_len(size_of_delete_order_single_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_order_single_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_order_single_request.fields(buffer, offset, packet, parent, size_of_delete_order_single_request)

    return index
  end
end

-- Delete Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.delete_order_complex_request = {}

-- Read runtime size of: Delete Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.delete_order_complex_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.delete_order_complex_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.delete_order_complex_request.fields = function(buffer, offset, packet, parent, size_of_delete_order_complex_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = bse_bseindia_eti_fbe_v1_6_14.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = bse_bseindia_eti_fbe_v1_6_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Filler1: 8 Byte
  index, filler1 = bse_bseindia_eti_fbe_v1_6_14.filler1.dissect(buffer, index, packet, parent)

  -- Message Tag: 4 Byte Signed Fixed Width Integer Nullable
  index, message_tag = bse_bseindia_eti_fbe_v1_6_14.message_tag.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Regulatory Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, regulatory_id = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Complex Request
bse_bseindia_eti_fbe_v1_6_14.delete_order_complex_request.dissect = function(buffer, offset, packet, parent, size_of_delete_order_complex_request)
  local size_of_delete_order_complex_request = bse_bseindia_eti_fbe_v1_6_14.delete_order_complex_request.size(buffer, offset)
  local index = offset + size_of_delete_order_complex_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_order_complex_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_order_complex_request.fields(buffer, offset, packet, parent, size_of_delete_order_complex_request)
    parent:set_len(size_of_delete_order_complex_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_order_complex_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_order_complex_request.fields(buffer, offset, packet, parent, size_of_delete_order_complex_request)

    return index
  end
end

-- Delete All Quote Request
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_request = {}

-- Read runtime size of: Delete All Quote Request
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Quote Request
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Quote Request
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_request.fields = function(buffer, offset, packet, parent, size_of_delete_all_quote_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Regulatory Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, regulatory_id = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Quote Request
bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_request.dissect = function(buffer, offset, packet, parent, size_of_delete_all_quote_request)
  local size_of_delete_all_quote_request = bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_request.size(buffer, offset)
  local index = offset + size_of_delete_all_quote_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_quote_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_request.fields(buffer, offset, packet, parent, size_of_delete_all_quote_request)
    parent:set_len(size_of_delete_all_quote_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_request.fields(buffer, offset, packet, parent, size_of_delete_all_quote_request)

    return index
  end
end

-- Delete All Order Request
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_request = {}

-- Read runtime size of: Delete All Order Request
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete All Order Request
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete All Order Request
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_request.fields = function(buffer, offset, packet, parent, size_of_delete_all_order_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = bse_bseindia_eti_fbe_v1_6_14.market_segment_id.dissect(buffer, index, packet, parent)

  -- Regulatory Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, regulatory_id = bse_bseindia_eti_fbe_v1_6_14.regulatory_id.dissect(buffer, index, packet, parent)

  -- Algo Id: 16 Byte Ascii String Nullable
  index, algo_id = bse_bseindia_eti_fbe_v1_6_14.algo_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_session_id = bse_bseindia_eti_fbe_v1_6_14.target_party_id_session_id.dissect(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, target_party_id_executing_trader = bse_bseindia_eti_fbe_v1_6_14.target_party_id_executing_trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Request
bse_bseindia_eti_fbe_v1_6_14.delete_all_order_request.dissect = function(buffer, offset, packet, parent, size_of_delete_all_order_request)
  local size_of_delete_all_order_request = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_request.size(buffer, offset)
  local index = offset + size_of_delete_all_order_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.delete_all_order_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_request.fields(buffer, offset, packet, parent, size_of_delete_all_order_request)
    parent:set_len(size_of_delete_all_order_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.delete_all_order_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.delete_all_order_request.fields(buffer, offset, packet, parent, size_of_delete_all_order_request)

    return index
  end
end

-- Debt Inquiry Request
bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_request = {}

-- Read runtime size of: Debt Inquiry Request
bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Debt Inquiry Request
bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debt Inquiry Request
bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_request.fields = function(buffer, offset, packet, parent, size_of_debt_inquiry_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String Nullable
  index, network_msg_id = bse_bseindia_eti_fbe_v1_6_14.network_msg_id.dissect(buffer, index, packet, parent)

  -- Pad2: 2 Byte
  index, pad2 = bse_bseindia_eti_fbe_v1_6_14.pad2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = bse_bseindia_eti_fbe_v1_6_14.request_header_comp.dissect(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_px = bse_bseindia_eti_fbe_v1_6_14.underlying_px.dissect(buffer, index, packet, parent)

  -- Yield: 8 Byte Unsigned Fixed Width Integer Nullable
  index, yield = bse_bseindia_eti_fbe_v1_6_14.yield.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = bse_bseindia_eti_fbe_v1_6_14.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = bse_bseindia_eti_fbe_v1_6_14.order_qty.dissect(buffer, index, packet, parent)

  -- Pad4: 4 Byte
  index, pad4 = bse_bseindia_eti_fbe_v1_6_14.pad4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debt Inquiry Request
bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_request.dissect = function(buffer, offset, packet, parent, size_of_debt_inquiry_request)
  local size_of_debt_inquiry_request = bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_request.size(buffer, offset)
  local index = offset + size_of_debt_inquiry_request

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.debt_inquiry_request, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_request.fields(buffer, offset, packet, parent, size_of_debt_inquiry_request)
    parent:set_len(size_of_debt_inquiry_request)
    local display = bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_request.fields(buffer, offset, packet, parent, size_of_debt_inquiry_request)

    return index
  end
end

-- Client Payload
bse_bseindia_eti_fbe_v1_6_14.client_payload = {}

-- Dissect: Client Payload
bse_bseindia_eti_fbe_v1_6_14.client_payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Debt Inquiry Request
  if template_id == 10390 then
    return bse_bseindia_eti_fbe_v1_6_14.debt_inquiry_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Request
  if template_id == 10120 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_all_order_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Request
  if template_id == 10408 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_all_quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Complex Request
  if template_id == 10123 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_order_complex_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Single Request
  if template_id == 10109 then
    return bse_bseindia_eti_fbe_v1_6_14.delete_order_single_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Request
  if template_id == 10020 then
    return bse_bseindia_eti_fbe_v1_6_14.gateway_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if template_id == 10011 then
    return bse_bseindia_eti_fbe_v1_6_14.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Session List Request
  if template_id == 10035 then
    return bse_bseindia_eti_fbe_v1_6_14.inquire_session_list_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Request
  if template_id == 10000 then
    return bse_bseindia_eti_fbe_v1_6_14.logon_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if template_id == 10002 then
    return bse_bseindia_eti_fbe_v1_6_14.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Request
  if template_id == 10405 then
    return bse_bseindia_eti_fbe_v1_6_14.mass_quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Complex Request
  if template_id == 10114 then
    return bse_bseindia_eti_fbe_v1_6_14.modify_order_complex_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Single Request
  if template_id == 10106 then
    return bse_bseindia_eti_fbe_v1_6_14.modify_order_single_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Single Short Request
  if template_id == 10126 then
    return bse_bseindia_eti_fbe_v1_6_14.modify_order_single_short_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Multi Leg Order Request
  if template_id == 10991 then
    return bse_bseindia_eti_fbe_v1_6_14.multi_leg_order_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Complex Request
  if template_id == 10113 then
    return bse_bseindia_eti_fbe_v1_6_14.new_order_complex_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single Request
  if template_id == 10100 then
    return bse_bseindia_eti_fbe_v1_6_14.new_order_single_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single Short Request
  if template_id == 10125 then
    return bse_bseindia_eti_fbe_v1_6_14.new_order_single_short_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Me Message Request
  if template_id == 10026 then
    return bse_bseindia_eti_fbe_v1_6_14.retransmit_me_message_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request
  if template_id == 10008 then
    return bse_bseindia_eti_fbe_v1_6_14.retransmit_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Password Change Request
  if template_id == 10997 then
    return bse_bseindia_eti_fbe_v1_6_14.session_password_change_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Registration Request
  if template_id == 10053 then
    return bse_bseindia_eti_fbe_v1_6_14.session_registration_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscribe Request
  if template_id == 10025 then
    return bse_bseindia_eti_fbe_v1_6_14.subscribe_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsubscribe Request
  if template_id == 10006 then
    return bse_bseindia_eti_fbe_v1_6_14.unsubscribe_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Login Request
  if template_id == 10018 then
    return bse_bseindia_eti_fbe_v1_6_14.user_login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Logout Request
  if template_id == 10029 then
    return bse_bseindia_eti_fbe_v1_6_14.user_logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Password Change Request
  if template_id == 10996 then
    return bse_bseindia_eti_fbe_v1_6_14.user_password_change_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message
bse_bseindia_eti_fbe_v1_6_14.client_message = {}

-- Display: Client Message
bse_bseindia_eti_fbe_v1_6_14.client_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message
bse_bseindia_eti_fbe_v1_6_14.client_message.fields = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = bse_bseindia_eti_fbe_v1_6_14.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 2, 2):le_uint()

  -- Client Payload: Runtime Type with 27 branches
  index = bse_bseindia_eti_fbe_v1_6_14.client_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Client Message
bse_bseindia_eti_fbe_v1_6_14.client_message.dissect = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset + size_of_client_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14.fields.client_message, buffer(offset, 0))
    local current = bse_bseindia_eti_fbe_v1_6_14.client_message.fields(buffer, offset, packet, parent, size_of_client_message)
    parent:set_len(size_of_client_message)
    local display = bse_bseindia_eti_fbe_v1_6_14.client_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bse_bseindia_eti_fbe_v1_6_14.client_message.fields(buffer, offset, packet, parent, size_of_client_message)

    return index
  end
end

-- Remaining Bytes For: Client Message
local client_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < bse_bseindia_eti_fbe_v1_6_14.message_header.size then
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

-- Client Packet
bse_bseindia_eti_fbe_v1_6_14.client_packet = {}

-- Verify required size of Tcp packet
bse_bseindia_eti_fbe_v1_6_14.client_packet.requiredsize = function(buffer)
  return buffer:len() >= bse_bseindia_eti_fbe_v1_6_14.message_header.size
end

-- Dissect Client Packet
bse_bseindia_eti_fbe_v1_6_14.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Message
  local end_of_payload = buffer:len()

  -- Client Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_message = client_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = bse_bseindia_eti_fbe_v1_6_14.client_message.dissect(buffer, index, packet, parent, size_of_client_message)
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
function omi_bse_bseindia_eti_fbe_v1_6_14.init()
end

-- Connection roles for Bse BseIndia Eti Fbe 1.6.14: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local a = endpoint(packet.src, packet.src_port)
  local b = endpoint(packet.dst, packet.dst_port)
  if a < b then
    return a.." "..b
  end
  return b.." "..a
end


-- Connection role of the frame's sender
bse_bseindia_eti_fbe_v1_6_14.role = function(packet)
  if omi_bse_bseindia_eti_fbe_v1_6_14.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_bse_bseindia_eti_fbe_v1_6_14.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_bse_bseindia_eti_fbe_v1_6_14.prefs.acceptor_port
  if port ~= 0 and packet.dst_port == port then
    return "initiator"
  end
  if port ~= 0 and packet.src_port == port then
    return "acceptor"
  end
  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)
  if initiators[key] == nil then
    initiators[key] = sender
  end
  local first = initiators[key] == sender
  if omi_bse_bseindia_eti_fbe_v1_6_14.prefs.swap_sides then
    first = not first
  end
  if swapped[key] then
    first = not first
  end
  if first then
    return "initiator"
  end
  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
bse_bseindia_eti_fbe_v1_6_14.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Bse BseIndia Eti Fbe 1.6.14
function omi_bse_bseindia_eti_fbe_v1_6_14.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_bse_bseindia_eti_fbe_v1_6_14.name

  -- Dissect protocol
  local protocol = parent:add(omi_bse_bseindia_eti_fbe_v1_6_14, buffer(), omi_bse_bseindia_eti_fbe_v1_6_14.description, "("..buffer:len().." Bytes)")
  local role = bse_bseindia_eti_fbe_v1_6_14.role(packet)
  if role == "initiator" then
    return bse_bseindia_eti_fbe_v1_6_14.client_packet.dissect(buffer, packet, protocol)
  end
  return bse_bseindia_eti_fbe_v1_6_14.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
bse_bseindia_eti_fbe_v1_6_14.client_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end
  local template_id = buffer(4, 2):le_uint()

  -- Debt Inquiry Request
  if template_id == 10390 then
    return true
  end

  -- Delete All Order Request
  if template_id == 10120 then
    return true
  end

  -- Delete All Quote Request
  if template_id == 10408 then
    return true
  end

  -- Delete Order Complex Request
  if template_id == 10123 then
    return true
  end

  -- Delete Order Single Request
  if template_id == 10109 then
    return true
  end

  -- Gateway Request
  if template_id == 10020 then
    return true
  end

  -- Heartbeat
  if template_id == 10011 then
    return true
  end

  -- Inquire Session List Request
  if template_id == 10035 then
    return true
  end

  -- Logon Request
  if template_id == 10000 then
    return true
  end

  -- Logout Request
  if template_id == 10002 then
    return true
  end

  -- Mass Quote Request
  if template_id == 10405 then
    return true
  end

  -- Modify Order Complex Request
  if template_id == 10114 then
    return true
  end

  -- Modify Order Single Request
  if template_id == 10106 then
    return true
  end

  -- Modify Order Single Short Request
  if template_id == 10126 then
    return true
  end

  -- Multi Leg Order Request
  if template_id == 10991 then
    return true
  end

  -- New Order Complex Request
  if template_id == 10113 then
    return true
  end

  -- New Order Single Request
  if template_id == 10100 then
    return true
  end

  -- New Order Single Short Request
  if template_id == 10125 then
    return true
  end

  -- Retransmit Me Message Request
  if template_id == 10026 then
    return true
  end

  -- Retransmit Request
  if template_id == 10008 then
    return true
  end

  -- Session Password Change Request
  if template_id == 10997 then
    return true
  end

  -- Session Registration Request
  if template_id == 10053 then
    return true
  end

  -- Subscribe Request
  if template_id == 10025 then
    return true
  end

  -- Unsubscribe Request
  if template_id == 10006 then
    return true
  end

  -- User Login Request
  if template_id == 10018 then
    return true
  end

  -- User Logout Request
  if template_id == 10029 then
    return true
  end

  -- User Password Change Request
  if template_id == 10996 then
    return true
  end

  return false
end


-- Fingerprint of Server Packet: would its message dispatch accept this frame?
bse_bseindia_eti_fbe_v1_6_14.server_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end
  local template_id = buffer(4, 2):le_uint()

  -- Broadcast Error Notification
  if template_id == 10032 then
    return true
  end

  -- Debt Inquiry Response
  if template_id == 10391 then
    return true
  end

  -- Delete All Order Broadcast
  if template_id == 10122 then
    return true
  end

  -- Delete All Order Nr Response
  if template_id == 10124 then
    return true
  end

  -- Delete All Order Quote Event Broadcast
  if template_id == 10308 then
    return true
  end

  -- Delete All Order Response
  if template_id == 10121 then
    return true
  end

  -- Delete All Quote Broadcast
  if template_id == 10410 then
    return true
  end

  -- Delete All Quote Response
  if template_id == 10409 then
    return true
  end

  -- Delete Order Broadcast
  if template_id == 10112 then
    return true
  end

  -- Delete Order Nr Response
  if template_id == 10111 then
    return true
  end

  -- Delete Order Response
  if template_id == 10110 then
    return true
  end

  -- Forced Logout Notification
  if template_id == 10012 then
    return true
  end

  -- Gateway Response
  if template_id == 10022 then
    return true
  end

  -- Gw Order Acknowledgement
  if template_id == 10990 then
    return true
  end

  -- Heartbeat Notification
  if template_id == 10023 then
    return true
  end

  -- Inquire Session List Response
  if template_id == 10036 then
    return true
  end

  -- Logon Response
  if template_id == 10001 then
    return true
  end

  -- Logout Response
  if template_id == 10003 then
    return true
  end

  -- Mass Quote Response
  if template_id == 10406 then
    return true
  end

  -- Modify Order Nr Response
  if template_id == 10108 then
    return true
  end

  -- Modify Order Response
  if template_id == 10107 then
    return true
  end

  -- Multi Leg Exec Report Broadcast
  if template_id == 10994 then
    return true
  end

  -- Multi Leg Exec Response
  if template_id == 10993 then
    return true
  end

  -- Multi Leg Order Reject
  if template_id == 10992 then
    return true
  end

  -- New Order Nr Response
  if template_id == 10102 then
    return true
  end

  -- New Order Response
  if template_id == 10101 then
    return true
  end

  -- News Broadcast
  if template_id == 10031 then
    return true
  end

  -- Order Exec Notification
  if template_id == 10104 then
    return true
  end

  -- Order Exec Report Broadcast
  if template_id == 10117 then
    return true
  end

  -- Order Exec Response
  if template_id == 10103 then
    return true
  end

  -- Quote Exec Report Broadcast
  if template_id == 10412 then
    return true
  end

  -- Quote Execution Report
  if template_id == 10407 then
    return true
  end

  -- Reject
  if template_id == 10010 then
    return true
  end

  -- Retransmit Me Message Response
  if template_id == 10027 then
    return true
  end

  -- Retransmit Response
  if template_id == 10009 then
    return true
  end

  -- Risk Collateral Alert Admin Broadcast
  if template_id == 10048 then
    return true
  end

  -- Risk Collateral Alert Broadcast
  if template_id == 10049 then
    return true
  end

  -- Risk Notification Broadcast
  if template_id == 10033 then
    return true
  end

  -- Service Availability Broadcast
  if template_id == 10030 then
    return true
  end

  -- Session Password Change Response
  if template_id == 10995 then
    return true
  end

  -- Session Registration Response
  if template_id == 10054 then
    return true
  end

  -- Subscribe Response
  if template_id == 10005 then
    return true
  end

  -- Tm Trading Session Status Broadcast
  if template_id == 10501 then
    return true
  end

  -- Throttle Update Notification
  if template_id == 10028 then
    return true
  end

  -- Trade Broadcast
  if template_id == 10500 then
    return true
  end

  -- Trade Enhancement Broadcast
  if template_id == 10989 then
    return true
  end

  -- Trading Session Status Broadcast
  if template_id == 10307 then
    return true
  end

  -- Unsubscribe Response
  if template_id == 10007 then
    return true
  end

  -- User Login Response
  if template_id == 10019 then
    return true
  end

  -- User Logout Response
  if template_id == 10024 then
    return true
  end

  -- User Password Change Response
  if template_id == 10043 then
    return true
  end

  return false
end



-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bse BseIndia Eti Fbe 1.6.14 (Tcp)
local function omi_bse_bseindia_eti_fbe_v1_6_14_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bse_bseindia_eti_fbe_v1_6_14.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not bse_bseindia_eti_fbe_v1_6_14.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bse_bseindia_eti_fbe_v1_6_14
  omi_bse_bseindia_eti_fbe_v1_6_14.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Bse BseIndia Eti Fbe 1.6.14 (Tcp)
local function omi_bse_bseindia_eti_fbe_v1_6_14_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bse_bseindia_eti_fbe_v1_6_14.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not bse_bseindia_eti_fbe_v1_6_14.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bse_bseindia_eti_fbe_v1_6_14
  omi_bse_bseindia_eti_fbe_v1_6_14.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Bse BseIndia Eti Fbe 1.6.14 (Tcp): apply the heuristic of the sender's connection role
local function omi_bse_bseindia_eti_fbe_v1_6_14_tcp_heuristic(buffer, packet, parent)
  local role = bse_bseindia_eti_fbe_v1_6_14.role(packet)
  local first, second = omi_bse_bseindia_eti_fbe_v1_6_14_tcp_initiator_heuristic, omi_bse_bseindia_eti_fbe_v1_6_14_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  bse_bseindia_eti_fbe_v1_6_14.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  bse_bseindia_eti_fbe_v1_6_14.swap(packet)

  return false
end

-- Register Heuristics for Bse BseIndia Eti Fbe 1.6.14
omi_bse_bseindia_eti_fbe_v1_6_14:register_heuristic("tcp", omi_bse_bseindia_eti_fbe_v1_6_14_tcp_heuristic)
-- Register Bse BseIndia Eti Fbe 1.6.14 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_bse_bseindia_eti_fbe_v1_6_14)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: BSE Limited
--   Version: 1.6.14
--   Date: Monday, March 30, 2026
--   Specification: BSE_ETI_Manual_V1.6.14.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
