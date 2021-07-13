-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures Mdp3 Sbe 1.9 Protocol
local cme_futures_mdp3_sbe_v1_9 = Proto("Cme.Futures.Mdp3.Sbe.v1.9.Lua", "Cme Futures Mdp3 Sbe 1.9")

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

-- Cme Futures Mdp3 Sbe 1.9 Fields
cme_futures_mdp3_sbe_v1_9.fields.actual = ProtoField.new("Actual", "cme.futures.mdp3.sbe.v1.9.actual", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
cme_futures_mdp3_sbe_v1_9.fields.admin_login = ProtoField.new("Admin Login", "cme.futures.mdp3.sbe.v1.9.adminlogin", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.admin_logout = ProtoField.new("Admin Logout", "cme.futures.mdp3.sbe.v1.9.adminlogout", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.futures.mdp3.sbe.v1.9.aggressorside", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.appl_id = ProtoField.new("Appl Id", "cme.futures.mdp3.sbe.v1.9.applid", ftypes.INT16)
cme_futures_mdp3_sbe_v1_9.fields.asset = ProtoField.new("Asset", "cme.futures.mdp3.sbe.v1.9.asset", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.futures.mdp3.sbe.v1.9.binarypacketheader", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.block_length = ProtoField.new("Block Length", "cme.futures.mdp3.sbe.v1.9.blocklength", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_9.fields.block_trade_eligible = ProtoField.new("Block Trade Eligible", "cme.futures.mdp3.sbe.v1.9.blocktradeeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000004")
cme_futures_mdp3_sbe_v1_9.fields.cfi_code = ProtoField.new("Cfi Code", "cme.futures.mdp3.sbe.v1.9.cficode", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.channel_reset = ProtoField.new("Channel Reset", "cme.futures.mdp3.sbe.v1.9.channelreset", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.channel_reset_group = ProtoField.new("Channel Reset Group", "cme.futures.mdp3.sbe.v1.9.channelresetgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.channel_reset_groups = ProtoField.new("Channel Reset Groups", "cme.futures.mdp3.sbe.v1.9.channelresetgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.cleared_volume = ProtoField.new("Cleared Volume", "cme.futures.mdp3.sbe.v1.9.clearedvolume", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "cme.futures.mdp3.sbe.v1.9.contractmultiplier", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.contract_multiplier_unit = ProtoField.new("Contract Multiplier Unit", "cme.futures.mdp3.sbe.v1.9.contractmultiplierunit", ftypes.INT8)
cme_futures_mdp3_sbe_v1_9.fields.currency = ProtoField.new("Currency", "cme.futures.mdp3.sbe.v1.9.currency", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.current_chunk = ProtoField.new("Current Chunk", "cme.futures.mdp3.sbe.v1.9.currentchunk", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_9.fields.daily_product_eligibility = ProtoField.new("Daily Product Eligibility", "cme.futures.mdp3.sbe.v1.9.dailyproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00020000")
cme_futures_mdp3_sbe_v1_9.fields.day = ProtoField.new("Day", "cme.futures.mdp3.sbe.v1.9.day", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.decay_quantity = ProtoField.new("Decay Quantity", "cme.futures.mdp3.sbe.v1.9.decayquantity", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.decay_start_date = ProtoField.new("Decay Start Date", "cme.futures.mdp3.sbe.v1.9.decaystartdate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_9.fields.decaying_product_eligibility = ProtoField.new("Decaying Product Eligibility", "cme.futures.mdp3.sbe.v1.9.decayingproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00008000")
cme_futures_mdp3_sbe_v1_9.fields.display_factor_decimal_9 = ProtoField.new("Display Factor Decimal 9", "cme.futures.mdp3.sbe.v1.9.displayfactordecimal9", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.display_factor_float = ProtoField.new("Display Factor Float", "cme.futures.mdp3.sbe.v1.9.displayfactorfloat", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.ebf_eligible = ProtoField.new("Ebf Eligible", "cme.futures.mdp3.sbe.v1.9.ebfeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000010")
cme_futures_mdp3_sbe_v1_9.fields.efp_eligible = ProtoField.new("Efp Eligible", "cme.futures.mdp3.sbe.v1.9.efpeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000008")
cme_futures_mdp3_sbe_v1_9.fields.efr_eligible = ProtoField.new("Efr Eligible", "cme.futures.mdp3.sbe.v1.9.efreligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000040")
cme_futures_mdp3_sbe_v1_9.fields.efs_eligible = ProtoField.new("Efs Eligible", "cme.futures.mdp3.sbe.v1.9.efseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000020")
cme_futures_mdp3_sbe_v1_9.fields.electronic_match_eligible = ProtoField.new("Electronic Match Eligible", "cme.futures.mdp3.sbe.v1.9.electronicmatcheligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000001")
cme_futures_mdp3_sbe_v1_9.fields.end_of_event = ProtoField.new("End Of Event", "cme.futures.mdp3.sbe.v1.9.endofevent", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
cme_futures_mdp3_sbe_v1_9.fields.event_time = ProtoField.new("Event Time", "cme.futures.mdp3.sbe.v1.9.eventtime", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_9.fields.event_type = ProtoField.new("Event Type", "cme.futures.mdp3.sbe.v1.9.eventtype", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.events_group = ProtoField.new("Events Group", "cme.futures.mdp3.sbe.v1.9.eventsgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.events_groups = ProtoField.new("Events Groups", "cme.futures.mdp3.sbe.v1.9.eventsgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.final_daily = ProtoField.new("Final Daily", "cme.futures.mdp3.sbe.v1.9.finaldaily", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
cme_futures_mdp3_sbe_v1_9.fields.flow_schedule_type = ProtoField.new("Flow Schedule Type", "cme.futures.mdp3.sbe.v1.9.flowscheduletype", ftypes.INT8)
cme_futures_mdp3_sbe_v1_9.fields.group_size = ProtoField.new("Group Size", "cme.futures.mdp3.sbe.v1.9.groupsize", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.group_size_8_byte = ProtoField.new("Group Size 8 Byte", "cme.futures.mdp3.sbe.v1.9.groupsize8byte", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.gt_orders_eligibility = ProtoField.new("Gt Orders Eligibility", "cme.futures.mdp3.sbe.v1.9.gtorderseligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00040000")
cme_futures_mdp3_sbe_v1_9.fields.halt_reason = ProtoField.new("Halt Reason", "cme.futures.mdp3.sbe.v1.9.haltreason", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "cme.futures.mdp3.sbe.v1.9.heartbtint", ftypes.INT8)
cme_futures_mdp3_sbe_v1_9.fields.high_limit_price_pricenul_l_9 = ProtoField.new("High Limit Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.highlimitpricepricenull9", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.high_limit_price_pricenull = ProtoField.new("High Limit Price Pricenull", "cme.futures.mdp3.sbe.v1.9.highlimitpricepricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.i_link_indicative_mass_quoting_eligible = ProtoField.new("I Link Indicative Mass Quoting Eligible", "cme.futures.mdp3.sbe.v1.9.ilinkindicativemassquotingeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000100")
cme_futures_mdp3_sbe_v1_9.fields.implied_matching_eligibility = ProtoField.new("Implied Matching Eligibility", "cme.futures.mdp3.sbe.v1.9.impliedmatchingeligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00080000")
cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_group = ProtoField.new("Inst Attrib Group", "cme.futures.mdp3.sbe.v1.9.instattribgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_groups = ProtoField.new("Inst Attrib Groups", "cme.futures.mdp3.sbe.v1.9.instattribgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "cme.futures.mdp3.sbe.v1.9.instattribvalue", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.intraday = ProtoField.new("Intraday", "cme.futures.mdp3.sbe.v1.9.intraday", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
cme_futures_mdp3_sbe_v1_9.fields.is_fractional = ProtoField.new("Is Fractional", "cme.futures.mdp3.sbe.v1.9.isfractional", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000800")
cme_futures_mdp3_sbe_v1_9.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "cme.futures.mdp3.sbe.v1.9.lastimpliedmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
cme_futures_mdp3_sbe_v1_9.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "cme.futures.mdp3.sbe.v1.9.lastmsgseqnumprocessed", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_9.fields.last_qty = ProtoField.new("Last Qty", "cme.futures.mdp3.sbe.v1.9.lastqty", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "cme.futures.mdp3.sbe.v1.9.lastquotemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
cme_futures_mdp3_sbe_v1_9.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "cme.futures.mdp3.sbe.v1.9.laststatsmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
cme_futures_mdp3_sbe_v1_9.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "cme.futures.mdp3.sbe.v1.9.lasttrademsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
cme_futures_mdp3_sbe_v1_9.fields.last_update_time = ProtoField.new("Last Update Time", "cme.futures.mdp3.sbe.v1.9.lastupdatetime", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_9.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "cme.futures.mdp3.sbe.v1.9.lastvolumemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
cme_futures_mdp3_sbe_v1_9.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "cme.futures.mdp3.sbe.v1.9.legoptiondelta", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.leg_price_pricenul_l_9 = ProtoField.new("Leg Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.legpricepricenull9", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.leg_price_pricenull = ProtoField.new("Leg Price Pricenull", "cme.futures.mdp3.sbe.v1.9.legpricepricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.futures.mdp3.sbe.v1.9.legratioqty", ftypes.INT8)
cme_futures_mdp3_sbe_v1_9.fields.leg_security_id = ProtoField.new("Leg Security Id", "cme.futures.mdp3.sbe.v1.9.legsecurityid", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.leg_side = ProtoField.new("Leg Side", "cme.futures.mdp3.sbe.v1.9.legside", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.lot_type = ProtoField.new("Lot Type", "cme.futures.mdp3.sbe.v1.9.lottype", ftypes.INT8)
cme_futures_mdp3_sbe_v1_9.fields.lot_type_rules_group = ProtoField.new("Lot Type Rules Group", "cme.futures.mdp3.sbe.v1.9.lottyperulesgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.lot_type_rules_groups = ProtoField.new("Lot Type Rules Groups", "cme.futures.mdp3.sbe.v1.9.lottyperulesgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.low_limit_price_pricenul_l_9 = ProtoField.new("Low Limit Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.lowlimitpricepricenull9", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.low_limit_price_pricenull = ProtoField.new("Low Limit Price Pricenull", "cme.futures.mdp3.sbe.v1.9.lowlimitpricepricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.m_d_feed_types_group = ProtoField.new("M D Feed Types Group", "cme.futures.mdp3.sbe.v1.9.mdfeedtypesgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_feed_types_groups = ProtoField.new("M D Feed Types Groups", "cme.futures.mdp3.sbe.v1.9.mdfeedtypesgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_group = ProtoField.new("M D Incremental Refresh Book 32 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_groups = ProtoField.new("M D Incremental Refresh Book 32 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_order_group = ProtoField.new("M D Incremental Refresh Book 32 Order Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32ordergroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_order_groups = ProtoField.new("M D Incremental Refresh Book 32 Order Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32ordergroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_group = ProtoField.new("M D Incremental Refresh Book 46 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_groups = ProtoField.new("M D Incremental Refresh Book 46 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_order_group = ProtoField.new("M D Incremental Refresh Book 46 Order Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46ordergroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_order_groups = ProtoField.new("M D Incremental Refresh Book 46 Order Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46ordergroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_33_group = ProtoField.new("M D Incremental Refresh Daily Statistics 33 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics33group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_33_groups = ProtoField.new("M D Incremental Refresh Daily Statistics 33 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics33groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_49_group = ProtoField.new("M D Incremental Refresh Daily Statistics 49 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics49group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_49_groups = ProtoField.new("M D Incremental Refresh Daily Statistics 49 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics49groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_34_group = ProtoField.new("M D Incremental Refresh Limits Banding 34 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding34group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_34_groups = ProtoField.new("M D Incremental Refresh Limits Banding 34 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding34groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_50_group = ProtoField.new("M D Incremental Refresh Limits Banding 50 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding50group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_50_groups = ProtoField.new("M D Incremental Refresh Limits Banding 50 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding50groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_43_group = ProtoField.new("M D Incremental Refresh Order Book 43 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook43group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_43_groups = ProtoField.new("M D Incremental Refresh Order Book 43 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook43groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_47_group = ProtoField.new("M D Incremental Refresh Order Book 47 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook47group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_47_groups = ProtoField.new("M D Incremental Refresh Order Book 47 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook47groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_35_group = ProtoField.new("M D Incremental Refresh Session Statistics 35 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics35group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_35_groups = ProtoField.new("M D Incremental Refresh Session Statistics 35 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics35groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_51_group = ProtoField.new("M D Incremental Refresh Session Statistics 51 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics51group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_51_groups = ProtoField.new("M D Incremental Refresh Session Statistics 51 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics51groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_group = ProtoField.new("M D Incremental Refresh Trade Summary 42 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_groups = ProtoField.new("M D Incremental Refresh Trade Summary 42 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_order_group = ProtoField.new("M D Incremental Refresh Trade Summary 42 Order Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42ordergroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_order_groups = ProtoField.new("M D Incremental Refresh Trade Summary 42 Order Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42ordergroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_group = ProtoField.new("M D Incremental Refresh Trade Summary 48 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_groups = ProtoField.new("M D Incremental Refresh Trade Summary 48 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_order_group = ProtoField.new("M D Incremental Refresh Trade Summary 48 Order Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48ordergroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_order_groups = ProtoField.new("M D Incremental Refresh Trade Summary 48 Order Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48ordergroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_volume_group = ProtoField.new("M D Incremental Refresh Volume Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshvolumegroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_volume_groups = ProtoField.new("M D Incremental Refresh Volume Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshvolumegroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_29_leg_group = ProtoField.new("M D Instrument Definition Spread 29 Leg Group", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread29leggroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_29_leg_groups = ProtoField.new("M D Instrument Definition Spread 29 Leg Groups", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread29leggroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_56_leg_group = ProtoField.new("M D Instrument Definition Spread 56 Leg Group", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread56leggroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_56_leg_groups = ProtoField.new("M D Instrument Definition Spread 56 Leg Groups", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread56leggroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.main_fraction = ProtoField.new("Main Fraction", "cme.futures.mdp3.sbe.v1.9.mainfraction", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.market_depth = ProtoField.new("Market Depth", "cme.futures.mdp3.sbe.v1.9.marketdepth", ftypes.INT8)
cme_futures_mdp3_sbe_v1_9.fields.market_segment_id = ProtoField.new("Market Segment Id", "cme.futures.mdp3.sbe.v1.9.marketsegmentid", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.match_algorithm = ProtoField.new("Match Algorithm", "cme.futures.mdp3.sbe.v1.9.matchalgorithm", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "cme.futures.mdp3.sbe.v1.9.matcheventindicator", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.mdp3.sbe.v1.9.maturitymonthyear", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.max_price_variation_pricenul_l_9 = ProtoField.new("Max Price Variation Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.maxpricevariationpricenull9", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.max_price_variation_pricenull = ProtoField.new("Max Price Variation Pricenull", "cme.futures.mdp3.sbe.v1.9.maxpricevariationpricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "cme.futures.mdp3.sbe.v1.9.maxtradevol", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_9.fields.md_display_qty = ProtoField.new("Md Display Qty", "cme.futures.mdp3.sbe.v1.9.mddisplayqty", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.md_display_qty_optional = ProtoField.new("Md Display Qty Optional", "cme.futures.mdp3.sbe.v1.9.mddisplayqtyoptional", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.futures.mdp3.sbe.v1.9.mdentrypx", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.md_entry_px_optional = ProtoField.new("Md Entry Px Optional", "cme.futures.mdp3.sbe.v1.9.mdentrypxoptional", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.futures.mdp3.sbe.v1.9.mdentrysize", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.md_entry_size_optional = ProtoField.new("Md Entry Size Optional", "cme.futures.mdp3.sbe.v1.9.mdentrysizeoptional", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_ = ProtoField.new("Md Entry Type ", "cme.futures.mdp3.sbe.v1.9.mdentrytype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_book = ProtoField.new("Md Entry Type Book", "cme.futures.mdp3.sbe.v1.9.mdentrytypebook", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_daily_statistics = ProtoField.new("Md Entry Type Daily Statistics", "cme.futures.mdp3.sbe.v1.9.mdentrytypedailystatistics", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_statistics = ProtoField.new("Md Entry Type Statistics", "cme.futures.mdp3.sbe.v1.9.mdentrytypestatistics", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_feed_type = ProtoField.new("Md Feed Type", "cme.futures.mdp3.sbe.v1.9.mdfeedtype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_book_32 = ProtoField.new("Md Incremental Refresh Book 32", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_book_46 = ProtoField.new("Md Incremental Refresh Book 46", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_daily_statistics_33 = ProtoField.new("Md Incremental Refresh Daily Statistics 33", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics33", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_daily_statistics_49 = ProtoField.new("Md Incremental Refresh Daily Statistics 49", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics49", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_limits_banding_34 = ProtoField.new("Md Incremental Refresh Limits Banding 34", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding34", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_limits_banding_50 = ProtoField.new("Md Incremental Refresh Limits Banding 50", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding50", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_order_book_43 = ProtoField.new("Md Incremental Refresh Order Book 43", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook43", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_order_book_47 = ProtoField.new("Md Incremental Refresh Order Book 47", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook47", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_session_statistics_35 = ProtoField.new("Md Incremental Refresh Session Statistics 35", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics35", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_session_statistics_51 = ProtoField.new("Md Incremental Refresh Session Statistics 51", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics51", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_trade_summary_42 = ProtoField.new("Md Incremental Refresh Trade Summary 42", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_trade_summary_48 = ProtoField.new("Md Incremental Refresh Trade Summary 48", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_volume = ProtoField.new("Md Incremental Refresh Volume", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshvolume", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_future_27 = ProtoField.new("Md Instrument Definition Future 27", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionfuture27", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_future_54 = ProtoField.new("Md Instrument Definition Future 54", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionfuture54", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_option_41 = ProtoField.new("Md Instrument Definition Option 41", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionoption41", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_option_55 = ProtoField.new("Md Instrument Definition Option 55", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionoption55", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_spread_29 = ProtoField.new("Md Instrument Definition Spread 29", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread29", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_spread_56 = ProtoField.new("Md Instrument Definition Spread 56", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread56", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.md_order_priority = ProtoField.new("Md Order Priority", "cme.futures.mdp3.sbe.v1.9.mdorderpriority", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_9.fields.md_price_level = ProtoField.new("Md Price Level", "cme.futures.mdp3.sbe.v1.9.mdpricelevel", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.md_price_level_optional = ProtoField.new("Md Price Level Optional", "cme.futures.mdp3.sbe.v1.9.mdpriceleveloptional", ftypes.INT8)
cme_futures_mdp3_sbe_v1_9.fields.md_security_trading_status = ProtoField.new("Md Security Trading Status", "cme.futures.mdp3.sbe.v1.9.mdsecuritytradingstatus", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.md_trade_entry_id = ProtoField.new("Md Trade Entry Id", "cme.futures.mdp3.sbe.v1.9.mdtradeentryid", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_9.fields.md_update_action = ProtoField.new("Md Update Action", "cme.futures.mdp3.sbe.v1.9.mdupdateaction", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.message = ProtoField.new("Message", "cme.futures.mdp3.sbe.v1.9.message", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.message_header = ProtoField.new("Message Header", "cme.futures.mdp3.sbe.v1.9.messageheader", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.futures.mdp3.sbe.v1.9.messagesequencenumber", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_9.fields.message_size = ProtoField.new("Message Size", "cme.futures.mdp3.sbe.v1.9.messagesize", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_9.fields.min_cab_price_pricenul_l_9 = ProtoField.new("Min Cab Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.mincabpricepricenull9", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.min_cab_price_pricenull = ProtoField.new("Min Cab Price Pricenull", "cme.futures.mdp3.sbe.v1.9.mincabpricepricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.min_lot_size = ProtoField.new("Min Lot Size", "cme.futures.mdp3.sbe.v1.9.minlotsize", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.min_price_increment = ProtoField.new("Min Price Increment", "cme.futures.mdp3.sbe.v1.9.minpriceincrement", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_amount_pricenul_l_9 = ProtoField.new("Min Price Increment Amount Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.minpriceincrementamountpricenull9", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_amount_pricenull = ProtoField.new("Min Price Increment Amount Pricenull", "cme.futures.mdp3.sbe.v1.9.minpriceincrementamountpricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_optional = ProtoField.new("Min Price Increment Optional", "cme.futures.mdp3.sbe.v1.9.minpriceincrementoptional", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_price = ProtoField.new("Min Price Increment Price", "cme.futures.mdp3.sbe.v1.9.minpriceincrementprice", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_pricenull = ProtoField.new("Min Price Increment Pricenull", "cme.futures.mdp3.sbe.v1.9.minpriceincrementpricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "cme.futures.mdp3.sbe.v1.9.mintradevol", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_9.fields.month = ProtoField.new("Month", "cme.futures.mdp3.sbe.v1.9.month", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.negative_price_outright_eligible = ProtoField.new("Negative Price Outright Eligible", "cme.futures.mdp3.sbe.v1.9.negativepriceoutrighteligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000400")
cme_futures_mdp3_sbe_v1_9.fields.negative_strike_eligible = ProtoField.new("Negative Strike Eligible", "cme.futures.mdp3.sbe.v1.9.negativestrikeeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000200")
cme_futures_mdp3_sbe_v1_9.fields.no_chunks = ProtoField.new("No Chunks", "cme.futures.mdp3.sbe.v1.9.nochunks", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_9.fields.null_value = ProtoField.new("Null Value", "cme.futures.mdp3.sbe.v1.9.nullvalue", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
cme_futures_mdp3_sbe_v1_9.fields.num_in_group = ProtoField.new("Num In Group", "cme.futures.mdp3.sbe.v1.9.numingroup", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.number_of_orders = ProtoField.new("Number Of Orders", "cme.futures.mdp3.sbe.v1.9.numberoforders", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.number_of_orders_optional = ProtoField.new("Number Of Orders Optional", "cme.futures.mdp3.sbe.v1.9.numberofordersoptional", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.futures.mdp3.sbe.v1.9.openclosesettlflag", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.open_interest_qty = ProtoField.new("Open Interest Qty", "cme.futures.mdp3.sbe.v1.9.openinterestqty", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.order_cross_eligible = ProtoField.new("Order Cross Eligible", "cme.futures.mdp3.sbe.v1.9.ordercrosseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000002")
cme_futures_mdp3_sbe_v1_9.fields.order_id = ProtoField.new("Order Id", "cme.futures.mdp3.sbe.v1.9.orderid", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_9.fields.order_id_optional = ProtoField.new("Order Id Optional", "cme.futures.mdp3.sbe.v1.9.orderidoptional", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_9.fields.order_qty = ProtoField.new("Order Qty", "cme.futures.mdp3.sbe.v1.9.orderqty", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.order_update_action = ProtoField.new("Order Update Action", "cme.futures.mdp3.sbe.v1.9.orderupdateaction", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.original_contract_size = ProtoField.new("Original Contract Size", "cme.futures.mdp3.sbe.v1.9.originalcontractsize", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.otc_eligible = ProtoField.new("Otc Eligible", "cme.futures.mdp3.sbe.v1.9.otceligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00000080")
cme_futures_mdp3_sbe_v1_9.fields.packet = ProtoField.new("Packet", "cme.futures.mdp3.sbe.v1.9.packet", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.padding_1 = ProtoField.new("Padding 1", "cme.futures.mdp3.sbe.v1.9.padding1", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_9.fields.padding_2 = ProtoField.new("Padding 2", "cme.futures.mdp3.sbe.v1.9.padding2", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_9.fields.padding_3 = ProtoField.new("Padding 3", "cme.futures.mdp3.sbe.v1.9.padding3", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_9.fields.padding_4 = ProtoField.new("Padding 4", "cme.futures.mdp3.sbe.v1.9.padding4", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_9.fields.padding_5 = ProtoField.new("Padding 5", "cme.futures.mdp3.sbe.v1.9.padding5", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_9.fields.padding_6 = ProtoField.new("Padding 6", "cme.futures.mdp3.sbe.v1.9.padding6", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_9.fields.padding_7 = ProtoField.new("Padding 7", "cme.futures.mdp3.sbe.v1.9.padding7", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_9.fields.payload = ProtoField.new("Payload", "cme.futures.mdp3.sbe.v1.9.payload", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.price_display_format = ProtoField.new("Price Display Format", "cme.futures.mdp3.sbe.v1.9.pricedisplayformat", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.price_ratio_pricenul_l_9 = ProtoField.new("Price Ratio Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.priceratiopricenull9", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.price_ratio_pricenull = ProtoField.new("Price Ratio Pricenull", "cme.futures.mdp3.sbe.v1.9.priceratiopricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.put_or_call = ProtoField.new("Put Or Call", "cme.futures.mdp3.sbe.v1.9.putorcall", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.futures.mdp3.sbe.v1.9.quotereqid", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.quote_request = ProtoField.new("Quote Request", "cme.futures.mdp3.sbe.v1.9.quoterequest", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.quote_type = ProtoField.new("Quote Type", "cme.futures.mdp3.sbe.v1.9.quotetype", ftypes.INT8)
cme_futures_mdp3_sbe_v1_9.fields.recovery_msg = ProtoField.new("Recovery Msg", "cme.futures.mdp3.sbe.v1.9.recoverymsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
cme_futures_mdp3_sbe_v1_9.fields.reference_id = ProtoField.new("Reference Id", "cme.futures.mdp3.sbe.v1.9.referenceid", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.related_instruments_group = ProtoField.new("Related Instruments Group", "cme.futures.mdp3.sbe.v1.9.relatedinstrumentsgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.related_instruments_groups = ProtoField.new("Related Instruments Groups", "cme.futures.mdp3.sbe.v1.9.relatedinstrumentsgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.related_security_id = ProtoField.new("Related Security Id", "cme.futures.mdp3.sbe.v1.9.relatedsecurityid", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.futures.mdp3.sbe.v1.9.relatedsymgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.futures.mdp3.sbe.v1.9.relatedsymgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.related_symbol = ProtoField.new("Related Symbol", "cme.futures.mdp3.sbe.v1.9.relatedsymbol", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.reserved = ProtoField.new("Reserved", "cme.futures.mdp3.sbe.v1.9.reserved", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
cme_futures_mdp3_sbe_v1_9.fields.reserved_10 = ProtoField.new("Reserved 10", "cme.futures.mdp3.sbe.v1.9.reserved10", ftypes.UINT32, nil, base.DEC, "0xFFC00000")
cme_futures_mdp3_sbe_v1_9.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.futures.mdp3.sbe.v1.9.reservedbits", ftypes.UINT8, nil, base.DEC, "0x70")
cme_futures_mdp3_sbe_v1_9.fields.rfq_cross_eligible = ProtoField.new("Rfq Cross Eligible", "cme.futures.mdp3.sbe.v1.9.rfqcrosseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00002000")
cme_futures_mdp3_sbe_v1_9.fields.rounded = ProtoField.new("Rounded", "cme.futures.mdp3.sbe.v1.9.rounded", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
cme_futures_mdp3_sbe_v1_9.fields.rpt_seq = ProtoField.new("Rpt Seq", "cme.futures.mdp3.sbe.v1.9.rptseq", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_9.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.mdp3.sbe.v1.9.schemaid", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_9.fields.security_exchange = ProtoField.new("Security Exchange", "cme.futures.mdp3.sbe.v1.9.securityexchange", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.security_group = ProtoField.new("Security Group", "cme.futures.mdp3.sbe.v1.9.securitygroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.security_id = ProtoField.new("Security Id", "cme.futures.mdp3.sbe.v1.9.securityid", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.security_id_optional = ProtoField.new("Security Id Optional", "cme.futures.mdp3.sbe.v1.9.securityidoptional", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.security_status = ProtoField.new("Security Status", "cme.futures.mdp3.sbe.v1.9.securitystatus", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.futures.mdp3.sbe.v1.9.securitysubtype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.security_trading_event = ProtoField.new("Security Trading Event", "cme.futures.mdp3.sbe.v1.9.securitytradingevent", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.security_trading_status = ProtoField.new("Security Trading Status", "cme.futures.mdp3.sbe.v1.9.securitytradingstatus", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.security_type = ProtoField.new("Security Type", "cme.futures.mdp3.sbe.v1.9.securitytype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.security_update_action = ProtoField.new("Security Update Action", "cme.futures.mdp3.sbe.v1.9.securityupdateaction", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.sending_time = ProtoField.new("Sending Time", "cme.futures.mdp3.sbe.v1.9.sendingtime", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_9.fields.settl_currency = ProtoField.new("Settl Currency", "cme.futures.mdp3.sbe.v1.9.settlcurrency", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.futures.mdp3.sbe.v1.9.settlpricetype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.side = ProtoField.new("Side", "cme.futures.mdp3.sbe.v1.9.side", ftypes.INT8)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38 = ProtoField.new("Snapshot Full Refresh 38", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh38", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38_group = ProtoField.new("Snapshot Full Refresh 38 Group", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh38group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38_groups = ProtoField.new("Snapshot Full Refresh 38 Groups", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh38groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52 = ProtoField.new("Snapshot Full Refresh 52", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh52", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52_group = ProtoField.new("Snapshot Full Refresh 52 Group", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh52group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52_groups = ProtoField.new("Snapshot Full Refresh 52 Groups", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh52groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44 = ProtoField.new("Snapshot Full Refresh Order Book 44", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook44", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44_group = ProtoField.new("Snapshot Full Refresh Order Book 44 Group", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook44group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44_groups = ProtoField.new("Snapshot Full Refresh Order Book 44 Groups", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook44groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53 = ProtoField.new("Snapshot Full Refresh Order Book 53", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook53", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53_group = ProtoField.new("Snapshot Full Refresh Order Book 53 Group", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook53group", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53_groups = ProtoField.new("Snapshot Full Refresh Order Book 53 Groups", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook53groups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.strike_currency = ProtoField.new("Strike Currency", "cme.futures.mdp3.sbe.v1.9.strikecurrency", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.strike_price_pricenul_l_9 = ProtoField.new("Strike Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.strikepricepricenull9", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.strike_price_pricenull = ProtoField.new("Strike Price Pricenull", "cme.futures.mdp3.sbe.v1.9.strikepricepricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.sub_fraction = ProtoField.new("Sub Fraction", "cme.futures.mdp3.sbe.v1.9.subfraction", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.symbol = ProtoField.new("Symbol", "cme.futures.mdp3.sbe.v1.9.symbol", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.template_id = ProtoField.new("Template Id", "cme.futures.mdp3.sbe.v1.9.templateid", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_9.fields.text = ProtoField.new("Text", "cme.futures.mdp3.sbe.v1.9.text", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.tick_rule = ProtoField.new("Tick Rule", "cme.futures.mdp3.sbe.v1.9.tickrule", ftypes.INT8)
cme_futures_mdp3_sbe_v1_9.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "cme.futures.mdp3.sbe.v1.9.totnumreports", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_9.fields.tot_num_reports_optional = ProtoField.new("Tot Num Reports Optional", "cme.futures.mdp3.sbe.v1.9.totnumreportsoptional", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_9.fields.trade_date = ProtoField.new("Trade Date", "cme.futures.mdp3.sbe.v1.9.tradedate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_9.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.futures.mdp3.sbe.v1.9.tradingreferencedate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_9.fields.trading_reference_price_pricenul_l_9 = ProtoField.new("Trading Reference Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.tradingreferencepricepricenull9", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.trading_reference_price_pricenull = ProtoField.new("Trading Reference Price Pricenull", "cme.futures.mdp3.sbe.v1.9.tradingreferencepricepricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.mdp3.sbe.v1.9.transacttime", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_9.fields.triangulation_eligible = ProtoField.new("Triangulation Eligible", "cme.futures.mdp3.sbe.v1.9.triangulationeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00100000")
cme_futures_mdp3_sbe_v1_9.fields.underlying_product = ProtoField.new("Underlying Product", "cme.futures.mdp3.sbe.v1.9.underlyingproduct", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.underlying_product_optional = ProtoField.new("Underlying Product Optional", "cme.futures.mdp3.sbe.v1.9.underlyingproductoptional", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "cme.futures.mdp3.sbe.v1.9.underlyingsecurityid", ftypes.INT32)
cme_futures_mdp3_sbe_v1_9.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "cme.futures.mdp3.sbe.v1.9.underlyingsymbol", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.underlyings_group = ProtoField.new("Underlyings Group", "cme.futures.mdp3.sbe.v1.9.underlyingsgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.underlyings_groups = ProtoField.new("Underlyings Groups", "cme.futures.mdp3.sbe.v1.9.underlyingsgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "cme.futures.mdp3.sbe.v1.9.unitofmeasure", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure_qty_decimal_9_null = ProtoField.new("Unit Of Measure Qty Decimal 9 Null", "cme.futures.mdp3.sbe.v1.9.unitofmeasureqtydecimal9null", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure_qty_pricenull = ProtoField.new("Unit Of Measure Qty Pricenull", "cme.futures.mdp3.sbe.v1.9.unitofmeasureqtypricenull", ftypes.INT64)
cme_futures_mdp3_sbe_v1_9.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "cme.futures.mdp3.sbe.v1.9.userdefinedinstrument", ftypes.STRING)
cme_futures_mdp3_sbe_v1_9.fields.variable_cab_eligible = ProtoField.new("Variable Cab Eligible", "cme.futures.mdp3.sbe.v1.9.variablecabeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00200000")
cme_futures_mdp3_sbe_v1_9.fields.variable_product_eligibility = ProtoField.new("Variable Product Eligibility", "cme.futures.mdp3.sbe.v1.9.variableproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00010000")
cme_futures_mdp3_sbe_v1_9.fields.version = ProtoField.new("Version", "cme.futures.mdp3.sbe.v1.9.version", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_9.fields.volatility_quoted_option = ProtoField.new("Volatility Quoted Option", "cme.futures.mdp3.sbe.v1.9.volatilityquotedoption", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00001000")
cme_futures_mdp3_sbe_v1_9.fields.week = ProtoField.new("Week", "cme.futures.mdp3.sbe.v1.9.week", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_9.fields.year = ProtoField.new("Year", "cme.futures.mdp3.sbe.v1.9.year", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_9.fields.zero_price_outright_eligible = ProtoField.new("Zero Price Outright Eligible", "cme.futures.mdp3.sbe.v1.9.zeropriceoutrighteligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, "0x00004000")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cme Futures Mdp3 Sbe 1.9 Element Dissection Options
show.admin_login = true
show.admin_logout = true
show.binary_packet_header = true
show.channel_reset = true
show.channel_reset_group = true
show.channel_reset_groups = true
show.events_group = true
show.events_groups = true
show.group_size = true
show.group_size_8_byte = true
show.inst_attrib_group = true
show.inst_attrib_groups = true
show.inst_attrib_value = true
show.lot_type_rules_group = true
show.lot_type_rules_groups = true
show.m_d_feed_types_group = true
show.m_d_feed_types_groups = true
show.m_d_incremental_refresh_book_32_group = true
show.m_d_incremental_refresh_book_32_groups = true
show.m_d_incremental_refresh_book_32_order_group = true
show.m_d_incremental_refresh_book_32_order_groups = true
show.m_d_incremental_refresh_book_46_group = true
show.m_d_incremental_refresh_book_46_groups = true
show.m_d_incremental_refresh_book_46_order_group = true
show.m_d_incremental_refresh_book_46_order_groups = true
show.m_d_incremental_refresh_daily_statistics_33_group = true
show.m_d_incremental_refresh_daily_statistics_33_groups = true
show.m_d_incremental_refresh_daily_statistics_49_group = true
show.m_d_incremental_refresh_daily_statistics_49_groups = true
show.m_d_incremental_refresh_limits_banding_34_group = true
show.m_d_incremental_refresh_limits_banding_34_groups = true
show.m_d_incremental_refresh_limits_banding_50_group = true
show.m_d_incremental_refresh_limits_banding_50_groups = true
show.m_d_incremental_refresh_order_book_43_group = true
show.m_d_incremental_refresh_order_book_43_groups = true
show.m_d_incremental_refresh_order_book_47_group = true
show.m_d_incremental_refresh_order_book_47_groups = true
show.m_d_incremental_refresh_session_statistics_35_group = true
show.m_d_incremental_refresh_session_statistics_35_groups = true
show.m_d_incremental_refresh_session_statistics_51_group = true
show.m_d_incremental_refresh_session_statistics_51_groups = true
show.m_d_incremental_refresh_trade_summary_42_group = true
show.m_d_incremental_refresh_trade_summary_42_groups = true
show.m_d_incremental_refresh_trade_summary_42_order_group = true
show.m_d_incremental_refresh_trade_summary_42_order_groups = true
show.m_d_incremental_refresh_trade_summary_48_group = true
show.m_d_incremental_refresh_trade_summary_48_groups = true
show.m_d_incremental_refresh_trade_summary_48_order_group = true
show.m_d_incremental_refresh_trade_summary_48_order_groups = true
show.m_d_incremental_refresh_volume_group = true
show.m_d_incremental_refresh_volume_groups = true
show.m_d_instrument_definition_spread_29_leg_group = true
show.m_d_instrument_definition_spread_29_leg_groups = true
show.m_d_instrument_definition_spread_56_leg_group = true
show.m_d_instrument_definition_spread_56_leg_groups = true
show.match_event_indicator = true
show.maturity_month_year = true
show.md_incremental_refresh_book_32 = true
show.md_incremental_refresh_book_46 = true
show.md_incremental_refresh_daily_statistics_33 = true
show.md_incremental_refresh_daily_statistics_49 = true
show.md_incremental_refresh_limits_banding_34 = true
show.md_incremental_refresh_limits_banding_50 = true
show.md_incremental_refresh_order_book_43 = true
show.md_incremental_refresh_order_book_47 = true
show.md_incremental_refresh_session_statistics_35 = true
show.md_incremental_refresh_session_statistics_51 = true
show.md_incremental_refresh_trade_summary_42 = true
show.md_incremental_refresh_trade_summary_48 = true
show.md_incremental_refresh_volume = true
show.md_instrument_definition_future_27 = true
show.md_instrument_definition_future_54 = true
show.md_instrument_definition_option_41 = true
show.md_instrument_definition_option_55 = true
show.md_instrument_definition_spread_29 = true
show.md_instrument_definition_spread_56 = true
show.message = true
show.message_header = true
show.packet = true
show.quote_request = true
show.related_instruments_group = true
show.related_instruments_groups = true
show.related_sym_group = true
show.related_sym_groups = true
show.security_status = true
show.settl_price_type = true
show.snapshot_full_refresh_38 = true
show.snapshot_full_refresh_38_group = true
show.snapshot_full_refresh_38_groups = true
show.snapshot_full_refresh_52 = true
show.snapshot_full_refresh_52_group = true
show.snapshot_full_refresh_52_groups = true
show.snapshot_full_refresh_order_book_44 = true
show.snapshot_full_refresh_order_book_44_group = true
show.snapshot_full_refresh_order_book_44_groups = true
show.snapshot_full_refresh_order_book_53 = true
show.snapshot_full_refresh_order_book_53_group = true
show.snapshot_full_refresh_order_book_53_groups = true
show.underlyings_group = true
show.underlyings_groups = true
show.payload = false

-- Register Cme Futures Mdp3 Sbe 1.9 Show Options
cme_futures_mdp3_sbe_v1_9.prefs.show_admin_login = Pref.bool("Show Admin Login", show.admin_login, "Parse and add Admin Login to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_admin_logout = Pref.bool("Show Admin Logout", show.admin_logout, "Parse and add Admin Logout to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset = Pref.bool("Show Channel Reset", show.channel_reset, "Parse and add Channel Reset to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_group = Pref.bool("Show Channel Reset Group", show.channel_reset_group, "Parse and add Channel Reset Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_groups = Pref.bool("Show Channel Reset Groups", show.channel_reset_groups, "Parse and add Channel Reset Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_events_group = Pref.bool("Show Events Group", show.events_group, "Parse and add Events Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_events_groups = Pref.bool("Show Events Groups", show.events_groups, "Parse and add Events Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_group_size_8_byte = Pref.bool("Show Group Size 8 Byte", show.group_size_8_byte, "Parse and add Group Size 8 Byte to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_group = Pref.bool("Show Inst Attrib Group", show.inst_attrib_group, "Parse and add Inst Attrib Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_groups = Pref.bool("Show Inst Attrib Groups", show.inst_attrib_groups, "Parse and add Inst Attrib Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_value = Pref.bool("Show Inst Attrib Value", show.inst_attrib_value, "Parse and add Inst Attrib Value to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_group = Pref.bool("Show Lot Type Rules Group", show.lot_type_rules_group, "Parse and add Lot Type Rules Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_groups = Pref.bool("Show Lot Type Rules Groups", show.lot_type_rules_groups, "Parse and add Lot Type Rules Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_group = Pref.bool("Show M D Feed Types Group", show.m_d_feed_types_group, "Parse and add M D Feed Types Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_groups = Pref.bool("Show M D Feed Types Groups", show.m_d_feed_types_groups, "Parse and add M D Feed Types Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_group = Pref.bool("Show M D Incremental Refresh Book 32 Group", show.m_d_incremental_refresh_book_32_group, "Parse and add M D Incremental Refresh Book 32 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_groups = Pref.bool("Show M D Incremental Refresh Book 32 Groups", show.m_d_incremental_refresh_book_32_groups, "Parse and add M D Incremental Refresh Book 32 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_group = Pref.bool("Show M D Incremental Refresh Book 32 Order Group", show.m_d_incremental_refresh_book_32_order_group, "Parse and add M D Incremental Refresh Book 32 Order Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_groups = Pref.bool("Show M D Incremental Refresh Book 32 Order Groups", show.m_d_incremental_refresh_book_32_order_groups, "Parse and add M D Incremental Refresh Book 32 Order Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_group = Pref.bool("Show M D Incremental Refresh Book 46 Group", show.m_d_incremental_refresh_book_46_group, "Parse and add M D Incremental Refresh Book 46 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_groups = Pref.bool("Show M D Incremental Refresh Book 46 Groups", show.m_d_incremental_refresh_book_46_groups, "Parse and add M D Incremental Refresh Book 46 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_group = Pref.bool("Show M D Incremental Refresh Book 46 Order Group", show.m_d_incremental_refresh_book_46_order_group, "Parse and add M D Incremental Refresh Book 46 Order Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_groups = Pref.bool("Show M D Incremental Refresh Book 46 Order Groups", show.m_d_incremental_refresh_book_46_order_groups, "Parse and add M D Incremental Refresh Book 46 Order Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_group = Pref.bool("Show M D Incremental Refresh Daily Statistics 33 Group", show.m_d_incremental_refresh_daily_statistics_33_group, "Parse and add M D Incremental Refresh Daily Statistics 33 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_groups = Pref.bool("Show M D Incremental Refresh Daily Statistics 33 Groups", show.m_d_incremental_refresh_daily_statistics_33_groups, "Parse and add M D Incremental Refresh Daily Statistics 33 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_group = Pref.bool("Show M D Incremental Refresh Daily Statistics 49 Group", show.m_d_incremental_refresh_daily_statistics_49_group, "Parse and add M D Incremental Refresh Daily Statistics 49 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_groups = Pref.bool("Show M D Incremental Refresh Daily Statistics 49 Groups", show.m_d_incremental_refresh_daily_statistics_49_groups, "Parse and add M D Incremental Refresh Daily Statistics 49 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_group = Pref.bool("Show M D Incremental Refresh Limits Banding 34 Group", show.m_d_incremental_refresh_limits_banding_34_group, "Parse and add M D Incremental Refresh Limits Banding 34 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_groups = Pref.bool("Show M D Incremental Refresh Limits Banding 34 Groups", show.m_d_incremental_refresh_limits_banding_34_groups, "Parse and add M D Incremental Refresh Limits Banding 34 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_group = Pref.bool("Show M D Incremental Refresh Limits Banding 50 Group", show.m_d_incremental_refresh_limits_banding_50_group, "Parse and add M D Incremental Refresh Limits Banding 50 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_groups = Pref.bool("Show M D Incremental Refresh Limits Banding 50 Groups", show.m_d_incremental_refresh_limits_banding_50_groups, "Parse and add M D Incremental Refresh Limits Banding 50 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_group = Pref.bool("Show M D Incremental Refresh Order Book 43 Group", show.m_d_incremental_refresh_order_book_43_group, "Parse and add M D Incremental Refresh Order Book 43 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_groups = Pref.bool("Show M D Incremental Refresh Order Book 43 Groups", show.m_d_incremental_refresh_order_book_43_groups, "Parse and add M D Incremental Refresh Order Book 43 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_group = Pref.bool("Show M D Incremental Refresh Order Book 47 Group", show.m_d_incremental_refresh_order_book_47_group, "Parse and add M D Incremental Refresh Order Book 47 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_groups = Pref.bool("Show M D Incremental Refresh Order Book 47 Groups", show.m_d_incremental_refresh_order_book_47_groups, "Parse and add M D Incremental Refresh Order Book 47 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_group = Pref.bool("Show M D Incremental Refresh Session Statistics 35 Group", show.m_d_incremental_refresh_session_statistics_35_group, "Parse and add M D Incremental Refresh Session Statistics 35 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_groups = Pref.bool("Show M D Incremental Refresh Session Statistics 35 Groups", show.m_d_incremental_refresh_session_statistics_35_groups, "Parse and add M D Incremental Refresh Session Statistics 35 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_group = Pref.bool("Show M D Incremental Refresh Session Statistics 51 Group", show.m_d_incremental_refresh_session_statistics_51_group, "Parse and add M D Incremental Refresh Session Statistics 51 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_groups = Pref.bool("Show M D Incremental Refresh Session Statistics 51 Groups", show.m_d_incremental_refresh_session_statistics_51_groups, "Parse and add M D Incremental Refresh Session Statistics 51 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_group = Pref.bool("Show M D Incremental Refresh Trade Summary 42 Group", show.m_d_incremental_refresh_trade_summary_42_group, "Parse and add M D Incremental Refresh Trade Summary 42 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_groups = Pref.bool("Show M D Incremental Refresh Trade Summary 42 Groups", show.m_d_incremental_refresh_trade_summary_42_groups, "Parse and add M D Incremental Refresh Trade Summary 42 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_group = Pref.bool("Show M D Incremental Refresh Trade Summary 42 Order Group", show.m_d_incremental_refresh_trade_summary_42_order_group, "Parse and add M D Incremental Refresh Trade Summary 42 Order Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_groups = Pref.bool("Show M D Incremental Refresh Trade Summary 42 Order Groups", show.m_d_incremental_refresh_trade_summary_42_order_groups, "Parse and add M D Incremental Refresh Trade Summary 42 Order Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_group = Pref.bool("Show M D Incremental Refresh Trade Summary 48 Group", show.m_d_incremental_refresh_trade_summary_48_group, "Parse and add M D Incremental Refresh Trade Summary 48 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_groups = Pref.bool("Show M D Incremental Refresh Trade Summary 48 Groups", show.m_d_incremental_refresh_trade_summary_48_groups, "Parse and add M D Incremental Refresh Trade Summary 48 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_group = Pref.bool("Show M D Incremental Refresh Trade Summary 48 Order Group", show.m_d_incremental_refresh_trade_summary_48_order_group, "Parse and add M D Incremental Refresh Trade Summary 48 Order Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_groups = Pref.bool("Show M D Incremental Refresh Trade Summary 48 Order Groups", show.m_d_incremental_refresh_trade_summary_48_order_groups, "Parse and add M D Incremental Refresh Trade Summary 48 Order Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_group = Pref.bool("Show M D Incremental Refresh Volume Group", show.m_d_incremental_refresh_volume_group, "Parse and add M D Incremental Refresh Volume Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_groups = Pref.bool("Show M D Incremental Refresh Volume Groups", show.m_d_incremental_refresh_volume_groups, "Parse and add M D Incremental Refresh Volume Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_group = Pref.bool("Show M D Instrument Definition Spread 29 Leg Group", show.m_d_instrument_definition_spread_29_leg_group, "Parse and add M D Instrument Definition Spread 29 Leg Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_groups = Pref.bool("Show M D Instrument Definition Spread 29 Leg Groups", show.m_d_instrument_definition_spread_29_leg_groups, "Parse and add M D Instrument Definition Spread 29 Leg Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_group = Pref.bool("Show M D Instrument Definition Spread 56 Leg Group", show.m_d_instrument_definition_spread_56_leg_group, "Parse and add M D Instrument Definition Spread 56 Leg Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_groups = Pref.bool("Show M D Instrument Definition Spread 56 Leg Groups", show.m_d_instrument_definition_spread_56_leg_groups, "Parse and add M D Instrument Definition Spread 56 Leg Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_match_event_indicator = Pref.bool("Show Match Event Indicator", show.match_event_indicator, "Parse and add Match Event Indicator to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book_32 = Pref.bool("Show Md Incremental Refresh Book 32", show.md_incremental_refresh_book_32, "Parse and add Md Incremental Refresh Book 32 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book_46 = Pref.bool("Show Md Incremental Refresh Book 46", show.md_incremental_refresh_book_46, "Parse and add Md Incremental Refresh Book 46 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics_33 = Pref.bool("Show Md Incremental Refresh Daily Statistics 33", show.md_incremental_refresh_daily_statistics_33, "Parse and add Md Incremental Refresh Daily Statistics 33 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics_49 = Pref.bool("Show Md Incremental Refresh Daily Statistics 49", show.md_incremental_refresh_daily_statistics_49, "Parse and add Md Incremental Refresh Daily Statistics 49 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding_34 = Pref.bool("Show Md Incremental Refresh Limits Banding 34", show.md_incremental_refresh_limits_banding_34, "Parse and add Md Incremental Refresh Limits Banding 34 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding_50 = Pref.bool("Show Md Incremental Refresh Limits Banding 50", show.md_incremental_refresh_limits_banding_50, "Parse and add Md Incremental Refresh Limits Banding 50 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book_43 = Pref.bool("Show Md Incremental Refresh Order Book 43", show.md_incremental_refresh_order_book_43, "Parse and add Md Incremental Refresh Order Book 43 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book_47 = Pref.bool("Show Md Incremental Refresh Order Book 47", show.md_incremental_refresh_order_book_47, "Parse and add Md Incremental Refresh Order Book 47 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics_35 = Pref.bool("Show Md Incremental Refresh Session Statistics 35", show.md_incremental_refresh_session_statistics_35, "Parse and add Md Incremental Refresh Session Statistics 35 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics_51 = Pref.bool("Show Md Incremental Refresh Session Statistics 51", show.md_incremental_refresh_session_statistics_51, "Parse and add Md Incremental Refresh Session Statistics 51 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary_42 = Pref.bool("Show Md Incremental Refresh Trade Summary 42", show.md_incremental_refresh_trade_summary_42, "Parse and add Md Incremental Refresh Trade Summary 42 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary_48 = Pref.bool("Show Md Incremental Refresh Trade Summary 48", show.md_incremental_refresh_trade_summary_48, "Parse and add Md Incremental Refresh Trade Summary 48 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_volume = Pref.bool("Show Md Incremental Refresh Volume", show.md_incremental_refresh_volume, "Parse and add Md Incremental Refresh Volume to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future_27 = Pref.bool("Show Md Instrument Definition Future 27", show.md_instrument_definition_future_27, "Parse and add Md Instrument Definition Future 27 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future_54 = Pref.bool("Show Md Instrument Definition Future 54", show.md_instrument_definition_future_54, "Parse and add Md Instrument Definition Future 54 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option_41 = Pref.bool("Show Md Instrument Definition Option 41", show.md_instrument_definition_option_41, "Parse and add Md Instrument Definition Option 41 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option_55 = Pref.bool("Show Md Instrument Definition Option 55", show.md_instrument_definition_option_55, "Parse and add Md Instrument Definition Option 55 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread_29 = Pref.bool("Show Md Instrument Definition Spread 29", show.md_instrument_definition_spread_29, "Parse and add Md Instrument Definition Spread 29 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread_56 = Pref.bool("Show Md Instrument Definition Spread 56", show.md_instrument_definition_spread_56, "Parse and add Md Instrument Definition Spread 56 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_group = Pref.bool("Show Related Instruments Group", show.related_instruments_group, "Parse and add Related Instruments Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_groups = Pref.bool("Show Related Instruments Groups", show.related_instruments_groups, "Parse and add Related Instruments Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_security_status = Pref.bool("Show Security Status", show.security_status, "Parse and add Security Status to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_settl_price_type = Pref.bool("Show Settl Price Type", show.settl_price_type, "Parse and add Settl Price Type to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38 = Pref.bool("Show Snapshot Full Refresh 38", show.snapshot_full_refresh_38, "Parse and add Snapshot Full Refresh 38 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_group = Pref.bool("Show Snapshot Full Refresh 38 Group", show.snapshot_full_refresh_38_group, "Parse and add Snapshot Full Refresh 38 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_groups = Pref.bool("Show Snapshot Full Refresh 38 Groups", show.snapshot_full_refresh_38_groups, "Parse and add Snapshot Full Refresh 38 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52 = Pref.bool("Show Snapshot Full Refresh 52", show.snapshot_full_refresh_52, "Parse and add Snapshot Full Refresh 52 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_group = Pref.bool("Show Snapshot Full Refresh 52 Group", show.snapshot_full_refresh_52_group, "Parse and add Snapshot Full Refresh 52 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_groups = Pref.bool("Show Snapshot Full Refresh 52 Groups", show.snapshot_full_refresh_52_groups, "Parse and add Snapshot Full Refresh 52 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44 = Pref.bool("Show Snapshot Full Refresh Order Book 44", show.snapshot_full_refresh_order_book_44, "Parse and add Snapshot Full Refresh Order Book 44 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_group = Pref.bool("Show Snapshot Full Refresh Order Book 44 Group", show.snapshot_full_refresh_order_book_44_group, "Parse and add Snapshot Full Refresh Order Book 44 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_groups = Pref.bool("Show Snapshot Full Refresh Order Book 44 Groups", show.snapshot_full_refresh_order_book_44_groups, "Parse and add Snapshot Full Refresh Order Book 44 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53 = Pref.bool("Show Snapshot Full Refresh Order Book 53", show.snapshot_full_refresh_order_book_53, "Parse and add Snapshot Full Refresh Order Book 53 to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_group = Pref.bool("Show Snapshot Full Refresh Order Book 53 Group", show.snapshot_full_refresh_order_book_53_group, "Parse and add Snapshot Full Refresh Order Book 53 Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_groups = Pref.bool("Show Snapshot Full Refresh Order Book 53 Groups", show.snapshot_full_refresh_order_book_53_groups, "Parse and add Snapshot Full Refresh Order Book 53 Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_group = Pref.bool("Show Underlyings Group", show.underlyings_group, "Parse and add Underlyings Group to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_groups = Pref.bool("Show Underlyings Groups", show.underlyings_groups, "Parse and add Underlyings Groups to protocol tree")
cme_futures_mdp3_sbe_v1_9.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cme_futures_mdp3_sbe_v1_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.admin_login ~= cme_futures_mdp3_sbe_v1_9.prefs.show_admin_login then
    show.admin_login = cme_futures_mdp3_sbe_v1_9.prefs.show_admin_login
    changed = true
  end
  if show.admin_logout ~= cme_futures_mdp3_sbe_v1_9.prefs.show_admin_logout then
    show.admin_logout = cme_futures_mdp3_sbe_v1_9.prefs.show_admin_logout
    changed = true
  end
  if show.binary_packet_header ~= cme_futures_mdp3_sbe_v1_9.prefs.show_binary_packet_header then
    show.binary_packet_header = cme_futures_mdp3_sbe_v1_9.prefs.show_binary_packet_header
    changed = true
  end
  if show.channel_reset ~= cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset then
    show.channel_reset = cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset
    changed = true
  end
  if show.channel_reset_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_group then
    show.channel_reset_group = cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_group
    changed = true
  end
  if show.channel_reset_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_groups then
    show.channel_reset_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_groups
    changed = true
  end
  if show.events_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_events_group then
    show.events_group = cme_futures_mdp3_sbe_v1_9.prefs.show_events_group
    changed = true
  end
  if show.events_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_events_groups then
    show.events_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_events_groups
    changed = true
  end
  if show.group_size ~= cme_futures_mdp3_sbe_v1_9.prefs.show_group_size then
    show.group_size = cme_futures_mdp3_sbe_v1_9.prefs.show_group_size
    changed = true
  end
  if show.group_size_8_byte ~= cme_futures_mdp3_sbe_v1_9.prefs.show_group_size_8_byte then
    show.group_size_8_byte = cme_futures_mdp3_sbe_v1_9.prefs.show_group_size_8_byte
    changed = true
  end
  if show.inst_attrib_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_group then
    show.inst_attrib_group = cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_group
    changed = true
  end
  if show.inst_attrib_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_groups then
    show.inst_attrib_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_groups
    changed = true
  end
  if show.inst_attrib_value ~= cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_value then
    show.inst_attrib_value = cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_value
    changed = true
  end
  if show.lot_type_rules_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_group then
    show.lot_type_rules_group = cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_group
    changed = true
  end
  if show.lot_type_rules_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_groups then
    show.lot_type_rules_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_groups
    changed = true
  end
  if show.m_d_feed_types_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_group then
    show.m_d_feed_types_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_group
    changed = true
  end
  if show.m_d_feed_types_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_groups then
    show.m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_32_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_group then
    show.m_d_incremental_refresh_book_32_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_32_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_groups then
    show.m_d_incremental_refresh_book_32_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_32_order_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_group then
    show.m_d_incremental_refresh_book_32_order_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_32_order_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_groups then
    show.m_d_incremental_refresh_book_32_order_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_46_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_group then
    show.m_d_incremental_refresh_book_46_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_46_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_groups then
    show.m_d_incremental_refresh_book_46_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_46_order_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_group then
    show.m_d_incremental_refresh_book_46_order_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_46_order_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_groups then
    show.m_d_incremental_refresh_book_46_order_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_33_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_group then
    show.m_d_incremental_refresh_daily_statistics_33_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_group
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_33_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_groups then
    show.m_d_incremental_refresh_daily_statistics_33_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_groups
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_49_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_group then
    show.m_d_incremental_refresh_daily_statistics_49_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_group
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_49_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_groups then
    show.m_d_incremental_refresh_daily_statistics_49_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_groups
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_34_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_group then
    show.m_d_incremental_refresh_limits_banding_34_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_group
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_34_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_groups then
    show.m_d_incremental_refresh_limits_banding_34_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_groups
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_50_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_group then
    show.m_d_incremental_refresh_limits_banding_50_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_group
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_50_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_groups then
    show.m_d_incremental_refresh_limits_banding_50_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_groups
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_43_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_group then
    show.m_d_incremental_refresh_order_book_43_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_group
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_43_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_groups then
    show.m_d_incremental_refresh_order_book_43_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_groups
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_47_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_group then
    show.m_d_incremental_refresh_order_book_47_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_group
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_47_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_groups then
    show.m_d_incremental_refresh_order_book_47_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_groups
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_35_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_group then
    show.m_d_incremental_refresh_session_statistics_35_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_group
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_35_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_groups then
    show.m_d_incremental_refresh_session_statistics_35_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_groups
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_51_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_group then
    show.m_d_incremental_refresh_session_statistics_51_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_group
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_51_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_groups then
    show.m_d_incremental_refresh_session_statistics_51_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_42_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_group then
    show.m_d_incremental_refresh_trade_summary_42_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_42_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_groups then
    show.m_d_incremental_refresh_trade_summary_42_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_42_order_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_group then
    show.m_d_incremental_refresh_trade_summary_42_order_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_42_order_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_groups then
    show.m_d_incremental_refresh_trade_summary_42_order_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_48_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_group then
    show.m_d_incremental_refresh_trade_summary_48_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_48_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_groups then
    show.m_d_incremental_refresh_trade_summary_48_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_48_order_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_group then
    show.m_d_incremental_refresh_trade_summary_48_order_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_48_order_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_groups then
    show.m_d_incremental_refresh_trade_summary_48_order_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_volume_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_group then
    show.m_d_incremental_refresh_volume_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_group
    changed = true
  end
  if show.m_d_incremental_refresh_volume_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_groups then
    show.m_d_incremental_refresh_volume_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_groups
    changed = true
  end
  if show.m_d_instrument_definition_spread_29_leg_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_group then
    show.m_d_instrument_definition_spread_29_leg_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_group
    changed = true
  end
  if show.m_d_instrument_definition_spread_29_leg_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_groups then
    show.m_d_instrument_definition_spread_29_leg_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_groups
    changed = true
  end
  if show.m_d_instrument_definition_spread_56_leg_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_group then
    show.m_d_instrument_definition_spread_56_leg_group = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_group
    changed = true
  end
  if show.m_d_instrument_definition_spread_56_leg_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_groups then
    show.m_d_instrument_definition_spread_56_leg_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_groups
    changed = true
  end
  if show.match_event_indicator ~= cme_futures_mdp3_sbe_v1_9.prefs.show_match_event_indicator then
    show.match_event_indicator = cme_futures_mdp3_sbe_v1_9.prefs.show_match_event_indicator
    changed = true
  end
  if show.maturity_month_year ~= cme_futures_mdp3_sbe_v1_9.prefs.show_maturity_month_year then
    show.maturity_month_year = cme_futures_mdp3_sbe_v1_9.prefs.show_maturity_month_year
    changed = true
  end
  if show.md_incremental_refresh_book_32 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book_32 then
    show.md_incremental_refresh_book_32 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book_32
    changed = true
  end
  if show.md_incremental_refresh_book_46 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book_46 then
    show.md_incremental_refresh_book_46 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book_46
    changed = true
  end
  if show.md_incremental_refresh_daily_statistics_33 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics_33 then
    show.md_incremental_refresh_daily_statistics_33 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics_33
    changed = true
  end
  if show.md_incremental_refresh_daily_statistics_49 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics_49 then
    show.md_incremental_refresh_daily_statistics_49 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics_49
    changed = true
  end
  if show.md_incremental_refresh_limits_banding_34 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding_34 then
    show.md_incremental_refresh_limits_banding_34 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding_34
    changed = true
  end
  if show.md_incremental_refresh_limits_banding_50 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding_50 then
    show.md_incremental_refresh_limits_banding_50 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding_50
    changed = true
  end
  if show.md_incremental_refresh_order_book_43 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book_43 then
    show.md_incremental_refresh_order_book_43 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book_43
    changed = true
  end
  if show.md_incremental_refresh_order_book_47 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book_47 then
    show.md_incremental_refresh_order_book_47 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book_47
    changed = true
  end
  if show.md_incremental_refresh_session_statistics_35 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics_35 then
    show.md_incremental_refresh_session_statistics_35 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics_35
    changed = true
  end
  if show.md_incremental_refresh_session_statistics_51 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics_51 then
    show.md_incremental_refresh_session_statistics_51 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics_51
    changed = true
  end
  if show.md_incremental_refresh_trade_summary_42 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary_42 then
    show.md_incremental_refresh_trade_summary_42 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary_42
    changed = true
  end
  if show.md_incremental_refresh_trade_summary_48 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary_48 then
    show.md_incremental_refresh_trade_summary_48 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary_48
    changed = true
  end
  if show.md_incremental_refresh_volume ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_volume then
    show.md_incremental_refresh_volume = cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_volume
    changed = true
  end
  if show.md_instrument_definition_future_27 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future_27 then
    show.md_instrument_definition_future_27 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future_27
    changed = true
  end
  if show.md_instrument_definition_future_54 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future_54 then
    show.md_instrument_definition_future_54 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future_54
    changed = true
  end
  if show.md_instrument_definition_option_41 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option_41 then
    show.md_instrument_definition_option_41 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option_41
    changed = true
  end
  if show.md_instrument_definition_option_55 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option_55 then
    show.md_instrument_definition_option_55 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option_55
    changed = true
  end
  if show.md_instrument_definition_spread_29 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread_29 then
    show.md_instrument_definition_spread_29 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread_29
    changed = true
  end
  if show.md_instrument_definition_spread_56 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread_56 then
    show.md_instrument_definition_spread_56 = cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread_56
    changed = true
  end
  if show.message ~= cme_futures_mdp3_sbe_v1_9.prefs.show_message then
    show.message = cme_futures_mdp3_sbe_v1_9.prefs.show_message
    changed = true
  end
  if show.message_header ~= cme_futures_mdp3_sbe_v1_9.prefs.show_message_header then
    show.message_header = cme_futures_mdp3_sbe_v1_9.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cme_futures_mdp3_sbe_v1_9.prefs.show_packet then
    show.packet = cme_futures_mdp3_sbe_v1_9.prefs.show_packet
    changed = true
  end
  if show.quote_request ~= cme_futures_mdp3_sbe_v1_9.prefs.show_quote_request then
    show.quote_request = cme_futures_mdp3_sbe_v1_9.prefs.show_quote_request
    changed = true
  end
  if show.related_instruments_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_group then
    show.related_instruments_group = cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_group
    changed = true
  end
  if show.related_instruments_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_groups then
    show.related_instruments_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_groups
    changed = true
  end
  if show.related_sym_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_group then
    show.related_sym_group = cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_groups then
    show.related_sym_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_groups
    changed = true
  end
  if show.security_status ~= cme_futures_mdp3_sbe_v1_9.prefs.show_security_status then
    show.security_status = cme_futures_mdp3_sbe_v1_9.prefs.show_security_status
    changed = true
  end
  if show.settl_price_type ~= cme_futures_mdp3_sbe_v1_9.prefs.show_settl_price_type then
    show.settl_price_type = cme_futures_mdp3_sbe_v1_9.prefs.show_settl_price_type
    changed = true
  end
  if show.snapshot_full_refresh_38 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38 then
    show.snapshot_full_refresh_38 = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38
    changed = true
  end
  if show.snapshot_full_refresh_38_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_group then
    show.snapshot_full_refresh_38_group = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_group
    changed = true
  end
  if show.snapshot_full_refresh_38_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_groups then
    show.snapshot_full_refresh_38_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_groups
    changed = true
  end
  if show.snapshot_full_refresh_52 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52 then
    show.snapshot_full_refresh_52 = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52
    changed = true
  end
  if show.snapshot_full_refresh_52_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_group then
    show.snapshot_full_refresh_52_group = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_group
    changed = true
  end
  if show.snapshot_full_refresh_52_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_groups then
    show.snapshot_full_refresh_52_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_groups
    changed = true
  end
  if show.snapshot_full_refresh_order_book_44 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44 then
    show.snapshot_full_refresh_order_book_44 = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44
    changed = true
  end
  if show.snapshot_full_refresh_order_book_44_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_group then
    show.snapshot_full_refresh_order_book_44_group = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_group
    changed = true
  end
  if show.snapshot_full_refresh_order_book_44_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_groups then
    show.snapshot_full_refresh_order_book_44_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_groups
    changed = true
  end
  if show.snapshot_full_refresh_order_book_53 ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53 then
    show.snapshot_full_refresh_order_book_53 = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53
    changed = true
  end
  if show.snapshot_full_refresh_order_book_53_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_group then
    show.snapshot_full_refresh_order_book_53_group = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_group
    changed = true
  end
  if show.snapshot_full_refresh_order_book_53_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_groups then
    show.snapshot_full_refresh_order_book_53_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_groups
    changed = true
  end
  if show.underlyings_group ~= cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_group then
    show.underlyings_group = cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_group
    changed = true
  end
  if show.underlyings_groups ~= cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_groups then
    show.underlyings_groups = cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_groups
    changed = true
  end
  if show.payload ~= cme_futures_mdp3_sbe_v1_9.prefs.show_payload then
    show.payload = cme_futures_mdp3_sbe_v1_9.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Futures Mdp3 Sbe 1.9
-----------------------------------------------------------------------

-- Size: Leg Option Delta
size_of.leg_option_delta = 4

-- Display: Leg Option Delta
display.leg_option_delta = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Leg Option Delta: No Value"
  end
  return "Leg Option Delta: "..value/10000
end

-- Dissect: Leg Option Delta
dissect.leg_option_delta = function(buffer, offset, packet, parent)
  local length = size_of.leg_option_delta
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_option_delta(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.leg_option_delta, range, value, display)

  return offset + length, value
end

-- Size: Leg Price Pricenul L 9
size_of.leg_price_pricenul_l_9 = 8

-- Display: Leg Price Pricenul L 9
display.leg_price_pricenul_l_9 = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Leg Price Pricenul L 9: No Value"
  end
  return "Leg Price Pricenul L 9: "..value:tonumber()/1000000000
end

-- Dissect: Leg Price Pricenul L 9
dissect.leg_price_pricenul_l_9 = function(buffer, offset, packet, parent)
  local length = size_of.leg_price_pricenul_l_9
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.leg_price_pricenul_l_9(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.leg_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 1

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Side
size_of.leg_side = 1

-- Display: Leg Side
display.leg_side = function(value)
  if value == 1 then
    return "Leg Side: Buy Side (1)"
  end
  if value == 2 then
    return "Leg Side: Sell Side (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local length = size_of.leg_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Id
size_of.leg_security_id = 4

-- Display: Leg Security Id
display.leg_security_id = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
dissect.leg_security_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Instrument Definition Spread 56 Leg Group
size_of.m_d_instrument_definition_spread_56_leg_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_security_id

  index = index + size_of.leg_side

  index = index + size_of.leg_ratio_qty

  index = index + size_of.leg_price_pricenul_l_9

  index = index + size_of.leg_option_delta

  return index
end

-- Display: M D Instrument Definition Spread 56 Leg Group
display.m_d_instrument_definition_spread_56_leg_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread 56 Leg Group
dissect.m_d_instrument_definition_spread_56_leg_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price_pricenul_l_9 = dissect.leg_price_pricenul_l_9(buffer, index, packet, parent)

  -- Leg Option Delta: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_option_delta = dissect.leg_option_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Instrument Definition Spread 56 Leg Group
dissect.m_d_instrument_definition_spread_56_leg_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_instrument_definition_spread_56_leg_group then
    local length = size_of.m_d_instrument_definition_spread_56_leg_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_instrument_definition_spread_56_leg_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_56_leg_group, range, display)
  end

  return dissect.m_d_instrument_definition_spread_56_leg_group_fields(buffer, offset, packet, parent)
end

-- Size: Num In Group
size_of.num_in_group = 1

-- Display: Num In Group
display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length
size_of.block_length = 2

-- Display: Block Length
display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
dissect.block_length = function(buffer, offset, packet, parent)
  local length = size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_length(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size
size_of.group_size = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length

  index = index + size_of.num_in_group

  return index
end

-- Display: Group Size
display.group_size = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size
dissect.group_size_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
dissect.group_size = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size then
    local length = size_of.group_size(buffer, offset)
    local range = buffer(offset, length)
    local display = display.group_size(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.group_size, range, display)
  end

  return dissect.group_size_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Instrument Definition Spread 56 Leg Groups
size_of.m_d_instrument_definition_spread_56_leg_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_instrument_definition_spread_56_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_instrument_definition_spread_56_leg_group_count * 18

  return index
end

-- Display: M D Instrument Definition Spread 56 Leg Groups
display.m_d_instrument_definition_spread_56_leg_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread 56 Leg Groups
dissect.m_d_instrument_definition_spread_56_leg_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Instrument Definition Spread 56 Leg Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.m_d_instrument_definition_spread_56_leg_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Instrument Definition Spread 56 Leg Groups
dissect.m_d_instrument_definition_spread_56_leg_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_instrument_definition_spread_56_leg_groups then
    local length = size_of.m_d_instrument_definition_spread_56_leg_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_instrument_definition_spread_56_leg_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_56_leg_groups, range, display)
  end

  return dissect.m_d_instrument_definition_spread_56_leg_groups_fields(buffer, offset, packet, parent)
end

-- Size: Min Lot Size
size_of.min_lot_size = 4

-- Display: Min Lot Size
display.min_lot_size = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Min Lot Size: No Value"
  end
  return "Min Lot Size: "..value/10000
end

-- Dissect: Min Lot Size
dissect.min_lot_size = function(buffer, offset, packet, parent)
  local length = size_of.min_lot_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.min_lot_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.min_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Lot Type
size_of.lot_type = 1

-- Display: Lot Type
display.lot_type = function(value)
  return "Lot Type: "..value
end

-- Dissect: Lot Type
dissect.lot_type = function(buffer, offset, packet, parent)
  local length = size_of.lot_type
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.lot_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Lot Type Rules Group
size_of.lot_type_rules_group = function(buffer, offset)
  local index = 0

  index = index + size_of.lot_type

  index = index + size_of.min_lot_size

  return index
end

-- Display: Lot Type Rules Group
display.lot_type_rules_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Lot Type Rules Group
dissect.lot_type_rules_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Lot Type: 1 Byte Signed Fixed Width Integer
  index, lot_type = dissect.lot_type(buffer, index, packet, parent)

  -- Min Lot Size: 4 Byte Signed Fixed Width Integer Nullable
  index, min_lot_size = dissect.min_lot_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Lot Type Rules Group
dissect.lot_type_rules_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.lot_type_rules_group then
    local length = size_of.lot_type_rules_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.lot_type_rules_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.lot_type_rules_group, range, display)
  end

  return dissect.lot_type_rules_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Lot Type Rules Groups
size_of.lot_type_rules_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local lot_type_rules_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + lot_type_rules_group_count * 5

  return index
end

-- Display: Lot Type Rules Groups
display.lot_type_rules_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Lot Type Rules Groups
dissect.lot_type_rules_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Lot Type Rules Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.lot_type_rules_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Lot Type Rules Groups
dissect.lot_type_rules_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.lot_type_rules_groups then
    local length = size_of.lot_type_rules_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.lot_type_rules_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.lot_type_rules_groups, range, display)
  end

  return dissect.lot_type_rules_groups_fields(buffer, offset, packet, parent)
end

-- Size: Inst Attrib Value
size_of.inst_attrib_value = 4

-- Display: Inst Attrib Value
display.inst_attrib_value = function(buffer, packet, parent)
  local display = ""

  -- Is Variable Cab Eligible flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."Variable Cab Eligible|"
  end
  -- Is Triangulation Eligible flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Triangulation Eligible|"
  end
  -- Is Implied Matching Eligibility flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Implied Matching Eligibility|"
  end
  -- Is Gt Orders Eligibility flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Gt Orders Eligibility|"
  end
  -- Is Daily Product Eligibility flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Daily Product Eligibility|"
  end
  -- Is Variable Product Eligibility flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Variable Product Eligibility|"
  end
  -- Is Decaying Product Eligibility flag set?
  if buffer:bitfield(16) > 0 then
    display = display.."Decaying Product Eligibility|"
  end
  -- Is Zero Price Outright Eligible flag set?
  if buffer:bitfield(17) > 0 then
    display = display.."Zero Price Outright Eligible|"
  end
  -- Is Rfq Cross Eligible flag set?
  if buffer:bitfield(18) > 0 then
    display = display.."Rfq Cross Eligible|"
  end
  -- Is Volatility Quoted Option flag set?
  if buffer:bitfield(19) > 0 then
    display = display.."Volatility Quoted Option|"
  end
  -- Is Is Fractional flag set?
  if buffer:bitfield(20) > 0 then
    display = display.."Is Fractional|"
  end
  -- Is Negative Price Outright Eligible flag set?
  if buffer:bitfield(21) > 0 then
    display = display.."Negative Price Outright Eligible|"
  end
  -- Is Negative Strike Eligible flag set?
  if buffer:bitfield(22) > 0 then
    display = display.."Negative Strike Eligible|"
  end
  -- Is I Link Indicative Mass Quoting Eligible flag set?
  if buffer:bitfield(23) > 0 then
    display = display.."I Link Indicative Mass Quoting Eligible|"
  end
  -- Is Otc Eligible flag set?
  if buffer:bitfield(24) > 0 then
    display = display.."Otc Eligible|"
  end
  -- Is Efr Eligible flag set?
  if buffer:bitfield(25) > 0 then
    display = display.."Efr Eligible|"
  end
  -- Is Efs Eligible flag set?
  if buffer:bitfield(26) > 0 then
    display = display.."Efs Eligible|"
  end
  -- Is Ebf Eligible flag set?
  if buffer:bitfield(27) > 0 then
    display = display.."Ebf Eligible|"
  end
  -- Is Efp Eligible flag set?
  if buffer:bitfield(28) > 0 then
    display = display.."Efp Eligible|"
  end
  -- Is Block Trade Eligible flag set?
  if buffer:bitfield(29) > 0 then
    display = display.."Block Trade Eligible|"
  end
  -- Is Order Cross Eligible flag set?
  if buffer:bitfield(30) > 0 then
    display = display.."Order Cross Eligible|"
  end
  -- Is Electronic Match Eligible flag set?
  if buffer:bitfield(31) > 0 then
    display = display.."Electronic Match Eligible|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Inst Attrib Value
dissect.inst_attrib_value_bits = function(buffer, offset, packet, parent)

  -- Reserved 10: 10 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.reserved_10, buffer(offset, 4))

  -- Variable Cab Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.variable_cab_eligible, buffer(offset, 4))

  -- Triangulation Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.triangulation_eligible, buffer(offset, 4))

  -- Implied Matching Eligibility: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.implied_matching_eligibility, buffer(offset, 4))

  -- Gt Orders Eligibility: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.gt_orders_eligibility, buffer(offset, 4))

  -- Daily Product Eligibility: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.daily_product_eligibility, buffer(offset, 4))

  -- Variable Product Eligibility: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.variable_product_eligibility, buffer(offset, 4))

  -- Decaying Product Eligibility: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.decaying_product_eligibility, buffer(offset, 4))

  -- Zero Price Outright Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.zero_price_outright_eligible, buffer(offset, 4))

  -- Rfq Cross Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.rfq_cross_eligible, buffer(offset, 4))

  -- Volatility Quoted Option: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.volatility_quoted_option, buffer(offset, 4))

  -- Is Fractional: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.is_fractional, buffer(offset, 4))

  -- Negative Price Outright Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.negative_price_outright_eligible, buffer(offset, 4))

  -- Negative Strike Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.negative_strike_eligible, buffer(offset, 4))

  -- I Link Indicative Mass Quoting Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.i_link_indicative_mass_quoting_eligible, buffer(offset, 4))

  -- Otc Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.otc_eligible, buffer(offset, 4))

  -- Efr Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.efr_eligible, buffer(offset, 4))

  -- Efs Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.efs_eligible, buffer(offset, 4))

  -- Ebf Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.ebf_eligible, buffer(offset, 4))

  -- Efp Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.efp_eligible, buffer(offset, 4))

  -- Block Trade Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.block_trade_eligible, buffer(offset, 4))

  -- Order Cross Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.order_cross_eligible, buffer(offset, 4))

  -- Electronic Match Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.electronic_match_eligible, buffer(offset, 4))
end

-- Dissect: Inst Attrib Value
dissect.inst_attrib_value = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local display = display.inst_attrib_value(range, packet, parent)
  local element = parent:add(cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_value, range, display)

  if show.inst_attrib_value then
    dissect.inst_attrib_value_bits(buffer, offset, packet, element)
  end

  return offset + 4, range
end

-- Calculate size of: Inst Attrib Group
size_of.inst_attrib_group = function(buffer, offset)
  local index = 0

  index = index + size_of.inst_attrib_value

  return index
end

-- Display: Inst Attrib Group
display.inst_attrib_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inst Attrib Group
dissect.inst_attrib_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Attrib Value: Struct of 23 fields
  index, inst_attrib_value = dissect.inst_attrib_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Inst Attrib Group
dissect.inst_attrib_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inst_attrib_group then
    local length = size_of.inst_attrib_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inst_attrib_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_group, range, display)
  end

  return dissect.inst_attrib_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Inst Attrib Groups
size_of.inst_attrib_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local inst_attrib_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + inst_attrib_group_count * 4

  return index
end

-- Display: Inst Attrib Groups
display.inst_attrib_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inst Attrib Groups
dissect.inst_attrib_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Inst Attrib Group: Struct of 1 fields
  for i = 1, num_in_group do
    index = dissect.inst_attrib_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Inst Attrib Groups
dissect.inst_attrib_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.inst_attrib_groups then
    local length = size_of.inst_attrib_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.inst_attrib_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_groups, range, display)
  end

  return dissect.inst_attrib_groups_fields(buffer, offset, packet, parent)
end

-- Size: Market Depth
size_of.market_depth = 1

-- Display: Market Depth
display.market_depth = function(value)
  return "Market Depth: "..value
end

-- Dissect: Market Depth
dissect.market_depth = function(buffer, offset, packet, parent)
  local length = size_of.market_depth
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.market_depth(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.market_depth, range, value, display)

  return offset + length, value
end

-- Size: Md Feed Type
size_of.md_feed_type = 3

-- Display: Md Feed Type
display.md_feed_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Feed Type: No Value"
  end

  return "Md Feed Type: "..value
end

-- Dissect: Md Feed Type
dissect.md_feed_type = function(buffer, offset, packet, parent)
  local length = size_of.md_feed_type
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

  local display = display.md_feed_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_feed_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Feed Types Group
size_of.m_d_feed_types_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_feed_type

  index = index + size_of.market_depth

  return index
end

-- Display: M D Feed Types Group
display.m_d_feed_types_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Feed Types Group
dissect.m_d_feed_types_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Feed Type: 3 Byte Ascii String
  index, md_feed_type = dissect.md_feed_type(buffer, index, packet, parent)

  -- Market Depth: 1 Byte Signed Fixed Width Integer
  index, market_depth = dissect.market_depth(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Feed Types Group
dissect.m_d_feed_types_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_feed_types_group then
    local length = size_of.m_d_feed_types_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_feed_types_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_feed_types_group, range, display)
  end

  return dissect.m_d_feed_types_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Feed Types Groups
size_of.m_d_feed_types_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_feed_types_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_feed_types_group_count * 4

  return index
end

-- Display: M D Feed Types Groups
display.m_d_feed_types_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Feed Types Groups
dissect.m_d_feed_types_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Feed Types Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.m_d_feed_types_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Feed Types Groups
dissect.m_d_feed_types_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_feed_types_groups then
    local length = size_of.m_d_feed_types_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_feed_types_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_feed_types_groups, range, display)
  end

  return dissect.m_d_feed_types_groups_fields(buffer, offset, packet, parent)
end

-- Size: Event Time
size_of.event_time = 8

-- Display: Event Time
display.event_time = function(value)
  return "Event Time: "..value
end

-- Dissect: Event Time
dissect.event_time = function(buffer, offset, packet, parent)
  local length = size_of.event_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.event_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.event_time, range, value, display)

  return offset + length, value
end

-- Size: Event Type
size_of.event_type = 1

-- Display: Event Type
display.event_type = function(value)
  if value == 5 then
    return "Event Type: Activation (5)"
  end
  if value == 7 then
    return "Event Type: Last Eligible Trade Date (7)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
dissect.event_type = function(buffer, offset, packet, parent)
  local length = size_of.event_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.event_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.event_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Events Group
size_of.events_group = function(buffer, offset)
  local index = 0

  index = index + size_of.event_type

  index = index + size_of.event_time

  return index
end

-- Display: Events Group
display.events_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Events Group
dissect.events_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, event_type = dissect.event_type(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = dissect.event_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Events Group
dissect.events_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.events_group then
    local length = size_of.events_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.events_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.events_group, range, display)
  end

  return dissect.events_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Events Groups
size_of.events_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local events_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + events_group_count * 9

  return index
end

-- Display: Events Groups
display.events_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Events Groups
dissect.events_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Events Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.events_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Events Groups
dissect.events_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.events_groups then
    local length = size_of.events_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.events_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.events_groups, range, display)
  end

  return dissect.events_groups_fields(buffer, offset, packet, parent)
end

-- Size: Trading Reference Date
size_of.trading_reference_date = 2

-- Display: Trading Reference Date
display.trading_reference_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trading Reference Date: No Value"
  end

  return "Trading Reference Date: "..value
end

-- Dissect: Trading Reference Date
dissect.trading_reference_date = function(buffer, offset, packet, parent)
  local length = size_of.trading_reference_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_reference_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.trading_reference_date, range, value, display)

  return offset + length, value
end

-- Size: Sub Fraction
size_of.sub_fraction = 1

-- Display: Sub Fraction
display.sub_fraction = function(value)
  -- Check if field has value
  if value == 255 then
    return "Sub Fraction: No Value"
  end

  return "Sub Fraction: "..value
end

-- Dissect: Sub Fraction
dissect.sub_fraction = function(buffer, offset, packet, parent)
  local length = size_of.sub_fraction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sub_fraction(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.sub_fraction, range, value, display)

  return offset + length, value
end

-- Size: Main Fraction
size_of.main_fraction = 1

-- Display: Main Fraction
display.main_fraction = function(value)
  -- Check if field has value
  if value == 255 then
    return "Main Fraction: No Value"
  end

  return "Main Fraction: "..value
end

-- Dissect: Main Fraction
dissect.main_fraction = function(buffer, offset, packet, parent)
  local length = size_of.main_fraction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.main_fraction(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.main_fraction, range, value, display)

  return offset + length, value
end

-- Size: Max Price Variation Pricenul L 9
size_of.max_price_variation_pricenul_l_9 = 8

-- Display: Max Price Variation Pricenul L 9
display.max_price_variation_pricenul_l_9 = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Max Price Variation Pricenul L 9: No Value"
  end
  return "Max Price Variation Pricenul L 9: "..value:tonumber()/1000000000
end

-- Dissect: Max Price Variation Pricenul L 9
dissect.max_price_variation_pricenul_l_9 = function(buffer, offset, packet, parent)
  local length = size_of.max_price_variation_pricenul_l_9
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.max_price_variation_pricenul_l_9(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.max_price_variation_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Size: Low Limit Price Pricenul L 9
size_of.low_limit_price_pricenul_l_9 = 8

-- Display: Low Limit Price Pricenul L 9
display.low_limit_price_pricenul_l_9 = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Low Limit Price Pricenul L 9: No Value"
  end
  return "Low Limit Price Pricenul L 9: "..value:tonumber()/1000000000
end

-- Dissect: Low Limit Price Pricenul L 9
dissect.low_limit_price_pricenul_l_9 = function(buffer, offset, packet, parent)
  local length = size_of.low_limit_price_pricenul_l_9
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.low_limit_price_pricenul_l_9(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.low_limit_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Size: High Limit Price Pricenul L 9
size_of.high_limit_price_pricenul_l_9 = 8

-- Display: High Limit Price Pricenul L 9
display.high_limit_price_pricenul_l_9 = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "High Limit Price Pricenul L 9: No Value"
  end
  return "High Limit Price Pricenul L 9: "..value:tonumber()/1000000000
end

-- Dissect: High Limit Price Pricenul L 9
dissect.high_limit_price_pricenul_l_9 = function(buffer, offset, packet, parent)
  local length = size_of.high_limit_price_pricenul_l_9
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.high_limit_price_pricenul_l_9(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.high_limit_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Size: Cleared Volume
size_of.cleared_volume = 4

-- Display: Cleared Volume
display.cleared_volume = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Cleared Volume: No Value"
  end

  return "Cleared Volume: "..value
end

-- Dissect: Cleared Volume
dissect.cleared_volume = function(buffer, offset, packet, parent)
  local length = size_of.cleared_volume
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.cleared_volume(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.cleared_volume, range, value, display)

  return offset + length, value
end

-- Size: Open Interest Qty
size_of.open_interest_qty = 4

-- Display: Open Interest Qty
display.open_interest_qty = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Open Interest Qty: No Value"
  end

  return "Open Interest Qty: "..value
end

-- Dissect: Open Interest Qty
dissect.open_interest_qty = function(buffer, offset, packet, parent)
  local length = size_of.open_interest_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.open_interest_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.open_interest_qty, range, value, display)

  return offset + length, value
end

-- Size: Settl Price Type
size_of.settl_price_type = 1

-- Display: Settl Price Type
display.settl_price_type = function(buffer, packet, parent)
  local display = ""

  -- Is Null Value flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Null Value|"
  end
  -- Is Intraday flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Intraday|"
  end
  -- Is Rounded flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Rounded|"
  end
  -- Is Actual flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Actual|"
  end
  -- Is Final Daily flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Final Daily|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Settl Price Type
dissect.settl_price_type_bits = function(buffer, offset, packet, parent)

  -- Null Value: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.null_value, buffer(offset, 1))

  -- Reserved Bits: 3 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.reserved_bits, buffer(offset, 1))

  -- Intraday: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.intraday, buffer(offset, 1))

  -- Rounded: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.rounded, buffer(offset, 1))

  -- Actual: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.actual, buffer(offset, 1))

  -- Final Daily: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.final_daily, buffer(offset, 1))
end

-- Dissect: Settl Price Type
dissect.settl_price_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.settl_price_type(range, packet, parent)
  local element = parent:add(cme_futures_mdp3_sbe_v1_9.fields.settl_price_type, range, display)

  if show.settl_price_type then
    dissect.settl_price_type_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Trading Reference Price Pricenul L 9
size_of.trading_reference_price_pricenul_l_9 = 8

-- Display: Trading Reference Price Pricenul L 9
display.trading_reference_price_pricenul_l_9 = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Trading Reference Price Pricenul L 9: No Value"
  end
  return "Trading Reference Price Pricenul L 9: "..value:tonumber()/1000000000
end

-- Dissect: Trading Reference Price Pricenul L 9
dissect.trading_reference_price_pricenul_l_9 = function(buffer, offset, packet, parent)
  local length = size_of.trading_reference_price_pricenul_l_9
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.trading_reference_price_pricenul_l_9(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.trading_reference_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Measure
size_of.unit_of_measure = 30

-- Display: Unit Of Measure
display.unit_of_measure = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
dissect.unit_of_measure = function(buffer, offset, packet, parent)
  local length = size_of.unit_of_measure
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

  local display = display.unit_of_measure(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Size: Tick Rule
size_of.tick_rule = 1

-- Display: Tick Rule
display.tick_rule = function(value)
  -- Check if field has value
  if value == 127 then
    return "Tick Rule: No Value"
  end

  return "Tick Rule: "..value
end

-- Dissect: Tick Rule
dissect.tick_rule = function(buffer, offset, packet, parent)
  local length = size_of.tick_rule
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.tick_rule(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.tick_rule, range, value, display)

  return offset + length, value
end

-- Size: Price Ratio Pricenul L 9
size_of.price_ratio_pricenul_l_9 = 8

-- Display: Price Ratio Pricenul L 9
display.price_ratio_pricenul_l_9 = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Price Ratio Pricenul L 9: No Value"
  end
  return "Price Ratio Pricenul L 9: "..value:tonumber()/1000000000
end

-- Dissect: Price Ratio Pricenul L 9
dissect.price_ratio_pricenul_l_9 = function(buffer, offset, packet, parent)
  local length = size_of.price_ratio_pricenul_l_9
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.price_ratio_pricenul_l_9(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.price_ratio_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Size: Price Display Format
size_of.price_display_format = 1

-- Display: Price Display Format
display.price_display_format = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Display Format: No Value"
  end

  return "Price Display Format: "..value
end

-- Dissect: Price Display Format
dissect.price_display_format = function(buffer, offset, packet, parent)
  local length = size_of.price_display_format
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.price_display_format(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.price_display_format, range, value, display)

  return offset + length, value
end

-- Size: Display Factor Decimal 9
size_of.display_factor_decimal_9 = 8

-- Display: Display Factor Decimal 9
display.display_factor_decimal_9 = function(value)
  return "Display Factor Decimal 9: "..value:tonumber()/1000000000
end

-- Dissect: Display Factor Decimal 9
dissect.display_factor_decimal_9 = function(buffer, offset, packet, parent)
  local length = size_of.display_factor_decimal_9
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.display_factor_decimal_9(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.display_factor_decimal_9, range, value, display)

  return offset + length, value
end

-- Size: Min Price Increment Optional
size_of.min_price_increment_optional = 8

-- Display: Min Price Increment Optional
display.min_price_increment_optional = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Min Price Increment Optional: No Value"
  end
  return "Min Price Increment Optional: "..value:tonumber()/1000000000
end

-- Dissect: Min Price Increment Optional
dissect.min_price_increment_optional = function(buffer, offset, packet, parent)
  local length = size_of.min_price_increment_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.min_price_increment_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_optional, range, value, display)

  return offset + length, value
end

-- Size: Max Trade Vol
size_of.max_trade_vol = 4

-- Display: Max Trade Vol
display.max_trade_vol = function(value)
  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol
dissect.max_trade_vol = function(buffer, offset, packet, parent)
  local length = size_of.max_trade_vol
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.max_trade_vol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.max_trade_vol, range, value, display)

  return offset + length, value
end

-- Size: Min Trade Vol
size_of.min_trade_vol = 4

-- Display: Min Trade Vol
display.min_trade_vol = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
dissect.min_trade_vol = function(buffer, offset, packet, parent)
  local length = size_of.min_trade_vol
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.min_trade_vol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Size: Match Algorithm
size_of.match_algorithm = 1

-- Display: Match Algorithm
display.match_algorithm = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Match Algorithm: No Value"
  end

  return "Match Algorithm: "..value
end

-- Dissect: Match Algorithm
dissect.match_algorithm = function(buffer, offset, packet, parent)
  local length = size_of.match_algorithm
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.match_algorithm(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- Size: User Defined Instrument
size_of.user_defined_instrument = 1

-- Display: User Defined Instrument
display.user_defined_instrument = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Defined Instrument: No Value"
  end

  return "User Defined Instrument: "..value
end

-- Dissect: User Defined Instrument
dissect.user_defined_instrument = function(buffer, offset, packet, parent)
  local length = size_of.user_defined_instrument
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.user_defined_instrument(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.user_defined_instrument, range, value, display)

  return offset + length, value
end

-- Size: Security Sub Type
size_of.security_sub_type = 5

-- Display: Security Sub Type
display.security_sub_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local length = size_of.security_sub_type
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

  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Currency
size_of.currency = 3

-- Display: Currency
display.currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local length = size_of.currency
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

  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Week
size_of.week = 1

-- Display: Week
display.week = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
dissect.week = function(buffer, offset, packet, parent)
  local length = size_of.week
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.week(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.week, range, value, display)

  return offset + length, value
end

-- Size: Day
size_of.day = 1

-- Display: Day
display.day = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
dissect.day = function(buffer, offset, packet, parent)
  local length = size_of.day
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.day(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.day, range, value, display)

  return offset + length, value
end

-- Size: Month
size_of.month = 1

-- Display: Month
display.month = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
dissect.month = function(buffer, offset, packet, parent)
  local length = size_of.month
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.month(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.month, range, value, display)

  return offset + length, value
end

-- Size: Year
size_of.year = 2

-- Display: Year
display.year = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
dissect.year = function(buffer, offset, packet, parent)
  local length = size_of.year
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.year(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.year, range, value, display)

  return offset + length, value
end

-- Calculate size of: Maturity Month Year
size_of.maturity_month_year = function(buffer, offset)
  local index = 0

  index = index + size_of.year

  index = index + size_of.month

  index = index + size_of.day

  index = index + size_of.week

  return index
end

-- Display: Maturity Month Year
display.maturity_month_year = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Maturity Month Year
dissect.maturity_month_year_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = dissect.day(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = dissect.week(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
dissect.maturity_month_year = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.maturity_month_year then
    local length = size_of.maturity_month_year(buffer, offset)
    local range = buffer(offset, length)
    local display = display.maturity_month_year(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.maturity_month_year, range, display)
  end

  return dissect.maturity_month_year_fields(buffer, offset, packet, parent)
end

-- Size: Cfi Code
size_of.cfi_code = 6

-- Display: Cfi Code
display.cfi_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
dissect.cfi_code = function(buffer, offset, packet, parent)
  local length = size_of.cfi_code
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

  local display = display.cfi_code(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Size: Security Type
size_of.security_type = 6

-- Display: Security Type
display.security_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
dissect.security_type = function(buffer, offset, packet, parent)
  local length = size_of.security_type
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

  local display = display.security_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Security Id
size_of.security_id = 4

-- Display: Security Id
display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
dissect.security_id = function(buffer, offset, packet, parent)
  local length = size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 20

-- Display: Symbol
display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
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

  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Asset
size_of.asset = 6

-- Display: Asset
display.asset = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
dissect.asset = function(buffer, offset, packet, parent)
  local length = size_of.asset
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

  local display = display.asset(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.asset, range, value, display)

  return offset + length, value
end

-- Size: Security Group
size_of.security_group = 6

-- Display: Security Group
display.security_group = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
dissect.security_group = function(buffer, offset, packet, parent)
  local length = size_of.security_group
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

  local display = display.security_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.security_group, range, value, display)

  return offset + length, value
end

-- Size: Security Exchange
size_of.security_exchange = 4

-- Display: Security Exchange
display.security_exchange = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
dissect.security_exchange = function(buffer, offset, packet, parent)
  local length = size_of.security_exchange
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

  local display = display.security_exchange(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Size: Underlying Product Optional
size_of.underlying_product_optional = 1

-- Display: Underlying Product Optional
display.underlying_product_optional = function(value)
  -- Check if field has value
  if value == 255 then
    return "Underlying Product Optional: No Value"
  end

  return "Underlying Product Optional: "..value
end

-- Dissect: Underlying Product Optional
dissect.underlying_product_optional = function(buffer, offset, packet, parent)
  local length = size_of.underlying_product_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_product_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.underlying_product_optional, range, value, display)

  return offset + length, value
end

-- Size: Market Segment Id
size_of.market_segment_id = 1

-- Display: Market Segment Id
display.market_segment_id = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
dissect.market_segment_id = function(buffer, offset, packet, parent)
  local length = size_of.market_segment_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Appl Id
size_of.appl_id = 2

-- Display: Appl Id
display.appl_id = function(value)
  return "Appl Id: "..value
end

-- Dissect: Appl Id
dissect.appl_id = function(buffer, offset, packet, parent)
  local length = size_of.appl_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.appl_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Size: Md Security Trading Status
size_of.md_security_trading_status = 1

-- Display: Md Security Trading Status
display.md_security_trading_status = function(value)
  if value == 2 then
    return "Md Security Trading Status: Trading Halt (2)"
  end
  if value == 4 then
    return "Md Security Trading Status: Close (4)"
  end
  if value == 15 then
    return "Md Security Trading Status: New Price Indication (15)"
  end
  if value == 17 then
    return "Md Security Trading Status: Ready To Trade (17)"
  end
  if value == 18 then
    return "Md Security Trading Status: Not Available For Trading (18)"
  end
  if value == 20 then
    return "Md Security Trading Status: Unknownor Invalid (20)"
  end
  if value == 21 then
    return "Md Security Trading Status: Pre Open (21)"
  end
  if value == 24 then
    return "Md Security Trading Status: Pre Cross (24)"
  end
  if value == 25 then
    return "Md Security Trading Status: Cross (25)"
  end
  if value == 26 then
    return "Md Security Trading Status: Post Close (26)"
  end
  if value == 103 then
    return "Md Security Trading Status: No Change (103)"
  end
  if value == 255 then
    return "Md Security Trading Status: No Value"
  end

  return "Md Security Trading Status: Unknown("..value..")"
end

-- Dissect: Md Security Trading Status
dissect.md_security_trading_status = function(buffer, offset, packet, parent)
  local length = size_of.md_security_trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_security_trading_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_security_trading_status, range, value, display)

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

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Size: Security Update Action
size_of.security_update_action = 1

-- Display: Security Update Action
display.security_update_action = function(value)
  if value == "A" then
    return "Security Update Action: Add (A)"
  end
  if value == "D" then
    return "Security Update Action: Delete (D)"
  end
  if value == "M" then
    return "Security Update Action: Modify (M)"
  end

  return "Security Update Action: Unknown("..value..")"
end

-- Dissect: Security Update Action
dissect.security_update_action = function(buffer, offset, packet, parent)
  local length = size_of.security_update_action
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.security_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.security_update_action, range, value, display)

  return offset + length, value
end

-- Size: Tot Num Reports Optional
size_of.tot_num_reports_optional = 4

-- Display: Tot Num Reports Optional
display.tot_num_reports_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Tot Num Reports Optional: No Value"
  end

  return "Tot Num Reports Optional: "..value
end

-- Dissect: Tot Num Reports Optional
dissect.tot_num_reports_optional = function(buffer, offset, packet, parent)
  local length = size_of.tot_num_reports_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tot_num_reports_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.tot_num_reports_optional, range, value, display)

  return offset + length, value
end

-- Size: Match Event Indicator
size_of.match_event_indicator = 1

-- Display: Match Event Indicator
display.match_event_indicator = function(buffer, packet, parent)
  local display = ""

  -- Is End Of Event flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."End Of Event|"
  end
  -- Is Reserved flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Reserved|"
  end
  -- Is Recovery Msg flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Recovery Msg|"
  end
  -- Is Last Implied Msg flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Last Implied Msg|"
  end
  -- Is Last Stats Msg flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Last Stats Msg|"
  end
  -- Is Last Quote Msg flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Last Quote Msg|"
  end
  -- Is Last Volume Msg flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Last Volume Msg|"
  end
  -- Is Last Trade Msg flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Last Trade Msg|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Match Event Indicator
dissect.match_event_indicator_bits = function(buffer, offset, packet, parent)

  -- End Of Event: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.end_of_event, buffer(offset, 1))

  -- Reserved: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.reserved, buffer(offset, 1))

  -- Recovery Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.recovery_msg, buffer(offset, 1))

  -- Last Implied Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.last_implied_msg, buffer(offset, 1))

  -- Last Stats Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.last_stats_msg, buffer(offset, 1))

  -- Last Quote Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.last_quote_msg, buffer(offset, 1))

  -- Last Volume Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.last_volume_msg, buffer(offset, 1))

  -- Last Trade Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_9.fields.last_trade_msg, buffer(offset, 1))
end

-- Dissect: Match Event Indicator
dissect.match_event_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.match_event_indicator(range, packet, parent)
  local element = parent:add(cme_futures_mdp3_sbe_v1_9.fields.match_event_indicator, range, display)

  if show.match_event_indicator then
    dissect.match_event_indicator_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Md Instrument Definition Spread 56
size_of.md_instrument_definition_spread_56 = function(buffer, offset)
  local index = 0

  index = index + size_of.match_event_indicator

  index = index + size_of.tot_num_reports_optional

  index = index + size_of.security_update_action

  index = index + size_of.last_update_time

  index = index + size_of.md_security_trading_status

  index = index + size_of.appl_id

  index = index + size_of.market_segment_id

  index = index + size_of.underlying_product_optional

  index = index + size_of.security_exchange

  index = index + size_of.security_group

  index = index + size_of.asset

  index = index + size_of.symbol

  index = index + size_of.security_id

  index = index + size_of.security_type

  index = index + size_of.cfi_code

  index = index + size_of.maturity_month_year(buffer, offset + index)

  index = index + size_of.currency

  index = index + size_of.security_sub_type

  index = index + size_of.user_defined_instrument

  index = index + size_of.match_algorithm

  index = index + size_of.min_trade_vol

  index = index + size_of.max_trade_vol

  index = index + size_of.min_price_increment_optional

  index = index + size_of.display_factor_decimal_9

  index = index + size_of.price_display_format

  index = index + size_of.price_ratio_pricenul_l_9

  index = index + size_of.tick_rule

  index = index + size_of.unit_of_measure

  index = index + size_of.trading_reference_price_pricenul_l_9

  index = index + size_of.settl_price_type

  index = index + size_of.open_interest_qty

  index = index + size_of.cleared_volume

  index = index + size_of.high_limit_price_pricenul_l_9

  index = index + size_of.low_limit_price_pricenul_l_9

  index = index + size_of.max_price_variation_pricenul_l_9

  index = index + size_of.main_fraction

  index = index + size_of.sub_fraction

  index = index + size_of.trading_reference_date

  index = index + size_of.events_groups(buffer, offset + index)

  index = index + size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + size_of.inst_attrib_groups(buffer, offset + index)

  index = index + size_of.lot_type_rules_groups(buffer, offset + index)

  index = index + size_of.m_d_instrument_definition_spread_56_leg_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Spread 56
display.md_instrument_definition_spread_56 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Definition Spread 56
dissect.md_instrument_definition_spread_56_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_optional = dissect.underlying_product_optional(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Security Sub Type: 5 Byte Ascii String
  index, security_sub_type = dissect.security_sub_type(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_optional = dissect.min_price_increment_optional(buffer, index, packet, parent)

  -- Display Factor Decimal 9: 8 Byte Signed Fixed Width Integer
  index, display_factor_decimal_9 = dissect.display_factor_decimal_9(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = dissect.price_display_format(buffer, index, packet, parent)

  -- Price Ratio Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, price_ratio_pricenul_l_9 = dissect.price_ratio_pricenul_l_9(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = dissect.tick_rule(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Trading Reference Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenul_l_9 = dissect.trading_reference_price_pricenul_l_9(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = dissect.open_interest_qty(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = dissect.cleared_volume(buffer, index, packet, parent)

  -- High Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenul_l_9 = dissect.high_limit_price_pricenul_l_9(buffer, index, packet, parent)

  -- Low Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenul_l_9 = dissect.low_limit_price_pricenul_l_9(buffer, index, packet, parent)

  -- Max Price Variation Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenul_l_9 = dissect.max_price_variation_pricenul_l_9(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = dissect.sub_fraction(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = dissect.lot_type_rules_groups(buffer, index, packet, parent)

  -- M D Instrument Definition Spread 56 Leg Groups: Struct of 2 fields
  index, m_d_instrument_definition_spread_56_leg_groups = dissect.m_d_instrument_definition_spread_56_leg_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Spread 56
dissect.md_instrument_definition_spread_56 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_spread_56 then
    local length = size_of.md_instrument_definition_spread_56(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_spread_56(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_spread_56, range, display)
  end

  return dissect.md_instrument_definition_spread_56_fields(buffer, offset, packet, parent)
end

-- Size: Related Symbol
size_of.related_symbol = 20

-- Display: Related Symbol
display.related_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Related Symbol: No Value"
  end

  return "Related Symbol: "..value
end

-- Dissect: Related Symbol
dissect.related_symbol = function(buffer, offset, packet, parent)
  local length = size_of.related_symbol
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

  local display = display.related_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.related_symbol, range, value, display)

  return offset + length, value
end

-- Size: Related Security Id
size_of.related_security_id = 4

-- Display: Related Security Id
display.related_security_id = function(value)
  return "Related Security Id: "..value
end

-- Dissect: Related Security Id
dissect.related_security_id = function(buffer, offset, packet, parent)
  local length = size_of.related_security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.related_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.related_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Related Instruments Group
size_of.related_instruments_group = function(buffer, offset)
  local index = 0

  index = index + size_of.related_security_id

  index = index + size_of.related_symbol

  return index
end

-- Display: Related Instruments Group
display.related_instruments_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Instruments Group
dissect.related_instruments_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Related Security Id: 4 Byte Signed Fixed Width Integer
  index, related_security_id = dissect.related_security_id(buffer, index, packet, parent)

  -- Related Symbol: 20 Byte Ascii String
  index, related_symbol = dissect.related_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Instruments Group
dissect.related_instruments_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.related_instruments_group then
    local length = size_of.related_instruments_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.related_instruments_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.related_instruments_group, range, display)
  end

  return dissect.related_instruments_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Related Instruments Groups
size_of.related_instruments_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local related_instruments_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_instruments_group_count * 24

  return index
end

-- Display: Related Instruments Groups
display.related_instruments_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Instruments Groups
dissect.related_instruments_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Related Instruments Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.related_instruments_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Related Instruments Groups
dissect.related_instruments_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_instruments_groups then
    local length = size_of.related_instruments_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.related_instruments_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.related_instruments_groups, range, display)
  end

  return dissect.related_instruments_groups_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 20

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = size_of.underlying_symbol
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

  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Underlying Security Id
size_of.underlying_security_id = 4

-- Display: Underlying Security Id
display.underlying_security_id = function(value)
  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
dissect.underlying_security_id = function(buffer, offset, packet, parent)
  local length = size_of.underlying_security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.underlying_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlyings Group
size_of.underlyings_group = function(buffer, offset)
  local index = 0

  index = index + size_of.underlying_security_id

  index = index + size_of.underlying_symbol

  return index
end

-- Display: Underlyings Group
display.underlyings_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlyings Group
dissect.underlyings_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Security Id: 4 Byte Signed Fixed Width Integer
  index, underlying_security_id = dissect.underlying_security_id(buffer, index, packet, parent)

  -- Underlying Symbol: 20 Byte Ascii String
  index, underlying_symbol = dissect.underlying_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlyings Group
dissect.underlyings_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlyings_group then
    local length = size_of.underlyings_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlyings_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.underlyings_group, range, display)
  end

  return dissect.underlyings_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Underlyings Groups
size_of.underlyings_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local underlyings_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + underlyings_group_count * 24

  return index
end

-- Display: Underlyings Groups
display.underlyings_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlyings Groups
dissect.underlyings_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Underlyings Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.underlyings_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Underlyings Groups
dissect.underlyings_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlyings_groups then
    local length = size_of.underlyings_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlyings_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.underlyings_groups, range, display)
  end

  return dissect.underlyings_groups_fields(buffer, offset, packet, parent)
end

-- Size: Unit Of Measure Qty Decimal 9 Null
size_of.unit_of_measure_qty_decimal_9_null = 8

-- Display: Unit Of Measure Qty Decimal 9 Null
display.unit_of_measure_qty_decimal_9_null = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Unit Of Measure Qty Decimal 9 Null: No Value"
  end
  return "Unit Of Measure Qty Decimal 9 Null: "..value:tonumber()/1000000000
end

-- Dissect: Unit Of Measure Qty Decimal 9 Null
dissect.unit_of_measure_qty_decimal_9_null = function(buffer, offset, packet, parent)
  local length = size_of.unit_of_measure_qty_decimal_9_null
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.unit_of_measure_qty_decimal_9_null(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure_qty_decimal_9_null, range, value, display)

  return offset + length, value
end

-- Size: Min Price Increment Amount Pricenul L 9
size_of.min_price_increment_amount_pricenul_l_9 = 8

-- Display: Min Price Increment Amount Pricenul L 9
display.min_price_increment_amount_pricenul_l_9 = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Min Price Increment Amount Pricenul L 9: No Value"
  end
  return "Min Price Increment Amount Pricenul L 9: "..value:tonumber()/1000000000
end

-- Dissect: Min Price Increment Amount Pricenul L 9
dissect.min_price_increment_amount_pricenul_l_9 = function(buffer, offset, packet, parent)
  local length = size_of.min_price_increment_amount_pricenul_l_9
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.min_price_increment_amount_pricenul_l_9(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_amount_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Size: Min Cab Price Pricenul L 9
size_of.min_cab_price_pricenul_l_9 = 8

-- Display: Min Cab Price Pricenul L 9
display.min_cab_price_pricenul_l_9 = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Min Cab Price Pricenul L 9: No Value"
  end
  return "Min Cab Price Pricenul L 9: "..value:tonumber()/1000000000
end

-- Dissect: Min Cab Price Pricenul L 9
dissect.min_cab_price_pricenul_l_9 = function(buffer, offset, packet, parent)
  local length = size_of.min_cab_price_pricenul_l_9
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.min_cab_price_pricenul_l_9(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.min_cab_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Size: Settl Currency
size_of.settl_currency = 3

-- Display: Settl Currency
display.settl_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settl Currency: No Value"
  end

  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
dissect.settl_currency = function(buffer, offset, packet, parent)
  local length = size_of.settl_currency
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

  local display = display.settl_currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.settl_currency, range, value, display)

  return offset + length, value
end

-- Size: Strike Currency
size_of.strike_currency = 3

-- Display: Strike Currency
display.strike_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
dissect.strike_currency = function(buffer, offset, packet, parent)
  local length = size_of.strike_currency
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

  local display = display.strike_currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Pricenul L 9
size_of.strike_price_pricenul_l_9 = 8

-- Display: Strike Price Pricenul L 9
display.strike_price_pricenul_l_9 = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Strike Price Pricenul L 9: No Value"
  end
  return "Strike Price Pricenul L 9: "..value:tonumber()/1000000000
end

-- Dissect: Strike Price Pricenul L 9
dissect.strike_price_pricenul_l_9 = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_pricenul_l_9
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.strike_price_pricenul_l_9(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.strike_price_pricenul_l_9, range, value, display)

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

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Underlying Product
size_of.underlying_product = 1

-- Display: Underlying Product
display.underlying_product = function(value)
  return "Underlying Product: "..value
end

-- Dissect: Underlying Product
dissect.underlying_product = function(buffer, offset, packet, parent)
  local length = size_of.underlying_product
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_product(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.underlying_product, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Option 55
size_of.md_instrument_definition_option_55 = function(buffer, offset)
  local index = 0

  index = index + size_of.match_event_indicator

  index = index + size_of.tot_num_reports_optional

  index = index + size_of.security_update_action

  index = index + size_of.last_update_time

  index = index + size_of.md_security_trading_status

  index = index + size_of.appl_id

  index = index + size_of.market_segment_id

  index = index + size_of.underlying_product

  index = index + size_of.security_exchange

  index = index + size_of.security_group

  index = index + size_of.asset

  index = index + size_of.symbol

  index = index + size_of.security_id

  index = index + size_of.security_type

  index = index + size_of.cfi_code

  index = index + size_of.put_or_call

  index = index + size_of.maturity_month_year(buffer, offset + index)

  index = index + size_of.currency

  index = index + size_of.strike_price_pricenul_l_9

  index = index + size_of.strike_currency

  index = index + size_of.settl_currency

  index = index + size_of.min_cab_price_pricenul_l_9

  index = index + size_of.match_algorithm

  index = index + size_of.min_trade_vol

  index = index + size_of.max_trade_vol

  index = index + size_of.min_price_increment_optional

  index = index + size_of.min_price_increment_amount_pricenul_l_9

  index = index + size_of.display_factor_decimal_9

  index = index + size_of.tick_rule

  index = index + size_of.main_fraction

  index = index + size_of.sub_fraction

  index = index + size_of.price_display_format

  index = index + size_of.unit_of_measure

  index = index + size_of.unit_of_measure_qty_decimal_9_null

  index = index + size_of.trading_reference_price_pricenul_l_9

  index = index + size_of.settl_price_type

  index = index + size_of.cleared_volume

  index = index + size_of.open_interest_qty

  index = index + size_of.low_limit_price_pricenul_l_9

  index = index + size_of.high_limit_price_pricenul_l_9

  index = index + size_of.user_defined_instrument

  index = index + size_of.trading_reference_date

  index = index + size_of.events_groups(buffer, offset + index)

  index = index + size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + size_of.inst_attrib_groups(buffer, offset + index)

  index = index + size_of.lot_type_rules_groups(buffer, offset + index)

  index = index + size_of.underlyings_groups(buffer, offset + index)

  index = index + size_of.related_instruments_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Option 55
display.md_instrument_definition_option_55 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Definition Option 55
dissect.md_instrument_definition_option_55_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = dissect.put_or_call(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Strike Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price_pricenul_l_9 = dissect.strike_price_pricenul_l_9(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String
  index, strike_currency = dissect.strike_currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = dissect.settl_currency(buffer, index, packet, parent)

  -- Min Cab Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, min_cab_price_pricenul_l_9 = dissect.min_cab_price_pricenul_l_9(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_optional = dissect.min_price_increment_optional(buffer, index, packet, parent)

  -- Min Price Increment Amount Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount_pricenul_l_9 = dissect.min_price_increment_amount_pricenul_l_9(buffer, index, packet, parent)

  -- Display Factor Decimal 9: 8 Byte Signed Fixed Width Integer
  index, display_factor_decimal_9 = dissect.display_factor_decimal_9(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = dissect.tick_rule(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = dissect.sub_fraction(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = dissect.price_display_format(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty Decimal 9 Null: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_decimal_9_null = dissect.unit_of_measure_qty_decimal_9_null(buffer, index, packet, parent)

  -- Trading Reference Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenul_l_9 = dissect.trading_reference_price_pricenul_l_9(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = dissect.cleared_volume(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = dissect.open_interest_qty(buffer, index, packet, parent)

  -- Low Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenul_l_9 = dissect.low_limit_price_pricenul_l_9(buffer, index, packet, parent)

  -- High Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenul_l_9 = dissect.high_limit_price_pricenul_l_9(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = dissect.lot_type_rules_groups(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index, underlyings_groups = dissect.underlyings_groups(buffer, index, packet, parent)

  -- Related Instruments Groups: Struct of 2 fields
  index, related_instruments_groups = dissect.related_instruments_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Option 55
dissect.md_instrument_definition_option_55 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_option_55 then
    local length = size_of.md_instrument_definition_option_55(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_option_55(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_option_55, range, display)
  end

  return dissect.md_instrument_definition_option_55_fields(buffer, offset, packet, parent)
end

-- Size: Flow Schedule Type
size_of.flow_schedule_type = 1

-- Display: Flow Schedule Type
display.flow_schedule_type = function(value)
  -- Check if field has value
  if value == 127 then
    return "Flow Schedule Type: No Value"
  end

  return "Flow Schedule Type: "..value
end

-- Dissect: Flow Schedule Type
dissect.flow_schedule_type = function(buffer, offset, packet, parent)
  local length = size_of.flow_schedule_type
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.flow_schedule_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.flow_schedule_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Multiplier Unit
size_of.contract_multiplier_unit = 1

-- Display: Contract Multiplier Unit
display.contract_multiplier_unit = function(value)
  -- Check if field has value
  if value == 127 then
    return "Contract Multiplier Unit: No Value"
  end

  return "Contract Multiplier Unit: "..value
end

-- Dissect: Contract Multiplier Unit
dissect.contract_multiplier_unit = function(buffer, offset, packet, parent)
  local length = size_of.contract_multiplier_unit
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.contract_multiplier_unit(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.contract_multiplier_unit, range, value, display)

  return offset + length, value
end

-- Size: Contract Multiplier
size_of.contract_multiplier = 4

-- Display: Contract Multiplier
display.contract_multiplier = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
dissect.contract_multiplier = function(buffer, offset, packet, parent)
  local length = size_of.contract_multiplier
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.contract_multiplier(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Original Contract Size
size_of.original_contract_size = 4

-- Display: Original Contract Size
display.original_contract_size = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Original Contract Size: No Value"
  end

  return "Original Contract Size: "..value
end

-- Dissect: Original Contract Size
dissect.original_contract_size = function(buffer, offset, packet, parent)
  local length = size_of.original_contract_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.original_contract_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.original_contract_size, range, value, display)

  return offset + length, value
end

-- Size: Decay Start Date
size_of.decay_start_date = 2

-- Display: Decay Start Date
display.decay_start_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Decay Start Date: No Value"
  end

  return "Decay Start Date: "..value
end

-- Dissect: Decay Start Date
dissect.decay_start_date = function(buffer, offset, packet, parent)
  local length = size_of.decay_start_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.decay_start_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.decay_start_date, range, value, display)

  return offset + length, value
end

-- Size: Decay Quantity
size_of.decay_quantity = 4

-- Display: Decay Quantity
display.decay_quantity = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Decay Quantity: No Value"
  end

  return "Decay Quantity: "..value
end

-- Dissect: Decay Quantity
dissect.decay_quantity = function(buffer, offset, packet, parent)
  local length = size_of.decay_quantity
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.decay_quantity(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.decay_quantity, range, value, display)

  return offset + length, value
end

-- Size: Min Price Increment
size_of.min_price_increment = 8

-- Display: Min Price Increment
display.min_price_increment = function(value)
  return "Min Price Increment: "..value:tonumber()/1000000000
end

-- Dissect: Min Price Increment
dissect.min_price_increment = function(buffer, offset, packet, parent)
  local length = size_of.min_price_increment
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.min_price_increment(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Future 54
size_of.md_instrument_definition_future_54 = function(buffer, offset)
  local index = 0

  index = index + size_of.match_event_indicator

  index = index + size_of.tot_num_reports_optional

  index = index + size_of.security_update_action

  index = index + size_of.last_update_time

  index = index + size_of.md_security_trading_status

  index = index + size_of.appl_id

  index = index + size_of.market_segment_id

  index = index + size_of.underlying_product

  index = index + size_of.security_exchange

  index = index + size_of.security_group

  index = index + size_of.asset

  index = index + size_of.symbol

  index = index + size_of.security_id

  index = index + size_of.security_type

  index = index + size_of.cfi_code

  index = index + size_of.maturity_month_year(buffer, offset + index)

  index = index + size_of.currency

  index = index + size_of.settl_currency

  index = index + size_of.match_algorithm

  index = index + size_of.min_trade_vol

  index = index + size_of.max_trade_vol

  index = index + size_of.min_price_increment

  index = index + size_of.display_factor_decimal_9

  index = index + size_of.main_fraction

  index = index + size_of.sub_fraction

  index = index + size_of.price_display_format

  index = index + size_of.unit_of_measure

  index = index + size_of.unit_of_measure_qty_decimal_9_null

  index = index + size_of.trading_reference_price_pricenul_l_9

  index = index + size_of.settl_price_type

  index = index + size_of.open_interest_qty

  index = index + size_of.cleared_volume

  index = index + size_of.high_limit_price_pricenul_l_9

  index = index + size_of.low_limit_price_pricenul_l_9

  index = index + size_of.max_price_variation_pricenul_l_9

  index = index + size_of.decay_quantity

  index = index + size_of.decay_start_date

  index = index + size_of.original_contract_size

  index = index + size_of.contract_multiplier

  index = index + size_of.contract_multiplier_unit

  index = index + size_of.flow_schedule_type

  index = index + size_of.min_price_increment_amount_pricenul_l_9

  index = index + size_of.user_defined_instrument

  index = index + size_of.trading_reference_date

  index = index + size_of.events_groups(buffer, offset + index)

  index = index + size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + size_of.inst_attrib_groups(buffer, offset + index)

  index = index + size_of.lot_type_rules_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Future 54
display.md_instrument_definition_future_54 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Definition Future 54
dissect.md_instrument_definition_future_54_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = dissect.settl_currency(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index, min_price_increment = dissect.min_price_increment(buffer, index, packet, parent)

  -- Display Factor Decimal 9: 8 Byte Signed Fixed Width Integer
  index, display_factor_decimal_9 = dissect.display_factor_decimal_9(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = dissect.sub_fraction(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = dissect.price_display_format(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty Decimal 9 Null: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_decimal_9_null = dissect.unit_of_measure_qty_decimal_9_null(buffer, index, packet, parent)

  -- Trading Reference Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenul_l_9 = dissect.trading_reference_price_pricenul_l_9(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = dissect.open_interest_qty(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = dissect.cleared_volume(buffer, index, packet, parent)

  -- High Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenul_l_9 = dissect.high_limit_price_pricenul_l_9(buffer, index, packet, parent)

  -- Low Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenul_l_9 = dissect.low_limit_price_pricenul_l_9(buffer, index, packet, parent)

  -- Max Price Variation Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenul_l_9 = dissect.max_price_variation_pricenul_l_9(buffer, index, packet, parent)

  -- Decay Quantity: 4 Byte Signed Fixed Width Integer Nullable
  index, decay_quantity = dissect.decay_quantity(buffer, index, packet, parent)

  -- Decay Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, decay_start_date = dissect.decay_start_date(buffer, index, packet, parent)

  -- Original Contract Size: 4 Byte Signed Fixed Width Integer Nullable
  index, original_contract_size = dissect.original_contract_size(buffer, index, packet, parent)

  -- Contract Multiplier: 4 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier = dissect.contract_multiplier(buffer, index, packet, parent)

  -- Contract Multiplier Unit: 1 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier_unit = dissect.contract_multiplier_unit(buffer, index, packet, parent)

  -- Flow Schedule Type: 1 Byte Signed Fixed Width Integer Nullable
  index, flow_schedule_type = dissect.flow_schedule_type(buffer, index, packet, parent)

  -- Min Price Increment Amount Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount_pricenul_l_9 = dissect.min_price_increment_amount_pricenul_l_9(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = dissect.lot_type_rules_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Future 54
dissect.md_instrument_definition_future_54 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_future_54 then
    local length = size_of.md_instrument_definition_future_54(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_future_54(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_future_54, range, display)
  end

  return dissect.md_instrument_definition_future_54_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Type Book
size_of.md_entry_type_book = 1

-- Display: Md Entry Type Book
display.md_entry_type_book = function(value)
  if value == "0" then
    return "Md Entry Type Book: Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type Book: Offer (1)"
  end
  if value == "E" then
    return "Md Entry Type Book: Implied Bid (E)"
  end
  if value == "F" then
    return "Md Entry Type Book: Implied Offer (F)"
  end
  if value == "J" then
    return "Md Entry Type Book: Book Reset (J)"
  end

  return "Md Entry Type Book: Unknown("..value..")"
end

-- Dissect: Md Entry Type Book
dissect.md_entry_type_book = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_type_book
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.md_entry_type_book(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_book, range, value, display)

  return offset + length, value
end

-- Size: Md Display Qty
size_of.md_display_qty = 4

-- Display: Md Display Qty
display.md_display_qty = function(value)
  return "Md Display Qty: "..value
end

-- Dissect: Md Display Qty
dissect.md_display_qty = function(buffer, offset, packet, parent)
  local length = size_of.md_display_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.md_display_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_display_qty, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Px
size_of.md_entry_px = 8

-- Display: Md Entry Px
display.md_entry_px = function(value)
  return "Md Entry Px: "..value:tonumber()/1000000000
end

-- Dissect: Md Entry Px
dissect.md_entry_px = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.md_entry_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Size: Md Order Priority
size_of.md_order_priority = 8

-- Display: Md Order Priority
display.md_order_priority = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFF) then
    return "Md Order Priority: No Value"
  end

  return "Md Order Priority: "..value
end

-- Dissect: Md Order Priority
dissect.md_order_priority = function(buffer, offset, packet, parent)
  local length = size_of.md_order_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.md_order_priority(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_order_priority, range, value, display)

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

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh Order Book 53 Group
size_of.snapshot_full_refresh_order_book_53_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_id

  index = index + size_of.md_order_priority

  index = index + size_of.md_entry_px

  index = index + size_of.md_display_qty

  index = index + size_of.md_entry_type_book

  return index
end

-- Display: Snapshot Full Refresh Order Book 53 Group
display.snapshot_full_refresh_order_book_53_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book 53 Group
dissect.snapshot_full_refresh_order_book_53_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = dissect.md_order_priority(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Display Qty: 4 Byte Signed Fixed Width Integer
  index, md_display_qty = dissect.md_display_qty(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = dissect.md_entry_type_book(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book 53 Group
dissect.snapshot_full_refresh_order_book_53_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.snapshot_full_refresh_order_book_53_group then
    local length = size_of.snapshot_full_refresh_order_book_53_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_order_book_53_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53_group, range, display)
  end

  return dissect.snapshot_full_refresh_order_book_53_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh Order Book 53 Groups
size_of.snapshot_full_refresh_order_book_53_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local snapshot_full_refresh_order_book_53_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_order_book_53_group_count * 29

  return index
end

-- Display: Snapshot Full Refresh Order Book 53 Groups
display.snapshot_full_refresh_order_book_53_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book 53 Groups
dissect.snapshot_full_refresh_order_book_53_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Snapshot Full Refresh Order Book 53 Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.snapshot_full_refresh_order_book_53_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Order Book 53 Groups
dissect.snapshot_full_refresh_order_book_53_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book_53_groups then
    local length = size_of.snapshot_full_refresh_order_book_53_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_order_book_53_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53_groups, range, display)
  end

  return dissect.snapshot_full_refresh_order_book_53_groups_fields(buffer, offset, packet, parent)
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

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Current Chunk
size_of.current_chunk = 4

-- Display: Current Chunk
display.current_chunk = function(value)
  return "Current Chunk: "..value
end

-- Dissect: Current Chunk
dissect.current_chunk = function(buffer, offset, packet, parent)
  local length = size_of.current_chunk
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.current_chunk(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.current_chunk, range, value, display)

  return offset + length, value
end

-- Size: No Chunks
size_of.no_chunks = 4

-- Display: No Chunks
display.no_chunks = function(value)
  return "No Chunks: "..value
end

-- Dissect: No Chunks
dissect.no_chunks = function(buffer, offset, packet, parent)
  local length = size_of.no_chunks
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_chunks(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.no_chunks, range, value, display)

  return offset + length, value
end

-- Size: Tot Num Reports
size_of.tot_num_reports = 4

-- Display: Tot Num Reports
display.tot_num_reports = function(value)
  return "Tot Num Reports: "..value
end

-- Dissect: Tot Num Reports
dissect.tot_num_reports = function(buffer, offset, packet, parent)
  local length = size_of.tot_num_reports
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tot_num_reports(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.tot_num_reports, range, value, display)

  return offset + length, value
end

-- Size: Last Msg Seq Num Processed
size_of.last_msg_seq_num_processed = 4

-- Display: Last Msg Seq Num Processed
display.last_msg_seq_num_processed = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
dissect.last_msg_seq_num_processed = function(buffer, offset, packet, parent)
  local length = size_of.last_msg_seq_num_processed
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_msg_seq_num_processed(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh Order Book 53
size_of.snapshot_full_refresh_order_book_53 = function(buffer, offset)
  local index = 0

  index = index + size_of.last_msg_seq_num_processed

  index = index + size_of.tot_num_reports

  index = index + size_of.security_id

  index = index + size_of.no_chunks

  index = index + size_of.current_chunk

  index = index + size_of.transact_time

  index = index + size_of.snapshot_full_refresh_order_book_53_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Order Book 53
display.snapshot_full_refresh_order_book_53 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book 53
dissect.snapshot_full_refresh_order_book_53_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- No Chunks: 4 Byte Unsigned Fixed Width Integer
  index, no_chunks = dissect.no_chunks(buffer, index, packet, parent)

  -- Current Chunk: 4 Byte Unsigned Fixed Width Integer
  index, current_chunk = dissect.current_chunk(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Snapshot Full Refresh Order Book 53 Groups: Struct of 2 fields
  index, snapshot_full_refresh_order_book_53_groups = dissect.snapshot_full_refresh_order_book_53_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book 53
dissect.snapshot_full_refresh_order_book_53 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book_53 then
    local length = size_of.snapshot_full_refresh_order_book_53(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_order_book_53(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53, range, display)
  end

  return dissect.snapshot_full_refresh_order_book_53_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Type
size_of.md_entry_type_ = 1

-- Display: Md Entry Type
display.md_entry_type_ = function(value)
  if value == "0" then
    return "Md Entry Type : Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type : Offer (1)"
  end
  if value == "2" then
    return "Md Entry Type : Trade (2)"
  end
  if value == "4" then
    return "Md Entry Type : Open Price (4)"
  end
  if value == "6" then
    return "Md Entry Type : Settlement Price (6)"
  end
  if value == "7" then
    return "Md Entry Type : Trading Session High Price (7)"
  end
  if value == "8" then
    return "Md Entry Type : Trading Session Low Price (8)"
  end
  if value == "B" then
    return "Md Entry Type : Cleared Volume (B)"
  end
  if value == "C" then
    return "Md Entry Type : Open Interest (C)"
  end
  if value == "E" then
    return "Md Entry Type : Implied Bid (E)"
  end
  if value == "F" then
    return "Md Entry Type : Implied Offer (F)"
  end
  if value == "J" then
    return "Md Entry Type : Book Reset (J)"
  end
  if value == "N" then
    return "Md Entry Type : Session High Bid (N)"
  end
  if value == "O" then
    return "Md Entry Type : Session Low Offer (O)"
  end
  if value == "W" then
    return "Md Entry Type : Fixing Price (W)"
  end
  if value == "e" then
    return "Md Entry Type : Electronic Volume (e)"
  end
  if value == "g" then
    return "Md Entry Type : Threshold Limits And Price Band Variation (g)"
  end

  return "Md Entry Type : Unknown("..value..")"
end

-- Dissect: Md Entry Type
dissect.md_entry_type_ = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_type_
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.md_entry_type_(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_, range, value, display)

  return offset + length, value
end

-- Size: Open Close Settl Flag
size_of.open_close_settl_flag = 1

-- Display: Open Close Settl Flag
display.open_close_settl_flag = function(value)
  if value == 0 then
    return "Open Close Settl Flag: Daily Open Price (0)"
  end
  if value == 5 then
    return "Open Close Settl Flag: Indicative Opening Price (5)"
  end
  if value == 255 then
    return "Open Close Settl Flag: No Value"
  end

  return "Open Close Settl Flag: Unknown("..value..")"
end

-- Dissect: Open Close Settl Flag
dissect.open_close_settl_flag = function(buffer, offset, packet, parent)
  local length = size_of.open_close_settl_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.open_close_settl_flag(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Size: Md Price Level Optional
size_of.md_price_level_optional = 1

-- Display: Md Price Level Optional
display.md_price_level_optional = function(value)
  -- Check if field has value
  if value == 127 then
    return "Md Price Level Optional: No Value"
  end

  return "Md Price Level Optional: "..value
end

-- Dissect: Md Price Level Optional
dissect.md_price_level_optional = function(buffer, offset, packet, parent)
  local length = size_of.md_price_level_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.md_price_level_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_price_level_optional, range, value, display)

  return offset + length, value
end

-- Size: Number Of Orders Optional
size_of.number_of_orders_optional = 4

-- Display: Number Of Orders Optional
display.number_of_orders_optional = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Number Of Orders Optional: No Value"
  end

  return "Number Of Orders Optional: "..value
end

-- Dissect: Number Of Orders Optional
dissect.number_of_orders_optional = function(buffer, offset, packet, parent)
  local length = size_of.number_of_orders_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.number_of_orders_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.number_of_orders_optional, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size Optional
size_of.md_entry_size_optional = 4

-- Display: Md Entry Size Optional
display.md_entry_size_optional = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Size Optional: No Value"
  end

  return "Md Entry Size Optional: "..value
end

-- Dissect: Md Entry Size Optional
dissect.md_entry_size_optional = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_size_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.md_entry_size_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_entry_size_optional, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Px Optional
size_of.md_entry_px_optional = 8

-- Display: Md Entry Px Optional
display.md_entry_px_optional = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Md Entry Px Optional: No Value"
  end
  return "Md Entry Px Optional: "..value:tonumber()/1000000000
end

-- Dissect: Md Entry Px Optional
dissect.md_entry_px_optional = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_px_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.md_entry_px_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_entry_px_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh 52 Group
size_of.snapshot_full_refresh_52_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px_optional

  index = index + size_of.md_entry_size_optional

  index = index + size_of.number_of_orders_optional

  index = index + size_of.md_price_level_optional

  index = index + size_of.trading_reference_date

  index = index + size_of.open_close_settl_flag

  index = index + size_of.settl_price_type

  index = index + size_of.md_entry_type_

  return index
end

-- Display: Snapshot Full Refresh 52 Group
display.snapshot_full_refresh_52_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh 52 Group
dissect.snapshot_full_refresh_52_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Md Price Level Optional: 1 Byte Signed Fixed Width Integer Nullable
  index, md_price_level_optional = dissect.md_price_level_optional(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, open_close_settl_flag = dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 17 values
  index, md_entry_type_ = dissect.md_entry_type_(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh 52 Group
dissect.snapshot_full_refresh_52_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.snapshot_full_refresh_52_group then
    local length = size_of.snapshot_full_refresh_52_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_52_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52_group, range, display)
  end

  return dissect.snapshot_full_refresh_52_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh 52 Groups
size_of.snapshot_full_refresh_52_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local snapshot_full_refresh_52_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_52_group_count * 22

  return index
end

-- Display: Snapshot Full Refresh 52 Groups
display.snapshot_full_refresh_52_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh 52 Groups
dissect.snapshot_full_refresh_52_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Snapshot Full Refresh 52 Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.snapshot_full_refresh_52_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Snapshot Full Refresh 52 Groups
dissect.snapshot_full_refresh_52_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_52_groups then
    local length = size_of.snapshot_full_refresh_52_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_52_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52_groups, range, display)
  end

  return dissect.snapshot_full_refresh_52_groups_fields(buffer, offset, packet, parent)
end

-- Size: Trade Date
size_of.trade_date = 2

-- Display: Trade Date
display.trade_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
dissect.trade_date = function(buffer, offset, packet, parent)
  local length = size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Rpt Seq
size_of.rpt_seq = 4

-- Display: Rpt Seq
display.rpt_seq = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
dissect.rpt_seq = function(buffer, offset, packet, parent)
  local length = size_of.rpt_seq
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.rpt_seq(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh 52
size_of.snapshot_full_refresh_52 = function(buffer, offset)
  local index = 0

  index = index + size_of.last_msg_seq_num_processed

  index = index + size_of.tot_num_reports

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.transact_time

  index = index + size_of.last_update_time

  index = index + size_of.trade_date

  index = index + size_of.md_security_trading_status

  index = index + size_of.high_limit_price_pricenul_l_9

  index = index + size_of.low_limit_price_pricenul_l_9

  index = index + size_of.max_price_variation_pricenul_l_9

  index = index + size_of.snapshot_full_refresh_52_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh 52
display.snapshot_full_refresh_52 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh 52
dissect.snapshot_full_refresh_52_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = dissect.last_update_time(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- High Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenul_l_9 = dissect.high_limit_price_pricenul_l_9(buffer, index, packet, parent)

  -- Low Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenul_l_9 = dissect.low_limit_price_pricenul_l_9(buffer, index, packet, parent)

  -- Max Price Variation Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenul_l_9 = dissect.max_price_variation_pricenul_l_9(buffer, index, packet, parent)

  -- Snapshot Full Refresh 52 Groups: Struct of 2 fields
  index, snapshot_full_refresh_52_groups = dissect.snapshot_full_refresh_52_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh 52
dissect.snapshot_full_refresh_52 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_52 then
    local length = size_of.snapshot_full_refresh_52(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_52(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52, range, display)
  end

  return dissect.snapshot_full_refresh_52_fields(buffer, offset, packet, parent)
end

-- Size: Padding 1
size_of.padding_1 = 1

-- Display: Padding 1
display.padding_1 = function(value)
  return "Padding 1: "..value
end

-- Dissect: Padding 1
dissect.padding_1 = function(buffer, offset, packet, parent)
  local length = size_of.padding_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_1(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.padding_1, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Type Statistics
size_of.md_entry_type_statistics = 1

-- Display: Md Entry Type Statistics
display.md_entry_type_statistics = function(value)
  if value == "4" then
    return "Md Entry Type Statistics: Open Price (4)"
  end
  if value == "7" then
    return "Md Entry Type Statistics: High Trade (7)"
  end
  if value == "8" then
    return "Md Entry Type Statistics: Low Trade (8)"
  end
  if value == "N" then
    return "Md Entry Type Statistics: Highest Bid (N)"
  end
  if value == "O" then
    return "Md Entry Type Statistics: Lowest Offer (O)"
  end

  return "Md Entry Type Statistics: Unknown("..value..")"
end

-- Dissect: Md Entry Type Statistics
dissect.md_entry_type_statistics = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_type_statistics
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.md_entry_type_statistics(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_statistics, range, value, display)

  return offset + length, value
end

-- Size: Md Update Action
size_of.md_update_action = 1

-- Display: Md Update Action
display.md_update_action = function(value)
  if value == 0 then
    return "Md Update Action: New (0)"
  end
  if value == 1 then
    return "Md Update Action: Change (1)"
  end
  if value == 2 then
    return "Md Update Action: Delete (2)"
  end
  if value == 3 then
    return "Md Update Action: Delete Thru (3)"
  end
  if value == 4 then
    return "Md Update Action: Delete From (4)"
  end
  if value == 5 then
    return "Md Update Action: Overlay (5)"
  end

  return "Md Update Action: Unknown("..value..")"
end

-- Dissect: Md Update Action
dissect.md_update_action = function(buffer, offset, packet, parent)
  local length = size_of.md_update_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Session Statistics 51 Group
size_of.m_d_incremental_refresh_session_statistics_51_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.open_close_settl_flag

  index = index + size_of.md_update_action

  index = index + size_of.md_entry_type_statistics

  index = index + size_of.md_entry_size_optional

  index = index + size_of.padding_1

  return index
end

-- Display: M D Incremental Refresh Session Statistics 51 Group
display.m_d_incremental_refresh_session_statistics_51_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics 51 Group
dissect.m_d_incremental_refresh_session_statistics_51_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, open_close_settl_flag = dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Statistics: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_statistics = dissect.md_entry_type_statistics(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = dissect.padding_1(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics 51 Group
dissect.m_d_incremental_refresh_session_statistics_51_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_session_statistics_51_group then
    local length = size_of.m_d_incremental_refresh_session_statistics_51_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_session_statistics_51_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_51_group, range, display)
  end

  return dissect.m_d_incremental_refresh_session_statistics_51_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Session Statistics 51 Groups
size_of.m_d_incremental_refresh_session_statistics_51_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_session_statistics_51_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_session_statistics_51_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Session Statistics 51 Groups
display.m_d_incremental_refresh_session_statistics_51_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics 51 Groups
dissect.m_d_incremental_refresh_session_statistics_51_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Session Statistics 51 Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_session_statistics_51_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics 51 Groups
dissect.m_d_incremental_refresh_session_statistics_51_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_session_statistics_51_groups then
    local length = size_of.m_d_incremental_refresh_session_statistics_51_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_session_statistics_51_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_51_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_session_statistics_51_groups_fields(buffer, offset, packet, parent)
end

-- Size: Padding 2
size_of.padding_2 = 2

-- Display: Padding 2
display.padding_2 = function(value)
  return "Padding 2: "..value
end

-- Dissect: Padding 2
dissect.padding_2 = function(buffer, offset, packet, parent)
  local length = size_of.padding_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_2(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.padding_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Incremental Refresh Session Statistics 51
size_of.md_incremental_refresh_session_statistics_51 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_session_statistics_51_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Session Statistics 51
display.md_incremental_refresh_session_statistics_51 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Session Statistics 51
dissect.md_incremental_refresh_session_statistics_51_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Session Statistics 51 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_session_statistics_51_groups = dissect.m_d_incremental_refresh_session_statistics_51_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Session Statistics 51
dissect.md_incremental_refresh_session_statistics_51 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_session_statistics_51 then
    local length = size_of.md_incremental_refresh_session_statistics_51(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_session_statistics_51(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_session_statistics_51, range, display)
  end

  return dissect.md_incremental_refresh_session_statistics_51_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Limits Banding 50 Group
size_of.m_d_incremental_refresh_limits_banding_50_group = function(buffer, offset)
  local index = 0

  index = index + size_of.high_limit_price_pricenul_l_9

  index = index + size_of.low_limit_price_pricenul_l_9

  index = index + size_of.max_price_variation_pricenul_l_9

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  return index
end

-- Display: M D Incremental Refresh Limits Banding 50 Group
display.m_d_incremental_refresh_limits_banding_50_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding 50 Group
dissect.m_d_incremental_refresh_limits_banding_50_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- High Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenul_l_9 = dissect.high_limit_price_pricenul_l_9(buffer, index, packet, parent)

  -- Low Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenul_l_9 = dissect.low_limit_price_pricenul_l_9(buffer, index, packet, parent)

  -- Max Price Variation Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenul_l_9 = dissect.max_price_variation_pricenul_l_9(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding 50 Group
dissect.m_d_incremental_refresh_limits_banding_50_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_limits_banding_50_group then
    local length = size_of.m_d_incremental_refresh_limits_banding_50_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_limits_banding_50_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_50_group, range, display)
  end

  return dissect.m_d_incremental_refresh_limits_banding_50_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Limits Banding 50 Groups
size_of.m_d_incremental_refresh_limits_banding_50_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_limits_banding_50_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_limits_banding_50_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Limits Banding 50 Groups
display.m_d_incremental_refresh_limits_banding_50_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding 50 Groups
dissect.m_d_incremental_refresh_limits_banding_50_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Limits Banding 50 Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_limits_banding_50_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding 50 Groups
dissect.m_d_incremental_refresh_limits_banding_50_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_limits_banding_50_groups then
    local length = size_of.m_d_incremental_refresh_limits_banding_50_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_limits_banding_50_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_50_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_limits_banding_50_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Limits Banding 50
size_of.md_incremental_refresh_limits_banding_50 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_limits_banding_50_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Limits Banding 50
display.md_incremental_refresh_limits_banding_50 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Limits Banding 50
dissect.md_incremental_refresh_limits_banding_50_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Limits Banding 50 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_limits_banding_50_groups = dissect.m_d_incremental_refresh_limits_banding_50_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Limits Banding 50
dissect.md_incremental_refresh_limits_banding_50 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_limits_banding_50 then
    local length = size_of.md_incremental_refresh_limits_banding_50(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_limits_banding_50(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_limits_banding_50, range, display)
  end

  return dissect.md_incremental_refresh_limits_banding_50_fields(buffer, offset, packet, parent)
end

-- Size: Padding 7
size_of.padding_7 = 7

-- Display: Padding 7
display.padding_7 = function(value)
  return "Padding 7: "..value
end

-- Dissect: Padding 7
dissect.padding_7 = function(buffer, offset, packet, parent)
  local length = size_of.padding_7
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_7(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.padding_7, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Type Daily Statistics
size_of.md_entry_type_daily_statistics = 1

-- Display: Md Entry Type Daily Statistics
display.md_entry_type_daily_statistics = function(value)
  if value == "6" then
    return "Md Entry Type Daily Statistics: Settlement Price (6)"
  end
  if value == "B" then
    return "Md Entry Type Daily Statistics: Cleared Volume (B)"
  end
  if value == "C" then
    return "Md Entry Type Daily Statistics: Open Interest (C)"
  end
  if value == "W" then
    return "Md Entry Type Daily Statistics: Fixing Price (W)"
  end

  return "Md Entry Type Daily Statistics: Unknown("..value..")"
end

-- Dissect: Md Entry Type Daily Statistics
dissect.md_entry_type_daily_statistics = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_type_daily_statistics
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.md_entry_type_daily_statistics(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_daily_statistics, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Daily Statistics 49 Group
size_of.m_d_incremental_refresh_daily_statistics_49_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px_optional

  index = index + size_of.md_entry_size_optional

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.trading_reference_date

  index = index + size_of.settl_price_type

  index = index + size_of.md_update_action

  index = index + size_of.md_entry_type_daily_statistics

  index = index + size_of.padding_7

  return index
end

-- Display: M D Incremental Refresh Daily Statistics 49 Group
display.m_d_incremental_refresh_daily_statistics_49_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics 49 Group
dissect.m_d_incremental_refresh_daily_statistics_49_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Daily Statistics: 1 Byte Ascii String Enum with 4 values
  index, md_entry_type_daily_statistics = dissect.md_entry_type_daily_statistics(buffer, index, packet, parent)

  -- Padding 7: 7 Byte
  index, padding_7 = dissect.padding_7(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics 49 Group
dissect.m_d_incremental_refresh_daily_statistics_49_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_daily_statistics_49_group then
    local length = size_of.m_d_incremental_refresh_daily_statistics_49_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_daily_statistics_49_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_49_group, range, display)
  end

  return dissect.m_d_incremental_refresh_daily_statistics_49_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Daily Statistics 49 Groups
size_of.m_d_incremental_refresh_daily_statistics_49_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_daily_statistics_49_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_daily_statistics_49_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Daily Statistics 49 Groups
display.m_d_incremental_refresh_daily_statistics_49_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics 49 Groups
dissect.m_d_incremental_refresh_daily_statistics_49_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Daily Statistics 49 Group: Struct of 9 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_daily_statistics_49_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics 49 Groups
dissect.m_d_incremental_refresh_daily_statistics_49_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_daily_statistics_49_groups then
    local length = size_of.m_d_incremental_refresh_daily_statistics_49_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_daily_statistics_49_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_49_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_daily_statistics_49_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Daily Statistics 49
size_of.md_incremental_refresh_daily_statistics_49 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_daily_statistics_49_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Daily Statistics 49
display.md_incremental_refresh_daily_statistics_49 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Daily Statistics 49
dissect.md_incremental_refresh_daily_statistics_49_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Daily Statistics 49 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_daily_statistics_49_groups = dissect.m_d_incremental_refresh_daily_statistics_49_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Daily Statistics 49
dissect.md_incremental_refresh_daily_statistics_49 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_daily_statistics_49 then
    local length = size_of.md_incremental_refresh_daily_statistics_49(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_daily_statistics_49(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_daily_statistics_49, range, display)
  end

  return dissect.md_incremental_refresh_daily_statistics_49_fields(buffer, offset, packet, parent)
end

-- Size: Padding 4
size_of.padding_4 = 4

-- Display: Padding 4
display.padding_4 = function(value)
  return "Padding 4: "..value
end

-- Dissect: Padding 4
dissect.padding_4 = function(buffer, offset, packet, parent)
  local length = size_of.padding_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_4(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.padding_4, range, value, display)

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

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Trade Summary 48 Order Group
size_of.m_d_incremental_refresh_trade_summary_48_order_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_id

  index = index + size_of.last_qty

  index = index + size_of.padding_4

  return index
end

-- Display: M D Incremental Refresh Trade Summary 48 Order Group
display.m_d_incremental_refresh_trade_summary_48_order_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 48 Order Group
dissect.m_d_incremental_refresh_trade_summary_48_order_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = dissect.padding_4(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 48 Order Group
dissect.m_d_incremental_refresh_trade_summary_48_order_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_48_order_group then
    local length = size_of.m_d_incremental_refresh_trade_summary_48_order_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_trade_summary_48_order_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_order_group, range, display)
  end

  return dissect.m_d_incremental_refresh_trade_summary_48_order_group_fields(buffer, offset, packet, parent)
end

-- Size: Padding 5
size_of.padding_5 = 5

-- Display: Padding 5
display.padding_5 = function(value)
  return "Padding 5: "..value
end

-- Dissect: Padding 5
dissect.padding_5 = function(buffer, offset, packet, parent)
  local length = size_of.padding_5
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_5(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.padding_5, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size 8 Byte
size_of.group_size_8_byte = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length

  index = index + size_of.padding_5

  index = index + size_of.num_in_group

  return index
end

-- Display: Group Size 8 Byte
display.group_size_8_byte = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size 8 Byte
dissect.group_size_8_byte_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = dissect.padding_5(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size 8 Byte
dissect.group_size_8_byte = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size_8_byte then
    local length = size_of.group_size_8_byte(buffer, offset)
    local range = buffer(offset, length)
    local display = display.group_size_8_byte(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.group_size_8_byte, range, display)
  end

  return dissect.group_size_8_byte_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Trade Summary 48 Order Groups
size_of.m_d_incremental_refresh_trade_summary_48_order_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_8_byte(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_48_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_48_order_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Trade Summary 48 Order Groups
display.m_d_incremental_refresh_trade_summary_48_order_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 48 Order Groups
dissect.m_d_incremental_refresh_trade_summary_48_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = dissect.group_size_8_byte(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Trade Summary 48 Order Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_trade_summary_48_order_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 48 Order Groups
dissect.m_d_incremental_refresh_trade_summary_48_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_48_order_groups then
    local length = size_of.m_d_incremental_refresh_trade_summary_48_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_trade_summary_48_order_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_order_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_trade_summary_48_order_groups_fields(buffer, offset, packet, parent)
end

-- Size: Md Trade Entry Id
size_of.md_trade_entry_id = 4

-- Display: Md Trade Entry Id
display.md_trade_entry_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Trade Entry Id: No Value"
  end

  return "Md Trade Entry Id: "..value
end

-- Dissect: Md Trade Entry Id
dissect.md_trade_entry_id = function(buffer, offset, packet, parent)
  local length = size_of.md_trade_entry_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_trade_entry_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_trade_entry_id, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Side
size_of.aggressor_side = 1

-- Display: Aggressor Side
display.aggressor_side = function(value)
  if value == 0 then
    return "Aggressor Side: No Aggressor (0)"
  end
  if value == 1 then
    return "Aggressor Side: Buy (1)"
  end
  if value == 2 then
    return "Aggressor Side: Sell (2)"
  end
  if value == 255 then
    return "Aggressor Side: No Value"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
dissect.aggressor_side = function(buffer, offset, packet, parent)
  local length = size_of.aggressor_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Size: Number Of Orders
size_of.number_of_orders = 4

-- Display: Number Of Orders
display.number_of_orders = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
dissect.number_of_orders = function(buffer, offset, packet, parent)
  local length = size_of.number_of_orders
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.number_of_orders(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size
size_of.md_entry_size = 4

-- Display: Md Entry Size
display.md_entry_size = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
dissect.md_entry_size = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Trade Summary 48 Group
size_of.m_d_incremental_refresh_trade_summary_48_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px

  index = index + size_of.md_entry_size

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.number_of_orders

  index = index + size_of.aggressor_side

  index = index + size_of.md_update_action

  index = index + size_of.md_trade_entry_id

  index = index + size_of.padding_2

  return index
end

-- Display: M D Incremental Refresh Trade Summary 48 Group
display.m_d_incremental_refresh_trade_summary_48_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 48 Group
dissect.m_d_incremental_refresh_trade_summary_48_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = dissect.md_entry_size(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index, number_of_orders = dissect.number_of_orders(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = dissect.aggressor_side(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, md_trade_entry_id = dissect.md_trade_entry_id(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 48 Group
dissect.m_d_incremental_refresh_trade_summary_48_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_48_group then
    local length = size_of.m_d_incremental_refresh_trade_summary_48_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_trade_summary_48_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_group, range, display)
  end

  return dissect.m_d_incremental_refresh_trade_summary_48_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Trade Summary 48 Groups
size_of.m_d_incremental_refresh_trade_summary_48_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_48_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_48_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Trade Summary 48 Groups
display.m_d_incremental_refresh_trade_summary_48_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 48 Groups
dissect.m_d_incremental_refresh_trade_summary_48_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Trade Summary 48 Group: Struct of 9 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_trade_summary_48_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 48 Groups
dissect.m_d_incremental_refresh_trade_summary_48_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_48_groups then
    local length = size_of.m_d_incremental_refresh_trade_summary_48_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_trade_summary_48_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_trade_summary_48_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Trade Summary 48
size_of.md_incremental_refresh_trade_summary_48 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_trade_summary_48_groups(buffer, offset + index)

  index = index + size_of.m_d_incremental_refresh_trade_summary_48_order_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Summary 48
display.md_incremental_refresh_trade_summary_48 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Summary 48
dissect.md_incremental_refresh_trade_summary_48_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary 48 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_48_groups = dissect.m_d_incremental_refresh_trade_summary_48_groups(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary 48 Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_48_order_groups = dissect.m_d_incremental_refresh_trade_summary_48_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Summary 48
dissect.md_incremental_refresh_trade_summary_48 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary_48 then
    local length = size_of.md_incremental_refresh_trade_summary_48(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_trade_summary_48(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_trade_summary_48, range, display)
  end

  return dissect.md_incremental_refresh_trade_summary_48_fields(buffer, offset, packet, parent)
end

-- Size: Padding 6
size_of.padding_6 = 6

-- Display: Padding 6
display.padding_6 = function(value)
  return "Padding 6: "..value
end

-- Dissect: Padding 6
dissect.padding_6 = function(buffer, offset, packet, parent)
  local length = size_of.padding_6
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_6(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.padding_6, range, value, display)

  return offset + length, value
end

-- Size: Md Display Qty Optional
size_of.md_display_qty_optional = 4

-- Display: Md Display Qty Optional
display.md_display_qty_optional = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Display Qty Optional: No Value"
  end

  return "Md Display Qty Optional: "..value
end

-- Dissect: Md Display Qty Optional
dissect.md_display_qty_optional = function(buffer, offset, packet, parent)
  local length = size_of.md_display_qty_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.md_display_qty_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_display_qty_optional, range, value, display)

  return offset + length, value
end

-- Size: Order Id Optional
size_of.order_id_optional = 8

-- Display: Order Id Optional
display.order_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
dissect.order_id_optional = function(buffer, offset, packet, parent)
  local length = size_of.order_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Order Book 47 Group
size_of.m_d_incremental_refresh_order_book_47_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_id_optional

  index = index + size_of.md_order_priority

  index = index + size_of.md_entry_px_optional

  index = index + size_of.md_display_qty_optional

  index = index + size_of.security_id

  index = index + size_of.md_update_action

  index = index + size_of.md_entry_type_book

  index = index + size_of.padding_6

  return index
end

-- Display: M D Incremental Refresh Order Book 47 Group
display.m_d_incremental_refresh_order_book_47_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book 47 Group
dissect.m_d_incremental_refresh_order_book_47_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = dissect.order_id_optional(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = dissect.md_order_priority(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = dissect.md_display_qty_optional(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = dissect.md_entry_type_book(buffer, index, packet, parent)

  -- Padding 6: 6 Byte
  index, padding_6 = dissect.padding_6(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Order Book 47 Group
dissect.m_d_incremental_refresh_order_book_47_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_order_book_47_group then
    local length = size_of.m_d_incremental_refresh_order_book_47_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_order_book_47_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_47_group, range, display)
  end

  return dissect.m_d_incremental_refresh_order_book_47_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Order Book 47 Groups
size_of.m_d_incremental_refresh_order_book_47_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_order_book_47_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_order_book_47_group_count * 40

  return index
end

-- Display: M D Incremental Refresh Order Book 47 Groups
display.m_d_incremental_refresh_order_book_47_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book 47 Groups
dissect.m_d_incremental_refresh_order_book_47_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Order Book 47 Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_order_book_47_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Order Book 47 Groups
dissect.m_d_incremental_refresh_order_book_47_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_order_book_47_groups then
    local length = size_of.m_d_incremental_refresh_order_book_47_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_order_book_47_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_47_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_order_book_47_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Order Book 47
size_of.md_incremental_refresh_order_book_47 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_order_book_47_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Order Book 47
display.md_incremental_refresh_order_book_47 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Order Book 47
dissect.md_incremental_refresh_order_book_47_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Order Book 47 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_order_book_47_groups = dissect.m_d_incremental_refresh_order_book_47_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Order Book 47
dissect.md_incremental_refresh_order_book_47 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_order_book_47 then
    local length = size_of.md_incremental_refresh_order_book_47(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_order_book_47(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_order_book_47, range, display)
  end

  return dissect.md_incremental_refresh_order_book_47_fields(buffer, offset, packet, parent)
end

-- Size: Order Update Action
size_of.order_update_action = 1

-- Display: Order Update Action
display.order_update_action = function(value)
  if value == 0 then
    return "Order Update Action: New (0)"
  end
  if value == 1 then
    return "Order Update Action: Update (1)"
  end
  if value == 2 then
    return "Order Update Action: Delete (2)"
  end

  return "Order Update Action: Unknown("..value..")"
end

-- Dissect: Order Update Action
dissect.order_update_action = function(buffer, offset, packet, parent)
  local length = size_of.order_update_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.order_update_action, range, value, display)

  return offset + length, value
end

-- Size: Reference Id
size_of.reference_id = 1

-- Display: Reference Id
display.reference_id = function(value)
  -- Check if field has value
  if value == 255 then
    return "Reference Id: No Value"
  end

  return "Reference Id: "..value
end

-- Dissect: Reference Id
dissect.reference_id = function(buffer, offset, packet, parent)
  local length = size_of.reference_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.reference_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Book 46 Order Group
size_of.m_d_incremental_refresh_book_46_order_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_id

  index = index + size_of.md_order_priority

  index = index + size_of.md_display_qty_optional

  index = index + size_of.reference_id

  index = index + size_of.order_update_action

  index = index + size_of.padding_2

  return index
end

-- Display: M D Incremental Refresh Book 46 Order Group
display.m_d_incremental_refresh_book_46_order_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 46 Order Group
dissect.m_d_incremental_refresh_book_46_order_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = dissect.md_order_priority(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = dissect.md_display_qty_optional(buffer, index, packet, parent)

  -- Reference Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, reference_id = dissect.reference_id(buffer, index, packet, parent)

  -- Order Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_update_action = dissect.order_update_action(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book 46 Order Group
dissect.m_d_incremental_refresh_book_46_order_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_book_46_order_group then
    local length = size_of.m_d_incremental_refresh_book_46_order_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_book_46_order_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_order_group, range, display)
  end

  return dissect.m_d_incremental_refresh_book_46_order_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Book 46 Order Groups
size_of.m_d_incremental_refresh_book_46_order_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_8_byte(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_book_46_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_46_order_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Book 46 Order Groups
display.m_d_incremental_refresh_book_46_order_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 46 Order Groups
dissect.m_d_incremental_refresh_book_46_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = dissect.group_size_8_byte(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Book 46 Order Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_book_46_order_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book 46 Order Groups
dissect.m_d_incremental_refresh_book_46_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_46_order_groups then
    local length = size_of.m_d_incremental_refresh_book_46_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_book_46_order_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_order_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_book_46_order_groups_fields(buffer, offset, packet, parent)
end

-- Size: Md Price Level
size_of.md_price_level = 1

-- Display: Md Price Level
display.md_price_level = function(value)
  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
dissect.md_price_level = function(buffer, offset, packet, parent)
  local length = size_of.md_price_level
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_price_level(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Book 46 Group
size_of.m_d_incremental_refresh_book_46_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px_optional

  index = index + size_of.md_entry_size_optional

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.number_of_orders_optional

  index = index + size_of.md_price_level

  index = index + size_of.md_update_action

  index = index + size_of.md_entry_type_book

  index = index + size_of.padding_5

  return index
end

-- Display: M D Incremental Refresh Book 46 Group
display.m_d_incremental_refresh_book_46_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 46 Group
dissect.m_d_incremental_refresh_book_46_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = dissect.md_price_level(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = dissect.md_entry_type_book(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = dissect.padding_5(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book 46 Group
dissect.m_d_incremental_refresh_book_46_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_book_46_group then
    local length = size_of.m_d_incremental_refresh_book_46_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_book_46_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_group, range, display)
  end

  return dissect.m_d_incremental_refresh_book_46_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Book 46 Groups
size_of.m_d_incremental_refresh_book_46_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_book_46_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_46_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Book 46 Groups
display.m_d_incremental_refresh_book_46_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 46 Groups
dissect.m_d_incremental_refresh_book_46_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Book 46 Group: Struct of 9 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_book_46_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book 46 Groups
dissect.m_d_incremental_refresh_book_46_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_46_groups then
    local length = size_of.m_d_incremental_refresh_book_46_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_book_46_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_book_46_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Book 46
size_of.md_incremental_refresh_book_46 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_book_46_groups(buffer, offset + index)

  index = index + size_of.m_d_incremental_refresh_book_46_order_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Book 46
display.md_incremental_refresh_book_46 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Book 46
dissect.md_incremental_refresh_book_46_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Book 46 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_46_groups = dissect.m_d_incremental_refresh_book_46_groups(buffer, index, packet, parent)

  -- M D Incremental Refresh Book 46 Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_46_order_groups = dissect.m_d_incremental_refresh_book_46_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Book 46
dissect.md_incremental_refresh_book_46 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book_46 then
    local length = size_of.md_incremental_refresh_book_46(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_book_46(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_book_46, range, display)
  end

  return dissect.md_incremental_refresh_book_46_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh Order Book 44 Group
size_of.snapshot_full_refresh_order_book_44_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_id

  index = index + size_of.md_order_priority

  index = index + size_of.md_entry_px

  index = index + size_of.md_display_qty

  index = index + size_of.md_entry_type_book

  return index
end

-- Display: Snapshot Full Refresh Order Book 44 Group
display.snapshot_full_refresh_order_book_44_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book 44 Group
dissect.snapshot_full_refresh_order_book_44_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = dissect.md_order_priority(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Display Qty: 4 Byte Signed Fixed Width Integer
  index, md_display_qty = dissect.md_display_qty(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = dissect.md_entry_type_book(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book 44 Group
dissect.snapshot_full_refresh_order_book_44_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.snapshot_full_refresh_order_book_44_group then
    local length = size_of.snapshot_full_refresh_order_book_44_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_order_book_44_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44_group, range, display)
  end

  return dissect.snapshot_full_refresh_order_book_44_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh Order Book 44 Groups
size_of.snapshot_full_refresh_order_book_44_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local snapshot_full_refresh_order_book_44_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_order_book_44_group_count * 29

  return index
end

-- Display: Snapshot Full Refresh Order Book 44 Groups
display.snapshot_full_refresh_order_book_44_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book 44 Groups
dissect.snapshot_full_refresh_order_book_44_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Snapshot Full Refresh Order Book 44 Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.snapshot_full_refresh_order_book_44_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Order Book 44 Groups
dissect.snapshot_full_refresh_order_book_44_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book_44_groups then
    local length = size_of.snapshot_full_refresh_order_book_44_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_order_book_44_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44_groups, range, display)
  end

  return dissect.snapshot_full_refresh_order_book_44_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh Order Book 44
size_of.snapshot_full_refresh_order_book_44 = function(buffer, offset)
  local index = 0

  index = index + size_of.last_msg_seq_num_processed

  index = index + size_of.tot_num_reports

  index = index + size_of.security_id

  index = index + size_of.no_chunks

  index = index + size_of.current_chunk

  index = index + size_of.transact_time

  index = index + size_of.snapshot_full_refresh_order_book_44_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Order Book 44
display.snapshot_full_refresh_order_book_44 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book 44
dissect.snapshot_full_refresh_order_book_44_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- No Chunks: 4 Byte Unsigned Fixed Width Integer
  index, no_chunks = dissect.no_chunks(buffer, index, packet, parent)

  -- Current Chunk: 4 Byte Unsigned Fixed Width Integer
  index, current_chunk = dissect.current_chunk(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Snapshot Full Refresh Order Book 44 Groups: Struct of 2 fields
  index, snapshot_full_refresh_order_book_44_groups = dissect.snapshot_full_refresh_order_book_44_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book 44
dissect.snapshot_full_refresh_order_book_44 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book_44 then
    local length = size_of.snapshot_full_refresh_order_book_44(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_order_book_44(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44, range, display)
  end

  return dissect.snapshot_full_refresh_order_book_44_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Order Book 43 Group
size_of.m_d_incremental_refresh_order_book_43_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_id_optional

  index = index + size_of.md_order_priority

  index = index + size_of.md_entry_px_optional

  index = index + size_of.md_display_qty_optional

  index = index + size_of.security_id

  index = index + size_of.md_update_action

  index = index + size_of.md_entry_type_book

  index = index + size_of.padding_6

  return index
end

-- Display: M D Incremental Refresh Order Book 43 Group
display.m_d_incremental_refresh_order_book_43_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book 43 Group
dissect.m_d_incremental_refresh_order_book_43_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = dissect.order_id_optional(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = dissect.md_order_priority(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = dissect.md_display_qty_optional(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = dissect.md_entry_type_book(buffer, index, packet, parent)

  -- Padding 6: 6 Byte
  index, padding_6 = dissect.padding_6(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Order Book 43 Group
dissect.m_d_incremental_refresh_order_book_43_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_order_book_43_group then
    local length = size_of.m_d_incremental_refresh_order_book_43_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_order_book_43_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_43_group, range, display)
  end

  return dissect.m_d_incremental_refresh_order_book_43_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Order Book 43 Groups
size_of.m_d_incremental_refresh_order_book_43_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_order_book_43_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_order_book_43_group_count * 40

  return index
end

-- Display: M D Incremental Refresh Order Book 43 Groups
display.m_d_incremental_refresh_order_book_43_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book 43 Groups
dissect.m_d_incremental_refresh_order_book_43_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Order Book 43 Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_order_book_43_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Order Book 43 Groups
dissect.m_d_incremental_refresh_order_book_43_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_order_book_43_groups then
    local length = size_of.m_d_incremental_refresh_order_book_43_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_order_book_43_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_43_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_order_book_43_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Order Book 43
size_of.md_incremental_refresh_order_book_43 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_order_book_43_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Order Book 43
display.md_incremental_refresh_order_book_43 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Order Book 43
dissect.md_incremental_refresh_order_book_43_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Order Book 43 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_order_book_43_groups = dissect.m_d_incremental_refresh_order_book_43_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Order Book 43
dissect.md_incremental_refresh_order_book_43 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_order_book_43 then
    local length = size_of.md_incremental_refresh_order_book_43(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_order_book_43(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_order_book_43, range, display)
  end

  return dissect.md_incremental_refresh_order_book_43_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Trade Summary 42 Order Group
size_of.m_d_incremental_refresh_trade_summary_42_order_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_id

  index = index + size_of.last_qty

  index = index + size_of.padding_4

  return index
end

-- Display: M D Incremental Refresh Trade Summary 42 Order Group
display.m_d_incremental_refresh_trade_summary_42_order_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 42 Order Group
dissect.m_d_incremental_refresh_trade_summary_42_order_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = dissect.padding_4(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 42 Order Group
dissect.m_d_incremental_refresh_trade_summary_42_order_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_42_order_group then
    local length = size_of.m_d_incremental_refresh_trade_summary_42_order_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_trade_summary_42_order_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_order_group, range, display)
  end

  return dissect.m_d_incremental_refresh_trade_summary_42_order_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Trade Summary 42 Order Groups
size_of.m_d_incremental_refresh_trade_summary_42_order_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_8_byte(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_42_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_42_order_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Trade Summary 42 Order Groups
display.m_d_incremental_refresh_trade_summary_42_order_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 42 Order Groups
dissect.m_d_incremental_refresh_trade_summary_42_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = dissect.group_size_8_byte(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Trade Summary 42 Order Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_trade_summary_42_order_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 42 Order Groups
dissect.m_d_incremental_refresh_trade_summary_42_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_42_order_groups then
    local length = size_of.m_d_incremental_refresh_trade_summary_42_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_trade_summary_42_order_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_order_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_trade_summary_42_order_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Trade Summary 42 Group
size_of.m_d_incremental_refresh_trade_summary_42_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px

  index = index + size_of.md_entry_size

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.number_of_orders_optional

  index = index + size_of.aggressor_side

  index = index + size_of.md_update_action

  index = index + size_of.md_trade_entry_id

  index = index + size_of.padding_2

  return index
end

-- Display: M D Incremental Refresh Trade Summary 42 Group
display.m_d_incremental_refresh_trade_summary_42_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 42 Group
dissect.m_d_incremental_refresh_trade_summary_42_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = dissect.md_entry_size(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = dissect.aggressor_side(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, md_trade_entry_id = dissect.md_trade_entry_id(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 42 Group
dissect.m_d_incremental_refresh_trade_summary_42_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_42_group then
    local length = size_of.m_d_incremental_refresh_trade_summary_42_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_trade_summary_42_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_group, range, display)
  end

  return dissect.m_d_incremental_refresh_trade_summary_42_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Trade Summary 42 Groups
size_of.m_d_incremental_refresh_trade_summary_42_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_42_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_42_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Trade Summary 42 Groups
display.m_d_incremental_refresh_trade_summary_42_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 42 Groups
dissect.m_d_incremental_refresh_trade_summary_42_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Trade Summary 42 Group: Struct of 9 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_trade_summary_42_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 42 Groups
dissect.m_d_incremental_refresh_trade_summary_42_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_42_groups then
    local length = size_of.m_d_incremental_refresh_trade_summary_42_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_trade_summary_42_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_trade_summary_42_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Trade Summary 42
size_of.md_incremental_refresh_trade_summary_42 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_trade_summary_42_groups(buffer, offset + index)

  index = index + size_of.m_d_incremental_refresh_trade_summary_42_order_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Summary 42
display.md_incremental_refresh_trade_summary_42 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Summary 42
dissect.md_incremental_refresh_trade_summary_42_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary 42 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_42_groups = dissect.m_d_incremental_refresh_trade_summary_42_groups(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary 42 Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_42_order_groups = dissect.m_d_incremental_refresh_trade_summary_42_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Summary 42
dissect.md_incremental_refresh_trade_summary_42 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary_42 then
    local length = size_of.md_incremental_refresh_trade_summary_42(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_trade_summary_42(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_trade_summary_42, range, display)
  end

  return dissect.md_incremental_refresh_trade_summary_42_fields(buffer, offset, packet, parent)
end

-- Size: High Limit Price Pricenull
size_of.high_limit_price_pricenull = 8

-- Display: High Limit Price Pricenull
display.high_limit_price_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "High Limit Price Pricenull: No Value"
  end
  return "High Limit Price Pricenull: "..value:tonumber()/10000000
end

-- Dissect: High Limit Price Pricenull
dissect.high_limit_price_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.high_limit_price_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.high_limit_price_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.high_limit_price_pricenull, range, value, display)

  return offset + length, value
end

-- Size: Low Limit Price Pricenull
size_of.low_limit_price_pricenull = 8

-- Display: Low Limit Price Pricenull
display.low_limit_price_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Low Limit Price Pricenull: No Value"
  end
  return "Low Limit Price Pricenull: "..value:tonumber()/10000000
end

-- Dissect: Low Limit Price Pricenull
dissect.low_limit_price_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.low_limit_price_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.low_limit_price_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.low_limit_price_pricenull, range, value, display)

  return offset + length, value
end

-- Size: Trading Reference Price Pricenull
size_of.trading_reference_price_pricenull = 8

-- Display: Trading Reference Price Pricenull
display.trading_reference_price_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Trading Reference Price Pricenull: No Value"
  end
  return "Trading Reference Price Pricenull: "..value:tonumber()/10000000
end

-- Dissect: Trading Reference Price Pricenull
dissect.trading_reference_price_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.trading_reference_price_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.trading_reference_price_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.trading_reference_price_pricenull, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Measure Qty Pricenull
size_of.unit_of_measure_qty_pricenull = 8

-- Display: Unit Of Measure Qty Pricenull
display.unit_of_measure_qty_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Unit Of Measure Qty Pricenull: No Value"
  end
  return "Unit Of Measure Qty Pricenull: "..value:tonumber()/10000000
end

-- Dissect: Unit Of Measure Qty Pricenull
dissect.unit_of_measure_qty_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.unit_of_measure_qty_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.unit_of_measure_qty_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure_qty_pricenull, range, value, display)

  return offset + length, value
end

-- Size: Display Factor Float
size_of.display_factor_float = 8

-- Display: Display Factor Float
display.display_factor_float = function(value)
  return "Display Factor Float: "..value:tonumber()/10000000
end

-- Dissect: Display Factor Float
dissect.display_factor_float = function(buffer, offset, packet, parent)
  local length = size_of.display_factor_float
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.display_factor_float(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.display_factor_float, range, value, display)

  return offset + length, value
end

-- Size: Min Price Increment Amount Pricenull
size_of.min_price_increment_amount_pricenull = 8

-- Display: Min Price Increment Amount Pricenull
display.min_price_increment_amount_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Min Price Increment Amount Pricenull: No Value"
  end
  return "Min Price Increment Amount Pricenull: "..value:tonumber()/10000000
end

-- Dissect: Min Price Increment Amount Pricenull
dissect.min_price_increment_amount_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.min_price_increment_amount_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.min_price_increment_amount_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_amount_pricenull, range, value, display)

  return offset + length, value
end

-- Size: Min Price Increment Pricenull
size_of.min_price_increment_pricenull = 8

-- Display: Min Price Increment Pricenull
display.min_price_increment_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Min Price Increment Pricenull: No Value"
  end
  return "Min Price Increment Pricenull: "..value:tonumber()/10000000
end

-- Dissect: Min Price Increment Pricenull
dissect.min_price_increment_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.min_price_increment_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.min_price_increment_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_pricenull, range, value, display)

  return offset + length, value
end

-- Size: Min Cab Price Pricenull
size_of.min_cab_price_pricenull = 8

-- Display: Min Cab Price Pricenull
display.min_cab_price_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Min Cab Price Pricenull: No Value"
  end
  return "Min Cab Price Pricenull: "..value:tonumber()/10000000
end

-- Dissect: Min Cab Price Pricenull
dissect.min_cab_price_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.min_cab_price_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.min_cab_price_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.min_cab_price_pricenull, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Pricenull
size_of.strike_price_pricenull = 8

-- Display: Strike Price Pricenull
display.strike_price_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Strike Price Pricenull: No Value"
  end
  return "Strike Price Pricenull: "..value:tonumber()/10000000
end

-- Dissect: Strike Price Pricenull
dissect.strike_price_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.strike_price_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.strike_price_pricenull, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Option 41
size_of.md_instrument_definition_option_41 = function(buffer, offset)
  local index = 0

  index = index + size_of.match_event_indicator

  index = index + size_of.tot_num_reports_optional

  index = index + size_of.security_update_action

  index = index + size_of.last_update_time

  index = index + size_of.md_security_trading_status

  index = index + size_of.appl_id

  index = index + size_of.market_segment_id

  index = index + size_of.underlying_product

  index = index + size_of.security_exchange

  index = index + size_of.security_group

  index = index + size_of.asset

  index = index + size_of.symbol

  index = index + size_of.security_id

  index = index + size_of.security_type

  index = index + size_of.cfi_code

  index = index + size_of.put_or_call

  index = index + size_of.maturity_month_year(buffer, offset + index)

  index = index + size_of.currency

  index = index + size_of.strike_price_pricenull

  index = index + size_of.strike_currency

  index = index + size_of.settl_currency

  index = index + size_of.min_cab_price_pricenull

  index = index + size_of.match_algorithm

  index = index + size_of.min_trade_vol

  index = index + size_of.max_trade_vol

  index = index + size_of.min_price_increment_pricenull

  index = index + size_of.min_price_increment_amount_pricenull

  index = index + size_of.display_factor_float

  index = index + size_of.tick_rule

  index = index + size_of.main_fraction

  index = index + size_of.sub_fraction

  index = index + size_of.price_display_format

  index = index + size_of.unit_of_measure

  index = index + size_of.unit_of_measure_qty_pricenull

  index = index + size_of.trading_reference_price_pricenull

  index = index + size_of.settl_price_type

  index = index + size_of.cleared_volume

  index = index + size_of.open_interest_qty

  index = index + size_of.low_limit_price_pricenull

  index = index + size_of.high_limit_price_pricenull

  index = index + size_of.user_defined_instrument

  index = index + size_of.trading_reference_date

  index = index + size_of.events_groups(buffer, offset + index)

  index = index + size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + size_of.inst_attrib_groups(buffer, offset + index)

  index = index + size_of.lot_type_rules_groups(buffer, offset + index)

  index = index + size_of.underlyings_groups(buffer, offset + index)

  index = index + size_of.related_instruments_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Option 41
display.md_instrument_definition_option_41 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Definition Option 41
dissect.md_instrument_definition_option_41_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = dissect.put_or_call(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Strike Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price_pricenull = dissect.strike_price_pricenull(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String
  index, strike_currency = dissect.strike_currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = dissect.settl_currency(buffer, index, packet, parent)

  -- Min Cab Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, min_cab_price_pricenull = dissect.min_cab_price_pricenull(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_pricenull = dissect.min_price_increment_pricenull(buffer, index, packet, parent)

  -- Min Price Increment Amount Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount_pricenull = dissect.min_price_increment_amount_pricenull(buffer, index, packet, parent)

  -- Display Factor Float: 8 Byte Signed Fixed Width Integer
  index, display_factor_float = dissect.display_factor_float(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = dissect.tick_rule(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = dissect.sub_fraction(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = dissect.price_display_format(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_pricenull = dissect.unit_of_measure_qty_pricenull(buffer, index, packet, parent)

  -- Trading Reference Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenull = dissect.trading_reference_price_pricenull(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = dissect.cleared_volume(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = dissect.open_interest_qty(buffer, index, packet, parent)

  -- Low Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenull = dissect.low_limit_price_pricenull(buffer, index, packet, parent)

  -- High Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenull = dissect.high_limit_price_pricenull(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = dissect.lot_type_rules_groups(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index, underlyings_groups = dissect.underlyings_groups(buffer, index, packet, parent)

  -- Related Instruments Groups: Struct of 2 fields
  index, related_instruments_groups = dissect.related_instruments_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Option 41
dissect.md_instrument_definition_option_41 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_option_41 then
    local length = size_of.md_instrument_definition_option_41(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_option_41(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_option_41, range, display)
  end

  return dissect.md_instrument_definition_option_41_fields(buffer, offset, packet, parent)
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  -- Check if field has value
  if value == 127 then
    return "Side: No Value"
  end

  return "Side: "..value
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = size_of.side
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Quote Type
size_of.quote_type = 1

-- Display: Quote Type
display.quote_type = function(value)
  return "Quote Type: "..value
end

-- Dissect: Quote Type
dissect.quote_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_type
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.quote_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
size_of.order_qty = 4

-- Display: Order Qty
display.order_qty = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty
dissect.order_qty = function(buffer, offset, packet, parent)
  local length = size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.order_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Related Sym Group
size_of.related_sym_group = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.quote_type

  index = index + size_of.side

  index = index + size_of.padding_2

  return index
end

-- Display: Related Sym Group
display.related_sym_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Sym Group
dissect.related_sym_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 20 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Signed Fixed Width Integer
  index, quote_type = dissect.quote_type(buffer, index, packet, parent)

  -- Side: 1 Byte Signed Fixed Width Integer Nullable
  index, side = dissect.side(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
dissect.related_sym_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.related_sym_group then
    local length = size_of.related_sym_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.related_sym_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.related_sym_group, range, display)
  end

  return dissect.related_sym_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Related Sym Groups
size_of.related_sym_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_sym_group_count * 32

  return index
end

-- Display: Related Sym Groups
display.related_sym_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Sym Groups
dissect.related_sym_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Related Sym Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = dissect.related_sym_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Related Sym Groups
dissect.related_sym_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_sym_groups then
    local length = size_of.related_sym_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.related_sym_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.related_sym_groups, range, display)
  end

  return dissect.related_sym_groups_fields(buffer, offset, packet, parent)
end

-- Size: Padding 3
size_of.padding_3 = 3

-- Display: Padding 3
display.padding_3 = function(value)
  return "Padding 3: "..value
end

-- Dissect: Padding 3
dissect.padding_3 = function(buffer, offset, packet, parent)
  local length = size_of.padding_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_3(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.padding_3, range, value, display)

  return offset + length, value
end

-- Size: Quote Req Id
size_of.quote_req_id = 23

-- Display: Quote Req Id
display.quote_req_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Req Id: No Value"
  end

  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
dissect.quote_req_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_req_id
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

  local display = display.quote_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Request
size_of.quote_request = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.quote_req_id

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_3

  index = index + size_of.related_sym_groups(buffer, offset + index)

  return index
end

-- Display: Quote Request
display.quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Request
dissect.quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Quote Req Id: 23 Byte Ascii String
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = dissect.padding_3(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = dissect.related_sym_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
dissect.quote_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request then
    local length = size_of.quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_request(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.quote_request, range, display)
  end

  return dissect.quote_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh 38 Group
size_of.snapshot_full_refresh_38_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px_optional

  index = index + size_of.md_entry_size_optional

  index = index + size_of.number_of_orders_optional

  index = index + size_of.md_price_level_optional

  index = index + size_of.trading_reference_date

  index = index + size_of.open_close_settl_flag

  index = index + size_of.settl_price_type

  index = index + size_of.md_entry_type_

  return index
end

-- Display: Snapshot Full Refresh 38 Group
display.snapshot_full_refresh_38_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh 38 Group
dissect.snapshot_full_refresh_38_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Md Price Level Optional: 1 Byte Signed Fixed Width Integer Nullable
  index, md_price_level_optional = dissect.md_price_level_optional(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, open_close_settl_flag = dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 17 values
  index, md_entry_type_ = dissect.md_entry_type_(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh 38 Group
dissect.snapshot_full_refresh_38_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.snapshot_full_refresh_38_group then
    local length = size_of.snapshot_full_refresh_38_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_38_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38_group, range, display)
  end

  return dissect.snapshot_full_refresh_38_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh 38 Groups
size_of.snapshot_full_refresh_38_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local snapshot_full_refresh_38_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_38_group_count * 22

  return index
end

-- Display: Snapshot Full Refresh 38 Groups
display.snapshot_full_refresh_38_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh 38 Groups
dissect.snapshot_full_refresh_38_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Snapshot Full Refresh 38 Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.snapshot_full_refresh_38_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Snapshot Full Refresh 38 Groups
dissect.snapshot_full_refresh_38_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_38_groups then
    local length = size_of.snapshot_full_refresh_38_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_38_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38_groups, range, display)
  end

  return dissect.snapshot_full_refresh_38_groups_fields(buffer, offset, packet, parent)
end

-- Size: Max Price Variation Pricenull
size_of.max_price_variation_pricenull = 8

-- Display: Max Price Variation Pricenull
display.max_price_variation_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Max Price Variation Pricenull: No Value"
  end
  return "Max Price Variation Pricenull: "..value:tonumber()/10000000
end

-- Dissect: Max Price Variation Pricenull
dissect.max_price_variation_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.max_price_variation_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.max_price_variation_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.max_price_variation_pricenull, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh 38
size_of.snapshot_full_refresh_38 = function(buffer, offset)
  local index = 0

  index = index + size_of.last_msg_seq_num_processed

  index = index + size_of.tot_num_reports

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.transact_time

  index = index + size_of.last_update_time

  index = index + size_of.trade_date

  index = index + size_of.md_security_trading_status

  index = index + size_of.high_limit_price_pricenull

  index = index + size_of.low_limit_price_pricenull

  index = index + size_of.max_price_variation_pricenull

  index = index + size_of.snapshot_full_refresh_38_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh 38
display.snapshot_full_refresh_38 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh 38
dissect.snapshot_full_refresh_38_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = dissect.last_update_time(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- High Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenull = dissect.high_limit_price_pricenull(buffer, index, packet, parent)

  -- Low Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenull = dissect.low_limit_price_pricenull(buffer, index, packet, parent)

  -- Max Price Variation Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenull = dissect.max_price_variation_pricenull(buffer, index, packet, parent)

  -- Snapshot Full Refresh 38 Groups: Struct of 2 fields
  index, snapshot_full_refresh_38_groups = dissect.snapshot_full_refresh_38_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh 38
dissect.snapshot_full_refresh_38 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_38 then
    local length = size_of.snapshot_full_refresh_38(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_38(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38, range, display)
  end

  return dissect.snapshot_full_refresh_38_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Volume Group
size_of.m_d_incremental_refresh_volume_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_size

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.md_update_action

  index = index + size_of.padding_3

  return index
end

-- Display: M D Incremental Refresh Volume Group
display.m_d_incremental_refresh_volume_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Group
dissect.m_d_incremental_refresh_volume_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = dissect.md_entry_size(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = dissect.padding_3(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Volume Group
dissect.m_d_incremental_refresh_volume_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_volume_group then
    local length = size_of.m_d_incremental_refresh_volume_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_volume_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_volume_group, range, display)
  end

  return dissect.m_d_incremental_refresh_volume_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Volume Groups
size_of.m_d_incremental_refresh_volume_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_volume_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_volume_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Volume Groups
display.m_d_incremental_refresh_volume_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Groups
dissect.m_d_incremental_refresh_volume_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Volume Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_volume_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Volume Groups
dissect.m_d_incremental_refresh_volume_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_volume_groups then
    local length = size_of.m_d_incremental_refresh_volume_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_volume_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_volume_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_volume_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Volume
size_of.md_incremental_refresh_volume = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_volume_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Volume
display.md_incremental_refresh_volume = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Volume
dissect.md_incremental_refresh_volume_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Volume Groups: Struct of 2 fields
  index, m_d_incremental_refresh_volume_groups = dissect.m_d_incremental_refresh_volume_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Volume
dissect.md_incremental_refresh_volume = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_volume then
    local length = size_of.md_incremental_refresh_volume(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_volume(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_volume, range, display)
  end

  return dissect.md_incremental_refresh_volume_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Session Statistics 35 Group
size_of.m_d_incremental_refresh_session_statistics_35_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.open_close_settl_flag

  index = index + size_of.md_update_action

  index = index + size_of.md_entry_type_statistics

  index = index + size_of.md_entry_size_optional

  index = index + size_of.padding_1

  return index
end

-- Display: M D Incremental Refresh Session Statistics 35 Group
display.m_d_incremental_refresh_session_statistics_35_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics 35 Group
dissect.m_d_incremental_refresh_session_statistics_35_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, open_close_settl_flag = dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Statistics: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_statistics = dissect.md_entry_type_statistics(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = dissect.padding_1(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics 35 Group
dissect.m_d_incremental_refresh_session_statistics_35_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_session_statistics_35_group then
    local length = size_of.m_d_incremental_refresh_session_statistics_35_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_session_statistics_35_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_35_group, range, display)
  end

  return dissect.m_d_incremental_refresh_session_statistics_35_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Session Statistics 35 Groups
size_of.m_d_incremental_refresh_session_statistics_35_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_session_statistics_35_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_session_statistics_35_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Session Statistics 35 Groups
display.m_d_incremental_refresh_session_statistics_35_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics 35 Groups
dissect.m_d_incremental_refresh_session_statistics_35_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Session Statistics 35 Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_session_statistics_35_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics 35 Groups
dissect.m_d_incremental_refresh_session_statistics_35_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_session_statistics_35_groups then
    local length = size_of.m_d_incremental_refresh_session_statistics_35_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_session_statistics_35_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_35_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_session_statistics_35_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Session Statistics 35
size_of.md_incremental_refresh_session_statistics_35 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_session_statistics_35_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Session Statistics 35
display.md_incremental_refresh_session_statistics_35 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Session Statistics 35
dissect.md_incremental_refresh_session_statistics_35_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Session Statistics 35 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_session_statistics_35_groups = dissect.m_d_incremental_refresh_session_statistics_35_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Session Statistics 35
dissect.md_incremental_refresh_session_statistics_35 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_session_statistics_35 then
    local length = size_of.md_incremental_refresh_session_statistics_35(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_session_statistics_35(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_session_statistics_35, range, display)
  end

  return dissect.md_incremental_refresh_session_statistics_35_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Limits Banding 34 Group
size_of.m_d_incremental_refresh_limits_banding_34_group = function(buffer, offset)
  local index = 0

  index = index + size_of.high_limit_price_pricenull

  index = index + size_of.low_limit_price_pricenull

  index = index + size_of.max_price_variation_pricenull

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  return index
end

-- Display: M D Incremental Refresh Limits Banding 34 Group
display.m_d_incremental_refresh_limits_banding_34_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding 34 Group
dissect.m_d_incremental_refresh_limits_banding_34_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- High Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenull = dissect.high_limit_price_pricenull(buffer, index, packet, parent)

  -- Low Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenull = dissect.low_limit_price_pricenull(buffer, index, packet, parent)

  -- Max Price Variation Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenull = dissect.max_price_variation_pricenull(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding 34 Group
dissect.m_d_incremental_refresh_limits_banding_34_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_limits_banding_34_group then
    local length = size_of.m_d_incremental_refresh_limits_banding_34_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_limits_banding_34_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_34_group, range, display)
  end

  return dissect.m_d_incremental_refresh_limits_banding_34_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Limits Banding 34 Groups
size_of.m_d_incremental_refresh_limits_banding_34_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_limits_banding_34_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_limits_banding_34_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Limits Banding 34 Groups
display.m_d_incremental_refresh_limits_banding_34_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding 34 Groups
dissect.m_d_incremental_refresh_limits_banding_34_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Limits Banding 34 Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_limits_banding_34_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding 34 Groups
dissect.m_d_incremental_refresh_limits_banding_34_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_limits_banding_34_groups then
    local length = size_of.m_d_incremental_refresh_limits_banding_34_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_limits_banding_34_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_34_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_limits_banding_34_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Limits Banding 34
size_of.md_incremental_refresh_limits_banding_34 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_limits_banding_34_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Limits Banding 34
display.md_incremental_refresh_limits_banding_34 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Limits Banding 34
dissect.md_incremental_refresh_limits_banding_34_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Limits Banding 34 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_limits_banding_34_groups = dissect.m_d_incremental_refresh_limits_banding_34_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Limits Banding 34
dissect.md_incremental_refresh_limits_banding_34 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_limits_banding_34 then
    local length = size_of.md_incremental_refresh_limits_banding_34(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_limits_banding_34(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_limits_banding_34, range, display)
  end

  return dissect.md_incremental_refresh_limits_banding_34_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Daily Statistics 33 Group
size_of.m_d_incremental_refresh_daily_statistics_33_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px_optional

  index = index + size_of.md_entry_size_optional

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.trading_reference_date

  index = index + size_of.settl_price_type

  index = index + size_of.md_update_action

  index = index + size_of.md_entry_type_daily_statistics

  index = index + size_of.padding_7

  return index
end

-- Display: M D Incremental Refresh Daily Statistics 33 Group
display.m_d_incremental_refresh_daily_statistics_33_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics 33 Group
dissect.m_d_incremental_refresh_daily_statistics_33_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Daily Statistics: 1 Byte Ascii String Enum with 4 values
  index, md_entry_type_daily_statistics = dissect.md_entry_type_daily_statistics(buffer, index, packet, parent)

  -- Padding 7: 7 Byte
  index, padding_7 = dissect.padding_7(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics 33 Group
dissect.m_d_incremental_refresh_daily_statistics_33_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_daily_statistics_33_group then
    local length = size_of.m_d_incremental_refresh_daily_statistics_33_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_daily_statistics_33_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_33_group, range, display)
  end

  return dissect.m_d_incremental_refresh_daily_statistics_33_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Daily Statistics 33 Groups
size_of.m_d_incremental_refresh_daily_statistics_33_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_daily_statistics_33_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_daily_statistics_33_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Daily Statistics 33 Groups
display.m_d_incremental_refresh_daily_statistics_33_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics 33 Groups
dissect.m_d_incremental_refresh_daily_statistics_33_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Daily Statistics 33 Group: Struct of 9 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_daily_statistics_33_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics 33 Groups
dissect.m_d_incremental_refresh_daily_statistics_33_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_daily_statistics_33_groups then
    local length = size_of.m_d_incremental_refresh_daily_statistics_33_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_daily_statistics_33_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_33_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_daily_statistics_33_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Daily Statistics 33
size_of.md_incremental_refresh_daily_statistics_33 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_daily_statistics_33_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Daily Statistics 33
display.md_incremental_refresh_daily_statistics_33 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Daily Statistics 33
dissect.md_incremental_refresh_daily_statistics_33_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Daily Statistics 33 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_daily_statistics_33_groups = dissect.m_d_incremental_refresh_daily_statistics_33_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Daily Statistics 33
dissect.md_incremental_refresh_daily_statistics_33 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_daily_statistics_33 then
    local length = size_of.md_incremental_refresh_daily_statistics_33(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_daily_statistics_33(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_daily_statistics_33, range, display)
  end

  return dissect.md_incremental_refresh_daily_statistics_33_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Book 32 Order Group
size_of.m_d_incremental_refresh_book_32_order_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_id

  index = index + size_of.md_order_priority

  index = index + size_of.md_display_qty_optional

  index = index + size_of.reference_id

  index = index + size_of.order_update_action

  index = index + size_of.padding_2

  return index
end

-- Display: M D Incremental Refresh Book 32 Order Group
display.m_d_incremental_refresh_book_32_order_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 32 Order Group
dissect.m_d_incremental_refresh_book_32_order_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = dissect.md_order_priority(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = dissect.md_display_qty_optional(buffer, index, packet, parent)

  -- Reference Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, reference_id = dissect.reference_id(buffer, index, packet, parent)

  -- Order Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_update_action = dissect.order_update_action(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book 32 Order Group
dissect.m_d_incremental_refresh_book_32_order_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_book_32_order_group then
    local length = size_of.m_d_incremental_refresh_book_32_order_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_book_32_order_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_order_group, range, display)
  end

  return dissect.m_d_incremental_refresh_book_32_order_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Book 32 Order Groups
size_of.m_d_incremental_refresh_book_32_order_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_8_byte(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_book_32_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_32_order_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Book 32 Order Groups
display.m_d_incremental_refresh_book_32_order_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 32 Order Groups
dissect.m_d_incremental_refresh_book_32_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = dissect.group_size_8_byte(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Book 32 Order Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_book_32_order_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book 32 Order Groups
dissect.m_d_incremental_refresh_book_32_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_32_order_groups then
    local length = size_of.m_d_incremental_refresh_book_32_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_book_32_order_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_order_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_book_32_order_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Book 32 Group
size_of.m_d_incremental_refresh_book_32_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px_optional

  index = index + size_of.md_entry_size_optional

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.number_of_orders_optional

  index = index + size_of.md_price_level

  index = index + size_of.md_update_action

  index = index + size_of.md_entry_type_book

  index = index + size_of.padding_5

  return index
end

-- Display: M D Incremental Refresh Book 32 Group
display.m_d_incremental_refresh_book_32_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 32 Group
dissect.m_d_incremental_refresh_book_32_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = dissect.md_price_level(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = dissect.md_entry_type_book(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = dissect.padding_5(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book 32 Group
dissect.m_d_incremental_refresh_book_32_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_book_32_group then
    local length = size_of.m_d_incremental_refresh_book_32_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_book_32_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_group, range, display)
  end

  return dissect.m_d_incremental_refresh_book_32_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Book 32 Groups
size_of.m_d_incremental_refresh_book_32_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_book_32_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_32_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Book 32 Groups
display.m_d_incremental_refresh_book_32_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 32 Groups
dissect.m_d_incremental_refresh_book_32_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Book 32 Group: Struct of 9 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_book_32_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book 32 Groups
dissect.m_d_incremental_refresh_book_32_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_32_groups then
    local length = size_of.m_d_incremental_refresh_book_32_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_book_32_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_book_32_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Book 32
size_of.md_incremental_refresh_book_32 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.padding_2

  index = index + size_of.m_d_incremental_refresh_book_32_groups(buffer, offset + index)

  index = index + size_of.m_d_incremental_refresh_book_32_order_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Book 32
display.md_incremental_refresh_book_32 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Book 32
dissect.md_incremental_refresh_book_32_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Book 32 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_32_groups = dissect.m_d_incremental_refresh_book_32_groups(buffer, index, packet, parent)

  -- M D Incremental Refresh Book 32 Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_32_order_groups = dissect.m_d_incremental_refresh_book_32_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Book 32
dissect.md_incremental_refresh_book_32 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book_32 then
    local length = size_of.md_incremental_refresh_book_32(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_book_32(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_book_32, range, display)
  end

  return dissect.md_incremental_refresh_book_32_fields(buffer, offset, packet, parent)
end

-- Size: Security Trading Event
size_of.security_trading_event = 1

-- Display: Security Trading Event
display.security_trading_event = function(value)
  if value == 0 then
    return "Security Trading Event: No Event (0)"
  end
  if value == 1 then
    return "Security Trading Event: No Cancel (1)"
  end
  if value == 4 then
    return "Security Trading Event: Reset Statistics (4)"
  end
  if value == 5 then
    return "Security Trading Event: Implied Matching On (5)"
  end
  if value == 6 then
    return "Security Trading Event: Implied Matching Off (6)"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event
dissect.security_trading_event = function(buffer, offset, packet, parent)
  local length = size_of.security_trading_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_trading_event(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Size: Halt Reason
size_of.halt_reason = 1

-- Display: Halt Reason
display.halt_reason = function(value)
  if value == 0 then
    return "Halt Reason: Group Schedule (0)"
  end
  if value == 1 then
    return "Halt Reason: Surveillance Intervention (1)"
  end
  if value == 2 then
    return "Halt Reason: Market Event (2)"
  end
  if value == 3 then
    return "Halt Reason: Instrument Activation (3)"
  end
  if value == 4 then
    return "Halt Reason: Instrument Expiration (4)"
  end
  if value == 5 then
    return "Halt Reason: Unknown (5)"
  end
  if value == 6 then
    return "Halt Reason: Recovery In Process (6)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
dissect.halt_reason = function(buffer, offset, packet, parent)
  local length = size_of.halt_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.halt_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Size: Security Trading Status
size_of.security_trading_status = 1

-- Display: Security Trading Status
display.security_trading_status = function(value)
  if value == 2 then
    return "Security Trading Status: Trading Halt (2)"
  end
  if value == 4 then
    return "Security Trading Status: Close (4)"
  end
  if value == 15 then
    return "Security Trading Status: New Price Indication (15)"
  end
  if value == 17 then
    return "Security Trading Status: Ready To Trade (17)"
  end
  if value == 18 then
    return "Security Trading Status: Not Available For Trading (18)"
  end
  if value == 20 then
    return "Security Trading Status: Unknownor Invalid (20)"
  end
  if value == 21 then
    return "Security Trading Status: Pre Open (21)"
  end
  if value == 24 then
    return "Security Trading Status: Pre Cross (24)"
  end
  if value == 25 then
    return "Security Trading Status: Cross (25)"
  end
  if value == 26 then
    return "Security Trading Status: Post Close (26)"
  end
  if value == 103 then
    return "Security Trading Status: No Change (103)"
  end
  if value == 255 then
    return "Security Trading Status: No Value"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = size_of.security_trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Security Id Optional
size_of.security_id_optional = 4

-- Display: Security Id Optional
display.security_id_optional = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Security Id Optional: No Value"
  end

  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
dissect.security_id_optional = function(buffer, offset, packet, parent)
  local length = size_of.security_id_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.security_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status
size_of.security_status = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.security_group

  index = index + size_of.asset

  index = index + size_of.security_id_optional

  index = index + size_of.trade_date

  index = index + size_of.match_event_indicator

  index = index + size_of.security_trading_status

  index = index + size_of.halt_reason

  index = index + size_of.security_trading_event

  return index
end

-- Display: Security Status
display.security_status = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Status
dissect.security_status_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = dissect.asset(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = dissect.security_id_optional(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, security_trading_status = dissect.security_trading_status(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, halt_reason = dissect.halt_reason(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, security_trading_event = dissect.security_trading_event(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status
dissect.security_status = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_status then
    local length = size_of.security_status(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_status(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.security_status, range, display)
  end

  return dissect.security_status_fields(buffer, offset, packet, parent)
end

-- Size: Leg Price Pricenull
size_of.leg_price_pricenull = 8

-- Display: Leg Price Pricenull
display.leg_price_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Leg Price Pricenull: No Value"
  end
  return "Leg Price Pricenull: "..value:tonumber()/10000000
end

-- Dissect: Leg Price Pricenull
dissect.leg_price_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.leg_price_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.leg_price_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.leg_price_pricenull, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Instrument Definition Spread 29 Leg Group
size_of.m_d_instrument_definition_spread_29_leg_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_security_id

  index = index + size_of.leg_side

  index = index + size_of.leg_ratio_qty

  index = index + size_of.leg_price_pricenull

  index = index + size_of.leg_option_delta

  return index
end

-- Display: M D Instrument Definition Spread 29 Leg Group
display.m_d_instrument_definition_spread_29_leg_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread 29 Leg Group
dissect.m_d_instrument_definition_spread_29_leg_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price_pricenull = dissect.leg_price_pricenull(buffer, index, packet, parent)

  -- Leg Option Delta: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_option_delta = dissect.leg_option_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Instrument Definition Spread 29 Leg Group
dissect.m_d_instrument_definition_spread_29_leg_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_instrument_definition_spread_29_leg_group then
    local length = size_of.m_d_instrument_definition_spread_29_leg_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_instrument_definition_spread_29_leg_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_29_leg_group, range, display)
  end

  return dissect.m_d_instrument_definition_spread_29_leg_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Instrument Definition Spread 29 Leg Groups
size_of.m_d_instrument_definition_spread_29_leg_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_instrument_definition_spread_29_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_instrument_definition_spread_29_leg_group_count * 18

  return index
end

-- Display: M D Instrument Definition Spread 29 Leg Groups
display.m_d_instrument_definition_spread_29_leg_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread 29 Leg Groups
dissect.m_d_instrument_definition_spread_29_leg_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Instrument Definition Spread 29 Leg Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.m_d_instrument_definition_spread_29_leg_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Instrument Definition Spread 29 Leg Groups
dissect.m_d_instrument_definition_spread_29_leg_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_instrument_definition_spread_29_leg_groups then
    local length = size_of.m_d_instrument_definition_spread_29_leg_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_instrument_definition_spread_29_leg_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_29_leg_groups, range, display)
  end

  return dissect.m_d_instrument_definition_spread_29_leg_groups_fields(buffer, offset, packet, parent)
end

-- Size: Price Ratio Pricenull
size_of.price_ratio_pricenull = 8

-- Display: Price Ratio Pricenull
display.price_ratio_pricenull = function(value)
  -- Check if field has value
  if value == 9223372036854775807 then
    return "Price Ratio Pricenull: No Value"
  end
  return "Price Ratio Pricenull: "..value:tonumber()/10000000
end

-- Dissect: Price Ratio Pricenull
dissect.price_ratio_pricenull = function(buffer, offset, packet, parent)
  local length = size_of.price_ratio_pricenull
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.price_ratio_pricenull(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.price_ratio_pricenull, range, value, display)

  return offset + length, value
end

-- Size: Min Price Increment Price
size_of.min_price_increment_price = 8

-- Display: Min Price Increment Price
display.min_price_increment_price = function(value)
  return "Min Price Increment Price: "..value:tonumber()/10000000
end

-- Dissect: Min Price Increment Price
dissect.min_price_increment_price = function(buffer, offset, packet, parent)
  local length = size_of.min_price_increment_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.min_price_increment_price(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Spread 29
size_of.md_instrument_definition_spread_29 = function(buffer, offset)
  local index = 0

  index = index + size_of.match_event_indicator

  index = index + size_of.tot_num_reports_optional

  index = index + size_of.security_update_action

  index = index + size_of.last_update_time

  index = index + size_of.md_security_trading_status

  index = index + size_of.appl_id

  index = index + size_of.market_segment_id

  index = index + size_of.underlying_product_optional

  index = index + size_of.security_exchange

  index = index + size_of.security_group

  index = index + size_of.asset

  index = index + size_of.symbol

  index = index + size_of.security_id

  index = index + size_of.security_type

  index = index + size_of.cfi_code

  index = index + size_of.maturity_month_year(buffer, offset + index)

  index = index + size_of.currency

  index = index + size_of.security_sub_type

  index = index + size_of.user_defined_instrument

  index = index + size_of.match_algorithm

  index = index + size_of.min_trade_vol

  index = index + size_of.max_trade_vol

  index = index + size_of.min_price_increment_price

  index = index + size_of.display_factor_float

  index = index + size_of.price_display_format

  index = index + size_of.price_ratio_pricenull

  index = index + size_of.tick_rule

  index = index + size_of.unit_of_measure

  index = index + size_of.trading_reference_price_pricenull

  index = index + size_of.settl_price_type

  index = index + size_of.open_interest_qty

  index = index + size_of.cleared_volume

  index = index + size_of.high_limit_price_pricenull

  index = index + size_of.low_limit_price_pricenull

  index = index + size_of.max_price_variation_pricenull

  index = index + size_of.main_fraction

  index = index + size_of.sub_fraction

  index = index + size_of.trading_reference_date

  index = index + size_of.events_groups(buffer, offset + index)

  index = index + size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + size_of.inst_attrib_groups(buffer, offset + index)

  index = index + size_of.lot_type_rules_groups(buffer, offset + index)

  index = index + size_of.m_d_instrument_definition_spread_29_leg_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Spread 29
display.md_instrument_definition_spread_29 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Definition Spread 29
dissect.md_instrument_definition_spread_29_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_optional = dissect.underlying_product_optional(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Security Sub Type: 5 Byte Ascii String
  index, security_sub_type = dissect.security_sub_type(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment Price: 8 Byte Signed Fixed Width Integer
  index, min_price_increment_price = dissect.min_price_increment_price(buffer, index, packet, parent)

  -- Display Factor Float: 8 Byte Signed Fixed Width Integer
  index, display_factor_float = dissect.display_factor_float(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = dissect.price_display_format(buffer, index, packet, parent)

  -- Price Ratio Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, price_ratio_pricenull = dissect.price_ratio_pricenull(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = dissect.tick_rule(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Trading Reference Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenull = dissect.trading_reference_price_pricenull(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = dissect.open_interest_qty(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = dissect.cleared_volume(buffer, index, packet, parent)

  -- High Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenull = dissect.high_limit_price_pricenull(buffer, index, packet, parent)

  -- Low Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenull = dissect.low_limit_price_pricenull(buffer, index, packet, parent)

  -- Max Price Variation Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenull = dissect.max_price_variation_pricenull(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = dissect.sub_fraction(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = dissect.lot_type_rules_groups(buffer, index, packet, parent)

  -- M D Instrument Definition Spread 29 Leg Groups: Struct of 2 fields
  index, m_d_instrument_definition_spread_29_leg_groups = dissect.m_d_instrument_definition_spread_29_leg_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Spread 29
dissect.md_instrument_definition_spread_29 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_spread_29 then
    local length = size_of.md_instrument_definition_spread_29(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_spread_29(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_spread_29, range, display)
  end

  return dissect.md_instrument_definition_spread_29_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Instrument Definition Future 27
size_of.md_instrument_definition_future_27 = function(buffer, offset)
  local index = 0

  index = index + size_of.match_event_indicator

  index = index + size_of.tot_num_reports_optional

  index = index + size_of.security_update_action

  index = index + size_of.last_update_time

  index = index + size_of.md_security_trading_status

  index = index + size_of.appl_id

  index = index + size_of.market_segment_id

  index = index + size_of.underlying_product

  index = index + size_of.security_exchange

  index = index + size_of.security_group

  index = index + size_of.asset

  index = index + size_of.symbol

  index = index + size_of.security_id

  index = index + size_of.security_type

  index = index + size_of.cfi_code

  index = index + size_of.maturity_month_year(buffer, offset + index)

  index = index + size_of.currency

  index = index + size_of.settl_currency

  index = index + size_of.match_algorithm

  index = index + size_of.min_trade_vol

  index = index + size_of.max_trade_vol

  index = index + size_of.min_price_increment_price

  index = index + size_of.display_factor_float

  index = index + size_of.main_fraction

  index = index + size_of.sub_fraction

  index = index + size_of.price_display_format

  index = index + size_of.unit_of_measure

  index = index + size_of.unit_of_measure_qty_pricenull

  index = index + size_of.trading_reference_price_pricenull

  index = index + size_of.settl_price_type

  index = index + size_of.open_interest_qty

  index = index + size_of.cleared_volume

  index = index + size_of.high_limit_price_pricenull

  index = index + size_of.low_limit_price_pricenull

  index = index + size_of.max_price_variation_pricenull

  index = index + size_of.decay_quantity

  index = index + size_of.decay_start_date

  index = index + size_of.original_contract_size

  index = index + size_of.contract_multiplier

  index = index + size_of.contract_multiplier_unit

  index = index + size_of.flow_schedule_type

  index = index + size_of.min_price_increment_amount_pricenull

  index = index + size_of.user_defined_instrument

  index = index + size_of.trading_reference_date

  index = index + size_of.events_groups(buffer, offset + index)

  index = index + size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + size_of.inst_attrib_groups(buffer, offset + index)

  index = index + size_of.lot_type_rules_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Future 27
display.md_instrument_definition_future_27 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Definition Future 27
dissect.md_instrument_definition_future_27_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = dissect.cfi_code(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = dissect.settl_currency(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment Price: 8 Byte Signed Fixed Width Integer
  index, min_price_increment_price = dissect.min_price_increment_price(buffer, index, packet, parent)

  -- Display Factor Float: 8 Byte Signed Fixed Width Integer
  index, display_factor_float = dissect.display_factor_float(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = dissect.sub_fraction(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = dissect.price_display_format(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_pricenull = dissect.unit_of_measure_qty_pricenull(buffer, index, packet, parent)

  -- Trading Reference Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenull = dissect.trading_reference_price_pricenull(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = dissect.open_interest_qty(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = dissect.cleared_volume(buffer, index, packet, parent)

  -- High Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenull = dissect.high_limit_price_pricenull(buffer, index, packet, parent)

  -- Low Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenull = dissect.low_limit_price_pricenull(buffer, index, packet, parent)

  -- Max Price Variation Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenull = dissect.max_price_variation_pricenull(buffer, index, packet, parent)

  -- Decay Quantity: 4 Byte Signed Fixed Width Integer Nullable
  index, decay_quantity = dissect.decay_quantity(buffer, index, packet, parent)

  -- Decay Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, decay_start_date = dissect.decay_start_date(buffer, index, packet, parent)

  -- Original Contract Size: 4 Byte Signed Fixed Width Integer Nullable
  index, original_contract_size = dissect.original_contract_size(buffer, index, packet, parent)

  -- Contract Multiplier: 4 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier = dissect.contract_multiplier(buffer, index, packet, parent)

  -- Contract Multiplier Unit: 1 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier_unit = dissect.contract_multiplier_unit(buffer, index, packet, parent)

  -- Flow Schedule Type: 1 Byte Signed Fixed Width Integer Nullable
  index, flow_schedule_type = dissect.flow_schedule_type(buffer, index, packet, parent)

  -- Min Price Increment Amount Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount_pricenull = dissect.min_price_increment_amount_pricenull(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = dissect.lot_type_rules_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Future 27
dissect.md_instrument_definition_future_27 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_future_27 then
    local length = size_of.md_instrument_definition_future_27(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_future_27(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_future_27, range, display)
  end

  return dissect.md_instrument_definition_future_27_fields(buffer, offset, packet, parent)
end

-- Size: Text
size_of.text = 180

-- Display: Text
display.text = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
dissect.text = function(buffer, offset, packet, parent)
  local length = size_of.text
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

  local display = display.text(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: Admin Logout
size_of.admin_logout = function(buffer, offset)
  local index = 0

  index = index + size_of.text

  return index
end

-- Display: Admin Logout
display.admin_logout = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Admin Logout
dissect.admin_logout_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 180 Byte Ascii String
  index, text = dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Logout
dissect.admin_logout = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.admin_logout then
    local length = size_of.admin_logout(buffer, offset)
    local range = buffer(offset, length)
    local display = display.admin_logout(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.admin_logout, range, display)
  end

  return dissect.admin_logout_fields(buffer, offset, packet, parent)
end

-- Size: Heart Bt Int
size_of.heart_bt_int = 1

-- Display: Heart Bt Int
display.heart_bt_int = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
dissect.heart_bt_int = function(buffer, offset, packet, parent)
  local length = size_of.heart_bt_int
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.heart_bt_int(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Calculate size of: Admin Login
size_of.admin_login = function(buffer, offset)
  local index = 0

  index = index + size_of.heart_bt_int

  return index
end

-- Display: Admin Login
display.admin_login = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Admin Login
dissect.admin_login_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heart Bt Int: 1 Byte Signed Fixed Width Integer
  index, heart_bt_int = dissect.heart_bt_int(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Login
dissect.admin_login = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.admin_login then
    local length = size_of.admin_login(buffer, offset)
    local range = buffer(offset, length)
    local display = display.admin_login(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.admin_login, range, display)
  end

  return dissect.admin_login_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Channel Reset Group
size_of.channel_reset_group = function(buffer, offset)
  local index = 0

  index = index + size_of.appl_id

  return index
end

-- Display: Channel Reset Group
display.channel_reset_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Channel Reset Group
dissect.channel_reset_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = dissect.appl_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset Group
dissect.channel_reset_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.channel_reset_group then
    local length = size_of.channel_reset_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.channel_reset_group(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.channel_reset_group, range, display)
  end

  return dissect.channel_reset_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Channel Reset Groups
size_of.channel_reset_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local channel_reset_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + channel_reset_group_count * 2

  return index
end

-- Display: Channel Reset Groups
display.channel_reset_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Channel Reset Groups
dissect.channel_reset_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Channel Reset Group: Struct of 1 fields
  for i = 1, num_in_group do
    index = dissect.channel_reset_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Channel Reset Groups
dissect.channel_reset_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.channel_reset_groups then
    local length = size_of.channel_reset_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.channel_reset_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.channel_reset_groups, range, display)
  end

  return dissect.channel_reset_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Channel Reset
size_of.channel_reset = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.match_event_indicator

  index = index + size_of.channel_reset_groups(buffer, offset + index)

  return index
end

-- Display: Channel Reset
display.channel_reset = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Channel Reset
dissect.channel_reset_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Channel Reset Groups: Struct of 2 fields
  index, channel_reset_groups = dissect.channel_reset_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset
dissect.channel_reset = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.channel_reset then
    local length = size_of.channel_reset(buffer, offset)
    local range = buffer(offset, length)
    local display = display.channel_reset(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.channel_reset, range, display)
  end

  return dissect.channel_reset_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of Channel Reset
  if template_id == 4 then
    return size_of.channel_reset(buffer, offset)
  end
  -- Size of Admin Heartbeat
  if template_id == 12 then
    return 0
  end
  -- Size of Admin Login
  if template_id == 15 then
    return size_of.admin_login(buffer, offset)
  end
  -- Size of Admin Logout
  if template_id == 16 then
    return size_of.admin_logout(buffer, offset)
  end
  -- Size of Md Instrument Definition Future 27
  if template_id == 27 then
    return size_of.md_instrument_definition_future_27(buffer, offset)
  end
  -- Size of Md Instrument Definition Spread 29
  if template_id == 29 then
    return size_of.md_instrument_definition_spread_29(buffer, offset)
  end
  -- Size of Security Status
  if template_id == 30 then
    return size_of.security_status(buffer, offset)
  end
  -- Size of Md Incremental Refresh Book 32
  if template_id == 32 then
    return size_of.md_incremental_refresh_book_32(buffer, offset)
  end
  -- Size of Md Incremental Refresh Daily Statistics 33
  if template_id == 33 then
    return size_of.md_incremental_refresh_daily_statistics_33(buffer, offset)
  end
  -- Size of Md Incremental Refresh Limits Banding 34
  if template_id == 34 then
    return size_of.md_incremental_refresh_limits_banding_34(buffer, offset)
  end
  -- Size of Md Incremental Refresh Session Statistics 35
  if template_id == 35 then
    return size_of.md_incremental_refresh_session_statistics_35(buffer, offset)
  end
  -- Size of Md Incremental Refresh Volume
  if template_id == 37 then
    return size_of.md_incremental_refresh_volume(buffer, offset)
  end
  -- Size of Snapshot Full Refresh 38
  if template_id == 38 then
    return size_of.snapshot_full_refresh_38(buffer, offset)
  end
  -- Size of Quote Request
  if template_id == 39 then
    return size_of.quote_request(buffer, offset)
  end
  -- Size of Md Instrument Definition Option 41
  if template_id == 41 then
    return size_of.md_instrument_definition_option_41(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Summary 42
  if template_id == 42 then
    return size_of.md_incremental_refresh_trade_summary_42(buffer, offset)
  end
  -- Size of Md Incremental Refresh Order Book 43
  if template_id == 43 then
    return size_of.md_incremental_refresh_order_book_43(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Order Book 44
  if template_id == 44 then
    return size_of.snapshot_full_refresh_order_book_44(buffer, offset)
  end
  -- Size of Md Incremental Refresh Book 46
  if template_id == 46 then
    return size_of.md_incremental_refresh_book_46(buffer, offset)
  end
  -- Size of Md Incremental Refresh Order Book 47
  if template_id == 47 then
    return size_of.md_incremental_refresh_order_book_47(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Summary 48
  if template_id == 48 then
    return size_of.md_incremental_refresh_trade_summary_48(buffer, offset)
  end
  -- Size of Md Incremental Refresh Daily Statistics 49
  if template_id == 49 then
    return size_of.md_incremental_refresh_daily_statistics_49(buffer, offset)
  end
  -- Size of Md Incremental Refresh Limits Banding 50
  if template_id == 50 then
    return size_of.md_incremental_refresh_limits_banding_50(buffer, offset)
  end
  -- Size of Md Incremental Refresh Session Statistics 51
  if template_id == 51 then
    return size_of.md_incremental_refresh_session_statistics_51(buffer, offset)
  end
  -- Size of Snapshot Full Refresh 52
  if template_id == 52 then
    return size_of.snapshot_full_refresh_52(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Order Book 53
  if template_id == 53 then
    return size_of.snapshot_full_refresh_order_book_53(buffer, offset)
  end
  -- Size of Md Instrument Definition Future 54
  if template_id == 54 then
    return size_of.md_instrument_definition_future_54(buffer, offset)
  end
  -- Size of Md Instrument Definition Option 55
  if template_id == 55 then
    return size_of.md_instrument_definition_option_55(buffer, offset)
  end
  -- Size of Md Instrument Definition Spread 56
  if template_id == 56 then
    return size_of.md_instrument_definition_spread_56(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Channel Reset
  if template_id == 4 then
    return dissect.channel_reset(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if template_id == 12 then
  end
  -- Dissect Admin Login
  if template_id == 15 then
    return dissect.admin_login(buffer, offset, packet, parent)
  end
  -- Dissect Admin Logout
  if template_id == 16 then
    return dissect.admin_logout(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Future 27
  if template_id == 27 then
    return dissect.md_instrument_definition_future_27(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Spread 29
  if template_id == 29 then
    return dissect.md_instrument_definition_spread_29(buffer, offset, packet, parent)
  end
  -- Dissect Security Status
  if template_id == 30 then
    return dissect.security_status(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Book 32
  if template_id == 32 then
    return dissect.md_incremental_refresh_book_32(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Daily Statistics 33
  if template_id == 33 then
    return dissect.md_incremental_refresh_daily_statistics_33(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Limits Banding 34
  if template_id == 34 then
    return dissect.md_incremental_refresh_limits_banding_34(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Session Statistics 35
  if template_id == 35 then
    return dissect.md_incremental_refresh_session_statistics_35(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Volume
  if template_id == 37 then
    return dissect.md_incremental_refresh_volume(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh 38
  if template_id == 38 then
    return dissect.snapshot_full_refresh_38(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 39 then
    return dissect.quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Option 41
  if template_id == 41 then
    return dissect.md_instrument_definition_option_41(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Summary 42
  if template_id == 42 then
    return dissect.md_incremental_refresh_trade_summary_42(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Order Book 43
  if template_id == 43 then
    return dissect.md_incremental_refresh_order_book_43(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Order Book 44
  if template_id == 44 then
    return dissect.snapshot_full_refresh_order_book_44(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Book 46
  if template_id == 46 then
    return dissect.md_incremental_refresh_book_46(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Order Book 47
  if template_id == 47 then
    return dissect.md_incremental_refresh_order_book_47(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Summary 48
  if template_id == 48 then
    return dissect.md_incremental_refresh_trade_summary_48(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Daily Statistics 49
  if template_id == 49 then
    return dissect.md_incremental_refresh_daily_statistics_49(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Limits Banding 50
  if template_id == 50 then
    return dissect.md_incremental_refresh_limits_banding_50(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Session Statistics 51
  if template_id == 51 then
    return dissect.md_incremental_refresh_session_statistics_51(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh 52
  if template_id == 52 then
    return dissect.snapshot_full_refresh_52(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Order Book 53
  if template_id == 53 then
    return dissect.snapshot_full_refresh_order_book_53(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Future 54
  if template_id == 54 then
    return dissect.md_instrument_definition_future_54(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Option 55
  if template_id == 55 then
    return dissect.md_instrument_definition_option_55(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Spread 56
  if template_id == 56 then
    return dissect.md_instrument_definition_spread_56(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(cme_futures_mdp3_sbe_v1_9.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
size_of.version = 2

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
size_of.schema_id = 2

-- Display: Schema Id
display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
dissect.schema_id = function(buffer, offset, packet, parent)
  local length = size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.schema_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 2

-- Display: Template Id
display.template_id = function(value)
  if value == 4 then
    return "Template Id: Channel Reset (4)"
  end
  if value == 12 then
    return "Template Id: Admin Heartbeat (12)"
  end
  if value == 15 then
    return "Template Id: Admin Login (15)"
  end
  if value == 16 then
    return "Template Id: Admin Logout (16)"
  end
  if value == 27 then
    return "Template Id: Md Instrument Definition Future (27)"
  end
  if value == 29 then
    return "Template Id: Md Instrument Definition Spread (29)"
  end
  if value == 30 then
    return "Template Id: Security Status (30)"
  end
  if value == 32 then
    return "Template Id: Md Incremental Refresh Book (32)"
  end
  if value == 33 then
    return "Template Id: Md Incremental Refresh Daily Statistics (33)"
  end
  if value == 34 then
    return "Template Id: Md Incremental Refresh Limits Banding (34)"
  end
  if value == 35 then
    return "Template Id: Md Incremental Refresh Session Statistics (35)"
  end
  if value == 37 then
    return "Template Id: Md Incremental Refresh Volume (37)"
  end
  if value == 38 then
    return "Template Id: Snapshot Full Refresh (38)"
  end
  if value == 39 then
    return "Template Id: Quote Request (39)"
  end
  if value == 41 then
    return "Template Id: Md Instrument Definition Option (41)"
  end
  if value == 42 then
    return "Template Id: Md Incremental Refresh Trade Summary (42)"
  end
  if value == 43 then
    return "Template Id: Md Incremental Refresh Order Book (43)"
  end
  if value == 44 then
    return "Template Id: Snapshot Full Refresh Order Book (44)"
  end
  if value == 46 then
    return "Template Id: Md Incremental Refresh Book (46)"
  end
  if value == 47 then
    return "Template Id: Md Incremental Refresh Order Book (47)"
  end
  if value == 48 then
    return "Template Id: Md Incremental Refresh Trade Summary (48)"
  end
  if value == 49 then
    return "Template Id: Md Incremental Refresh Daily Statistics (49)"
  end
  if value == 50 then
    return "Template Id: Md Incremental Refresh Limits Banding (50)"
  end
  if value == 51 then
    return "Template Id: Md Incremental Refresh Session Statistics (51)"
  end
  if value == 52 then
    return "Template Id: Snapshot Full Refresh (52)"
  end
  if value == 53 then
    return "Template Id: Snapshot Full Refresh Order Book (53)"
  end
  if value == 54 then
    return "Template Id: Md Instrument Definition Future (54)"
  end
  if value == 55 then
    return "Template Id: Md Instrument Definition Option (55)"
  end
  if value == 56 then
    return "Template Id: Md Instrument Definition Spread (56)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.template_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length

  index = index + size_of.template_id

  index = index + size_of.schema_id

  index = index + size_of.version

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 29 values
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size: Message Size
size_of.message_size = 2

-- Display: Message Size
display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
dissect.message_size = function(buffer, offset, packet, parent)
  local length = size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_size

  index = index + size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = dissect.message_size(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 29 branches
  index = dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
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

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Message Sequence Number
size_of.message_sequence_number = 4

-- Display: Message Sequence Number
display.message_sequence_number = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
dissect.message_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_9.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Binary Packet Header
size_of.binary_packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.message_sequence_number

  index = index + size_of.sending_time

  return index
end

-- Display: Binary Packet Header
display.binary_packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Binary Packet Header
dissect.binary_packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = dissect.message_sequence_number(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
dissect.binary_packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.binary_packet_header then
    local length = size_of.binary_packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.binary_packet_header(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_9.fields.binary_packet_header, range, display)
  end

  return dissect.binary_packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = dissect.binary_packet_header(buffer, index, packet, parent)

  -- Message: Struct of 3 fields
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cme_futures_mdp3_sbe_v1_9.init()
end

-- Dissector for Cme Futures Mdp3 Sbe 1.9
function cme_futures_mdp3_sbe_v1_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cme_futures_mdp3_sbe_v1_9.name

  -- Dissect protocol
  local protocol = parent:add(cme_futures_mdp3_sbe_v1_9, buffer(), cme_futures_mdp3_sbe_v1_9.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cme_futures_mdp3_sbe_v1_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cme_futures_mdp3_sbe_v1_9_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  if 1 == buffer(18, 2):le_uint() then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  if 9 == buffer(20, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures Mdp3 Sbe 1.9
local function cme_futures_mdp3_sbe_v1_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cme_futures_mdp3_sbe_v1_9_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cme_futures_mdp3_sbe_v1_9
  cme_futures_mdp3_sbe_v1_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures Mdp3 Sbe 1.9
cme_futures_mdp3_sbe_v1_9:register_heuristic("udp", cme_futures_mdp3_sbe_v1_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 1.9
--   Date: Thursday, March 8, 2018
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
