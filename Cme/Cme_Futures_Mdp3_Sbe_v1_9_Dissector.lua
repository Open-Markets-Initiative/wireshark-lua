-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures Mdp3 Sbe 1.9 Protocol
local omi_cme_futures_mdp3_sbe_v1_9 = Proto("Cme.Futures.Mdp3.Sbe.v1.9.Lua", "Cme Futures Mdp3 Sbe 1.9")

-- Protocol table
local cme_futures_mdp3_sbe_v1_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Futures Mdp3 Sbe 1.9 Fields
omi_cme_futures_mdp3_sbe_v1_9.fields.actual = ProtoField.new("Actual", "cme.futures.mdp3.sbe.v1.9.actual", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cme_futures_mdp3_sbe_v1_9.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.futures.mdp3.sbe.v1.9.aggressorside", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.appl_id = ProtoField.new("Appl Id", "cme.futures.mdp3.sbe.v1.9.applid", ftypes.INT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.asset = ProtoField.new("Asset", "cme.futures.mdp3.sbe.v1.9.asset", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.futures.mdp3.sbe.v1.9.binarypacketheader", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.block_length = ProtoField.new("Block Length", "cme.futures.mdp3.sbe.v1.9.blocklength", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.block_trade_eligible = ProtoField.new("Block Trade Eligible", "cme.futures.mdp3.sbe.v1.9.blocktradeeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x04000000)
omi_cme_futures_mdp3_sbe_v1_9.fields.cfi_code = ProtoField.new("Cfi Code", "cme.futures.mdp3.sbe.v1.9.cficode", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.channel_reset_group = ProtoField.new("Channel Reset Group", "cme.futures.mdp3.sbe.v1.9.channelresetgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.channel_reset_groups = ProtoField.new("Channel Reset Groups", "cme.futures.mdp3.sbe.v1.9.channelresetgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.cleared_volume = ProtoField.new("Cleared Volume", "cme.futures.mdp3.sbe.v1.9.clearedvolume", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "cme.futures.mdp3.sbe.v1.9.contractmultiplier", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.contract_multiplier_unit = ProtoField.new("Contract Multiplier Unit", "cme.futures.mdp3.sbe.v1.9.contractmultiplierunit", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.currency = ProtoField.new("Currency", "cme.futures.mdp3.sbe.v1.9.currency", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.current_chunk = ProtoField.new("Current Chunk", "cme.futures.mdp3.sbe.v1.9.currentchunk", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.daily_product_eligibility = ProtoField.new("Daily Product Eligibility", "cme.futures.mdp3.sbe.v1.9.dailyproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000200)
omi_cme_futures_mdp3_sbe_v1_9.fields.day = ProtoField.new("Day", "cme.futures.mdp3.sbe.v1.9.day", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.decay_quantity = ProtoField.new("Decay Quantity", "cme.futures.mdp3.sbe.v1.9.decayquantity", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.decay_start_date = ProtoField.new("Decay Start Date", "cme.futures.mdp3.sbe.v1.9.decaystartdate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.decaying_product_eligibility = ProtoField.new("Decaying Product Eligibility", "cme.futures.mdp3.sbe.v1.9.decayingproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00800000)
omi_cme_futures_mdp3_sbe_v1_9.fields.display_factor_decimal_9 = ProtoField.new("Display Factor Decimal 9", "cme.futures.mdp3.sbe.v1.9.displayfactordecimal9", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.display_factor_float = ProtoField.new("Display Factor Float", "cme.futures.mdp3.sbe.v1.9.displayfactorfloat", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.ebf_eligible = ProtoField.new("Ebf Eligible", "cme.futures.mdp3.sbe.v1.9.ebfeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x10000000)
omi_cme_futures_mdp3_sbe_v1_9.fields.efp_eligible = ProtoField.new("Efp Eligible", "cme.futures.mdp3.sbe.v1.9.efpeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x08000000)
omi_cme_futures_mdp3_sbe_v1_9.fields.efr_eligible = ProtoField.new("Efr Eligible", "cme.futures.mdp3.sbe.v1.9.efreligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x40000000)
omi_cme_futures_mdp3_sbe_v1_9.fields.efs_eligible = ProtoField.new("Efs Eligible", "cme.futures.mdp3.sbe.v1.9.efseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x20000000)
omi_cme_futures_mdp3_sbe_v1_9.fields.electronic_match_eligible = ProtoField.new("Electronic Match Eligible", "cme.futures.mdp3.sbe.v1.9.electronicmatcheligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x01000000)
omi_cme_futures_mdp3_sbe_v1_9.fields.end_of_event = ProtoField.new("End Of Event", "cme.futures.mdp3.sbe.v1.9.endofevent", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_cme_futures_mdp3_sbe_v1_9.fields.event_time = ProtoField.new("Event Time", "cme.futures.mdp3.sbe.v1.9.eventtime", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_9.fields.event_type = ProtoField.new("Event Type", "cme.futures.mdp3.sbe.v1.9.eventtype", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.events_group = ProtoField.new("Events Group", "cme.futures.mdp3.sbe.v1.9.eventsgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.events_groups = ProtoField.new("Events Groups", "cme.futures.mdp3.sbe.v1.9.eventsgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.final_daily = ProtoField.new("Final Daily", "cme.futures.mdp3.sbe.v1.9.finaldaily", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cme_futures_mdp3_sbe_v1_9.fields.flow_schedule_type = ProtoField.new("Flow Schedule Type", "cme.futures.mdp3.sbe.v1.9.flowscheduletype", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.group_size = ProtoField.new("Group Size", "cme.futures.mdp3.sbe.v1.9.groupsize", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.group_size_8_byte = ProtoField.new("Group Size 8 Byte", "cme.futures.mdp3.sbe.v1.9.groupsize8byte", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.gt_orders_eligibility = ProtoField.new("Gt Orders Eligibility", "cme.futures.mdp3.sbe.v1.9.gtorderseligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000400)
omi_cme_futures_mdp3_sbe_v1_9.fields.halt_reason = ProtoField.new("Halt Reason", "cme.futures.mdp3.sbe.v1.9.haltreason", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "cme.futures.mdp3.sbe.v1.9.heartbtint", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.high_limit_price_pricenul_l_9 = ProtoField.new("High Limit Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.highlimitpricepricenull9", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.high_limit_price_pricenull = ProtoField.new("High Limit Price Pricenull", "cme.futures.mdp3.sbe.v1.9.highlimitpricepricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.ilink_indicative_mass_quoting_eligible = ProtoField.new("ILink Indicative Mass Quoting Eligible", "cme.futures.mdp3.sbe.v1.9.ilinkindicativemassquotingeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00010000)
omi_cme_futures_mdp3_sbe_v1_9.fields.implied_matching_eligibility = ProtoField.new("Implied Matching Eligibility", "cme.futures.mdp3.sbe.v1.9.impliedmatchingeligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000800)
omi_cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_group = ProtoField.new("Inst Attrib Group", "cme.futures.mdp3.sbe.v1.9.instattribgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_groups = ProtoField.new("Inst Attrib Groups", "cme.futures.mdp3.sbe.v1.9.instattribgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "cme.futures.mdp3.sbe.v1.9.instattribvalue", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.intraday = ProtoField.new("Intraday", "cme.futures.mdp3.sbe.v1.9.intraday", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_cme_futures_mdp3_sbe_v1_9.fields.is_fractional = ProtoField.new("Is Fractional", "cme.futures.mdp3.sbe.v1.9.isfractional", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00080000)
omi_cme_futures_mdp3_sbe_v1_9.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "cme.futures.mdp3.sbe.v1.9.lastimpliedmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_cme_futures_mdp3_sbe_v1_9.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "cme.futures.mdp3.sbe.v1.9.lastmsgseqnumprocessed", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.last_qty = ProtoField.new("Last Qty", "cme.futures.mdp3.sbe.v1.9.lastqty", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "cme.futures.mdp3.sbe.v1.9.lastquotemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_cme_futures_mdp3_sbe_v1_9.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "cme.futures.mdp3.sbe.v1.9.laststatsmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_cme_futures_mdp3_sbe_v1_9.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "cme.futures.mdp3.sbe.v1.9.lasttrademsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cme_futures_mdp3_sbe_v1_9.fields.last_update_time = ProtoField.new("Last Update Time", "cme.futures.mdp3.sbe.v1.9.lastupdatetime", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_9.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "cme.futures.mdp3.sbe.v1.9.lastvolumemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cme_futures_mdp3_sbe_v1_9.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "cme.futures.mdp3.sbe.v1.9.legoptiondelta", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.leg_price_pricenul_l_9 = ProtoField.new("Leg Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.legpricepricenull9", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.leg_price_pricenull = ProtoField.new("Leg Price Pricenull", "cme.futures.mdp3.sbe.v1.9.legpricepricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.futures.mdp3.sbe.v1.9.legratioqty", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.leg_security_id = ProtoField.new("Leg Security Id", "cme.futures.mdp3.sbe.v1.9.legsecurityid", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.leg_side = ProtoField.new("Leg Side", "cme.futures.mdp3.sbe.v1.9.legside", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.lot_type = ProtoField.new("Lot Type", "cme.futures.mdp3.sbe.v1.9.lottype", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.lot_type_rules_group = ProtoField.new("Lot Type Rules Group", "cme.futures.mdp3.sbe.v1.9.lottyperulesgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.lot_type_rules_groups = ProtoField.new("Lot Type Rules Groups", "cme.futures.mdp3.sbe.v1.9.lottyperulesgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.low_limit_price_pricenul_l_9 = ProtoField.new("Low Limit Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.lowlimitpricepricenull9", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.low_limit_price_pricenull = ProtoField.new("Low Limit Price Pricenull", "cme.futures.mdp3.sbe.v1.9.lowlimitpricepricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_feed_types_group = ProtoField.new("M D Feed Types Group", "cme.futures.mdp3.sbe.v1.9.mdfeedtypesgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_feed_types_groups = ProtoField.new("M D Feed Types Groups", "cme.futures.mdp3.sbe.v1.9.mdfeedtypesgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_group = ProtoField.new("M D Incremental Refresh Book 32 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_groups = ProtoField.new("M D Incremental Refresh Book 32 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_order_group = ProtoField.new("M D Incremental Refresh Book 32 Order Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32ordergroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_order_groups = ProtoField.new("M D Incremental Refresh Book 32 Order Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32ordergroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_group = ProtoField.new("M D Incremental Refresh Book 46 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_groups = ProtoField.new("M D Incremental Refresh Book 46 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_order_group = ProtoField.new("M D Incremental Refresh Book 46 Order Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46ordergroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_order_groups = ProtoField.new("M D Incremental Refresh Book 46 Order Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46ordergroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_33_group = ProtoField.new("M D Incremental Refresh Daily Statistics 33 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics33group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_33_groups = ProtoField.new("M D Incremental Refresh Daily Statistics 33 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics33groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_49_group = ProtoField.new("M D Incremental Refresh Daily Statistics 49 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics49group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_49_groups = ProtoField.new("M D Incremental Refresh Daily Statistics 49 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics49groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_34_group = ProtoField.new("M D Incremental Refresh Limits Banding 34 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding34group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_34_groups = ProtoField.new("M D Incremental Refresh Limits Banding 34 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding34groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_50_group = ProtoField.new("M D Incremental Refresh Limits Banding 50 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding50group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_50_groups = ProtoField.new("M D Incremental Refresh Limits Banding 50 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding50groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_43_group = ProtoField.new("M D Incremental Refresh Order Book 43 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook43group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_43_groups = ProtoField.new("M D Incremental Refresh Order Book 43 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook43groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_47_group = ProtoField.new("M D Incremental Refresh Order Book 47 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook47group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_47_groups = ProtoField.new("M D Incremental Refresh Order Book 47 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook47groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_35_group = ProtoField.new("M D Incremental Refresh Session Statistics 35 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics35group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_35_groups = ProtoField.new("M D Incremental Refresh Session Statistics 35 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics35groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_51_group = ProtoField.new("M D Incremental Refresh Session Statistics 51 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics51group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_51_groups = ProtoField.new("M D Incremental Refresh Session Statistics 51 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics51groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_group = ProtoField.new("M D Incremental Refresh Trade Summary 42 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_groups = ProtoField.new("M D Incremental Refresh Trade Summary 42 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_order_group = ProtoField.new("M D Incremental Refresh Trade Summary 42 Order Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42ordergroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_order_groups = ProtoField.new("M D Incremental Refresh Trade Summary 42 Order Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42ordergroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_group = ProtoField.new("M D Incremental Refresh Trade Summary 48 Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_groups = ProtoField.new("M D Incremental Refresh Trade Summary 48 Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_order_group = ProtoField.new("M D Incremental Refresh Trade Summary 48 Order Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48ordergroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_order_groups = ProtoField.new("M D Incremental Refresh Trade Summary 48 Order Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48ordergroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_volume_group = ProtoField.new("M D Incremental Refresh Volume Group", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshvolumegroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_volume_groups = ProtoField.new("M D Incremental Refresh Volume Groups", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshvolumegroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_29_leg_group = ProtoField.new("M D Instrument Definition Spread 29 Leg Group", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread29leggroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_29_leg_groups = ProtoField.new("M D Instrument Definition Spread 29 Leg Groups", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread29leggroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_56_leg_group = ProtoField.new("M D Instrument Definition Spread 56 Leg Group", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread56leggroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_56_leg_groups = ProtoField.new("M D Instrument Definition Spread 56 Leg Groups", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread56leggroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.main_fraction = ProtoField.new("Main Fraction", "cme.futures.mdp3.sbe.v1.9.mainfraction", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.market_depth = ProtoField.new("Market Depth", "cme.futures.mdp3.sbe.v1.9.marketdepth", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.market_segment_id = ProtoField.new("Market Segment Id", "cme.futures.mdp3.sbe.v1.9.marketsegmentid", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.match_algorithm = ProtoField.new("Match Algorithm", "cme.futures.mdp3.sbe.v1.9.matchalgorithm", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "cme.futures.mdp3.sbe.v1.9.matcheventindicator", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.mdp3.sbe.v1.9.maturitymonthyear", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.max_price_variation_pricenul_l_9 = ProtoField.new("Max Price Variation Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.maxpricevariationpricenull9", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.max_price_variation_pricenull = ProtoField.new("Max Price Variation Pricenull", "cme.futures.mdp3.sbe.v1.9.maxpricevariationpricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "cme.futures.mdp3.sbe.v1.9.maxtradevol", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_display_qty = ProtoField.new("Md Display Qty", "cme.futures.mdp3.sbe.v1.9.mddisplayqty", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_display_qty_optional = ProtoField.new("Md Display Qty Optional", "cme.futures.mdp3.sbe.v1.9.mddisplayqtyoptional", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.futures.mdp3.sbe.v1.9.mdentrypx", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_px_optional = ProtoField.new("Md Entry Px Optional", "cme.futures.mdp3.sbe.v1.9.mdentrypxoptional", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.futures.mdp3.sbe.v1.9.mdentrysize", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_size_optional = ProtoField.new("Md Entry Size Optional", "cme.futures.mdp3.sbe.v1.9.mdentrysizeoptional", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_ = ProtoField.new("Md Entry Type ", "cme.futures.mdp3.sbe.v1.9.mdentrytype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_book = ProtoField.new("Md Entry Type Book", "cme.futures.mdp3.sbe.v1.9.mdentrytypebook", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_daily_statistics = ProtoField.new("Md Entry Type Daily Statistics", "cme.futures.mdp3.sbe.v1.9.mdentrytypedailystatistics", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_statistics = ProtoField.new("Md Entry Type Statistics", "cme.futures.mdp3.sbe.v1.9.mdentrytypestatistics", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_feed_type = ProtoField.new("Md Feed Type", "cme.futures.mdp3.sbe.v1.9.mdfeedtype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_order_priority = ProtoField.new("Md Order Priority", "cme.futures.mdp3.sbe.v1.9.mdorderpriority", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_price_level = ProtoField.new("Md Price Level", "cme.futures.mdp3.sbe.v1.9.mdpricelevel", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_price_level_optional = ProtoField.new("Md Price Level Optional", "cme.futures.mdp3.sbe.v1.9.mdpriceleveloptional", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_security_trading_status = ProtoField.new("Md Security Trading Status", "cme.futures.mdp3.sbe.v1.9.mdsecuritytradingstatus", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_trade_entry_id = ProtoField.new("Md Trade Entry Id", "cme.futures.mdp3.sbe.v1.9.mdtradeentryid", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_update_action = ProtoField.new("Md Update Action", "cme.futures.mdp3.sbe.v1.9.mdupdateaction", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.message = ProtoField.new("Message", "cme.futures.mdp3.sbe.v1.9.message", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.message_header = ProtoField.new("Message Header", "cme.futures.mdp3.sbe.v1.9.messageheader", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.futures.mdp3.sbe.v1.9.messagesequencenumber", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.message_size = ProtoField.new("Message Size", "cme.futures.mdp3.sbe.v1.9.messagesize", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.min_cab_price_pricenul_l_9 = ProtoField.new("Min Cab Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.mincabpricepricenull9", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.min_cab_price_pricenull = ProtoField.new("Min Cab Price Pricenull", "cme.futures.mdp3.sbe.v1.9.mincabpricepricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.min_lot_size = ProtoField.new("Min Lot Size", "cme.futures.mdp3.sbe.v1.9.minlotsize", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment = ProtoField.new("Min Price Increment", "cme.futures.mdp3.sbe.v1.9.minpriceincrement", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_amount_pricenul_l_9 = ProtoField.new("Min Price Increment Amount Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.minpriceincrementamountpricenull9", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_amount_pricenull = ProtoField.new("Min Price Increment Amount Pricenull", "cme.futures.mdp3.sbe.v1.9.minpriceincrementamountpricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_optional = ProtoField.new("Min Price Increment Optional", "cme.futures.mdp3.sbe.v1.9.minpriceincrementoptional", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_price = ProtoField.new("Min Price Increment Price", "cme.futures.mdp3.sbe.v1.9.minpriceincrementprice", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_pricenull = ProtoField.new("Min Price Increment Pricenull", "cme.futures.mdp3.sbe.v1.9.minpriceincrementpricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "cme.futures.mdp3.sbe.v1.9.mintradevol", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.month = ProtoField.new("Month", "cme.futures.mdp3.sbe.v1.9.month", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.negative_price_outright_eligible = ProtoField.new("Negative Price Outright Eligible", "cme.futures.mdp3.sbe.v1.9.negativepriceoutrighteligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00040000)
omi_cme_futures_mdp3_sbe_v1_9.fields.negative_strike_eligible = ProtoField.new("Negative Strike Eligible", "cme.futures.mdp3.sbe.v1.9.negativestrikeeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00020000)
omi_cme_futures_mdp3_sbe_v1_9.fields.no_chunks = ProtoField.new("No Chunks", "cme.futures.mdp3.sbe.v1.9.nochunks", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.null_value = ProtoField.new("Null Value", "cme.futures.mdp3.sbe.v1.9.nullvalue", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_cme_futures_mdp3_sbe_v1_9.fields.num_in_group = ProtoField.new("Num In Group", "cme.futures.mdp3.sbe.v1.9.numingroup", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.number_of_orders = ProtoField.new("Number Of Orders", "cme.futures.mdp3.sbe.v1.9.numberoforders", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.number_of_orders_optional = ProtoField.new("Number Of Orders Optional", "cme.futures.mdp3.sbe.v1.9.numberofordersoptional", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.futures.mdp3.sbe.v1.9.openclosesettlflag", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.open_interest_qty = ProtoField.new("Open Interest Qty", "cme.futures.mdp3.sbe.v1.9.openinterestqty", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.order_cross_eligible = ProtoField.new("Order Cross Eligible", "cme.futures.mdp3.sbe.v1.9.ordercrosseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x02000000)
omi_cme_futures_mdp3_sbe_v1_9.fields.order_id = ProtoField.new("Order Id", "cme.futures.mdp3.sbe.v1.9.orderid", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_9.fields.order_id_optional = ProtoField.new("Order Id Optional", "cme.futures.mdp3.sbe.v1.9.orderidoptional", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_9.fields.order_qty = ProtoField.new("Order Qty", "cme.futures.mdp3.sbe.v1.9.orderqty", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.order_update_action = ProtoField.new("Order Update Action", "cme.futures.mdp3.sbe.v1.9.orderupdateaction", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.original_contract_size = ProtoField.new("Original Contract Size", "cme.futures.mdp3.sbe.v1.9.originalcontractsize", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.otc_eligible = ProtoField.new("Otc Eligible", "cme.futures.mdp3.sbe.v1.9.otceligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x80000000)
omi_cme_futures_mdp3_sbe_v1_9.fields.packet = ProtoField.new("Packet", "cme.futures.mdp3.sbe.v1.9.packet", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.padding_1 = ProtoField.new("Padding 1", "cme.futures.mdp3.sbe.v1.9.padding1", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_9.fields.padding_2 = ProtoField.new("Padding 2", "cme.futures.mdp3.sbe.v1.9.padding2", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_9.fields.padding_3 = ProtoField.new("Padding 3", "cme.futures.mdp3.sbe.v1.9.padding3", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_9.fields.padding_4 = ProtoField.new("Padding 4", "cme.futures.mdp3.sbe.v1.9.padding4", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_9.fields.padding_5 = ProtoField.new("Padding 5", "cme.futures.mdp3.sbe.v1.9.padding5", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_9.fields.padding_6 = ProtoField.new("Padding 6", "cme.futures.mdp3.sbe.v1.9.padding6", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_9.fields.padding_7 = ProtoField.new("Padding 7", "cme.futures.mdp3.sbe.v1.9.padding7", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_9.fields.payload = ProtoField.new("Payload", "cme.futures.mdp3.sbe.v1.9.payload", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.price_display_format = ProtoField.new("Price Display Format", "cme.futures.mdp3.sbe.v1.9.pricedisplayformat", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.price_ratio_pricenul_l_9 = ProtoField.new("Price Ratio Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.priceratiopricenull9", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.price_ratio_pricenull = ProtoField.new("Price Ratio Pricenull", "cme.futures.mdp3.sbe.v1.9.priceratiopricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.put_or_call = ProtoField.new("Put Or Call", "cme.futures.mdp3.sbe.v1.9.putorcall", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.futures.mdp3.sbe.v1.9.quotereqid", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.quote_type = ProtoField.new("Quote Type", "cme.futures.mdp3.sbe.v1.9.quotetype", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.recovery_msg = ProtoField.new("Recovery Msg", "cme.futures.mdp3.sbe.v1.9.recoverymsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_cme_futures_mdp3_sbe_v1_9.fields.reference_id = ProtoField.new("Reference Id", "cme.futures.mdp3.sbe.v1.9.referenceid", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.related_instruments_group = ProtoField.new("Related Instruments Group", "cme.futures.mdp3.sbe.v1.9.relatedinstrumentsgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.related_instruments_groups = ProtoField.new("Related Instruments Groups", "cme.futures.mdp3.sbe.v1.9.relatedinstrumentsgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.related_security_id = ProtoField.new("Related Security Id", "cme.futures.mdp3.sbe.v1.9.relatedsecurityid", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.futures.mdp3.sbe.v1.9.relatedsymgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.futures.mdp3.sbe.v1.9.relatedsymgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.related_symbol = ProtoField.new("Related Symbol", "cme.futures.mdp3.sbe.v1.9.relatedsymbol", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.reserved = ProtoField.new("Reserved", "cme.futures.mdp3.sbe.v1.9.reserved", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_cme_futures_mdp3_sbe_v1_9.fields.reserved_2 = ProtoField.new("Reserved 2", "cme.futures.mdp3.sbe.v1.9.reserved2", ftypes.UINT32, nil, base.DEC, 0x0000C000)
omi_cme_futures_mdp3_sbe_v1_9.fields.reserved_8 = ProtoField.new("Reserved 8", "cme.futures.mdp3.sbe.v1.9.reserved8", ftypes.UINT32, nil, base.DEC, 0x000000FF)
omi_cme_futures_mdp3_sbe_v1_9.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.futures.mdp3.sbe.v1.9.reservedbits", ftypes.UINT8, nil, base.DEC, 0x70)
omi_cme_futures_mdp3_sbe_v1_9.fields.rfq_cross_eligible = ProtoField.new("Rfq Cross Eligible", "cme.futures.mdp3.sbe.v1.9.rfqcrosseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00200000)
omi_cme_futures_mdp3_sbe_v1_9.fields.rounded = ProtoField.new("Rounded", "cme.futures.mdp3.sbe.v1.9.rounded", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_cme_futures_mdp3_sbe_v1_9.fields.rpt_seq = ProtoField.new("Rpt Seq", "cme.futures.mdp3.sbe.v1.9.rptseq", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.mdp3.sbe.v1.9.schemaid", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.security_exchange = ProtoField.new("Security Exchange", "cme.futures.mdp3.sbe.v1.9.securityexchange", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.security_group = ProtoField.new("Security Group", "cme.futures.mdp3.sbe.v1.9.securitygroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.security_id = ProtoField.new("Security Id", "cme.futures.mdp3.sbe.v1.9.securityid", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.security_id_optional = ProtoField.new("Security Id Optional", "cme.futures.mdp3.sbe.v1.9.securityidoptional", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.futures.mdp3.sbe.v1.9.securitysubtype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.security_trading_event = ProtoField.new("Security Trading Event", "cme.futures.mdp3.sbe.v1.9.securitytradingevent", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.security_trading_status = ProtoField.new("Security Trading Status", "cme.futures.mdp3.sbe.v1.9.securitytradingstatus", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.security_type = ProtoField.new("Security Type", "cme.futures.mdp3.sbe.v1.9.securitytype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.security_update_action = ProtoField.new("Security Update Action", "cme.futures.mdp3.sbe.v1.9.securityupdateaction", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.sending_time = ProtoField.new("Sending Time", "cme.futures.mdp3.sbe.v1.9.sendingtime", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_9.fields.settl_currency = ProtoField.new("Settl Currency", "cme.futures.mdp3.sbe.v1.9.settlcurrency", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.futures.mdp3.sbe.v1.9.settlpricetype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.side = ProtoField.new("Side", "cme.futures.mdp3.sbe.v1.9.side", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38_group = ProtoField.new("Snapshot Full Refresh 38 Group", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh38group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38_groups = ProtoField.new("Snapshot Full Refresh 38 Groups", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh38groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52_group = ProtoField.new("Snapshot Full Refresh 52 Group", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh52group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52_groups = ProtoField.new("Snapshot Full Refresh 52 Groups", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh52groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44_group = ProtoField.new("Snapshot Full Refresh Order Book 44 Group", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook44group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44_groups = ProtoField.new("Snapshot Full Refresh Order Book 44 Groups", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook44groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53_group = ProtoField.new("Snapshot Full Refresh Order Book 53 Group", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook53group", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53_groups = ProtoField.new("Snapshot Full Refresh Order Book 53 Groups", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook53groups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.strike_currency = ProtoField.new("Strike Currency", "cme.futures.mdp3.sbe.v1.9.strikecurrency", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.strike_price_pricenul_l_9 = ProtoField.new("Strike Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.strikepricepricenull9", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.strike_price_pricenull = ProtoField.new("Strike Price Pricenull", "cme.futures.mdp3.sbe.v1.9.strikepricepricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.sub_fraction = ProtoField.new("Sub Fraction", "cme.futures.mdp3.sbe.v1.9.subfraction", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.symbol = ProtoField.new("Symbol", "cme.futures.mdp3.sbe.v1.9.symbol", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.template_id = ProtoField.new("Template Id", "cme.futures.mdp3.sbe.v1.9.templateid", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.text = ProtoField.new("Text", "cme.futures.mdp3.sbe.v1.9.text", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.tick_rule = ProtoField.new("Tick Rule", "cme.futures.mdp3.sbe.v1.9.tickrule", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "cme.futures.mdp3.sbe.v1.9.totnumreports", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.tot_num_reports_optional = ProtoField.new("Tot Num Reports Optional", "cme.futures.mdp3.sbe.v1.9.totnumreportsoptional", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.trade_date = ProtoField.new("Trade Date", "cme.futures.mdp3.sbe.v1.9.tradedate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.futures.mdp3.sbe.v1.9.tradingreferencedate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.trading_reference_price_pricenul_l_9 = ProtoField.new("Trading Reference Price Pricenul L 9", "cme.futures.mdp3.sbe.v1.9.tradingreferencepricepricenull9", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.trading_reference_price_pricenull = ProtoField.new("Trading Reference Price Pricenull", "cme.futures.mdp3.sbe.v1.9.tradingreferencepricepricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.mdp3.sbe.v1.9.transacttime", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_9.fields.triangulation_eligible = ProtoField.new("Triangulation Eligible", "cme.futures.mdp3.sbe.v1.9.triangulationeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00001000)
omi_cme_futures_mdp3_sbe_v1_9.fields.underlying_product = ProtoField.new("Underlying Product", "cme.futures.mdp3.sbe.v1.9.underlyingproduct", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.underlying_product_optional = ProtoField.new("Underlying Product Optional", "cme.futures.mdp3.sbe.v1.9.underlyingproductoptional", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "cme.futures.mdp3.sbe.v1.9.underlyingsecurityid", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_9.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "cme.futures.mdp3.sbe.v1.9.underlyingsymbol", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.underlyings_group = ProtoField.new("Underlyings Group", "cme.futures.mdp3.sbe.v1.9.underlyingsgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.underlyings_groups = ProtoField.new("Underlyings Groups", "cme.futures.mdp3.sbe.v1.9.underlyingsgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "cme.futures.mdp3.sbe.v1.9.unitofmeasure", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure_qty_decimal_9_null = ProtoField.new("Unit Of Measure Qty Decimal 9 Null", "cme.futures.mdp3.sbe.v1.9.unitofmeasureqtydecimal9null", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure_qty_pricenull = ProtoField.new("Unit Of Measure Qty Pricenull", "cme.futures.mdp3.sbe.v1.9.unitofmeasureqtypricenull", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_9.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "cme.futures.mdp3.sbe.v1.9.userdefinedinstrument", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.variable_cab_eligible = ProtoField.new("Variable Cab Eligible", "cme.futures.mdp3.sbe.v1.9.variablecabeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00002000)
omi_cme_futures_mdp3_sbe_v1_9.fields.variable_product_eligibility = ProtoField.new("Variable Product Eligibility", "cme.futures.mdp3.sbe.v1.9.variableproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000100)
omi_cme_futures_mdp3_sbe_v1_9.fields.version = ProtoField.new("Version", "cme.futures.mdp3.sbe.v1.9.version", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.volatility_quoted_option = ProtoField.new("Volatility Quoted Option", "cme.futures.mdp3.sbe.v1.9.volatilityquotedoption", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00100000)
omi_cme_futures_mdp3_sbe_v1_9.fields.week = ProtoField.new("Week", "cme.futures.mdp3.sbe.v1.9.week", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_9.fields.year = ProtoField.new("Year", "cme.futures.mdp3.sbe.v1.9.year", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.zero_price_outright_eligible = ProtoField.new("Zero Price Outright Eligible", "cme.futures.mdp3.sbe.v1.9.zeropriceoutrighteligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00400000)

-- Cme Futures Mdp3 Sbe 1.9 messages
omi_cme_futures_mdp3_sbe_v1_9.fields.admin_login = ProtoField.new("Admin Login", "cme.futures.mdp3.sbe.v1.9.adminlogin", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.admin_logout = ProtoField.new("Admin Logout", "cme.futures.mdp3.sbe.v1.9.adminlogout", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.channel_reset = ProtoField.new("Channel Reset", "cme.futures.mdp3.sbe.v1.9.channelreset", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_book = ProtoField.new("Md Incremental Refresh Book", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_book_legacy = ProtoField.new("Md Incremental Refresh Book Legacy", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbooklegacy", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_daily_statistics = ProtoField.new("Md Incremental Refresh Daily Statistics", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_daily_statistics_legacy = ProtoField.new("Md Incremental Refresh Daily Statistics Legacy", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatisticslegacy", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_limits_banding = ProtoField.new("Md Incremental Refresh Limits Banding", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_limits_banding_legacy = ProtoField.new("Md Incremental Refresh Limits Banding Legacy", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbandinglegacy", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_order_book = ProtoField.new("Md Incremental Refresh Order Book", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_order_book_legacy = ProtoField.new("Md Incremental Refresh Order Book Legacy", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbooklegacy", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_session_statistics = ProtoField.new("Md Incremental Refresh Session Statistics", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_session_statistics_legacy = ProtoField.new("Md Incremental Refresh Session Statistics Legacy", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatisticslegacy", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_trade_summary = ProtoField.new("Md Incremental Refresh Trade Summary", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_trade_summary_legacy = ProtoField.new("Md Incremental Refresh Trade Summary Legacy", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummarylegacy", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_volume = ProtoField.new("Md Incremental Refresh Volume", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshvolume", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_future = ProtoField.new("Md Instrument Definition Future", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionfuture", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_future_legacy = ProtoField.new("Md Instrument Definition Future Legacy", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionfuturelegacy", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_option = ProtoField.new("Md Instrument Definition Option", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionoption", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_option_legacy = ProtoField.new("Md Instrument Definition Option Legacy", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionoptionlegacy", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_spread = ProtoField.new("Md Instrument Definition Spread", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_spread_legacy = ProtoField.new("Md Instrument Definition Spread Legacy", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspreadlegacy", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.quote_request = ProtoField.new("Quote Request", "cme.futures.mdp3.sbe.v1.9.quoterequest", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.security_status = ProtoField.new("Security Status", "cme.futures.mdp3.sbe.v1.9.securitystatus", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh = ProtoField.new("Snapshot Full Refresh", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_legacy = ProtoField.new("Snapshot Full Refresh Legacy", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshlegacy", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book = ProtoField.new("Snapshot Full Refresh Order Book", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_legacy = ProtoField.new("Snapshot Full Refresh Order Book Legacy", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbooklegacy", ftypes.STRING)

-- Cme Futures Mdp3 Sbe 1.9 generated fields
omi_cme_futures_mdp3_sbe_v1_9.fields.channel_reset_group_index = ProtoField.new("Channel Reset Group Index", "cme.futures.mdp3.sbe.v1.9.channelresetgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.events_group_index = ProtoField.new("Events Group Index", "cme.futures.mdp3.sbe.v1.9.eventsgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_group_index = ProtoField.new("Inst Attrib Group Index", "cme.futures.mdp3.sbe.v1.9.instattribgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.lot_type_rules_group_index = ProtoField.new("Lot Type Rules Group Index", "cme.futures.mdp3.sbe.v1.9.lottyperulesgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_feed_types_group_index = ProtoField.new("M D Feed Types Group Index", "cme.futures.mdp3.sbe.v1.9.mdfeedtypesgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_group_index = ProtoField.new("M D Incremental Refresh Book 32 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_order_group_index = ProtoField.new("M D Incremental Refresh Book 32 Order Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook32ordergroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_group_index = ProtoField.new("M D Incremental Refresh Book 46 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_order_group_index = ProtoField.new("M D Incremental Refresh Book 46 Order Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshbook46ordergroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_33_group_index = ProtoField.new("M D Incremental Refresh Daily Statistics 33 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics33groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_49_group_index = ProtoField.new("M D Incremental Refresh Daily Statistics 49 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshdailystatistics49groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_34_group_index = ProtoField.new("M D Incremental Refresh Limits Banding 34 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding34groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_50_group_index = ProtoField.new("M D Incremental Refresh Limits Banding 50 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshlimitsbanding50groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_43_group_index = ProtoField.new("M D Incremental Refresh Order Book 43 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook43groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_47_group_index = ProtoField.new("M D Incremental Refresh Order Book 47 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshorderbook47groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_35_group_index = ProtoField.new("M D Incremental Refresh Session Statistics 35 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics35groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_51_group_index = ProtoField.new("M D Incremental Refresh Session Statistics 51 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshsessionstatistics51groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_group_index = ProtoField.new("M D Incremental Refresh Trade Summary 42 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_order_group_index = ProtoField.new("M D Incremental Refresh Trade Summary 42 Order Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary42ordergroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_group_index = ProtoField.new("M D Incremental Refresh Trade Summary 48 Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_order_group_index = ProtoField.new("M D Incremental Refresh Trade Summary 48 Order Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshtradesummary48ordergroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_volume_group_index = ProtoField.new("M D Incremental Refresh Volume Group Index", "cme.futures.mdp3.sbe.v1.9.mdincrementalrefreshvolumegroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_29_leg_group_index = ProtoField.new("M D Instrument Definition Spread 29 Leg Group Index", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread29leggroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_56_leg_group_index = ProtoField.new("M D Instrument Definition Spread 56 Leg Group Index", "cme.futures.mdp3.sbe.v1.9.mdinstrumentdefinitionspread56leggroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.related_instruments_group_index = ProtoField.new("Related Instruments Group Index", "cme.futures.mdp3.sbe.v1.9.relatedinstrumentsgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.related_sym_group_index = ProtoField.new("Related Sym Group Index", "cme.futures.mdp3.sbe.v1.9.relatedsymgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38_group_index = ProtoField.new("Snapshot Full Refresh 38 Group Index", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh38groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52_group_index = ProtoField.new("Snapshot Full Refresh 52 Group Index", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefresh52groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44_group_index = ProtoField.new("Snapshot Full Refresh Order Book 44 Group Index", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook44groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53_group_index = ProtoField.new("Snapshot Full Refresh Order Book 53 Group Index", "cme.futures.mdp3.sbe.v1.9.snapshotfullrefreshorderbook53groupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_9.fields.underlyings_group_index = ProtoField.new("Underlyings Group Index", "cme.futures.mdp3.sbe.v1.9.underlyingsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
show.md_incremental_refresh_book = true
show.md_incremental_refresh_book_legacy = true
show.md_incremental_refresh_daily_statistics = true
show.md_incremental_refresh_daily_statistics_legacy = true
show.md_incremental_refresh_limits_banding = true
show.md_incremental_refresh_limits_banding_legacy = true
show.md_incremental_refresh_order_book = true
show.md_incremental_refresh_order_book_legacy = true
show.md_incremental_refresh_session_statistics = true
show.md_incremental_refresh_session_statistics_legacy = true
show.md_incremental_refresh_trade_summary = true
show.md_incremental_refresh_trade_summary_legacy = true
show.md_incremental_refresh_volume = true
show.md_instrument_definition_future = true
show.md_instrument_definition_future_legacy = true
show.md_instrument_definition_option = true
show.md_instrument_definition_option_legacy = true
show.md_instrument_definition_spread = true
show.md_instrument_definition_spread_legacy = true
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
show.snapshot_full_refresh = true
show.snapshot_full_refresh_38_group = true
show.snapshot_full_refresh_38_groups = true
show.snapshot_full_refresh_52_group = true
show.snapshot_full_refresh_52_groups = true
show.snapshot_full_refresh_legacy = true
show.snapshot_full_refresh_order_book = true
show.snapshot_full_refresh_order_book_44_group = true
show.snapshot_full_refresh_order_book_44_groups = true
show.snapshot_full_refresh_order_book_53_group = true
show.snapshot_full_refresh_order_book_53_groups = true
show.snapshot_full_refresh_order_book_legacy = true
show.underlyings_group = true
show.underlyings_groups = true
show.payload = false

-- Register Cme Futures Mdp3 Sbe 1.9 Show Options
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_admin_login = Pref.bool("Show Admin Login", show.admin_login, "Parse and add Admin Login to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_admin_logout = Pref.bool("Show Admin Logout", show.admin_logout, "Parse and add Admin Logout to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset = Pref.bool("Show Channel Reset", show.channel_reset, "Parse and add Channel Reset to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_group = Pref.bool("Show Channel Reset Group", show.channel_reset_group, "Parse and add Channel Reset Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_groups = Pref.bool("Show Channel Reset Groups", show.channel_reset_groups, "Parse and add Channel Reset Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_events_group = Pref.bool("Show Events Group", show.events_group, "Parse and add Events Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_events_groups = Pref.bool("Show Events Groups", show.events_groups, "Parse and add Events Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_group_size_8_byte = Pref.bool("Show Group Size 8 Byte", show.group_size_8_byte, "Parse and add Group Size 8 Byte to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_group = Pref.bool("Show Inst Attrib Group", show.inst_attrib_group, "Parse and add Inst Attrib Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_groups = Pref.bool("Show Inst Attrib Groups", show.inst_attrib_groups, "Parse and add Inst Attrib Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_value = Pref.bool("Show Inst Attrib Value", show.inst_attrib_value, "Parse and add Inst Attrib Value to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_group = Pref.bool("Show Lot Type Rules Group", show.lot_type_rules_group, "Parse and add Lot Type Rules Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_groups = Pref.bool("Show Lot Type Rules Groups", show.lot_type_rules_groups, "Parse and add Lot Type Rules Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_group = Pref.bool("Show M D Feed Types Group", show.m_d_feed_types_group, "Parse and add M D Feed Types Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_groups = Pref.bool("Show M D Feed Types Groups", show.m_d_feed_types_groups, "Parse and add M D Feed Types Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_group = Pref.bool("Show M D Incremental Refresh Book 32 Group", show.m_d_incremental_refresh_book_32_group, "Parse and add M D Incremental Refresh Book 32 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_groups = Pref.bool("Show M D Incremental Refresh Book 32 Groups", show.m_d_incremental_refresh_book_32_groups, "Parse and add M D Incremental Refresh Book 32 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_group = Pref.bool("Show M D Incremental Refresh Book 32 Order Group", show.m_d_incremental_refresh_book_32_order_group, "Parse and add M D Incremental Refresh Book 32 Order Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_groups = Pref.bool("Show M D Incremental Refresh Book 32 Order Groups", show.m_d_incremental_refresh_book_32_order_groups, "Parse and add M D Incremental Refresh Book 32 Order Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_group = Pref.bool("Show M D Incremental Refresh Book 46 Group", show.m_d_incremental_refresh_book_46_group, "Parse and add M D Incremental Refresh Book 46 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_groups = Pref.bool("Show M D Incremental Refresh Book 46 Groups", show.m_d_incremental_refresh_book_46_groups, "Parse and add M D Incremental Refresh Book 46 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_group = Pref.bool("Show M D Incremental Refresh Book 46 Order Group", show.m_d_incremental_refresh_book_46_order_group, "Parse and add M D Incremental Refresh Book 46 Order Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_groups = Pref.bool("Show M D Incremental Refresh Book 46 Order Groups", show.m_d_incremental_refresh_book_46_order_groups, "Parse and add M D Incremental Refresh Book 46 Order Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_group = Pref.bool("Show M D Incremental Refresh Daily Statistics 33 Group", show.m_d_incremental_refresh_daily_statistics_33_group, "Parse and add M D Incremental Refresh Daily Statistics 33 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_groups = Pref.bool("Show M D Incremental Refresh Daily Statistics 33 Groups", show.m_d_incremental_refresh_daily_statistics_33_groups, "Parse and add M D Incremental Refresh Daily Statistics 33 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_group = Pref.bool("Show M D Incremental Refresh Daily Statistics 49 Group", show.m_d_incremental_refresh_daily_statistics_49_group, "Parse and add M D Incremental Refresh Daily Statistics 49 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_groups = Pref.bool("Show M D Incremental Refresh Daily Statistics 49 Groups", show.m_d_incremental_refresh_daily_statistics_49_groups, "Parse and add M D Incremental Refresh Daily Statistics 49 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_group = Pref.bool("Show M D Incremental Refresh Limits Banding 34 Group", show.m_d_incremental_refresh_limits_banding_34_group, "Parse and add M D Incremental Refresh Limits Banding 34 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_groups = Pref.bool("Show M D Incremental Refresh Limits Banding 34 Groups", show.m_d_incremental_refresh_limits_banding_34_groups, "Parse and add M D Incremental Refresh Limits Banding 34 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_group = Pref.bool("Show M D Incremental Refresh Limits Banding 50 Group", show.m_d_incremental_refresh_limits_banding_50_group, "Parse and add M D Incremental Refresh Limits Banding 50 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_groups = Pref.bool("Show M D Incremental Refresh Limits Banding 50 Groups", show.m_d_incremental_refresh_limits_banding_50_groups, "Parse and add M D Incremental Refresh Limits Banding 50 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_group = Pref.bool("Show M D Incremental Refresh Order Book 43 Group", show.m_d_incremental_refresh_order_book_43_group, "Parse and add M D Incremental Refresh Order Book 43 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_groups = Pref.bool("Show M D Incremental Refresh Order Book 43 Groups", show.m_d_incremental_refresh_order_book_43_groups, "Parse and add M D Incremental Refresh Order Book 43 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_group = Pref.bool("Show M D Incremental Refresh Order Book 47 Group", show.m_d_incremental_refresh_order_book_47_group, "Parse and add M D Incremental Refresh Order Book 47 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_groups = Pref.bool("Show M D Incremental Refresh Order Book 47 Groups", show.m_d_incremental_refresh_order_book_47_groups, "Parse and add M D Incremental Refresh Order Book 47 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_group = Pref.bool("Show M D Incremental Refresh Session Statistics 35 Group", show.m_d_incremental_refresh_session_statistics_35_group, "Parse and add M D Incremental Refresh Session Statistics 35 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_groups = Pref.bool("Show M D Incremental Refresh Session Statistics 35 Groups", show.m_d_incremental_refresh_session_statistics_35_groups, "Parse and add M D Incremental Refresh Session Statistics 35 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_group = Pref.bool("Show M D Incremental Refresh Session Statistics 51 Group", show.m_d_incremental_refresh_session_statistics_51_group, "Parse and add M D Incremental Refresh Session Statistics 51 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_groups = Pref.bool("Show M D Incremental Refresh Session Statistics 51 Groups", show.m_d_incremental_refresh_session_statistics_51_groups, "Parse and add M D Incremental Refresh Session Statistics 51 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_group = Pref.bool("Show M D Incremental Refresh Trade Summary 42 Group", show.m_d_incremental_refresh_trade_summary_42_group, "Parse and add M D Incremental Refresh Trade Summary 42 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_groups = Pref.bool("Show M D Incremental Refresh Trade Summary 42 Groups", show.m_d_incremental_refresh_trade_summary_42_groups, "Parse and add M D Incremental Refresh Trade Summary 42 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_group = Pref.bool("Show M D Incremental Refresh Trade Summary 42 Order Group", show.m_d_incremental_refresh_trade_summary_42_order_group, "Parse and add M D Incremental Refresh Trade Summary 42 Order Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_groups = Pref.bool("Show M D Incremental Refresh Trade Summary 42 Order Groups", show.m_d_incremental_refresh_trade_summary_42_order_groups, "Parse and add M D Incremental Refresh Trade Summary 42 Order Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_group = Pref.bool("Show M D Incremental Refresh Trade Summary 48 Group", show.m_d_incremental_refresh_trade_summary_48_group, "Parse and add M D Incremental Refresh Trade Summary 48 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_groups = Pref.bool("Show M D Incremental Refresh Trade Summary 48 Groups", show.m_d_incremental_refresh_trade_summary_48_groups, "Parse and add M D Incremental Refresh Trade Summary 48 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_group = Pref.bool("Show M D Incremental Refresh Trade Summary 48 Order Group", show.m_d_incremental_refresh_trade_summary_48_order_group, "Parse and add M D Incremental Refresh Trade Summary 48 Order Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_groups = Pref.bool("Show M D Incremental Refresh Trade Summary 48 Order Groups", show.m_d_incremental_refresh_trade_summary_48_order_groups, "Parse and add M D Incremental Refresh Trade Summary 48 Order Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_group = Pref.bool("Show M D Incremental Refresh Volume Group", show.m_d_incremental_refresh_volume_group, "Parse and add M D Incremental Refresh Volume Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_groups = Pref.bool("Show M D Incremental Refresh Volume Groups", show.m_d_incremental_refresh_volume_groups, "Parse and add M D Incremental Refresh Volume Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_group = Pref.bool("Show M D Instrument Definition Spread 29 Leg Group", show.m_d_instrument_definition_spread_29_leg_group, "Parse and add M D Instrument Definition Spread 29 Leg Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_groups = Pref.bool("Show M D Instrument Definition Spread 29 Leg Groups", show.m_d_instrument_definition_spread_29_leg_groups, "Parse and add M D Instrument Definition Spread 29 Leg Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_group = Pref.bool("Show M D Instrument Definition Spread 56 Leg Group", show.m_d_instrument_definition_spread_56_leg_group, "Parse and add M D Instrument Definition Spread 56 Leg Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_groups = Pref.bool("Show M D Instrument Definition Spread 56 Leg Groups", show.m_d_instrument_definition_spread_56_leg_groups, "Parse and add M D Instrument Definition Spread 56 Leg Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_match_event_indicator = Pref.bool("Show Match Event Indicator", show.match_event_indicator, "Parse and add Match Event Indicator to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book = Pref.bool("Show Md Incremental Refresh Book", show.md_incremental_refresh_book, "Parse and add Md Incremental Refresh Book to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book_legacy = Pref.bool("Show Md Incremental Refresh Book Legacy", show.md_incremental_refresh_book_legacy, "Parse and add Md Incremental Refresh Book Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics = Pref.bool("Show Md Incremental Refresh Daily Statistics", show.md_incremental_refresh_daily_statistics, "Parse and add Md Incremental Refresh Daily Statistics to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics_legacy = Pref.bool("Show Md Incremental Refresh Daily Statistics Legacy", show.md_incremental_refresh_daily_statistics_legacy, "Parse and add Md Incremental Refresh Daily Statistics Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding = Pref.bool("Show Md Incremental Refresh Limits Banding", show.md_incremental_refresh_limits_banding, "Parse and add Md Incremental Refresh Limits Banding to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding_legacy = Pref.bool("Show Md Incremental Refresh Limits Banding Legacy", show.md_incremental_refresh_limits_banding_legacy, "Parse and add Md Incremental Refresh Limits Banding Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book = Pref.bool("Show Md Incremental Refresh Order Book", show.md_incremental_refresh_order_book, "Parse and add Md Incremental Refresh Order Book to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book_legacy = Pref.bool("Show Md Incremental Refresh Order Book Legacy", show.md_incremental_refresh_order_book_legacy, "Parse and add Md Incremental Refresh Order Book Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics = Pref.bool("Show Md Incremental Refresh Session Statistics", show.md_incremental_refresh_session_statistics, "Parse and add Md Incremental Refresh Session Statistics to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics_legacy = Pref.bool("Show Md Incremental Refresh Session Statistics Legacy", show.md_incremental_refresh_session_statistics_legacy, "Parse and add Md Incremental Refresh Session Statistics Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary = Pref.bool("Show Md Incremental Refresh Trade Summary", show.md_incremental_refresh_trade_summary, "Parse and add Md Incremental Refresh Trade Summary to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary_legacy = Pref.bool("Show Md Incremental Refresh Trade Summary Legacy", show.md_incremental_refresh_trade_summary_legacy, "Parse and add Md Incremental Refresh Trade Summary Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_volume = Pref.bool("Show Md Incremental Refresh Volume", show.md_incremental_refresh_volume, "Parse and add Md Incremental Refresh Volume to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future = Pref.bool("Show Md Instrument Definition Future", show.md_instrument_definition_future, "Parse and add Md Instrument Definition Future to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future_legacy = Pref.bool("Show Md Instrument Definition Future Legacy", show.md_instrument_definition_future_legacy, "Parse and add Md Instrument Definition Future Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option = Pref.bool("Show Md Instrument Definition Option", show.md_instrument_definition_option, "Parse and add Md Instrument Definition Option to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option_legacy = Pref.bool("Show Md Instrument Definition Option Legacy", show.md_instrument_definition_option_legacy, "Parse and add Md Instrument Definition Option Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread = Pref.bool("Show Md Instrument Definition Spread", show.md_instrument_definition_spread, "Parse and add Md Instrument Definition Spread to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread_legacy = Pref.bool("Show Md Instrument Definition Spread Legacy", show.md_instrument_definition_spread_legacy, "Parse and add Md Instrument Definition Spread Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_group = Pref.bool("Show Related Instruments Group", show.related_instruments_group, "Parse and add Related Instruments Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_groups = Pref.bool("Show Related Instruments Groups", show.related_instruments_groups, "Parse and add Related Instruments Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_security_status = Pref.bool("Show Security Status", show.security_status, "Parse and add Security Status to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_settl_price_type = Pref.bool("Show Settl Price Type", show.settl_price_type, "Parse and add Settl Price Type to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh = Pref.bool("Show Snapshot Full Refresh", show.snapshot_full_refresh, "Parse and add Snapshot Full Refresh to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_group = Pref.bool("Show Snapshot Full Refresh 38 Group", show.snapshot_full_refresh_38_group, "Parse and add Snapshot Full Refresh 38 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_groups = Pref.bool("Show Snapshot Full Refresh 38 Groups", show.snapshot_full_refresh_38_groups, "Parse and add Snapshot Full Refresh 38 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_group = Pref.bool("Show Snapshot Full Refresh 52 Group", show.snapshot_full_refresh_52_group, "Parse and add Snapshot Full Refresh 52 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_groups = Pref.bool("Show Snapshot Full Refresh 52 Groups", show.snapshot_full_refresh_52_groups, "Parse and add Snapshot Full Refresh 52 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_legacy = Pref.bool("Show Snapshot Full Refresh Legacy", show.snapshot_full_refresh_legacy, "Parse and add Snapshot Full Refresh Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book = Pref.bool("Show Snapshot Full Refresh Order Book", show.snapshot_full_refresh_order_book, "Parse and add Snapshot Full Refresh Order Book to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_group = Pref.bool("Show Snapshot Full Refresh Order Book 44 Group", show.snapshot_full_refresh_order_book_44_group, "Parse and add Snapshot Full Refresh Order Book 44 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_groups = Pref.bool("Show Snapshot Full Refresh Order Book 44 Groups", show.snapshot_full_refresh_order_book_44_groups, "Parse and add Snapshot Full Refresh Order Book 44 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_group = Pref.bool("Show Snapshot Full Refresh Order Book 53 Group", show.snapshot_full_refresh_order_book_53_group, "Parse and add Snapshot Full Refresh Order Book 53 Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_groups = Pref.bool("Show Snapshot Full Refresh Order Book 53 Groups", show.snapshot_full_refresh_order_book_53_groups, "Parse and add Snapshot Full Refresh Order Book 53 Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_legacy = Pref.bool("Show Snapshot Full Refresh Order Book Legacy", show.snapshot_full_refresh_order_book_legacy, "Parse and add Snapshot Full Refresh Order Book Legacy to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_group = Pref.bool("Show Underlyings Group", show.underlyings_group, "Parse and add Underlyings Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_groups = Pref.bool("Show Underlyings Groups", show.underlyings_groups, "Parse and add Underlyings Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_9.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cme_futures_mdp3_sbe_v1_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.admin_login ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_admin_login then
    show.admin_login = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_admin_login
    changed = true
  end
  if show.admin_logout ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_admin_logout then
    show.admin_logout = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_admin_logout
    changed = true
  end
  if show.binary_packet_header ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_binary_packet_header then
    show.binary_packet_header = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_binary_packet_header
    changed = true
  end
  if show.channel_reset ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset then
    show.channel_reset = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset
    changed = true
  end
  if show.channel_reset_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_group then
    show.channel_reset_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_group
    changed = true
  end
  if show.channel_reset_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_groups then
    show.channel_reset_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_channel_reset_groups
    changed = true
  end
  if show.events_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_events_group then
    show.events_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_events_group
    changed = true
  end
  if show.events_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_events_groups then
    show.events_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_events_groups
    changed = true
  end
  if show.group_size ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_group_size then
    show.group_size = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_group_size
    changed = true
  end
  if show.group_size_8_byte ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_group_size_8_byte then
    show.group_size_8_byte = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_group_size_8_byte
    changed = true
  end
  if show.inst_attrib_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_group then
    show.inst_attrib_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_group
    changed = true
  end
  if show.inst_attrib_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_groups then
    show.inst_attrib_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_groups
    changed = true
  end
  if show.inst_attrib_value ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_value then
    show.inst_attrib_value = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_inst_attrib_value
    changed = true
  end
  if show.lot_type_rules_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_group then
    show.lot_type_rules_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_group
    changed = true
  end
  if show.lot_type_rules_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_groups then
    show.lot_type_rules_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_lot_type_rules_groups
    changed = true
  end
  if show.m_d_feed_types_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_group then
    show.m_d_feed_types_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_group
    changed = true
  end
  if show.m_d_feed_types_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_groups then
    show.m_d_feed_types_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_feed_types_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_32_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_group then
    show.m_d_incremental_refresh_book_32_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_32_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_groups then
    show.m_d_incremental_refresh_book_32_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_32_order_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_group then
    show.m_d_incremental_refresh_book_32_order_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_32_order_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_groups then
    show.m_d_incremental_refresh_book_32_order_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_32_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_46_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_group then
    show.m_d_incremental_refresh_book_46_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_46_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_groups then
    show.m_d_incremental_refresh_book_46_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_46_order_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_group then
    show.m_d_incremental_refresh_book_46_order_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_46_order_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_groups then
    show.m_d_incremental_refresh_book_46_order_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_book_46_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_33_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_group then
    show.m_d_incremental_refresh_daily_statistics_33_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_group
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_33_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_groups then
    show.m_d_incremental_refresh_daily_statistics_33_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_33_groups
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_49_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_group then
    show.m_d_incremental_refresh_daily_statistics_49_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_group
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_49_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_groups then
    show.m_d_incremental_refresh_daily_statistics_49_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_daily_statistics_49_groups
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_34_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_group then
    show.m_d_incremental_refresh_limits_banding_34_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_group
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_34_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_groups then
    show.m_d_incremental_refresh_limits_banding_34_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_34_groups
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_50_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_group then
    show.m_d_incremental_refresh_limits_banding_50_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_group
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_50_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_groups then
    show.m_d_incremental_refresh_limits_banding_50_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_limits_banding_50_groups
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_43_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_group then
    show.m_d_incremental_refresh_order_book_43_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_group
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_43_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_groups then
    show.m_d_incremental_refresh_order_book_43_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_43_groups
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_47_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_group then
    show.m_d_incremental_refresh_order_book_47_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_group
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_47_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_groups then
    show.m_d_incremental_refresh_order_book_47_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_order_book_47_groups
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_35_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_group then
    show.m_d_incremental_refresh_session_statistics_35_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_group
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_35_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_groups then
    show.m_d_incremental_refresh_session_statistics_35_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_35_groups
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_51_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_group then
    show.m_d_incremental_refresh_session_statistics_51_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_group
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_51_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_groups then
    show.m_d_incremental_refresh_session_statistics_51_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_session_statistics_51_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_42_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_group then
    show.m_d_incremental_refresh_trade_summary_42_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_42_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_groups then
    show.m_d_incremental_refresh_trade_summary_42_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_42_order_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_group then
    show.m_d_incremental_refresh_trade_summary_42_order_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_42_order_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_groups then
    show.m_d_incremental_refresh_trade_summary_42_order_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_42_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_48_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_group then
    show.m_d_incremental_refresh_trade_summary_48_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_48_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_groups then
    show.m_d_incremental_refresh_trade_summary_48_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_48_order_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_group then
    show.m_d_incremental_refresh_trade_summary_48_order_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_48_order_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_groups then
    show.m_d_incremental_refresh_trade_summary_48_order_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_trade_summary_48_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_volume_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_group then
    show.m_d_incremental_refresh_volume_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_group
    changed = true
  end
  if show.m_d_incremental_refresh_volume_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_groups then
    show.m_d_incremental_refresh_volume_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_incremental_refresh_volume_groups
    changed = true
  end
  if show.m_d_instrument_definition_spread_29_leg_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_group then
    show.m_d_instrument_definition_spread_29_leg_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_group
    changed = true
  end
  if show.m_d_instrument_definition_spread_29_leg_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_groups then
    show.m_d_instrument_definition_spread_29_leg_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_29_leg_groups
    changed = true
  end
  if show.m_d_instrument_definition_spread_56_leg_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_group then
    show.m_d_instrument_definition_spread_56_leg_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_group
    changed = true
  end
  if show.m_d_instrument_definition_spread_56_leg_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_groups then
    show.m_d_instrument_definition_spread_56_leg_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_m_d_instrument_definition_spread_56_leg_groups
    changed = true
  end
  if show.match_event_indicator ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_match_event_indicator then
    show.match_event_indicator = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_match_event_indicator
    changed = true
  end
  if show.maturity_month_year ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_maturity_month_year then
    show.maturity_month_year = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_maturity_month_year
    changed = true
  end
  if show.md_incremental_refresh_book ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book then
    show.md_incremental_refresh_book = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book
    changed = true
  end
  if show.md_incremental_refresh_book_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book_legacy then
    show.md_incremental_refresh_book_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_book_legacy
    changed = true
  end
  if show.md_incremental_refresh_daily_statistics ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics then
    show.md_incremental_refresh_daily_statistics = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics
    changed = true
  end
  if show.md_incremental_refresh_daily_statistics_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics_legacy then
    show.md_incremental_refresh_daily_statistics_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_daily_statistics_legacy
    changed = true
  end
  if show.md_incremental_refresh_limits_banding ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding then
    show.md_incremental_refresh_limits_banding = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding
    changed = true
  end
  if show.md_incremental_refresh_limits_banding_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding_legacy then
    show.md_incremental_refresh_limits_banding_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_limits_banding_legacy
    changed = true
  end
  if show.md_incremental_refresh_order_book ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book then
    show.md_incremental_refresh_order_book = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book
    changed = true
  end
  if show.md_incremental_refresh_order_book_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book_legacy then
    show.md_incremental_refresh_order_book_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_order_book_legacy
    changed = true
  end
  if show.md_incremental_refresh_session_statistics ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics then
    show.md_incremental_refresh_session_statistics = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics
    changed = true
  end
  if show.md_incremental_refresh_session_statistics_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics_legacy then
    show.md_incremental_refresh_session_statistics_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_session_statistics_legacy
    changed = true
  end
  if show.md_incremental_refresh_trade_summary ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary then
    show.md_incremental_refresh_trade_summary = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary
    changed = true
  end
  if show.md_incremental_refresh_trade_summary_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary_legacy then
    show.md_incremental_refresh_trade_summary_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_trade_summary_legacy
    changed = true
  end
  if show.md_incremental_refresh_volume ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_volume then
    show.md_incremental_refresh_volume = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_incremental_refresh_volume
    changed = true
  end
  if show.md_instrument_definition_future ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future then
    show.md_instrument_definition_future = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future
    changed = true
  end
  if show.md_instrument_definition_future_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future_legacy then
    show.md_instrument_definition_future_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_future_legacy
    changed = true
  end
  if show.md_instrument_definition_option ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option then
    show.md_instrument_definition_option = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option
    changed = true
  end
  if show.md_instrument_definition_option_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option_legacy then
    show.md_instrument_definition_option_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_option_legacy
    changed = true
  end
  if show.md_instrument_definition_spread ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread then
    show.md_instrument_definition_spread = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread
    changed = true
  end
  if show.md_instrument_definition_spread_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread_legacy then
    show.md_instrument_definition_spread_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_md_instrument_definition_spread_legacy
    changed = true
  end
  if show.message ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_message then
    show.message = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_message_header then
    show.message_header = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_packet then
    show.packet = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_packet
    changed = true
  end
  if show.quote_request ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_quote_request then
    show.quote_request = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_quote_request
    changed = true
  end
  if show.related_instruments_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_group then
    show.related_instruments_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_group
    changed = true
  end
  if show.related_instruments_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_groups then
    show.related_instruments_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_instruments_groups
    changed = true
  end
  if show.related_sym_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_group then
    show.related_sym_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_groups then
    show.related_sym_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_related_sym_groups
    changed = true
  end
  if show.security_status ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_security_status then
    show.security_status = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_security_status
    changed = true
  end
  if show.settl_price_type ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_settl_price_type then
    show.settl_price_type = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_settl_price_type
    changed = true
  end
  if show.snapshot_full_refresh ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh then
    show.snapshot_full_refresh = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh
    changed = true
  end
  if show.snapshot_full_refresh_38_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_group then
    show.snapshot_full_refresh_38_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_group
    changed = true
  end
  if show.snapshot_full_refresh_38_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_groups then
    show.snapshot_full_refresh_38_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_38_groups
    changed = true
  end
  if show.snapshot_full_refresh_52_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_group then
    show.snapshot_full_refresh_52_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_group
    changed = true
  end
  if show.snapshot_full_refresh_52_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_groups then
    show.snapshot_full_refresh_52_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_52_groups
    changed = true
  end
  if show.snapshot_full_refresh_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_legacy then
    show.snapshot_full_refresh_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_legacy
    changed = true
  end
  if show.snapshot_full_refresh_order_book ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book then
    show.snapshot_full_refresh_order_book = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book
    changed = true
  end
  if show.snapshot_full_refresh_order_book_44_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_group then
    show.snapshot_full_refresh_order_book_44_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_group
    changed = true
  end
  if show.snapshot_full_refresh_order_book_44_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_groups then
    show.snapshot_full_refresh_order_book_44_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_44_groups
    changed = true
  end
  if show.snapshot_full_refresh_order_book_53_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_group then
    show.snapshot_full_refresh_order_book_53_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_group
    changed = true
  end
  if show.snapshot_full_refresh_order_book_53_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_groups then
    show.snapshot_full_refresh_order_book_53_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_53_groups
    changed = true
  end
  if show.snapshot_full_refresh_order_book_legacy ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_legacy then
    show.snapshot_full_refresh_order_book_legacy = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_snapshot_full_refresh_order_book_legacy
    changed = true
  end
  if show.underlyings_group ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_group then
    show.underlyings_group = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_group
    changed = true
  end
  if show.underlyings_groups ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_groups then
    show.underlyings_groups = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_underlyings_groups
    changed = true
  end
  if show.payload ~= omi_cme_futures_mdp3_sbe_v1_9.prefs.show_payload then
    show.payload = omi_cme_futures_mdp3_sbe_v1_9.prefs.show_payload
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

-- Leg Option Delta
cme_futures_mdp3_sbe_v1_9.leg_option_delta = {}

-- Size Of: Leg Option Delta
cme_futures_mdp3_sbe_v1_9.leg_option_delta.size = 4

-- Display: Leg Option Delta
cme_futures_mdp3_sbe_v1_9.leg_option_delta.display = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Leg Option Delta: No Value"
  end

  return "Leg Option Delta: "..value
end

-- Translate: Leg Option Delta
cme_futures_mdp3_sbe_v1_9.leg_option_delta.translate = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Leg Option Delta
cme_futures_mdp3_sbe_v1_9.leg_option_delta.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.leg_option_delta.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cme_futures_mdp3_sbe_v1_9.leg_option_delta.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.leg_option_delta.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.leg_option_delta, range, value, display)

  return offset + length, value
end

-- Leg Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.leg_price_pricenul_l_9 = {}

-- Size Of: Leg Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.leg_price_pricenul_l_9.size = 8

-- Display: Leg Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.leg_price_pricenul_l_9.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Leg Price Pricenul L 9: No Value"
  end

  return "Leg Price Pricenul L 9: "..value
end

-- Translate: Leg Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.leg_price_pricenul_l_9.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Leg Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.leg_price_pricenul_l_9.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.leg_price_pricenul_l_9.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.leg_price_pricenul_l_9.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.leg_price_pricenul_l_9.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.leg_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
cme_futures_mdp3_sbe_v1_9.leg_ratio_qty = {}

-- Size Of: Leg Ratio Qty
cme_futures_mdp3_sbe_v1_9.leg_ratio_qty.size = 1

-- Display: Leg Ratio Qty
cme_futures_mdp3_sbe_v1_9.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cme_futures_mdp3_sbe_v1_9.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Side
cme_futures_mdp3_sbe_v1_9.leg_side = {}

-- Size Of: Leg Side
cme_futures_mdp3_sbe_v1_9.leg_side.size = 1

-- Display: Leg Side
cme_futures_mdp3_sbe_v1_9.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy Side (1)"
  end
  if value == 2 then
    return "Leg Side: Sell Side (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cme_futures_mdp3_sbe_v1_9.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Security Id
cme_futures_mdp3_sbe_v1_9.leg_security_id = {}

-- Size Of: Leg Security Id
cme_futures_mdp3_sbe_v1_9.leg_security_id.size = 4

-- Display: Leg Security Id
cme_futures_mdp3_sbe_v1_9.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
cme_futures_mdp3_sbe_v1_9.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- M D Instrument Definition Spread 56 Leg Group
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_group = {}

-- Size Of: M D Instrument Definition Spread 56 Leg Group
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_group.size =
  cme_futures_mdp3_sbe_v1_9.leg_security_id.size + 
  cme_futures_mdp3_sbe_v1_9.leg_side.size + 
  cme_futures_mdp3_sbe_v1_9.leg_ratio_qty.size + 
  cme_futures_mdp3_sbe_v1_9.leg_price_pricenul_l_9.size + 
  cme_futures_mdp3_sbe_v1_9.leg_option_delta.size;

-- Display: M D Instrument Definition Spread 56 Leg Group
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread 56 Leg Group
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_group.fields = function(buffer, offset, packet, parent, m_d_instrument_definition_spread_56_leg_group_index)
  local index = offset

  -- Implicit M D Instrument Definition Spread 56 Leg Group Index
  if m_d_instrument_definition_spread_56_leg_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_56_leg_group_index, m_d_instrument_definition_spread_56_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = cme_futures_mdp3_sbe_v1_9.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = cme_futures_mdp3_sbe_v1_9.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = cme_futures_mdp3_sbe_v1_9.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.leg_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Leg Option Delta: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_option_delta = cme_futures_mdp3_sbe_v1_9.leg_option_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Instrument Definition Spread 56 Leg Group
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_group.dissect = function(buffer, offset, packet, parent, m_d_instrument_definition_spread_56_leg_group_index)
  if show.m_d_instrument_definition_spread_56_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_56_leg_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_group.fields(buffer, offset, packet, parent, m_d_instrument_definition_spread_56_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_group.fields(buffer, offset, packet, parent, m_d_instrument_definition_spread_56_leg_group_index)
  end
end

-- Num In Group
cme_futures_mdp3_sbe_v1_9.num_in_group = {}

-- Size Of: Num In Group
cme_futures_mdp3_sbe_v1_9.num_in_group.size = 1

-- Display: Num In Group
cme_futures_mdp3_sbe_v1_9.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
cme_futures_mdp3_sbe_v1_9.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length
cme_futures_mdp3_sbe_v1_9.block_length = {}

-- Size Of: Block Length
cme_futures_mdp3_sbe_v1_9.block_length.size = 2

-- Display: Block Length
cme_futures_mdp3_sbe_v1_9.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_futures_mdp3_sbe_v1_9.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.block_length, range, value, display)

  return offset + length, value
end

-- Group Size
cme_futures_mdp3_sbe_v1_9.group_size = {}

-- Size Of: Group Size
cme_futures_mdp3_sbe_v1_9.group_size.size =
  cme_futures_mdp3_sbe_v1_9.block_length.size + 
  cme_futures_mdp3_sbe_v1_9.num_in_group.size;

-- Display: Group Size
cme_futures_mdp3_sbe_v1_9.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_futures_mdp3_sbe_v1_9.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_mdp3_sbe_v1_9.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = cme_futures_mdp3_sbe_v1_9.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_futures_mdp3_sbe_v1_9.group_size.dissect = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.group_size, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.group_size.fields(buffer, offset, packet, parent)
  end
end

-- M D Instrument Definition Spread 56 Leg Groups
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_groups = {}

-- Calculate size of: M D Instrument Definition Spread 56 Leg Groups
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_instrument_definition_spread_56_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_instrument_definition_spread_56_leg_group_count * 18

  return index
end

-- Display: M D Instrument Definition Spread 56 Leg Groups
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread 56 Leg Groups
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Instrument Definition Spread 56 Leg Group
  for m_d_instrument_definition_spread_56_leg_group_index = 1, num_in_group do
    index, m_d_instrument_definition_spread_56_leg_group = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_group.dissect(buffer, index, packet, parent, m_d_instrument_definition_spread_56_leg_group_index)
  end

  return index
end

-- Dissect: M D Instrument Definition Spread 56 Leg Groups
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_instrument_definition_spread_56_leg_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_56_leg_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_groups.fields(buffer, offset, packet, parent)
end

-- Min Lot Size
cme_futures_mdp3_sbe_v1_9.min_lot_size = {}

-- Size Of: Min Lot Size
cme_futures_mdp3_sbe_v1_9.min_lot_size.size = 4

-- Display: Min Lot Size
cme_futures_mdp3_sbe_v1_9.min_lot_size.display = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Min Lot Size: No Value"
  end

  return "Min Lot Size: "..value
end

-- Translate: Min Lot Size
cme_futures_mdp3_sbe_v1_9.min_lot_size.translate = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Min Lot Size
cme_futures_mdp3_sbe_v1_9.min_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.min_lot_size.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cme_futures_mdp3_sbe_v1_9.min_lot_size.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.min_lot_size.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.min_lot_size, range, value, display)

  return offset + length, value
end

-- Lot Type
cme_futures_mdp3_sbe_v1_9.lot_type = {}

-- Size Of: Lot Type
cme_futures_mdp3_sbe_v1_9.lot_type.size = 1

-- Display: Lot Type
cme_futures_mdp3_sbe_v1_9.lot_type.display = function(value)
  return "Lot Type: "..value
end

-- Dissect: Lot Type
cme_futures_mdp3_sbe_v1_9.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.lot_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Lot Type Rules Group
cme_futures_mdp3_sbe_v1_9.lot_type_rules_group = {}

-- Size Of: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_9.lot_type_rules_group.size =
  cme_futures_mdp3_sbe_v1_9.lot_type.size + 
  cme_futures_mdp3_sbe_v1_9.min_lot_size.size;

-- Display: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_9.lot_type_rules_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_9.lot_type_rules_group.fields = function(buffer, offset, packet, parent, lot_type_rules_group_index)
  local index = offset

  -- Implicit Lot Type Rules Group Index
  if lot_type_rules_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.lot_type_rules_group_index, lot_type_rules_group_index)
    iteration:set_generated()
  end

  -- Lot Type: 1 Byte Signed Fixed Width Integer
  index, lot_type = cme_futures_mdp3_sbe_v1_9.lot_type.dissect(buffer, index, packet, parent)

  -- Min Lot Size: 4 Byte Signed Fixed Width Integer Nullable
  index, min_lot_size = cme_futures_mdp3_sbe_v1_9.min_lot_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_9.lot_type_rules_group.dissect = function(buffer, offset, packet, parent, lot_type_rules_group_index)
  if show.lot_type_rules_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.lot_type_rules_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.lot_type_rules_group.fields(buffer, offset, packet, parent, lot_type_rules_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.lot_type_rules_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.lot_type_rules_group.fields(buffer, offset, packet, parent, lot_type_rules_group_index)
  end
end

-- Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups = {}

-- Calculate size of: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local lot_type_rules_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + lot_type_rules_group_count * 5

  return index
end

-- Display: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Lot Type Rules Group
  for lot_type_rules_group_index = 1, num_in_group do
    index, lot_type_rules_group = cme_futures_mdp3_sbe_v1_9.lot_type_rules_group.dissect(buffer, index, packet, parent, lot_type_rules_group_index)
  end

  return index
end

-- Dissect: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.lot_type_rules_groups then
    local length = cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.lot_type_rules_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.fields(buffer, offset, packet, parent)
end

-- Inst Attrib Value
cme_futures_mdp3_sbe_v1_9.inst_attrib_value = {}

-- Size Of: Inst Attrib Value
cme_futures_mdp3_sbe_v1_9.inst_attrib_value.size = 4

-- Display: Inst Attrib Value
cme_futures_mdp3_sbe_v1_9.inst_attrib_value.display = function(buffer, packet, parent)
  local display = ""

  -- Is Otc Eligible flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Otc Eligible|"
  end
  -- Is Efr Eligible flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Efr Eligible|"
  end
  -- Is Efs Eligible flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Efs Eligible|"
  end
  -- Is Ebf Eligible flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Ebf Eligible|"
  end
  -- Is Efp Eligible flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Efp Eligible|"
  end
  -- Is Block Trade Eligible flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Block Trade Eligible|"
  end
  -- Is Order Cross Eligible flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Order Cross Eligible|"
  end
  -- Is Electronic Match Eligible flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Electronic Match Eligible|"
  end
  -- Is Decaying Product Eligibility flag set?
  if buffer:bitfield(8) > 0 then
    display = display.."Decaying Product Eligibility|"
  end
  -- Is Zero Price Outright Eligible flag set?
  if buffer:bitfield(9) > 0 then
    display = display.."Zero Price Outright Eligible|"
  end
  -- Is Rfq Cross Eligible flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."Rfq Cross Eligible|"
  end
  -- Is Volatility Quoted Option flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Volatility Quoted Option|"
  end
  -- Is Is Fractional flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Is Fractional|"
  end
  -- Is Negative Price Outright Eligible flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Negative Price Outright Eligible|"
  end
  -- Is Negative Strike Eligible flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Negative Strike Eligible|"
  end
  -- Is ILink Indicative Mass Quoting Eligible flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."ILink Indicative Mass Quoting Eligible|"
  end
  -- Is Variable Cab Eligible flag set?
  if buffer:bitfield(18) > 0 then
    display = display.."Variable Cab Eligible|"
  end
  -- Is Triangulation Eligible flag set?
  if buffer:bitfield(19) > 0 then
    display = display.."Triangulation Eligible|"
  end
  -- Is Implied Matching Eligibility flag set?
  if buffer:bitfield(20) > 0 then
    display = display.."Implied Matching Eligibility|"
  end
  -- Is Gt Orders Eligibility flag set?
  if buffer:bitfield(21) > 0 then
    display = display.."Gt Orders Eligibility|"
  end
  -- Is Daily Product Eligibility flag set?
  if buffer:bitfield(22) > 0 then
    display = display.."Daily Product Eligibility|"
  end
  -- Is Variable Product Eligibility flag set?
  if buffer:bitfield(23) > 0 then
    display = display.."Variable Product Eligibility|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Inst Attrib Value
cme_futures_mdp3_sbe_v1_9.inst_attrib_value.bits = function(buffer, offset, packet, parent)

  -- Otc Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.otc_eligible, buffer(offset, 4))

  -- Efr Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.efr_eligible, buffer(offset, 4))

  -- Efs Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.efs_eligible, buffer(offset, 4))

  -- Ebf Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.ebf_eligible, buffer(offset, 4))

  -- Efp Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.efp_eligible, buffer(offset, 4))

  -- Block Trade Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.block_trade_eligible, buffer(offset, 4))

  -- Order Cross Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.order_cross_eligible, buffer(offset, 4))

  -- Electronic Match Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.electronic_match_eligible, buffer(offset, 4))

  -- Decaying Product Eligibility: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.decaying_product_eligibility, buffer(offset, 4))

  -- Zero Price Outright Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.zero_price_outright_eligible, buffer(offset, 4))

  -- Rfq Cross Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.rfq_cross_eligible, buffer(offset, 4))

  -- Volatility Quoted Option: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.volatility_quoted_option, buffer(offset, 4))

  -- Is Fractional: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.is_fractional, buffer(offset, 4))

  -- Negative Price Outright Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.negative_price_outright_eligible, buffer(offset, 4))

  -- Negative Strike Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.negative_strike_eligible, buffer(offset, 4))

  -- ILink Indicative Mass Quoting Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.ilink_indicative_mass_quoting_eligible, buffer(offset, 4))

  -- Reserved 2: 2 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.reserved_2, buffer(offset, 4))

  -- Variable Cab Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.variable_cab_eligible, buffer(offset, 4))

  -- Triangulation Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.triangulation_eligible, buffer(offset, 4))

  -- Implied Matching Eligibility: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.implied_matching_eligibility, buffer(offset, 4))

  -- Gt Orders Eligibility: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.gt_orders_eligibility, buffer(offset, 4))

  -- Daily Product Eligibility: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.daily_product_eligibility, buffer(offset, 4))

  -- Variable Product Eligibility: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.variable_product_eligibility, buffer(offset, 4))

  -- Reserved 8: 8 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.reserved_8, buffer(offset, 4))
end

-- Dissect: Inst Attrib Value
cme_futures_mdp3_sbe_v1_9.inst_attrib_value.dissect = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_9.inst_attrib_value.display(range, packet, parent)
  local element = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_value, range, display)

  if show.inst_attrib_value then
    cme_futures_mdp3_sbe_v1_9.inst_attrib_value.bits(buffer, offset, packet, element)
  end

  return offset + 4, range
end

-- Inst Attrib Group
cme_futures_mdp3_sbe_v1_9.inst_attrib_group = {}

-- Size Of: Inst Attrib Group
cme_futures_mdp3_sbe_v1_9.inst_attrib_group.size =
  cme_futures_mdp3_sbe_v1_9.inst_attrib_value.size;

-- Display: Inst Attrib Group
cme_futures_mdp3_sbe_v1_9.inst_attrib_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inst Attrib Group
cme_futures_mdp3_sbe_v1_9.inst_attrib_group.fields = function(buffer, offset, packet, parent, inst_attrib_group_index)
  local index = offset

  -- Implicit Inst Attrib Group Index
  if inst_attrib_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_group_index, inst_attrib_group_index)
    iteration:set_generated()
  end

  -- Inst Attrib Value: Struct of 24 fields
  index, inst_attrib_value = cme_futures_mdp3_sbe_v1_9.inst_attrib_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inst Attrib Group
cme_futures_mdp3_sbe_v1_9.inst_attrib_group.dissect = function(buffer, offset, packet, parent, inst_attrib_group_index)
  if show.inst_attrib_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.inst_attrib_group.fields(buffer, offset, packet, parent, inst_attrib_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.inst_attrib_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.inst_attrib_group.fields(buffer, offset, packet, parent, inst_attrib_group_index)
  end
end

-- Inst Attrib Groups
cme_futures_mdp3_sbe_v1_9.inst_attrib_groups = {}

-- Calculate size of: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local inst_attrib_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + inst_attrib_group_count * 4

  return index
end

-- Display: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Inst Attrib Group
  for inst_attrib_group_index = 1, num_in_group do
    index, inst_attrib_group = cme_futures_mdp3_sbe_v1_9.inst_attrib_group.dissect(buffer, index, packet, parent, inst_attrib_group_index)
  end

  return index
end

-- Dissect: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.inst_attrib_groups then
    local length = cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.inst_attrib_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.fields(buffer, offset, packet, parent)
end

-- Market Depth
cme_futures_mdp3_sbe_v1_9.market_depth = {}

-- Size Of: Market Depth
cme_futures_mdp3_sbe_v1_9.market_depth.size = 1

-- Display: Market Depth
cme_futures_mdp3_sbe_v1_9.market_depth.display = function(value)
  return "Market Depth: "..value
end

-- Dissect: Market Depth
cme_futures_mdp3_sbe_v1_9.market_depth.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.market_depth.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.market_depth, range, value, display)

  return offset + length, value
end

-- Md Feed Type
cme_futures_mdp3_sbe_v1_9.md_feed_type = {}

-- Size Of: Md Feed Type
cme_futures_mdp3_sbe_v1_9.md_feed_type.size = 3

-- Display: Md Feed Type
cme_futures_mdp3_sbe_v1_9.md_feed_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Feed Type: No Value"
  end

  return "Md Feed Type: "..value
end

-- Dissect: Md Feed Type
cme_futures_mdp3_sbe_v1_9.md_feed_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_feed_type.size
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

  local display = cme_futures_mdp3_sbe_v1_9.md_feed_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_feed_type, range, value, display)

  return offset + length, value
end

-- M D Feed Types Group
cme_futures_mdp3_sbe_v1_9.m_d_feed_types_group = {}

-- Size Of: M D Feed Types Group
cme_futures_mdp3_sbe_v1_9.m_d_feed_types_group.size =
  cme_futures_mdp3_sbe_v1_9.md_feed_type.size + 
  cme_futures_mdp3_sbe_v1_9.market_depth.size;

-- Display: M D Feed Types Group
cme_futures_mdp3_sbe_v1_9.m_d_feed_types_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Feed Types Group
cme_futures_mdp3_sbe_v1_9.m_d_feed_types_group.fields = function(buffer, offset, packet, parent, m_d_feed_types_group_index)
  local index = offset

  -- Implicit M D Feed Types Group Index
  if m_d_feed_types_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_feed_types_group_index, m_d_feed_types_group_index)
    iteration:set_generated()
  end

  -- Md Feed Type: 3 Byte Ascii String
  index, md_feed_type = cme_futures_mdp3_sbe_v1_9.md_feed_type.dissect(buffer, index, packet, parent)

  -- Market Depth: 1 Byte Signed Fixed Width Integer
  index, market_depth = cme_futures_mdp3_sbe_v1_9.market_depth.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Feed Types Group
cme_futures_mdp3_sbe_v1_9.m_d_feed_types_group.dissect = function(buffer, offset, packet, parent, m_d_feed_types_group_index)
  if show.m_d_feed_types_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_feed_types_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_group.fields(buffer, offset, packet, parent, m_d_feed_types_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_feed_types_group.fields(buffer, offset, packet, parent, m_d_feed_types_group_index)
  end
end

-- M D Feed Types Groups
cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups = {}

-- Calculate size of: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_feed_types_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_feed_types_group_count * 4

  return index
end

-- Display: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Feed Types Group
  for m_d_feed_types_group_index = 1, num_in_group do
    index, m_d_feed_types_group = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_group.dissect(buffer, index, packet, parent, m_d_feed_types_group_index)
  end

  return index
end

-- Dissect: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_feed_types_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_feed_types_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.fields(buffer, offset, packet, parent)
end

-- Event Time
cme_futures_mdp3_sbe_v1_9.event_time = {}

-- Size Of: Event Time
cme_futures_mdp3_sbe_v1_9.event_time.size = 8

-- Display: Event Time
cme_futures_mdp3_sbe_v1_9.event_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Event Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Event Time
cme_futures_mdp3_sbe_v1_9.event_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_9.event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.event_time, range, value, display)

  return offset + length, value
end

-- Event Type
cme_futures_mdp3_sbe_v1_9.event_type = {}

-- Size Of: Event Type
cme_futures_mdp3_sbe_v1_9.event_type.size = 1

-- Display: Event Type
cme_futures_mdp3_sbe_v1_9.event_type.display = function(value)
  if value == 5 then
    return "Event Type: Activation (5)"
  end
  if value == 7 then
    return "Event Type: Last Eligible Trade Date (7)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
cme_futures_mdp3_sbe_v1_9.event_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.event_type, range, value, display)

  return offset + length, value
end

-- Events Group
cme_futures_mdp3_sbe_v1_9.events_group = {}

-- Size Of: Events Group
cme_futures_mdp3_sbe_v1_9.events_group.size =
  cme_futures_mdp3_sbe_v1_9.event_type.size + 
  cme_futures_mdp3_sbe_v1_9.event_time.size;

-- Display: Events Group
cme_futures_mdp3_sbe_v1_9.events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events Group
cme_futures_mdp3_sbe_v1_9.events_group.fields = function(buffer, offset, packet, parent, events_group_index)
  local index = offset

  -- Implicit Events Group Index
  if events_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.events_group_index, events_group_index)
    iteration:set_generated()
  end

  -- Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, event_type = cme_futures_mdp3_sbe_v1_9.event_type.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = cme_futures_mdp3_sbe_v1_9.event_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Events Group
cme_futures_mdp3_sbe_v1_9.events_group.dissect = function(buffer, offset, packet, parent, events_group_index)
  if show.events_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.events_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.events_group.fields(buffer, offset, packet, parent, events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.events_group.fields(buffer, offset, packet, parent, events_group_index)
  end
end

-- Events Groups
cme_futures_mdp3_sbe_v1_9.events_groups = {}

-- Calculate size of: Events Groups
cme_futures_mdp3_sbe_v1_9.events_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local events_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + events_group_count * 9

  return index
end

-- Display: Events Groups
cme_futures_mdp3_sbe_v1_9.events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events Groups
cme_futures_mdp3_sbe_v1_9.events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Events Group
  for events_group_index = 1, num_in_group do
    index, events_group = cme_futures_mdp3_sbe_v1_9.events_group.dissect(buffer, index, packet, parent, events_group_index)
  end

  return index
end

-- Dissect: Events Groups
cme_futures_mdp3_sbe_v1_9.events_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.events_groups then
    local length = cme_futures_mdp3_sbe_v1_9.events_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.events_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.events_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.events_groups.fields(buffer, offset, packet, parent)
end

-- Trading Reference Date
cme_futures_mdp3_sbe_v1_9.trading_reference_date = {}

-- Size Of: Trading Reference Date
cme_futures_mdp3_sbe_v1_9.trading_reference_date.size = 2

-- Display: Trading Reference Date
cme_futures_mdp3_sbe_v1_9.trading_reference_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trading Reference Date: No Value"
  end

  return "Trading Reference Date: "..value
end

-- Dissect: Trading Reference Date
cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.trading_reference_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.trading_reference_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.trading_reference_date, range, value, display)

  return offset + length, value
end

-- Sub Fraction
cme_futures_mdp3_sbe_v1_9.sub_fraction = {}

-- Size Of: Sub Fraction
cme_futures_mdp3_sbe_v1_9.sub_fraction.size = 1

-- Display: Sub Fraction
cme_futures_mdp3_sbe_v1_9.sub_fraction.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Sub Fraction: No Value"
  end

  return "Sub Fraction: "..value
end

-- Dissect: Sub Fraction
cme_futures_mdp3_sbe_v1_9.sub_fraction.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.sub_fraction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.sub_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.sub_fraction, range, value, display)

  return offset + length, value
end

-- Main Fraction
cme_futures_mdp3_sbe_v1_9.main_fraction = {}

-- Size Of: Main Fraction
cme_futures_mdp3_sbe_v1_9.main_fraction.size = 1

-- Display: Main Fraction
cme_futures_mdp3_sbe_v1_9.main_fraction.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Main Fraction: No Value"
  end

  return "Main Fraction: "..value
end

-- Dissect: Main Fraction
cme_futures_mdp3_sbe_v1_9.main_fraction.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.main_fraction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.main_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.main_fraction, range, value, display)

  return offset + length, value
end

-- Max Price Variation Pricenul L 9
cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9 = {}

-- Size Of: Max Price Variation Pricenul L 9
cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.size = 8

-- Display: Max Price Variation Pricenul L 9
cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Max Price Variation Pricenul L 9: No Value"
  end

  return "Max Price Variation Pricenul L 9: "..value
end

-- Translate: Max Price Variation Pricenul L 9
cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Max Price Variation Pricenul L 9
cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.max_price_variation_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Low Limit Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9 = {}

-- Size Of: Low Limit Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.size = 8

-- Display: Low Limit Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low Limit Price Pricenul L 9: No Value"
  end

  return "Low Limit Price Pricenul L 9: "..value
end

-- Translate: Low Limit Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Low Limit Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.low_limit_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- High Limit Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9 = {}

-- Size Of: High Limit Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.size = 8

-- Display: High Limit Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High Limit Price Pricenul L 9: No Value"
  end

  return "High Limit Price Pricenul L 9: "..value
end

-- Translate: High Limit Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: High Limit Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.high_limit_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Cleared Volume
cme_futures_mdp3_sbe_v1_9.cleared_volume = {}

-- Size Of: Cleared Volume
cme_futures_mdp3_sbe_v1_9.cleared_volume.size = 4

-- Display: Cleared Volume
cme_futures_mdp3_sbe_v1_9.cleared_volume.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Cleared Volume: No Value"
  end

  return "Cleared Volume: "..value
end

-- Dissect: Cleared Volume
cme_futures_mdp3_sbe_v1_9.cleared_volume.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.cleared_volume.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.cleared_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.cleared_volume, range, value, display)

  return offset + length, value
end

-- Open Interest Qty
cme_futures_mdp3_sbe_v1_9.open_interest_qty = {}

-- Size Of: Open Interest Qty
cme_futures_mdp3_sbe_v1_9.open_interest_qty.size = 4

-- Display: Open Interest Qty
cme_futures_mdp3_sbe_v1_9.open_interest_qty.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Open Interest Qty: No Value"
  end

  return "Open Interest Qty: "..value
end

-- Dissect: Open Interest Qty
cme_futures_mdp3_sbe_v1_9.open_interest_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.open_interest_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.open_interest_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.open_interest_qty, range, value, display)

  return offset + length, value
end

-- Settl Price Type
cme_futures_mdp3_sbe_v1_9.settl_price_type = {}

-- Size Of: Settl Price Type
cme_futures_mdp3_sbe_v1_9.settl_price_type.size = 1

-- Display: Settl Price Type
cme_futures_mdp3_sbe_v1_9.settl_price_type.display = function(buffer, packet, parent)
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
cme_futures_mdp3_sbe_v1_9.settl_price_type.bits = function(buffer, offset, packet, parent)

  -- Null Value: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.null_value, buffer(offset, 1))

  -- Reserved Bits: 3 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.reserved_bits, buffer(offset, 1))

  -- Intraday: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.intraday, buffer(offset, 1))

  -- Rounded: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.rounded, buffer(offset, 1))

  -- Actual: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.actual, buffer(offset, 1))

  -- Final Daily: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.final_daily, buffer(offset, 1))
end

-- Dissect: Settl Price Type
cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_9.settl_price_type.display(range, packet, parent)
  local element = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.settl_price_type, range, display)

  if show.settl_price_type then
    cme_futures_mdp3_sbe_v1_9.settl_price_type.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Trading Reference Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9 = {}

-- Size Of: Trading Reference Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.size = 8

-- Display: Trading Reference Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Trading Reference Price Pricenul L 9: No Value"
  end

  return "Trading Reference Price Pricenul L 9: "..value
end

-- Translate: Trading Reference Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Trading Reference Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.trading_reference_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
cme_futures_mdp3_sbe_v1_9.unit_of_measure = {}

-- Size Of: Unit Of Measure
cme_futures_mdp3_sbe_v1_9.unit_of_measure.size = 30

-- Display: Unit Of Measure
cme_futures_mdp3_sbe_v1_9.unit_of_measure.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
cme_futures_mdp3_sbe_v1_9.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.unit_of_measure.size
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

  local display = cme_futures_mdp3_sbe_v1_9.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Tick Rule
cme_futures_mdp3_sbe_v1_9.tick_rule = {}

-- Size Of: Tick Rule
cme_futures_mdp3_sbe_v1_9.tick_rule.size = 1

-- Display: Tick Rule
cme_futures_mdp3_sbe_v1_9.tick_rule.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Tick Rule: No Value"
  end

  return "Tick Rule: "..value
end

-- Dissect: Tick Rule
cme_futures_mdp3_sbe_v1_9.tick_rule.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.tick_rule.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.tick_rule.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.tick_rule, range, value, display)

  return offset + length, value
end

-- Price Ratio Pricenul L 9
cme_futures_mdp3_sbe_v1_9.price_ratio_pricenul_l_9 = {}

-- Size Of: Price Ratio Pricenul L 9
cme_futures_mdp3_sbe_v1_9.price_ratio_pricenul_l_9.size = 8

-- Display: Price Ratio Pricenul L 9
cme_futures_mdp3_sbe_v1_9.price_ratio_pricenul_l_9.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Price Ratio Pricenul L 9: No Value"
  end

  return "Price Ratio Pricenul L 9: "..value
end

-- Translate: Price Ratio Pricenul L 9
cme_futures_mdp3_sbe_v1_9.price_ratio_pricenul_l_9.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Price Ratio Pricenul L 9
cme_futures_mdp3_sbe_v1_9.price_ratio_pricenul_l_9.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.price_ratio_pricenul_l_9.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.price_ratio_pricenul_l_9.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.price_ratio_pricenul_l_9.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.price_ratio_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Price Display Format
cme_futures_mdp3_sbe_v1_9.price_display_format = {}

-- Size Of: Price Display Format
cme_futures_mdp3_sbe_v1_9.price_display_format.size = 1

-- Display: Price Display Format
cme_futures_mdp3_sbe_v1_9.price_display_format.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Display Format: No Value"
  end

  return "Price Display Format: "..value
end

-- Dissect: Price Display Format
cme_futures_mdp3_sbe_v1_9.price_display_format.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.price_display_format.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.price_display_format.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.price_display_format, range, value, display)

  return offset + length, value
end

-- Display Factor Decimal 9
cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9 = {}

-- Size Of: Display Factor Decimal 9
cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.size = 8

-- Display: Display Factor Decimal 9
cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.display = function(value)
  return "Display Factor Decimal 9: "..value
end

-- Translate: Display Factor Decimal 9
cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Display Factor Decimal 9
cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.display_factor_decimal_9, range, value, display)

  return offset + length, value
end

-- Min Price Increment Optional
cme_futures_mdp3_sbe_v1_9.min_price_increment_optional = {}

-- Size Of: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.size = 8

-- Display: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Optional: No Value"
  end

  return "Min Price Increment Optional: "..value
end

-- Translate: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_optional, range, value, display)

  return offset + length, value
end

-- Max Trade Vol
cme_futures_mdp3_sbe_v1_9.max_trade_vol = {}

-- Size Of: Max Trade Vol
cme_futures_mdp3_sbe_v1_9.max_trade_vol.size = 4

-- Display: Max Trade Vol
cme_futures_mdp3_sbe_v1_9.max_trade_vol.display = function(value)
  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol
cme_futures_mdp3_sbe_v1_9.max_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.max_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.max_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.max_trade_vol, range, value, display)

  return offset + length, value
end

-- Min Trade Vol
cme_futures_mdp3_sbe_v1_9.min_trade_vol = {}

-- Size Of: Min Trade Vol
cme_futures_mdp3_sbe_v1_9.min_trade_vol.size = 4

-- Display: Min Trade Vol
cme_futures_mdp3_sbe_v1_9.min_trade_vol.display = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
cme_futures_mdp3_sbe_v1_9.min_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.min_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.min_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Match Algorithm
cme_futures_mdp3_sbe_v1_9.match_algorithm = {}

-- Size Of: Match Algorithm
cme_futures_mdp3_sbe_v1_9.match_algorithm.size = 1

-- Display: Match Algorithm
cme_futures_mdp3_sbe_v1_9.match_algorithm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Match Algorithm: No Value"
  end

  return "Match Algorithm: "..value
end

-- Dissect: Match Algorithm
cme_futures_mdp3_sbe_v1_9.match_algorithm.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.match_algorithm.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_9.match_algorithm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- User Defined Instrument
cme_futures_mdp3_sbe_v1_9.user_defined_instrument = {}

-- Size Of: User Defined Instrument
cme_futures_mdp3_sbe_v1_9.user_defined_instrument.size = 1

-- Display: User Defined Instrument
cme_futures_mdp3_sbe_v1_9.user_defined_instrument.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Defined Instrument: No Value"
  end

  return "User Defined Instrument: "..value
end

-- Dissect: User Defined Instrument
cme_futures_mdp3_sbe_v1_9.user_defined_instrument.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.user_defined_instrument.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_9.user_defined_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.user_defined_instrument, range, value, display)

  return offset + length, value
end

-- Security Sub Type
cme_futures_mdp3_sbe_v1_9.security_sub_type = {}

-- Size Of: Security Sub Type
cme_futures_mdp3_sbe_v1_9.security_sub_type.size = 5

-- Display: Security Sub Type
cme_futures_mdp3_sbe_v1_9.security_sub_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
cme_futures_mdp3_sbe_v1_9.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.security_sub_type.size
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

  local display = cme_futures_mdp3_sbe_v1_9.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Currency
cme_futures_mdp3_sbe_v1_9.currency = {}

-- Size Of: Currency
cme_futures_mdp3_sbe_v1_9.currency.size = 3

-- Display: Currency
cme_futures_mdp3_sbe_v1_9.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
cme_futures_mdp3_sbe_v1_9.currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.currency.size
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

  local display = cme_futures_mdp3_sbe_v1_9.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.currency, range, value, display)

  return offset + length, value
end

-- Week
cme_futures_mdp3_sbe_v1_9.week = {}

-- Size Of: Week
cme_futures_mdp3_sbe_v1_9.week.size = 1

-- Display: Week
cme_futures_mdp3_sbe_v1_9.week.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
cme_futures_mdp3_sbe_v1_9.week.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.week.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.week.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.week, range, value, display)

  return offset + length, value
end

-- Day
cme_futures_mdp3_sbe_v1_9.day = {}

-- Size Of: Day
cme_futures_mdp3_sbe_v1_9.day.size = 1

-- Display: Day
cme_futures_mdp3_sbe_v1_9.day.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
cme_futures_mdp3_sbe_v1_9.day.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.day.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.day, range, value, display)

  return offset + length, value
end

-- Month
cme_futures_mdp3_sbe_v1_9.month = {}

-- Size Of: Month
cme_futures_mdp3_sbe_v1_9.month.size = 1

-- Display: Month
cme_futures_mdp3_sbe_v1_9.month.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
cme_futures_mdp3_sbe_v1_9.month.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.month.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.month, range, value, display)

  return offset + length, value
end

-- Year
cme_futures_mdp3_sbe_v1_9.year = {}

-- Size Of: Year
cme_futures_mdp3_sbe_v1_9.year.size = 2

-- Display: Year
cme_futures_mdp3_sbe_v1_9.year.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
cme_futures_mdp3_sbe_v1_9.year.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.year, range, value, display)

  return offset + length, value
end

-- Maturity Month Year
cme_futures_mdp3_sbe_v1_9.maturity_month_year = {}

-- Size Of: Maturity Month Year
cme_futures_mdp3_sbe_v1_9.maturity_month_year.size =
  cme_futures_mdp3_sbe_v1_9.year.size + 
  cme_futures_mdp3_sbe_v1_9.month.size + 
  cme_futures_mdp3_sbe_v1_9.day.size + 
  cme_futures_mdp3_sbe_v1_9.week.size;

-- Display: Maturity Month Year
cme_futures_mdp3_sbe_v1_9.maturity_month_year.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Month Year
cme_futures_mdp3_sbe_v1_9.maturity_month_year.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = cme_futures_mdp3_sbe_v1_9.year.dissect(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = cme_futures_mdp3_sbe_v1_9.month.dissect(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = cme_futures_mdp3_sbe_v1_9.day.dissect(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = cme_futures_mdp3_sbe_v1_9.week.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
cme_futures_mdp3_sbe_v1_9.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  if show.maturity_month_year then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.maturity_month_year, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.maturity_month_year.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.maturity_month_year.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.maturity_month_year.fields(buffer, offset, packet, parent)
  end
end

-- Cfi Code
cme_futures_mdp3_sbe_v1_9.cfi_code = {}

-- Size Of: Cfi Code
cme_futures_mdp3_sbe_v1_9.cfi_code.size = 6

-- Display: Cfi Code
cme_futures_mdp3_sbe_v1_9.cfi_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
cme_futures_mdp3_sbe_v1_9.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.cfi_code.size
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

  local display = cme_futures_mdp3_sbe_v1_9.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Security Type
cme_futures_mdp3_sbe_v1_9.security_type = {}

-- Size Of: Security Type
cme_futures_mdp3_sbe_v1_9.security_type.size = 6

-- Display: Security Type
cme_futures_mdp3_sbe_v1_9.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
cme_futures_mdp3_sbe_v1_9.security_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.security_type.size
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

  local display = cme_futures_mdp3_sbe_v1_9.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.security_type, range, value, display)

  return offset + length, value
end

-- Security Id
cme_futures_mdp3_sbe_v1_9.security_id = {}

-- Size Of: Security Id
cme_futures_mdp3_sbe_v1_9.security_id.size = 4

-- Display: Security Id
cme_futures_mdp3_sbe_v1_9.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cme_futures_mdp3_sbe_v1_9.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.security_id, range, value, display)

  return offset + length, value
end

-- Symbol
cme_futures_mdp3_sbe_v1_9.symbol = {}

-- Size Of: Symbol
cme_futures_mdp3_sbe_v1_9.symbol.size = 20

-- Display: Symbol
cme_futures_mdp3_sbe_v1_9.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_futures_mdp3_sbe_v1_9.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.symbol.size
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

  local display = cme_futures_mdp3_sbe_v1_9.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.symbol, range, value, display)

  return offset + length, value
end

-- Asset
cme_futures_mdp3_sbe_v1_9.asset = {}

-- Size Of: Asset
cme_futures_mdp3_sbe_v1_9.asset.size = 6

-- Display: Asset
cme_futures_mdp3_sbe_v1_9.asset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
cme_futures_mdp3_sbe_v1_9.asset.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.asset.size
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

  local display = cme_futures_mdp3_sbe_v1_9.asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.asset, range, value, display)

  return offset + length, value
end

-- Security Group
cme_futures_mdp3_sbe_v1_9.security_group = {}

-- Size Of: Security Group
cme_futures_mdp3_sbe_v1_9.security_group.size = 6

-- Display: Security Group
cme_futures_mdp3_sbe_v1_9.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
cme_futures_mdp3_sbe_v1_9.security_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.security_group.size
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

  local display = cme_futures_mdp3_sbe_v1_9.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Exchange
cme_futures_mdp3_sbe_v1_9.security_exchange = {}

-- Size Of: Security Exchange
cme_futures_mdp3_sbe_v1_9.security_exchange.size = 4

-- Display: Security Exchange
cme_futures_mdp3_sbe_v1_9.security_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
cme_futures_mdp3_sbe_v1_9.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.security_exchange.size
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

  local display = cme_futures_mdp3_sbe_v1_9.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Underlying Product Optional
cme_futures_mdp3_sbe_v1_9.underlying_product_optional = {}

-- Size Of: Underlying Product Optional
cme_futures_mdp3_sbe_v1_9.underlying_product_optional.size = 1

-- Display: Underlying Product Optional
cme_futures_mdp3_sbe_v1_9.underlying_product_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Underlying Product Optional: No Value"
  end

  return "Underlying Product Optional: "..value
end

-- Dissect: Underlying Product Optional
cme_futures_mdp3_sbe_v1_9.underlying_product_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.underlying_product_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.underlying_product_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.underlying_product_optional, range, value, display)

  return offset + length, value
end

-- Market Segment Id
cme_futures_mdp3_sbe_v1_9.market_segment_id = {}

-- Size Of: Market Segment Id
cme_futures_mdp3_sbe_v1_9.market_segment_id.size = 1

-- Display: Market Segment Id
cme_futures_mdp3_sbe_v1_9.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
cme_futures_mdp3_sbe_v1_9.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Appl Id
cme_futures_mdp3_sbe_v1_9.appl_id = {}

-- Size Of: Appl Id
cme_futures_mdp3_sbe_v1_9.appl_id.size = 2

-- Display: Appl Id
cme_futures_mdp3_sbe_v1_9.appl_id.display = function(value)
  return "Appl Id: "..value
end

-- Dissect: Appl Id
cme_futures_mdp3_sbe_v1_9.appl_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.appl_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Md Security Trading Status
cme_futures_mdp3_sbe_v1_9.md_security_trading_status = {}

-- Size Of: Md Security Trading Status
cme_futures_mdp3_sbe_v1_9.md_security_trading_status.size = 1

-- Display: Md Security Trading Status
cme_futures_mdp3_sbe_v1_9.md_security_trading_status.display = function(value)
  if value == 255 then
    return "Md Security Trading Status: No Value"
  end
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

  return "Md Security Trading Status: Unknown("..value..")"
end

-- Dissect: Md Security Trading Status
cme_futures_mdp3_sbe_v1_9.md_security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.md_security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_security_trading_status, range, value, display)

  return offset + length, value
end

-- Last Update Time
cme_futures_mdp3_sbe_v1_9.last_update_time = {}

-- Size Of: Last Update Time
cme_futures_mdp3_sbe_v1_9.last_update_time.size = 8

-- Display: Last Update Time
cme_futures_mdp3_sbe_v1_9.last_update_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Last Update Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Update Time
cme_futures_mdp3_sbe_v1_9.last_update_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.last_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_9.last_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Security Update Action
cme_futures_mdp3_sbe_v1_9.security_update_action = {}

-- Size Of: Security Update Action
cme_futures_mdp3_sbe_v1_9.security_update_action.size = 1

-- Display: Security Update Action
cme_futures_mdp3_sbe_v1_9.security_update_action.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Update Action: No Value"
  end

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
cme_futures_mdp3_sbe_v1_9.security_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.security_update_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_9.security_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.security_update_action, range, value, display)

  return offset + length, value
end

-- Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional = {}

-- Size Of: Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.size = 4

-- Display: Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Tot Num Reports Optional: No Value"
  end

  return "Tot Num Reports Optional: "..value
end

-- Dissect: Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.tot_num_reports_optional, range, value, display)

  return offset + length, value
end

-- Match Event Indicator
cme_futures_mdp3_sbe_v1_9.match_event_indicator = {}

-- Size Of: Match Event Indicator
cme_futures_mdp3_sbe_v1_9.match_event_indicator.size = 1

-- Display: Match Event Indicator
cme_futures_mdp3_sbe_v1_9.match_event_indicator.display = function(buffer, packet, parent)
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
cme_futures_mdp3_sbe_v1_9.match_event_indicator.bits = function(buffer, offset, packet, parent)

  -- End Of Event: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.end_of_event, buffer(offset, 1))

  -- Reserved: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.reserved, buffer(offset, 1))

  -- Recovery Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.recovery_msg, buffer(offset, 1))

  -- Last Implied Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.last_implied_msg, buffer(offset, 1))

  -- Last Stats Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.last_stats_msg, buffer(offset, 1))

  -- Last Quote Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.last_quote_msg, buffer(offset, 1))

  -- Last Volume Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.last_volume_msg, buffer(offset, 1))

  -- Last Trade Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.last_trade_msg, buffer(offset, 1))
end

-- Dissect: Match Event Indicator
cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_9.match_event_indicator.display(range, packet, parent)
  local element = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.match_event_indicator, range, display)

  if show.match_event_indicator then
    cme_futures_mdp3_sbe_v1_9.match_event_indicator.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread = {}

-- Calculate size of: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_9.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_9.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.underlying_product_optional.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_9.asset.size

  index = index + cme_futures_mdp3_sbe_v1_9.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_9.maturity_month_year.size

  index = index + cme_futures_mdp3_sbe_v1_9.currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_sub_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.size

  index = index + cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.price_display_format.size

  index = index + cme_futures_mdp3_sbe_v1_9.price_ratio_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.tick_rule.size

  index = index + cme_futures_mdp3_sbe_v1_9.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.settl_price_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.open_interest_qty.size

  index = index + cme_futures_mdp3_sbe_v1_9.cleared_volume.size

  index = index + cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.main_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.sub_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_9.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_9.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_9.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_9.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_9.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_9.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_optional = cme_futures_mdp3_sbe_v1_9.underlying_product_optional.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_9.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_9.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_9.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_9.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_9.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_9.cfi_code.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_9.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_9.currency.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 5 Byte Ascii String
  index, security_sub_type = cme_futures_mdp3_sbe_v1_9.security_sub_type.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_9.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_9.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_9.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_9.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_optional = cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.dissect(buffer, index, packet, parent)

  -- Display Factor Decimal 9: 8 Byte Signed Fixed Width Integer
  index, display_factor_decimal_9 = cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.dissect(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_9.price_display_format.dissect(buffer, index, packet, parent)

  -- Price Ratio Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, price_ratio_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.price_ratio_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = cme_futures_mdp3_sbe_v1_9.tick_rule.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_9.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Trading Reference Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_9.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_9.cleared_volume.dissect(buffer, index, packet, parent)

  -- High Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Low Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Max Price Variation Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_9.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_9.sub_fraction.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_9.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  -- M D Instrument Definition Spread 56 Leg Groups: Struct of 2 fields
  index, m_d_instrument_definition_spread_56_leg_groups = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_56_leg_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_spread then
    local length = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_spread, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread.fields(buffer, offset, packet, parent)
end

-- Related Symbol
cme_futures_mdp3_sbe_v1_9.related_symbol = {}

-- Size Of: Related Symbol
cme_futures_mdp3_sbe_v1_9.related_symbol.size = 20

-- Display: Related Symbol
cme_futures_mdp3_sbe_v1_9.related_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Related Symbol: No Value"
  end

  return "Related Symbol: "..value
end

-- Dissect: Related Symbol
cme_futures_mdp3_sbe_v1_9.related_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.related_symbol.size
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

  local display = cme_futures_mdp3_sbe_v1_9.related_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.related_symbol, range, value, display)

  return offset + length, value
end

-- Related Security Id
cme_futures_mdp3_sbe_v1_9.related_security_id = {}

-- Size Of: Related Security Id
cme_futures_mdp3_sbe_v1_9.related_security_id.size = 4

-- Display: Related Security Id
cme_futures_mdp3_sbe_v1_9.related_security_id.display = function(value)
  return "Related Security Id: "..value
end

-- Dissect: Related Security Id
cme_futures_mdp3_sbe_v1_9.related_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.related_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.related_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.related_security_id, range, value, display)

  return offset + length, value
end

-- Related Instruments Group
cme_futures_mdp3_sbe_v1_9.related_instruments_group = {}

-- Size Of: Related Instruments Group
cme_futures_mdp3_sbe_v1_9.related_instruments_group.size =
  cme_futures_mdp3_sbe_v1_9.related_security_id.size + 
  cme_futures_mdp3_sbe_v1_9.related_symbol.size;

-- Display: Related Instruments Group
cme_futures_mdp3_sbe_v1_9.related_instruments_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Instruments Group
cme_futures_mdp3_sbe_v1_9.related_instruments_group.fields = function(buffer, offset, packet, parent, related_instruments_group_index)
  local index = offset

  -- Implicit Related Instruments Group Index
  if related_instruments_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.related_instruments_group_index, related_instruments_group_index)
    iteration:set_generated()
  end

  -- Related Security Id: 4 Byte Signed Fixed Width Integer
  index, related_security_id = cme_futures_mdp3_sbe_v1_9.related_security_id.dissect(buffer, index, packet, parent)

  -- Related Symbol: 20 Byte Ascii String
  index, related_symbol = cme_futures_mdp3_sbe_v1_9.related_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Instruments Group
cme_futures_mdp3_sbe_v1_9.related_instruments_group.dissect = function(buffer, offset, packet, parent, related_instruments_group_index)
  if show.related_instruments_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.related_instruments_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.related_instruments_group.fields(buffer, offset, packet, parent, related_instruments_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.related_instruments_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.related_instruments_group.fields(buffer, offset, packet, parent, related_instruments_group_index)
  end
end

-- Related Instruments Groups
cme_futures_mdp3_sbe_v1_9.related_instruments_groups = {}

-- Calculate size of: Related Instruments Groups
cme_futures_mdp3_sbe_v1_9.related_instruments_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local related_instruments_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_instruments_group_count * 24

  return index
end

-- Display: Related Instruments Groups
cme_futures_mdp3_sbe_v1_9.related_instruments_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Instruments Groups
cme_futures_mdp3_sbe_v1_9.related_instruments_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Related Instruments Group
  for related_instruments_group_index = 1, num_in_group do
    index, related_instruments_group = cme_futures_mdp3_sbe_v1_9.related_instruments_group.dissect(buffer, index, packet, parent, related_instruments_group_index)
  end

  return index
end

-- Dissect: Related Instruments Groups
cme_futures_mdp3_sbe_v1_9.related_instruments_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_instruments_groups then
    local length = cme_futures_mdp3_sbe_v1_9.related_instruments_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.related_instruments_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.related_instruments_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.related_instruments_groups.fields(buffer, offset, packet, parent)
end

-- Underlying Symbol
cme_futures_mdp3_sbe_v1_9.underlying_symbol = {}

-- Size Of: Underlying Symbol
cme_futures_mdp3_sbe_v1_9.underlying_symbol.size = 20

-- Display: Underlying Symbol
cme_futures_mdp3_sbe_v1_9.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
cme_futures_mdp3_sbe_v1_9.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.underlying_symbol.size
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

  local display = cme_futures_mdp3_sbe_v1_9.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Underlying Security Id
cme_futures_mdp3_sbe_v1_9.underlying_security_id = {}

-- Size Of: Underlying Security Id
cme_futures_mdp3_sbe_v1_9.underlying_security_id.size = 4

-- Display: Underlying Security Id
cme_futures_mdp3_sbe_v1_9.underlying_security_id.display = function(value)
  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
cme_futures_mdp3_sbe_v1_9.underlying_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.underlying_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.underlying_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Underlyings Group
cme_futures_mdp3_sbe_v1_9.underlyings_group = {}

-- Size Of: Underlyings Group
cme_futures_mdp3_sbe_v1_9.underlyings_group.size =
  cme_futures_mdp3_sbe_v1_9.underlying_security_id.size + 
  cme_futures_mdp3_sbe_v1_9.underlying_symbol.size;

-- Display: Underlyings Group
cme_futures_mdp3_sbe_v1_9.underlyings_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlyings Group
cme_futures_mdp3_sbe_v1_9.underlyings_group.fields = function(buffer, offset, packet, parent, underlyings_group_index)
  local index = offset

  -- Implicit Underlyings Group Index
  if underlyings_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.underlyings_group_index, underlyings_group_index)
    iteration:set_generated()
  end

  -- Underlying Security Id: 4 Byte Signed Fixed Width Integer
  index, underlying_security_id = cme_futures_mdp3_sbe_v1_9.underlying_security_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 20 Byte Ascii String
  index, underlying_symbol = cme_futures_mdp3_sbe_v1_9.underlying_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlyings Group
cme_futures_mdp3_sbe_v1_9.underlyings_group.dissect = function(buffer, offset, packet, parent, underlyings_group_index)
  if show.underlyings_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.underlyings_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.underlyings_group.fields(buffer, offset, packet, parent, underlyings_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.underlyings_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.underlyings_group.fields(buffer, offset, packet, parent, underlyings_group_index)
  end
end

-- Underlyings Groups
cme_futures_mdp3_sbe_v1_9.underlyings_groups = {}

-- Calculate size of: Underlyings Groups
cme_futures_mdp3_sbe_v1_9.underlyings_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local underlyings_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + underlyings_group_count * 24

  return index
end

-- Display: Underlyings Groups
cme_futures_mdp3_sbe_v1_9.underlyings_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlyings Groups
cme_futures_mdp3_sbe_v1_9.underlyings_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Underlyings Group
  for underlyings_group_index = 1, num_in_group do
    index, underlyings_group = cme_futures_mdp3_sbe_v1_9.underlyings_group.dissect(buffer, index, packet, parent, underlyings_group_index)
  end

  return index
end

-- Dissect: Underlyings Groups
cme_futures_mdp3_sbe_v1_9.underlyings_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlyings_groups then
    local length = cme_futures_mdp3_sbe_v1_9.underlyings_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.underlyings_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.underlyings_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.underlyings_groups.fields(buffer, offset, packet, parent)
end

-- Unit Of Measure Qty Decimal 9 Null
cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null = {}

-- Size Of: Unit Of Measure Qty Decimal 9 Null
cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.size = 8

-- Display: Unit Of Measure Qty Decimal 9 Null
cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Unit Of Measure Qty Decimal 9 Null: No Value"
  end

  return "Unit Of Measure Qty Decimal 9 Null: "..value
end

-- Translate: Unit Of Measure Qty Decimal 9 Null
cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Unit Of Measure Qty Decimal 9 Null
cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure_qty_decimal_9_null, range, value, display)

  return offset + length, value
end

-- Min Price Increment Amount Pricenul L 9
cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9 = {}

-- Size Of: Min Price Increment Amount Pricenul L 9
cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.size = 8

-- Display: Min Price Increment Amount Pricenul L 9
cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Amount Pricenul L 9: No Value"
  end

  return "Min Price Increment Amount Pricenul L 9: "..value
end

-- Translate: Min Price Increment Amount Pricenul L 9
cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment Amount Pricenul L 9
cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_amount_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Min Cab Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenul_l_9 = {}

-- Size Of: Min Cab Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenul_l_9.size = 8

-- Display: Min Cab Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenul_l_9.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Cab Price Pricenul L 9: No Value"
  end

  return "Min Cab Price Pricenul L 9: "..value
end

-- Translate: Min Cab Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenul_l_9.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Cab Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenul_l_9.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenul_l_9.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenul_l_9.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenul_l_9.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.min_cab_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Settl Currency
cme_futures_mdp3_sbe_v1_9.settl_currency = {}

-- Size Of: Settl Currency
cme_futures_mdp3_sbe_v1_9.settl_currency.size = 3

-- Display: Settl Currency
cme_futures_mdp3_sbe_v1_9.settl_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settl Currency: No Value"
  end

  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
cme_futures_mdp3_sbe_v1_9.settl_currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.settl_currency.size
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

  local display = cme_futures_mdp3_sbe_v1_9.settl_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.settl_currency, range, value, display)

  return offset + length, value
end

-- Strike Currency
cme_futures_mdp3_sbe_v1_9.strike_currency = {}

-- Size Of: Strike Currency
cme_futures_mdp3_sbe_v1_9.strike_currency.size = 3

-- Display: Strike Currency
cme_futures_mdp3_sbe_v1_9.strike_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
cme_futures_mdp3_sbe_v1_9.strike_currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.strike_currency.size
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

  local display = cme_futures_mdp3_sbe_v1_9.strike_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Strike Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.strike_price_pricenul_l_9 = {}

-- Size Of: Strike Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.strike_price_pricenul_l_9.size = 8

-- Display: Strike Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.strike_price_pricenul_l_9.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Strike Price Pricenul L 9: No Value"
  end

  return "Strike Price Pricenul L 9: "..value
end

-- Translate: Strike Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.strike_price_pricenul_l_9.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Strike Price Pricenul L 9
cme_futures_mdp3_sbe_v1_9.strike_price_pricenul_l_9.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.strike_price_pricenul_l_9.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.strike_price_pricenul_l_9.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.strike_price_pricenul_l_9.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.strike_price_pricenul_l_9, range, value, display)

  return offset + length, value
end

-- Put Or Call
cme_futures_mdp3_sbe_v1_9.put_or_call = {}

-- Size Of: Put Or Call
cme_futures_mdp3_sbe_v1_9.put_or_call.size = 1

-- Display: Put Or Call
cme_futures_mdp3_sbe_v1_9.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cme_futures_mdp3_sbe_v1_9.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Underlying Product
cme_futures_mdp3_sbe_v1_9.underlying_product = {}

-- Size Of: Underlying Product
cme_futures_mdp3_sbe_v1_9.underlying_product.size = 1

-- Display: Underlying Product
cme_futures_mdp3_sbe_v1_9.underlying_product.display = function(value)
  return "Underlying Product: "..value
end

-- Dissect: Underlying Product
cme_futures_mdp3_sbe_v1_9.underlying_product.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.underlying_product.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.underlying_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.underlying_product, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option = {}

-- Calculate size of: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_9.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_9.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.underlying_product.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_9.asset.size

  index = index + cme_futures_mdp3_sbe_v1_9.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_9.put_or_call.size

  index = index + cme_futures_mdp3_sbe_v1_9.maturity_month_year.size

  index = index + cme_futures_mdp3_sbe_v1_9.currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.strike_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.strike_currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.settl_currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.tick_rule.size

  index = index + cme_futures_mdp3_sbe_v1_9.main_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.sub_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.price_display_format.size

  index = index + cme_futures_mdp3_sbe_v1_9.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.settl_price_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.cleared_volume.size

  index = index + cme_futures_mdp3_sbe_v1_9.open_interest_qty.size

  index = index + cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_9.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.underlyings_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.related_instruments_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_9.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_9.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_9.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_9.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_9.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_9.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_9.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_9.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_9.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_9.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_9.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_9.cfi_code.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = cme_futures_mdp3_sbe_v1_9.put_or_call.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_9.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_9.currency.dissect(buffer, index, packet, parent)

  -- Strike Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.strike_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String
  index, strike_currency = cme_futures_mdp3_sbe_v1_9.strike_currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_9.settl_currency.dissect(buffer, index, packet, parent)

  -- Min Cab Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, min_cab_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_9.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_9.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_9.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_optional = cme_futures_mdp3_sbe_v1_9.min_price_increment_optional.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Display Factor Decimal 9: 8 Byte Signed Fixed Width Integer
  index, display_factor_decimal_9 = cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.dissect(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = cme_futures_mdp3_sbe_v1_9.tick_rule.dissect(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_9.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_9.sub_fraction.dissect(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_9.price_display_format.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_9.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty Decimal 9 Null: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_decimal_9_null = cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Trading Reference Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_9.cleared_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_9.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Low Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- High Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_9.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_9.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index, underlyings_groups = cme_futures_mdp3_sbe_v1_9.underlyings_groups.dissect(buffer, index, packet, parent)

  -- Related Instruments Groups: Struct of 2 fields
  index, related_instruments_groups = cme_futures_mdp3_sbe_v1_9.related_instruments_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_option then
    local length = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_option, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option.fields(buffer, offset, packet, parent)
end

-- Flow Schedule Type
cme_futures_mdp3_sbe_v1_9.flow_schedule_type = {}

-- Size Of: Flow Schedule Type
cme_futures_mdp3_sbe_v1_9.flow_schedule_type.size = 1

-- Display: Flow Schedule Type
cme_futures_mdp3_sbe_v1_9.flow_schedule_type.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Flow Schedule Type: No Value"
  end

  return "Flow Schedule Type: "..value
end

-- Dissect: Flow Schedule Type
cme_futures_mdp3_sbe_v1_9.flow_schedule_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.flow_schedule_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.flow_schedule_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.flow_schedule_type, range, value, display)

  return offset + length, value
end

-- Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_9.contract_multiplier_unit = {}

-- Size Of: Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_9.contract_multiplier_unit.size = 1

-- Display: Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_9.contract_multiplier_unit.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Contract Multiplier Unit: No Value"
  end

  return "Contract Multiplier Unit: "..value
end

-- Dissect: Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_9.contract_multiplier_unit.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.contract_multiplier_unit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.contract_multiplier_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.contract_multiplier_unit, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
cme_futures_mdp3_sbe_v1_9.contract_multiplier = {}

-- Size Of: Contract Multiplier
cme_futures_mdp3_sbe_v1_9.contract_multiplier.size = 4

-- Display: Contract Multiplier
cme_futures_mdp3_sbe_v1_9.contract_multiplier.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
cme_futures_mdp3_sbe_v1_9.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Original Contract Size
cme_futures_mdp3_sbe_v1_9.original_contract_size = {}

-- Size Of: Original Contract Size
cme_futures_mdp3_sbe_v1_9.original_contract_size.size = 4

-- Display: Original Contract Size
cme_futures_mdp3_sbe_v1_9.original_contract_size.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Original Contract Size: No Value"
  end

  return "Original Contract Size: "..value
end

-- Dissect: Original Contract Size
cme_futures_mdp3_sbe_v1_9.original_contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.original_contract_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.original_contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.original_contract_size, range, value, display)

  return offset + length, value
end

-- Decay Start Date
cme_futures_mdp3_sbe_v1_9.decay_start_date = {}

-- Size Of: Decay Start Date
cme_futures_mdp3_sbe_v1_9.decay_start_date.size = 2

-- Display: Decay Start Date
cme_futures_mdp3_sbe_v1_9.decay_start_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Decay Start Date: No Value"
  end

  return "Decay Start Date: "..value
end

-- Dissect: Decay Start Date
cme_futures_mdp3_sbe_v1_9.decay_start_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.decay_start_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.decay_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.decay_start_date, range, value, display)

  return offset + length, value
end

-- Decay Quantity
cme_futures_mdp3_sbe_v1_9.decay_quantity = {}

-- Size Of: Decay Quantity
cme_futures_mdp3_sbe_v1_9.decay_quantity.size = 4

-- Display: Decay Quantity
cme_futures_mdp3_sbe_v1_9.decay_quantity.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Decay Quantity: No Value"
  end

  return "Decay Quantity: "..value
end

-- Dissect: Decay Quantity
cme_futures_mdp3_sbe_v1_9.decay_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.decay_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.decay_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.decay_quantity, range, value, display)

  return offset + length, value
end

-- Min Price Increment
cme_futures_mdp3_sbe_v1_9.min_price_increment = {}

-- Size Of: Min Price Increment
cme_futures_mdp3_sbe_v1_9.min_price_increment.size = 8

-- Display: Min Price Increment
cme_futures_mdp3_sbe_v1_9.min_price_increment.display = function(value)
  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
cme_futures_mdp3_sbe_v1_9.min_price_increment.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment
cme_futures_mdp3_sbe_v1_9.min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.min_price_increment.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.min_price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future = {}

-- Calculate size of: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_9.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_9.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.underlying_product.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_9.asset.size

  index = index + cme_futures_mdp3_sbe_v1_9.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_9.maturity_month_year.size

  index = index + cme_futures_mdp3_sbe_v1_9.currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.settl_currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_price_increment.size

  index = index + cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.main_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.sub_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.price_display_format.size

  index = index + cme_futures_mdp3_sbe_v1_9.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.settl_price_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.open_interest_qty.size

  index = index + cme_futures_mdp3_sbe_v1_9.cleared_volume.size

  index = index + cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.decay_quantity.size

  index = index + cme_futures_mdp3_sbe_v1_9.decay_start_date.size

  index = index + cme_futures_mdp3_sbe_v1_9.original_contract_size.size

  index = index + cme_futures_mdp3_sbe_v1_9.contract_multiplier.size

  index = index + cme_futures_mdp3_sbe_v1_9.contract_multiplier_unit.size

  index = index + cme_futures_mdp3_sbe_v1_9.flow_schedule_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_9.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_9.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_9.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_9.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_9.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_9.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_9.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_9.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_9.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_9.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_9.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_9.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_9.cfi_code.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_9.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_9.currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_9.settl_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_9.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_9.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_9.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index, min_price_increment = cme_futures_mdp3_sbe_v1_9.min_price_increment.dissect(buffer, index, packet, parent)

  -- Display Factor Decimal 9: 8 Byte Signed Fixed Width Integer
  index, display_factor_decimal_9 = cme_futures_mdp3_sbe_v1_9.display_factor_decimal_9.dissect(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_9.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_9.sub_fraction.dissect(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_9.price_display_format.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_9.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty Decimal 9 Null: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_decimal_9_null = cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Trading Reference Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_9.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_9.cleared_volume.dissect(buffer, index, packet, parent)

  -- High Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Low Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Max Price Variation Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Decay Quantity: 4 Byte Signed Fixed Width Integer Nullable
  index, decay_quantity = cme_futures_mdp3_sbe_v1_9.decay_quantity.dissect(buffer, index, packet, parent)

  -- Decay Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, decay_start_date = cme_futures_mdp3_sbe_v1_9.decay_start_date.dissect(buffer, index, packet, parent)

  -- Original Contract Size: 4 Byte Signed Fixed Width Integer Nullable
  index, original_contract_size = cme_futures_mdp3_sbe_v1_9.original_contract_size.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: 4 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier = cme_futures_mdp3_sbe_v1_9.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Contract Multiplier Unit: 1 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier_unit = cme_futures_mdp3_sbe_v1_9.contract_multiplier_unit.dissect(buffer, index, packet, parent)

  -- Flow Schedule Type: 1 Byte Signed Fixed Width Integer Nullable
  index, flow_schedule_type = cme_futures_mdp3_sbe_v1_9.flow_schedule_type.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_9.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_9.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_future then
    local length = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_future, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future.fields(buffer, offset, packet, parent)
end

-- Md Entry Type Book
cme_futures_mdp3_sbe_v1_9.md_entry_type_book = {}

-- Size Of: Md Entry Type Book
cme_futures_mdp3_sbe_v1_9.md_entry_type_book.size = 1

-- Display: Md Entry Type Book
cme_futures_mdp3_sbe_v1_9.md_entry_type_book.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type Book: No Value"
  end

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
cme_futures_mdp3_sbe_v1_9.md_entry_type_book.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_entry_type_book.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_9.md_entry_type_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_book, range, value, display)

  return offset + length, value
end

-- Md Display Qty
cme_futures_mdp3_sbe_v1_9.md_display_qty = {}

-- Size Of: Md Display Qty
cme_futures_mdp3_sbe_v1_9.md_display_qty.size = 4

-- Display: Md Display Qty
cme_futures_mdp3_sbe_v1_9.md_display_qty.display = function(value)
  return "Md Display Qty: "..value
end

-- Dissect: Md Display Qty
cme_futures_mdp3_sbe_v1_9.md_display_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_display_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.md_display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_display_qty, range, value, display)

  return offset + length, value
end

-- Md Entry Px
cme_futures_mdp3_sbe_v1_9.md_entry_px = {}

-- Size Of: Md Entry Px
cme_futures_mdp3_sbe_v1_9.md_entry_px.size = 8

-- Display: Md Entry Px
cme_futures_mdp3_sbe_v1_9.md_entry_px.display = function(value)
  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
cme_futures_mdp3_sbe_v1_9.md_entry_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Md Entry Px
cme_futures_mdp3_sbe_v1_9.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.md_entry_px.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.md_entry_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Md Order Priority
cme_futures_mdp3_sbe_v1_9.md_order_priority = {}

-- Size Of: Md Order Priority
cme_futures_mdp3_sbe_v1_9.md_order_priority.size = 8

-- Display: Md Order Priority
cme_futures_mdp3_sbe_v1_9.md_order_priority.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Order Priority: No Value"
  end

  return "Md Order Priority: "..value
end

-- Dissect: Md Order Priority
cme_futures_mdp3_sbe_v1_9.md_order_priority.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_order_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_9.md_order_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_order_priority, range, value, display)

  return offset + length, value
end

-- Order Id
cme_futures_mdp3_sbe_v1_9.order_id = {}

-- Size Of: Order Id
cme_futures_mdp3_sbe_v1_9.order_id.size = 8

-- Display: Order Id
cme_futures_mdp3_sbe_v1_9.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cme_futures_mdp3_sbe_v1_9.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_9.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.order_id, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Order Book 53 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_group = {}

-- Size Of: Snapshot Full Refresh Order Book 53 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_group.size =
  cme_futures_mdp3_sbe_v1_9.order_id.size + 
  cme_futures_mdp3_sbe_v1_9.md_order_priority.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_9.md_display_qty.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_book.size;

-- Display: Snapshot Full Refresh Order Book 53 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book 53 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_order_book_53_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Order Book 53 Group Index
  if snapshot_full_refresh_order_book_53_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53_group_index, snapshot_full_refresh_order_book_53_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_9.order_id.dissect(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = cme_futures_mdp3_sbe_v1_9.md_order_priority.dissect(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_9.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Display Qty: 4 Byte Signed Fixed Width Integer
  index, md_display_qty = cme_futures_mdp3_sbe_v1_9.md_display_qty.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_9.md_entry_type_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book 53 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_order_book_53_group_index)
  if show.snapshot_full_refresh_order_book_53_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_order_book_53_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_order_book_53_group_index)
  end
end

-- Snapshot Full Refresh Order Book 53 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_groups = {}

-- Calculate size of: Snapshot Full Refresh Order Book 53 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local snapshot_full_refresh_order_book_53_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_order_book_53_group_count * 29

  return index
end

-- Display: Snapshot Full Refresh Order Book 53 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book 53 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Order Book 53 Group
  for snapshot_full_refresh_order_book_53_group_index = 1, num_in_group do
    index, snapshot_full_refresh_order_book_53_group = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_order_book_53_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Order Book 53 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book_53_groups then
    local length = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_53_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_groups.fields(buffer, offset, packet, parent)
end

-- Transact Time
cme_futures_mdp3_sbe_v1_9.transact_time = {}

-- Size Of: Transact Time
cme_futures_mdp3_sbe_v1_9.transact_time.size = 8

-- Display: Transact Time
cme_futures_mdp3_sbe_v1_9.transact_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
cme_futures_mdp3_sbe_v1_9.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_9.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Current Chunk
cme_futures_mdp3_sbe_v1_9.current_chunk = {}

-- Size Of: Current Chunk
cme_futures_mdp3_sbe_v1_9.current_chunk.size = 4

-- Display: Current Chunk
cme_futures_mdp3_sbe_v1_9.current_chunk.display = function(value)
  return "Current Chunk: "..value
end

-- Dissect: Current Chunk
cme_futures_mdp3_sbe_v1_9.current_chunk.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.current_chunk.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.current_chunk.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.current_chunk, range, value, display)

  return offset + length, value
end

-- No Chunks
cme_futures_mdp3_sbe_v1_9.no_chunks = {}

-- Size Of: No Chunks
cme_futures_mdp3_sbe_v1_9.no_chunks.size = 4

-- Display: No Chunks
cme_futures_mdp3_sbe_v1_9.no_chunks.display = function(value)
  return "No Chunks: "..value
end

-- Dissect: No Chunks
cme_futures_mdp3_sbe_v1_9.no_chunks.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.no_chunks.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.no_chunks.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.no_chunks, range, value, display)

  return offset + length, value
end

-- Tot Num Reports
cme_futures_mdp3_sbe_v1_9.tot_num_reports = {}

-- Size Of: Tot Num Reports
cme_futures_mdp3_sbe_v1_9.tot_num_reports.size = 4

-- Display: Tot Num Reports
cme_futures_mdp3_sbe_v1_9.tot_num_reports.display = function(value)
  return "Tot Num Reports: "..value
end

-- Dissect: Tot Num Reports
cme_futures_mdp3_sbe_v1_9.tot_num_reports.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.tot_num_reports.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.tot_num_reports.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.tot_num_reports, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed = {}

-- Size Of: Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.size = 4

-- Display: Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.display = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book = {}

-- Calculate size of: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.size

  index = index + cme_futures_mdp3_sbe_v1_9.tot_num_reports.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.no_chunks.size

  index = index + cme_futures_mdp3_sbe_v1_9.current_chunk.size

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = cme_futures_mdp3_sbe_v1_9.tot_num_reports.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- No Chunks: 4 Byte Unsigned Fixed Width Integer
  index, no_chunks = cme_futures_mdp3_sbe_v1_9.no_chunks.dissect(buffer, index, packet, parent)

  -- Current Chunk: 4 Byte Unsigned Fixed Width Integer
  index, current_chunk = cme_futures_mdp3_sbe_v1_9.current_chunk.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh Order Book 53 Groups: Struct of 2 fields
  index, snapshot_full_refresh_order_book_53_groups = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_53_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book then
    local length = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book.fields(buffer, offset, packet, parent)
end

-- Md Entry Type
cme_futures_mdp3_sbe_v1_9.md_entry_type_ = {}

-- Size Of: Md Entry Type
cme_futures_mdp3_sbe_v1_9.md_entry_type_.size = 1

-- Display: Md Entry Type
cme_futures_mdp3_sbe_v1_9.md_entry_type_.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type : No Value"
  end

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
cme_futures_mdp3_sbe_v1_9.md_entry_type_.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_entry_type_.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_9.md_entry_type_.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_, range, value, display)

  return offset + length, value
end

-- Open Close Settl Flag
cme_futures_mdp3_sbe_v1_9.open_close_settl_flag = {}

-- Size Of: Open Close Settl Flag
cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.size = 1

-- Display: Open Close Settl Flag
cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.display = function(value)
  if value == 255 then
    return "Open Close Settl Flag: No Value"
  end
  if value == 0 then
    return "Open Close Settl Flag: Daily Open Price (0)"
  end
  if value == 5 then
    return "Open Close Settl Flag: Indicative Opening Price (5)"
  end

  return "Open Close Settl Flag: Unknown("..value..")"
end

-- Dissect: Open Close Settl Flag
cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Md Price Level Optional
cme_futures_mdp3_sbe_v1_9.md_price_level_optional = {}

-- Size Of: Md Price Level Optional
cme_futures_mdp3_sbe_v1_9.md_price_level_optional.size = 1

-- Display: Md Price Level Optional
cme_futures_mdp3_sbe_v1_9.md_price_level_optional.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Md Price Level Optional: No Value"
  end

  return "Md Price Level Optional: "..value
end

-- Dissect: Md Price Level Optional
cme_futures_mdp3_sbe_v1_9.md_price_level_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_price_level_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.md_price_level_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_price_level_optional, range, value, display)

  return offset + length, value
end

-- Number Of Orders Optional
cme_futures_mdp3_sbe_v1_9.number_of_orders_optional = {}

-- Size Of: Number Of Orders Optional
cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.size = 4

-- Display: Number Of Orders Optional
cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Number Of Orders Optional: No Value"
  end

  return "Number Of Orders Optional: "..value
end

-- Dissect: Number Of Orders Optional
cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.number_of_orders_optional, range, value, display)

  return offset + length, value
end

-- Md Entry Size Optional
cme_futures_mdp3_sbe_v1_9.md_entry_size_optional = {}

-- Size Of: Md Entry Size Optional
cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.size = 4

-- Display: Md Entry Size Optional
cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Size Optional: No Value"
  end

  return "Md Entry Size Optional: "..value
end

-- Dissect: Md Entry Size Optional
cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_size_optional, range, value, display)

  return offset + length, value
end

-- Md Entry Px Optional
cme_futures_mdp3_sbe_v1_9.md_entry_px_optional = {}

-- Size Of: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.size = 8

-- Display: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Md Entry Px Optional: No Value"
  end

  return "Md Entry Px Optional: "..value
end

-- Translate: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_px_optional, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh 52 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_group = {}

-- Size Of: Snapshot Full Refresh 52 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_price_level_optional.size + 
  cme_futures_mdp3_sbe_v1_9.trading_reference_date.size + 
  cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.size + 
  cme_futures_mdp3_sbe_v1_9.settl_price_type.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_.size;

-- Display: Snapshot Full Refresh 52 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh 52 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_52_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh 52 Group Index
  if snapshot_full_refresh_52_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52_group_index, snapshot_full_refresh_52_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Md Price Level Optional: 1 Byte Signed Fixed Width Integer Nullable
  index, md_price_level_optional = cme_futures_mdp3_sbe_v1_9.md_price_level_optional.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 17 values
  index, md_entry_type_ = cme_futures_mdp3_sbe_v1_9.md_entry_type_.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh 52 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_52_group_index)
  if show.snapshot_full_refresh_52_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_52_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_52_group_index)
  end
end

-- Snapshot Full Refresh 52 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_groups = {}

-- Calculate size of: Snapshot Full Refresh 52 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local snapshot_full_refresh_52_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_52_group_count * 22

  return index
end

-- Display: Snapshot Full Refresh 52 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh 52 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh 52 Group
  for snapshot_full_refresh_52_group_index = 1, num_in_group do
    index, snapshot_full_refresh_52_group = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_52_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh 52 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_52_groups then
    local length = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_52_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_groups.fields(buffer, offset, packet, parent)
end

-- Trade Date
cme_futures_mdp3_sbe_v1_9.trade_date = {}

-- Size Of: Trade Date
cme_futures_mdp3_sbe_v1_9.trade_date.size = 2

-- Display: Trade Date
cme_futures_mdp3_sbe_v1_9.trade_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_futures_mdp3_sbe_v1_9.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Rpt Seq
cme_futures_mdp3_sbe_v1_9.rpt_seq = {}

-- Size Of: Rpt Seq
cme_futures_mdp3_sbe_v1_9.rpt_seq.size = 4

-- Display: Rpt Seq
cme_futures_mdp3_sbe_v1_9.rpt_seq.display = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.rpt_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.rpt_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh = {}

-- Calculate size of: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.size

  index = index + cme_futures_mdp3_sbe_v1_9.tot_num_reports.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.rpt_seq.size

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.trade_date.size

  index = index + cme_futures_mdp3_sbe_v1_9.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.size

  index = index + cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = cme_futures_mdp3_sbe_v1_9.tot_num_reports.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_9.last_update_time.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_9.trade_date.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_9.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- High Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Low Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Max Price Variation Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh 52 Groups: Struct of 2 fields
  index, snapshot_full_refresh_52_groups = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_52_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh then
    local length = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh.fields(buffer, offset, packet, parent)
end

-- Padding 1
cme_futures_mdp3_sbe_v1_9.padding_1 = {}

-- Size Of: Padding 1
cme_futures_mdp3_sbe_v1_9.padding_1.size = 1

-- Display: Padding 1
cme_futures_mdp3_sbe_v1_9.padding_1.display = function(value)
  return "Padding 1: "..value
end

-- Dissect: Padding 1
cme_futures_mdp3_sbe_v1_9.padding_1.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_9.padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.padding_1, range, value, display)

  return offset + length, value
end

-- Md Entry Type Statistics
cme_futures_mdp3_sbe_v1_9.md_entry_type_statistics = {}

-- Size Of: Md Entry Type Statistics
cme_futures_mdp3_sbe_v1_9.md_entry_type_statistics.size = 1

-- Display: Md Entry Type Statistics
cme_futures_mdp3_sbe_v1_9.md_entry_type_statistics.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type Statistics: No Value"
  end

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
cme_futures_mdp3_sbe_v1_9.md_entry_type_statistics.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_entry_type_statistics.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_9.md_entry_type_statistics.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_statistics, range, value, display)

  return offset + length, value
end

-- Md Update Action
cme_futures_mdp3_sbe_v1_9.md_update_action = {}

-- Size Of: Md Update Action
cme_futures_mdp3_sbe_v1_9.md_update_action.size = 1

-- Display: Md Update Action
cme_futures_mdp3_sbe_v1_9.md_update_action.display = function(value)
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
cme_futures_mdp3_sbe_v1_9.md_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.md_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Session Statistics 51 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_group = {}

-- Size Of: M D Incremental Refresh Session Statistics 51 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_statistics.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_9.padding_1.size;

-- Display: M D Incremental Refresh Session Statistics 51 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics 51 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_51_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Session Statistics 51 Group Index
  if m_d_incremental_refresh_session_statistics_51_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_51_group_index, m_d_incremental_refresh_session_statistics_51_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_9.md_entry_px.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Statistics: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_statistics = cme_futures_mdp3_sbe_v1_9.md_entry_type_statistics.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = cme_futures_mdp3_sbe_v1_9.padding_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics 51 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_51_group_index)
  if show.m_d_incremental_refresh_session_statistics_51_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_51_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_51_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_51_group_index)
  end
end

-- M D Incremental Refresh Session Statistics 51 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_groups = {}

-- Calculate size of: M D Incremental Refresh Session Statistics 51 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_session_statistics_51_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_session_statistics_51_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Session Statistics 51 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics 51 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Session Statistics 51 Group
  for m_d_incremental_refresh_session_statistics_51_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_session_statistics_51_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_session_statistics_51_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics 51 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_session_statistics_51_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_51_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_groups.fields(buffer, offset, packet, parent)
end

-- Padding 2
cme_futures_mdp3_sbe_v1_9.padding_2 = {}

-- Size Of: Padding 2
cme_futures_mdp3_sbe_v1_9.padding_2.size = 2

-- Display: Padding 2
cme_futures_mdp3_sbe_v1_9.padding_2.display = function(value)
  return "Padding 2: "..value
end

-- Dissect: Padding 2
cme_futures_mdp3_sbe_v1_9.padding_2.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_9.padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.padding_2, range, value, display)

  return offset + length, value
end

-- Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics = {}

-- Calculate size of: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Session Statistics 51 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_session_statistics_51_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_51_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_session_statistics then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_session_statistics, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Limits Banding 50 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_group = {}

-- Size Of: M D Incremental Refresh Limits Banding 50 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_group.size =
  cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.size + 
  cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.size + 
  cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size;

-- Display: M D Incremental Refresh Limits Banding 50 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding 50 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_50_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Limits Banding 50 Group Index
  if m_d_incremental_refresh_limits_banding_50_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_50_group_index, m_d_incremental_refresh_limits_banding_50_group_index)
    iteration:set_generated()
  end

  -- High Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Low Limit Price Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Max Price Variation Pricenul L 9: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenul_l_9 = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenul_l_9.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding 50 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_50_group_index)
  if show.m_d_incremental_refresh_limits_banding_50_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_50_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_50_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_50_group_index)
  end
end

-- M D Incremental Refresh Limits Banding 50 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_groups = {}

-- Calculate size of: M D Incremental Refresh Limits Banding 50 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_limits_banding_50_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_limits_banding_50_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Limits Banding 50 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding 50 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Limits Banding 50 Group
  for m_d_incremental_refresh_limits_banding_50_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_limits_banding_50_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_limits_banding_50_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding 50 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_limits_banding_50_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_50_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding = {}

-- Calculate size of: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Limits Banding 50 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_limits_banding_50_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_50_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_limits_banding then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_limits_banding, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding.fields(buffer, offset, packet, parent)
end

-- Padding 7
cme_futures_mdp3_sbe_v1_9.padding_7 = {}

-- Size Of: Padding 7
cme_futures_mdp3_sbe_v1_9.padding_7.size = 7

-- Display: Padding 7
cme_futures_mdp3_sbe_v1_9.padding_7.display = function(value)
  return "Padding 7: "..value
end

-- Dissect: Padding 7
cme_futures_mdp3_sbe_v1_9.padding_7.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.padding_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_9.padding_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.padding_7, range, value, display)

  return offset + length, value
end

-- Md Entry Type Daily Statistics
cme_futures_mdp3_sbe_v1_9.md_entry_type_daily_statistics = {}

-- Size Of: Md Entry Type Daily Statistics
cme_futures_mdp3_sbe_v1_9.md_entry_type_daily_statistics.size = 1

-- Display: Md Entry Type Daily Statistics
cme_futures_mdp3_sbe_v1_9.md_entry_type_daily_statistics.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type Daily Statistics: No Value"
  end

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
cme_futures_mdp3_sbe_v1_9.md_entry_type_daily_statistics.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_entry_type_daily_statistics.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_9.md_entry_type_daily_statistics.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_type_daily_statistics, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Daily Statistics 49 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_group = {}

-- Size Of: M D Incremental Refresh Daily Statistics 49 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_9.trading_reference_date.size + 
  cme_futures_mdp3_sbe_v1_9.settl_price_type.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_daily_statistics.size + 
  cme_futures_mdp3_sbe_v1_9.padding_7.size;

-- Display: M D Incremental Refresh Daily Statistics 49 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics 49 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_49_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Daily Statistics 49 Group Index
  if m_d_incremental_refresh_daily_statistics_49_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_49_group_index, m_d_incremental_refresh_daily_statistics_49_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Daily Statistics: 1 Byte Ascii String Enum with 4 values
  index, md_entry_type_daily_statistics = cme_futures_mdp3_sbe_v1_9.md_entry_type_daily_statistics.dissect(buffer, index, packet, parent)

  -- Padding 7: 7 Byte
  index, padding_7 = cme_futures_mdp3_sbe_v1_9.padding_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics 49 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_49_group_index)
  if show.m_d_incremental_refresh_daily_statistics_49_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_49_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_49_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_49_group_index)
  end
end

-- M D Incremental Refresh Daily Statistics 49 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_groups = {}

-- Calculate size of: M D Incremental Refresh Daily Statistics 49 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_daily_statistics_49_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_daily_statistics_49_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Daily Statistics 49 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics 49 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Daily Statistics 49 Group
  for m_d_incremental_refresh_daily_statistics_49_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_daily_statistics_49_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_daily_statistics_49_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics 49 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_daily_statistics_49_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_49_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics = {}

-- Calculate size of: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Daily Statistics 49 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_daily_statistics_49_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_49_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_daily_statistics then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_daily_statistics, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics.fields(buffer, offset, packet, parent)
end

-- Padding 4
cme_futures_mdp3_sbe_v1_9.padding_4 = {}

-- Size Of: Padding 4
cme_futures_mdp3_sbe_v1_9.padding_4.size = 4

-- Display: Padding 4
cme_futures_mdp3_sbe_v1_9.padding_4.display = function(value)
  return "Padding 4: "..value
end

-- Dissect: Padding 4
cme_futures_mdp3_sbe_v1_9.padding_4.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.padding_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_9.padding_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.padding_4, range, value, display)

  return offset + length, value
end

-- Last Qty
cme_futures_mdp3_sbe_v1_9.last_qty = {}

-- Size Of: Last Qty
cme_futures_mdp3_sbe_v1_9.last_qty.size = 4

-- Display: Last Qty
cme_futures_mdp3_sbe_v1_9.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
cme_futures_mdp3_sbe_v1_9.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.last_qty, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Trade Summary 48 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_group = {}

-- Size Of: M D Incremental Refresh Trade Summary 48 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_group.size =
  cme_futures_mdp3_sbe_v1_9.order_id.size + 
  cme_futures_mdp3_sbe_v1_9.last_qty.size + 
  cme_futures_mdp3_sbe_v1_9.padding_4.size;

-- Display: M D Incremental Refresh Trade Summary 48 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 48 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_48_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary 48 Order Group Index
  if m_d_incremental_refresh_trade_summary_48_order_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_order_group_index, m_d_incremental_refresh_trade_summary_48_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_9.order_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = cme_futures_mdp3_sbe_v1_9.last_qty.dissect(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = cme_futures_mdp3_sbe_v1_9.padding_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 48 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_48_order_group_index)
  if show.m_d_incremental_refresh_trade_summary_48_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_48_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_48_order_group_index)
  end
end

-- Padding 5
cme_futures_mdp3_sbe_v1_9.padding_5 = {}

-- Size Of: Padding 5
cme_futures_mdp3_sbe_v1_9.padding_5.size = 5

-- Display: Padding 5
cme_futures_mdp3_sbe_v1_9.padding_5.display = function(value)
  return "Padding 5: "..value
end

-- Dissect: Padding 5
cme_futures_mdp3_sbe_v1_9.padding_5.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.padding_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_9.padding_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.padding_5, range, value, display)

  return offset + length, value
end

-- Group Size 8 Byte
cme_futures_mdp3_sbe_v1_9.group_size_8_byte = {}

-- Size Of: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_9.group_size_8_byte.size =
  cme_futures_mdp3_sbe_v1_9.block_length.size + 
  cme_futures_mdp3_sbe_v1_9.padding_5.size + 
  cme_futures_mdp3_sbe_v1_9.num_in_group.size;

-- Display: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_9.group_size_8_byte.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_9.group_size_8_byte.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_mdp3_sbe_v1_9.block_length.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_futures_mdp3_sbe_v1_9.padding_5.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = cme_futures_mdp3_sbe_v1_9.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_9.group_size_8_byte.dissect = function(buffer, offset, packet, parent)
  if show.group_size_8_byte then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.group_size_8_byte, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.group_size_8_byte.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.group_size_8_byte.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.group_size_8_byte.fields(buffer, offset, packet, parent)
  end
end

-- M D Incremental Refresh Trade Summary 48 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_groups = {}

-- Calculate size of: M D Incremental Refresh Trade Summary 48 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size_8_byte.size

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_48_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_48_order_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Trade Summary 48 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 48 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_9.group_size_8_byte.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary 48 Order Group
  for m_d_incremental_refresh_trade_summary_48_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_48_order_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_48_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 48 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_48_order_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_groups.fields(buffer, offset, packet, parent)
end

-- Md Trade Entry Id
cme_futures_mdp3_sbe_v1_9.md_trade_entry_id = {}

-- Size Of: Md Trade Entry Id
cme_futures_mdp3_sbe_v1_9.md_trade_entry_id.size = 4

-- Display: Md Trade Entry Id
cme_futures_mdp3_sbe_v1_9.md_trade_entry_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Trade Entry Id: No Value"
  end

  return "Md Trade Entry Id: "..value
end

-- Dissect: Md Trade Entry Id
cme_futures_mdp3_sbe_v1_9.md_trade_entry_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_trade_entry_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.md_trade_entry_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_trade_entry_id, range, value, display)

  return offset + length, value
end

-- Aggressor Side
cme_futures_mdp3_sbe_v1_9.aggressor_side = {}

-- Size Of: Aggressor Side
cme_futures_mdp3_sbe_v1_9.aggressor_side.size = 1

-- Display: Aggressor Side
cme_futures_mdp3_sbe_v1_9.aggressor_side.display = function(value)
  if value == 255 then
    return "Aggressor Side: No Value"
  end
  if value == 0 then
    return "Aggressor Side: No Aggressor (0)"
  end
  if value == 1 then
    return "Aggressor Side: Buy (1)"
  end
  if value == 2 then
    return "Aggressor Side: Sell (2)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
cme_futures_mdp3_sbe_v1_9.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Number Of Orders
cme_futures_mdp3_sbe_v1_9.number_of_orders = {}

-- Size Of: Number Of Orders
cme_futures_mdp3_sbe_v1_9.number_of_orders.size = 4

-- Display: Number Of Orders
cme_futures_mdp3_sbe_v1_9.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
cme_futures_mdp3_sbe_v1_9.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Md Entry Size
cme_futures_mdp3_sbe_v1_9.md_entry_size = {}

-- Size Of: Md Entry Size
cme_futures_mdp3_sbe_v1_9.md_entry_size.size = 4

-- Display: Md Entry Size
cme_futures_mdp3_sbe_v1_9.md_entry_size.display = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cme_futures_mdp3_sbe_v1_9.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Trade Summary 48 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_group = {}

-- Size Of: M D Incremental Refresh Trade Summary 48 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_size.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_9.number_of_orders.size + 
  cme_futures_mdp3_sbe_v1_9.aggressor_side.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.md_trade_entry_id.size + 
  cme_futures_mdp3_sbe_v1_9.padding_2.size;

-- Display: M D Incremental Refresh Trade Summary 48 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 48 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_48_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary 48 Group Index
  if m_d_incremental_refresh_trade_summary_48_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_group_index, m_d_incremental_refresh_trade_summary_48_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_9.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = cme_futures_mdp3_sbe_v1_9.md_entry_size.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index, number_of_orders = cme_futures_mdp3_sbe_v1_9.number_of_orders.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_mdp3_sbe_v1_9.aggressor_side.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, md_trade_entry_id = cme_futures_mdp3_sbe_v1_9.md_trade_entry_id.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 48 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_48_group_index)
  if show.m_d_incremental_refresh_trade_summary_48_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_48_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_48_group_index)
  end
end

-- M D Incremental Refresh Trade Summary 48 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_groups = {}

-- Calculate size of: M D Incremental Refresh Trade Summary 48 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_48_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_48_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Trade Summary 48 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 48 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary 48 Group
  for m_d_incremental_refresh_trade_summary_48_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_48_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_48_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 48 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_48_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_48_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary = {}

-- Calculate size of: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary 48 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_48_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_groups.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary 48 Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_48_order_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_48_order_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_trade_summary, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary.fields(buffer, offset, packet, parent)
end

-- Padding 6
cme_futures_mdp3_sbe_v1_9.padding_6 = {}

-- Size Of: Padding 6
cme_futures_mdp3_sbe_v1_9.padding_6.size = 6

-- Display: Padding 6
cme_futures_mdp3_sbe_v1_9.padding_6.display = function(value)
  return "Padding 6: "..value
end

-- Dissect: Padding 6
cme_futures_mdp3_sbe_v1_9.padding_6.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.padding_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_9.padding_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.padding_6, range, value, display)

  return offset + length, value
end

-- Md Display Qty Optional
cme_futures_mdp3_sbe_v1_9.md_display_qty_optional = {}

-- Size Of: Md Display Qty Optional
cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.size = 4

-- Display: Md Display Qty Optional
cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Display Qty Optional: No Value"
  end

  return "Md Display Qty Optional: "..value
end

-- Dissect: Md Display Qty Optional
cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_display_qty_optional, range, value, display)

  return offset + length, value
end

-- Order Id Optional
cme_futures_mdp3_sbe_v1_9.order_id_optional = {}

-- Size Of: Order Id Optional
cme_futures_mdp3_sbe_v1_9.order_id_optional.size = 8

-- Display: Order Id Optional
cme_futures_mdp3_sbe_v1_9.order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
cme_futures_mdp3_sbe_v1_9.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_9.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Order Book 47 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_group = {}

-- Size Of: M D Incremental Refresh Order Book 47 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_group.size =
  cme_futures_mdp3_sbe_v1_9.order_id_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_order_priority.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_book.size + 
  cme_futures_mdp3_sbe_v1_9.padding_6.size;

-- Display: M D Incremental Refresh Order Book 47 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book 47 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_47_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Order Book 47 Group Index
  if m_d_incremental_refresh_order_book_47_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_47_group_index, m_d_incremental_refresh_order_book_47_group_index)
    iteration:set_generated()
  end

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = cme_futures_mdp3_sbe_v1_9.order_id_optional.dissect(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = cme_futures_mdp3_sbe_v1_9.md_order_priority.dissect(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_9.md_entry_type_book.dissect(buffer, index, packet, parent)

  -- Padding 6: 6 Byte
  index, padding_6 = cme_futures_mdp3_sbe_v1_9.padding_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Order Book 47 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_47_group_index)
  if show.m_d_incremental_refresh_order_book_47_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_47_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_47_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_47_group_index)
  end
end

-- M D Incremental Refresh Order Book 47 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_groups = {}

-- Calculate size of: M D Incremental Refresh Order Book 47 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_order_book_47_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_order_book_47_group_count * 40

  return index
end

-- Display: M D Incremental Refresh Order Book 47 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book 47 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Order Book 47 Group
  for m_d_incremental_refresh_order_book_47_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_order_book_47_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_order_book_47_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Order Book 47 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_order_book_47_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_47_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book = {}

-- Calculate size of: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Order Book 47 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_order_book_47_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_47_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_order_book then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_order_book, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book.fields(buffer, offset, packet, parent)
end

-- Order Update Action
cme_futures_mdp3_sbe_v1_9.order_update_action = {}

-- Size Of: Order Update Action
cme_futures_mdp3_sbe_v1_9.order_update_action.size = 1

-- Display: Order Update Action
cme_futures_mdp3_sbe_v1_9.order_update_action.display = function(value)
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
cme_futures_mdp3_sbe_v1_9.order_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.order_update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.order_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.order_update_action, range, value, display)

  return offset + length, value
end

-- Reference Id
cme_futures_mdp3_sbe_v1_9.reference_id = {}

-- Size Of: Reference Id
cme_futures_mdp3_sbe_v1_9.reference_id.size = 1

-- Display: Reference Id
cme_futures_mdp3_sbe_v1_9.reference_id.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Reference Id: No Value"
  end

  return "Reference Id: "..value
end

-- Dissect: Reference Id
cme_futures_mdp3_sbe_v1_9.reference_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.reference_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.reference_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.reference_id, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Book 46 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_group = {}

-- Size Of: M D Incremental Refresh Book 46 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_group.size =
  cme_futures_mdp3_sbe_v1_9.order_id.size + 
  cme_futures_mdp3_sbe_v1_9.md_order_priority.size + 
  cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.size + 
  cme_futures_mdp3_sbe_v1_9.reference_id.size + 
  cme_futures_mdp3_sbe_v1_9.order_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.padding_2.size;

-- Display: M D Incremental Refresh Book 46 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 46 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_46_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book 46 Order Group Index
  if m_d_incremental_refresh_book_46_order_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_order_group_index, m_d_incremental_refresh_book_46_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_9.order_id.dissect(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = cme_futures_mdp3_sbe_v1_9.md_order_priority.dissect(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.dissect(buffer, index, packet, parent)

  -- Reference Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, reference_id = cme_futures_mdp3_sbe_v1_9.reference_id.dissect(buffer, index, packet, parent)

  -- Order Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_update_action = cme_futures_mdp3_sbe_v1_9.order_update_action.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book 46 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_46_order_group_index)
  if show.m_d_incremental_refresh_book_46_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_46_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_46_order_group_index)
  end
end

-- M D Incremental Refresh Book 46 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_groups = {}

-- Calculate size of: M D Incremental Refresh Book 46 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size_8_byte.size

  -- Calculate field size from count
  local m_d_incremental_refresh_book_46_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_46_order_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Book 46 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 46 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_9.group_size_8_byte.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book 46 Order Group
  for m_d_incremental_refresh_book_46_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_46_order_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_book_46_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book 46 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_46_order_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_groups.fields(buffer, offset, packet, parent)
end

-- Md Price Level
cme_futures_mdp3_sbe_v1_9.md_price_level = {}

-- Size Of: Md Price Level
cme_futures_mdp3_sbe_v1_9.md_price_level.size = 1

-- Display: Md Price Level
cme_futures_mdp3_sbe_v1_9.md_price_level.display = function(value)
  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
cme_futures_mdp3_sbe_v1_9.md_price_level.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.md_price_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.md_price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Book 46 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_group = {}

-- Size Of: M D Incremental Refresh Book 46 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_price_level.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_book.size + 
  cme_futures_mdp3_sbe_v1_9.padding_5.size;

-- Display: M D Incremental Refresh Book 46 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 46 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_46_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book 46 Group Index
  if m_d_incremental_refresh_book_46_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_group_index, m_d_incremental_refresh_book_46_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = cme_futures_mdp3_sbe_v1_9.md_price_level.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_9.md_entry_type_book.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_futures_mdp3_sbe_v1_9.padding_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book 46 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_46_group_index)
  if show.m_d_incremental_refresh_book_46_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_46_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_46_group_index)
  end
end

-- M D Incremental Refresh Book 46 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_groups = {}

-- Calculate size of: M D Incremental Refresh Book 46 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_book_46_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_46_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Book 46 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 46 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book 46 Group
  for m_d_incremental_refresh_book_46_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_46_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_book_46_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book 46 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_46_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_46_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book = {}

-- Calculate size of: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Book 46 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_46_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_groups.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Book 46 Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_46_order_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_46_order_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_book, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book.fields(buffer, offset, packet, parent)
end

-- Snapshot Full Refresh Order Book 44 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_group = {}

-- Size Of: Snapshot Full Refresh Order Book 44 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_group.size =
  cme_futures_mdp3_sbe_v1_9.order_id.size + 
  cme_futures_mdp3_sbe_v1_9.md_order_priority.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_9.md_display_qty.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_book.size;

-- Display: Snapshot Full Refresh Order Book 44 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book 44 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_order_book_44_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Order Book 44 Group Index
  if snapshot_full_refresh_order_book_44_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44_group_index, snapshot_full_refresh_order_book_44_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_9.order_id.dissect(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = cme_futures_mdp3_sbe_v1_9.md_order_priority.dissect(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_9.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Display Qty: 4 Byte Signed Fixed Width Integer
  index, md_display_qty = cme_futures_mdp3_sbe_v1_9.md_display_qty.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_9.md_entry_type_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book 44 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_order_book_44_group_index)
  if show.snapshot_full_refresh_order_book_44_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_order_book_44_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_order_book_44_group_index)
  end
end

-- Snapshot Full Refresh Order Book 44 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_groups = {}

-- Calculate size of: Snapshot Full Refresh Order Book 44 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local snapshot_full_refresh_order_book_44_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_order_book_44_group_count * 29

  return index
end

-- Display: Snapshot Full Refresh Order Book 44 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book 44 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Order Book 44 Group
  for snapshot_full_refresh_order_book_44_group_index = 1, num_in_group do
    index, snapshot_full_refresh_order_book_44_group = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_order_book_44_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Order Book 44 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book_44_groups then
    local length = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_44_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_groups.fields(buffer, offset, packet, parent)
end

-- Snapshot Full Refresh Order Book Legacy
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_legacy = {}

-- Calculate size of: Snapshot Full Refresh Order Book Legacy
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.size

  index = index + cme_futures_mdp3_sbe_v1_9.tot_num_reports.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.no_chunks.size

  index = index + cme_futures_mdp3_sbe_v1_9.current_chunk.size

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Order Book Legacy
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book Legacy
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = cme_futures_mdp3_sbe_v1_9.tot_num_reports.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- No Chunks: 4 Byte Unsigned Fixed Width Integer
  index, no_chunks = cme_futures_mdp3_sbe_v1_9.no_chunks.dissect(buffer, index, packet, parent)

  -- Current Chunk: 4 Byte Unsigned Fixed Width Integer
  index, current_chunk = cme_futures_mdp3_sbe_v1_9.current_chunk.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh Order Book 44 Groups: Struct of 2 fields
  index, snapshot_full_refresh_order_book_44_groups = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_44_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book Legacy
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_order_book_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_legacy.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Order Book 43 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_group = {}

-- Size Of: M D Incremental Refresh Order Book 43 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_group.size =
  cme_futures_mdp3_sbe_v1_9.order_id_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_order_priority.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_book.size + 
  cme_futures_mdp3_sbe_v1_9.padding_6.size;

-- Display: M D Incremental Refresh Order Book 43 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book 43 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_43_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Order Book 43 Group Index
  if m_d_incremental_refresh_order_book_43_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_43_group_index, m_d_incremental_refresh_order_book_43_group_index)
    iteration:set_generated()
  end

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = cme_futures_mdp3_sbe_v1_9.order_id_optional.dissect(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = cme_futures_mdp3_sbe_v1_9.md_order_priority.dissect(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_9.md_entry_type_book.dissect(buffer, index, packet, parent)

  -- Padding 6: 6 Byte
  index, padding_6 = cme_futures_mdp3_sbe_v1_9.padding_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Order Book 43 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_43_group_index)
  if show.m_d_incremental_refresh_order_book_43_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_43_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_43_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_43_group_index)
  end
end

-- M D Incremental Refresh Order Book 43 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_groups = {}

-- Calculate size of: M D Incremental Refresh Order Book 43 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_order_book_43_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_order_book_43_group_count * 40

  return index
end

-- Display: M D Incremental Refresh Order Book 43 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book 43 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Order Book 43 Group
  for m_d_incremental_refresh_order_book_43_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_order_book_43_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_order_book_43_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Order Book 43 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_order_book_43_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_order_book_43_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Order Book Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book_legacy = {}

-- Calculate size of: Md Incremental Refresh Order Book Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Order Book Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Order Book Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Order Book 43 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_order_book_43_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_order_book_43_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Order Book Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_order_book_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_order_book_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book_legacy.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Trade Summary 42 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_group = {}

-- Size Of: M D Incremental Refresh Trade Summary 42 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_group.size =
  cme_futures_mdp3_sbe_v1_9.order_id.size + 
  cme_futures_mdp3_sbe_v1_9.last_qty.size + 
  cme_futures_mdp3_sbe_v1_9.padding_4.size;

-- Display: M D Incremental Refresh Trade Summary 42 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 42 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_42_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary 42 Order Group Index
  if m_d_incremental_refresh_trade_summary_42_order_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_order_group_index, m_d_incremental_refresh_trade_summary_42_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_9.order_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = cme_futures_mdp3_sbe_v1_9.last_qty.dissect(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = cme_futures_mdp3_sbe_v1_9.padding_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 42 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_42_order_group_index)
  if show.m_d_incremental_refresh_trade_summary_42_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_42_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_42_order_group_index)
  end
end

-- M D Incremental Refresh Trade Summary 42 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_groups = {}

-- Calculate size of: M D Incremental Refresh Trade Summary 42 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size_8_byte.size

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_42_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_42_order_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Trade Summary 42 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 42 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_9.group_size_8_byte.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary 42 Order Group
  for m_d_incremental_refresh_trade_summary_42_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_42_order_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_42_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 42 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_42_order_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_groups.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Trade Summary 42 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_group = {}

-- Size Of: M D Incremental Refresh Trade Summary 42 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_size.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_9.aggressor_side.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.md_trade_entry_id.size + 
  cme_futures_mdp3_sbe_v1_9.padding_2.size;

-- Display: M D Incremental Refresh Trade Summary 42 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 42 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_42_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary 42 Group Index
  if m_d_incremental_refresh_trade_summary_42_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_group_index, m_d_incremental_refresh_trade_summary_42_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_9.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = cme_futures_mdp3_sbe_v1_9.md_entry_size.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_mdp3_sbe_v1_9.aggressor_side.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, md_trade_entry_id = cme_futures_mdp3_sbe_v1_9.md_trade_entry_id.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 42 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_42_group_index)
  if show.m_d_incremental_refresh_trade_summary_42_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_42_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_42_group_index)
  end
end

-- M D Incremental Refresh Trade Summary 42 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_groups = {}

-- Calculate size of: M D Incremental Refresh Trade Summary 42 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_42_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_42_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Trade Summary 42 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary 42 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary 42 Group
  for m_d_incremental_refresh_trade_summary_42_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_42_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_42_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary 42 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_42_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_trade_summary_42_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Trade Summary Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary_legacy = {}

-- Calculate size of: Md Incremental Refresh Trade Summary Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Summary Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Summary Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary 42 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_42_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_groups.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary 42 Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_42_order_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_trade_summary_42_order_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Summary Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_trade_summary_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary_legacy.fields(buffer, offset, packet, parent)
end

-- High Limit Price Pricenull
cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull = {}

-- Size Of: High Limit Price Pricenull
cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.size = 8

-- Display: High Limit Price Pricenull
cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High Limit Price Pricenull: No Value"
  end

  return "High Limit Price Pricenull: "..value
end

-- Translate: High Limit Price Pricenull
cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: High Limit Price Pricenull
cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.high_limit_price_pricenull, range, value, display)

  return offset + length, value
end

-- Low Limit Price Pricenull
cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull = {}

-- Size Of: Low Limit Price Pricenull
cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.size = 8

-- Display: Low Limit Price Pricenull
cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low Limit Price Pricenull: No Value"
  end

  return "Low Limit Price Pricenull: "..value
end

-- Translate: Low Limit Price Pricenull
cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Low Limit Price Pricenull
cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.low_limit_price_pricenull, range, value, display)

  return offset + length, value
end

-- Trading Reference Price Pricenull
cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull = {}

-- Size Of: Trading Reference Price Pricenull
cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.size = 8

-- Display: Trading Reference Price Pricenull
cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Trading Reference Price Pricenull: No Value"
  end

  return "Trading Reference Price Pricenull: "..value
end

-- Translate: Trading Reference Price Pricenull
cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Trading Reference Price Pricenull
cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.trading_reference_price_pricenull, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Qty Pricenull
cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull = {}

-- Size Of: Unit Of Measure Qty Pricenull
cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.size = 8

-- Display: Unit Of Measure Qty Pricenull
cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Unit Of Measure Qty Pricenull: No Value"
  end

  return "Unit Of Measure Qty Pricenull: "..value
end

-- Translate: Unit Of Measure Qty Pricenull
cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Unit Of Measure Qty Pricenull
cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.unit_of_measure_qty_pricenull, range, value, display)

  return offset + length, value
end

-- Display Factor Float
cme_futures_mdp3_sbe_v1_9.display_factor_float = {}

-- Size Of: Display Factor Float
cme_futures_mdp3_sbe_v1_9.display_factor_float.size = 8

-- Display: Display Factor Float
cme_futures_mdp3_sbe_v1_9.display_factor_float.display = function(value)
  return "Display Factor Float: "..value
end

-- Translate: Display Factor Float
cme_futures_mdp3_sbe_v1_9.display_factor_float.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Display Factor Float
cme_futures_mdp3_sbe_v1_9.display_factor_float.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.display_factor_float.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.display_factor_float.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.display_factor_float.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.display_factor_float, range, value, display)

  return offset + length, value
end

-- Min Price Increment Amount Pricenull
cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull = {}

-- Size Of: Min Price Increment Amount Pricenull
cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.size = 8

-- Display: Min Price Increment Amount Pricenull
cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Amount Pricenull: No Value"
  end

  return "Min Price Increment Amount Pricenull: "..value
end

-- Translate: Min Price Increment Amount Pricenull
cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Min Price Increment Amount Pricenull
cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_amount_pricenull, range, value, display)

  return offset + length, value
end

-- Min Price Increment Pricenull
cme_futures_mdp3_sbe_v1_9.min_price_increment_pricenull = {}

-- Size Of: Min Price Increment Pricenull
cme_futures_mdp3_sbe_v1_9.min_price_increment_pricenull.size = 8

-- Display: Min Price Increment Pricenull
cme_futures_mdp3_sbe_v1_9.min_price_increment_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Pricenull: No Value"
  end

  return "Min Price Increment Pricenull: "..value
end

-- Translate: Min Price Increment Pricenull
cme_futures_mdp3_sbe_v1_9.min_price_increment_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Min Price Increment Pricenull
cme_futures_mdp3_sbe_v1_9.min_price_increment_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.min_price_increment_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.min_price_increment_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.min_price_increment_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_pricenull, range, value, display)

  return offset + length, value
end

-- Min Cab Price Pricenull
cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenull = {}

-- Size Of: Min Cab Price Pricenull
cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenull.size = 8

-- Display: Min Cab Price Pricenull
cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Cab Price Pricenull: No Value"
  end

  return "Min Cab Price Pricenull: "..value
end

-- Translate: Min Cab Price Pricenull
cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Min Cab Price Pricenull
cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.min_cab_price_pricenull, range, value, display)

  return offset + length, value
end

-- Strike Price Pricenull
cme_futures_mdp3_sbe_v1_9.strike_price_pricenull = {}

-- Size Of: Strike Price Pricenull
cme_futures_mdp3_sbe_v1_9.strike_price_pricenull.size = 8

-- Display: Strike Price Pricenull
cme_futures_mdp3_sbe_v1_9.strike_price_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Strike Price Pricenull: No Value"
  end

  return "Strike Price Pricenull: "..value
end

-- Translate: Strike Price Pricenull
cme_futures_mdp3_sbe_v1_9.strike_price_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Strike Price Pricenull
cme_futures_mdp3_sbe_v1_9.strike_price_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.strike_price_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.strike_price_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.strike_price_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.strike_price_pricenull, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Option Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option_legacy = {}

-- Calculate size of: Md Instrument Definition Option Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_9.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_9.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.underlying_product.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_9.asset.size

  index = index + cme_futures_mdp3_sbe_v1_9.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_9.put_or_call.size

  index = index + cme_futures_mdp3_sbe_v1_9.maturity_month_year.size

  index = index + cme_futures_mdp3_sbe_v1_9.currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.strike_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.strike_currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.settl_currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_price_increment_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.display_factor_float.size

  index = index + cme_futures_mdp3_sbe_v1_9.tick_rule.size

  index = index + cme_futures_mdp3_sbe_v1_9.main_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.sub_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.price_display_format.size

  index = index + cme_futures_mdp3_sbe_v1_9.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.settl_price_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.cleared_volume.size

  index = index + cme_futures_mdp3_sbe_v1_9.open_interest_qty.size

  index = index + cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_9.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.underlyings_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.related_instruments_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Option Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Option Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_9.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_9.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_9.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_9.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_9.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_9.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_9.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_9.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_9.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_9.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_9.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_9.cfi_code.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = cme_futures_mdp3_sbe_v1_9.put_or_call.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_9.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_9.currency.dissect(buffer, index, packet, parent)

  -- Strike Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price_pricenull = cme_futures_mdp3_sbe_v1_9.strike_price_pricenull.dissect(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String
  index, strike_currency = cme_futures_mdp3_sbe_v1_9.strike_currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_9.settl_currency.dissect(buffer, index, packet, parent)

  -- Min Cab Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, min_cab_price_pricenull = cme_futures_mdp3_sbe_v1_9.min_cab_price_pricenull.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_9.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_9.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_9.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_pricenull = cme_futures_mdp3_sbe_v1_9.min_price_increment_pricenull.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount_pricenull = cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.dissect(buffer, index, packet, parent)

  -- Display Factor Float: 8 Byte Signed Fixed Width Integer
  index, display_factor_float = cme_futures_mdp3_sbe_v1_9.display_factor_float.dissect(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = cme_futures_mdp3_sbe_v1_9.tick_rule.dissect(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_9.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_9.sub_fraction.dissect(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_9.price_display_format.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_9.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_pricenull = cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.dissect(buffer, index, packet, parent)

  -- Trading Reference Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenull = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_9.cleared_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_9.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Low Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenull = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.dissect(buffer, index, packet, parent)

  -- High Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenull = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_9.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_9.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index, underlyings_groups = cme_futures_mdp3_sbe_v1_9.underlyings_groups.dissect(buffer, index, packet, parent)

  -- Related Instruments Groups: Struct of 2 fields
  index, related_instruments_groups = cme_futures_mdp3_sbe_v1_9.related_instruments_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Option Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_option_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_option_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option_legacy.fields(buffer, offset, packet, parent)
end

-- Side
cme_futures_mdp3_sbe_v1_9.side = {}

-- Size Of: Side
cme_futures_mdp3_sbe_v1_9.side.size = 1

-- Display: Side
cme_futures_mdp3_sbe_v1_9.side.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Side: No Value"
  end

  return "Side: "..value
end

-- Dissect: Side
cme_futures_mdp3_sbe_v1_9.side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.side, range, value, display)

  return offset + length, value
end

-- Quote Type
cme_futures_mdp3_sbe_v1_9.quote_type = {}

-- Size Of: Quote Type
cme_futures_mdp3_sbe_v1_9.quote_type.size = 1

-- Display: Quote Type
cme_futures_mdp3_sbe_v1_9.quote_type.display = function(value)
  return "Quote Type: "..value
end

-- Dissect: Quote Type
cme_futures_mdp3_sbe_v1_9.quote_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.quote_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.quote_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Order Qty
cme_futures_mdp3_sbe_v1_9.order_qty = {}

-- Size Of: Order Qty
cme_futures_mdp3_sbe_v1_9.order_qty.size = 4

-- Display: Order Qty
cme_futures_mdp3_sbe_v1_9.order_qty.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty
cme_futures_mdp3_sbe_v1_9.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Related Sym Group
cme_futures_mdp3_sbe_v1_9.related_sym_group = {}

-- Size Of: Related Sym Group
cme_futures_mdp3_sbe_v1_9.related_sym_group.size =
  cme_futures_mdp3_sbe_v1_9.symbol.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.order_qty.size + 
  cme_futures_mdp3_sbe_v1_9.quote_type.size + 
  cme_futures_mdp3_sbe_v1_9.side.size + 
  cme_futures_mdp3_sbe_v1_9.padding_2.size;

-- Display: Related Sym Group
cme_futures_mdp3_sbe_v1_9.related_sym_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Group
cme_futures_mdp3_sbe_v1_9.related_sym_group.fields = function(buffer, offset, packet, parent, related_sym_group_index)
  local index = offset

  -- Implicit Related Sym Group Index
  if related_sym_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.related_sym_group_index, related_sym_group_index)
    iteration:set_generated()
  end

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_9.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = cme_futures_mdp3_sbe_v1_9.order_qty.dissect(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Signed Fixed Width Integer
  index, quote_type = cme_futures_mdp3_sbe_v1_9.quote_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Signed Fixed Width Integer Nullable
  index, side = cme_futures_mdp3_sbe_v1_9.side.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
cme_futures_mdp3_sbe_v1_9.related_sym_group.dissect = function(buffer, offset, packet, parent, related_sym_group_index)
  if show.related_sym_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.related_sym_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.related_sym_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
  end
end

-- Related Sym Groups
cme_futures_mdp3_sbe_v1_9.related_sym_groups = {}

-- Calculate size of: Related Sym Groups
cme_futures_mdp3_sbe_v1_9.related_sym_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_sym_group_count * 32

  return index
end

-- Display: Related Sym Groups
cme_futures_mdp3_sbe_v1_9.related_sym_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Groups
cme_futures_mdp3_sbe_v1_9.related_sym_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Related Sym Group
  for related_sym_group_index = 1, num_in_group do
    index, related_sym_group = cme_futures_mdp3_sbe_v1_9.related_sym_group.dissect(buffer, index, packet, parent, related_sym_group_index)
  end

  return index
end

-- Dissect: Related Sym Groups
cme_futures_mdp3_sbe_v1_9.related_sym_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_sym_groups then
    local length = cme_futures_mdp3_sbe_v1_9.related_sym_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.related_sym_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.related_sym_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.related_sym_groups.fields(buffer, offset, packet, parent)
end

-- Padding 3
cme_futures_mdp3_sbe_v1_9.padding_3 = {}

-- Size Of: Padding 3
cme_futures_mdp3_sbe_v1_9.padding_3.size = 3

-- Display: Padding 3
cme_futures_mdp3_sbe_v1_9.padding_3.display = function(value)
  return "Padding 3: "..value
end

-- Dissect: Padding 3
cme_futures_mdp3_sbe_v1_9.padding_3.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_9.padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.padding_3, range, value, display)

  return offset + length, value
end

-- Quote Req Id
cme_futures_mdp3_sbe_v1_9.quote_req_id = {}

-- Size Of: Quote Req Id
cme_futures_mdp3_sbe_v1_9.quote_req_id.size = 23

-- Display: Quote Req Id
cme_futures_mdp3_sbe_v1_9.quote_req_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Req Id: No Value"
  end

  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
cme_futures_mdp3_sbe_v1_9.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.quote_req_id.size
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

  local display = cme_futures_mdp3_sbe_v1_9.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Quote Request
cme_futures_mdp3_sbe_v1_9.quote_request = {}

-- Calculate size of: Quote Request
cme_futures_mdp3_sbe_v1_9.quote_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.quote_req_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_3.size

  index = index + cme_futures_mdp3_sbe_v1_9.related_sym_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Request
cme_futures_mdp3_sbe_v1_9.quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request
cme_futures_mdp3_sbe_v1_9.quote_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 23 Byte Ascii String
  index, quote_req_id = cme_futures_mdp3_sbe_v1_9.quote_req_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = cme_futures_mdp3_sbe_v1_9.padding_3.dissect(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = cme_futures_mdp3_sbe_v1_9.related_sym_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
cme_futures_mdp3_sbe_v1_9.quote_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request then
    local length = cme_futures_mdp3_sbe_v1_9.quote_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.quote_request.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.quote_request, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.quote_request.fields(buffer, offset, packet, parent)
end

-- Snapshot Full Refresh 38 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_group = {}

-- Size Of: Snapshot Full Refresh 38 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_price_level_optional.size + 
  cme_futures_mdp3_sbe_v1_9.trading_reference_date.size + 
  cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.size + 
  cme_futures_mdp3_sbe_v1_9.settl_price_type.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_.size;

-- Display: Snapshot Full Refresh 38 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh 38 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_38_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh 38 Group Index
  if snapshot_full_refresh_38_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38_group_index, snapshot_full_refresh_38_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Md Price Level Optional: 1 Byte Signed Fixed Width Integer Nullable
  index, md_price_level_optional = cme_futures_mdp3_sbe_v1_9.md_price_level_optional.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 17 values
  index, md_entry_type_ = cme_futures_mdp3_sbe_v1_9.md_entry_type_.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh 38 Group
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_38_group_index)
  if show.snapshot_full_refresh_38_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_38_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_38_group_index)
  end
end

-- Snapshot Full Refresh 38 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_groups = {}

-- Calculate size of: Snapshot Full Refresh 38 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local snapshot_full_refresh_38_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_38_group_count * 22

  return index
end

-- Display: Snapshot Full Refresh 38 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh 38 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh 38 Group
  for snapshot_full_refresh_38_group_index = 1, num_in_group do
    index, snapshot_full_refresh_38_group = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_38_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh 38 Groups
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_38_groups then
    local length = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_38_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_groups.fields(buffer, offset, packet, parent)
end

-- Max Price Variation Pricenull
cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull = {}

-- Size Of: Max Price Variation Pricenull
cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.size = 8

-- Display: Max Price Variation Pricenull
cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Max Price Variation Pricenull: No Value"
  end

  return "Max Price Variation Pricenull: "..value
end

-- Translate: Max Price Variation Pricenull
cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Max Price Variation Pricenull
cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.max_price_variation_pricenull, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Legacy
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_legacy = {}

-- Calculate size of: Snapshot Full Refresh Legacy
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.size

  index = index + cme_futures_mdp3_sbe_v1_9.tot_num_reports.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.rpt_seq.size

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.trade_date.size

  index = index + cme_futures_mdp3_sbe_v1_9.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Legacy
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Legacy
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = cme_futures_mdp3_sbe_v1_9.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = cme_futures_mdp3_sbe_v1_9.tot_num_reports.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_9.last_update_time.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_9.trade_date.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_9.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- High Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenull = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.dissect(buffer, index, packet, parent)

  -- Low Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenull = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.dissect(buffer, index, packet, parent)

  -- Max Price Variation Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenull = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh 38 Groups: Struct of 2 fields
  index, snapshot_full_refresh_38_groups = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_38_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Legacy
cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.snapshot_full_refresh_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_legacy.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_group = {}

-- Size Of: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_size.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.padding_3.size;

-- Display: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Volume Group Index
  if m_d_incremental_refresh_volume_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_volume_group_index, m_d_incremental_refresh_volume_group_index)
    iteration:set_generated()
  end

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = cme_futures_mdp3_sbe_v1_9.md_entry_size.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = cme_futures_mdp3_sbe_v1_9.padding_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
  if show.m_d_incremental_refresh_volume_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_volume_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
  end
end

-- M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_groups = {}

-- Calculate size of: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_volume_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_volume_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Volume Group
  for m_d_incremental_refresh_volume_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_volume_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_volume_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_volume_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_volume_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_volume = {}

-- Calculate size of: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_volume.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_volume.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Volume Groups: Struct of 2 fields
  index, m_d_incremental_refresh_volume_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_volume_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_volume.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_volume then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_volume.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_volume.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_volume, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_volume.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Session Statistics 35 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_group = {}

-- Size Of: M D Incremental Refresh Session Statistics 35 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_statistics.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_9.padding_1.size;

-- Display: M D Incremental Refresh Session Statistics 35 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics 35 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_35_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Session Statistics 35 Group Index
  if m_d_incremental_refresh_session_statistics_35_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_35_group_index, m_d_incremental_refresh_session_statistics_35_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_9.md_entry_px.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_9.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Statistics: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_statistics = cme_futures_mdp3_sbe_v1_9.md_entry_type_statistics.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = cme_futures_mdp3_sbe_v1_9.padding_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics 35 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_35_group_index)
  if show.m_d_incremental_refresh_session_statistics_35_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_35_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_35_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_35_group_index)
  end
end

-- M D Incremental Refresh Session Statistics 35 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_groups = {}

-- Calculate size of: M D Incremental Refresh Session Statistics 35 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_session_statistics_35_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_session_statistics_35_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Session Statistics 35 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics 35 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Session Statistics 35 Group
  for m_d_incremental_refresh_session_statistics_35_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_session_statistics_35_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_session_statistics_35_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics 35 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_session_statistics_35_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_session_statistics_35_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Session Statistics Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics_legacy = {}

-- Calculate size of: Md Incremental Refresh Session Statistics Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Session Statistics Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Session Statistics Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Session Statistics 35 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_session_statistics_35_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_session_statistics_35_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Session Statistics Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_session_statistics_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_session_statistics_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics_legacy.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Limits Banding 34 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_group = {}

-- Size Of: M D Incremental Refresh Limits Banding 34 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_group.size =
  cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.size + 
  cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.size + 
  cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size;

-- Display: M D Incremental Refresh Limits Banding 34 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding 34 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_34_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Limits Banding 34 Group Index
  if m_d_incremental_refresh_limits_banding_34_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_34_group_index, m_d_incremental_refresh_limits_banding_34_group_index)
    iteration:set_generated()
  end

  -- High Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenull = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.dissect(buffer, index, packet, parent)

  -- Low Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenull = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.dissect(buffer, index, packet, parent)

  -- Max Price Variation Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenull = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding 34 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_34_group_index)
  if show.m_d_incremental_refresh_limits_banding_34_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_34_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_34_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_34_group_index)
  end
end

-- M D Incremental Refresh Limits Banding 34 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_groups = {}

-- Calculate size of: M D Incremental Refresh Limits Banding 34 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_limits_banding_34_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_limits_banding_34_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Limits Banding 34 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding 34 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Limits Banding 34 Group
  for m_d_incremental_refresh_limits_banding_34_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_limits_banding_34_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_limits_banding_34_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding 34 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_limits_banding_34_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_limits_banding_34_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Limits Banding Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding_legacy = {}

-- Calculate size of: Md Incremental Refresh Limits Banding Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Limits Banding Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Limits Banding Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Limits Banding 34 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_limits_banding_34_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_limits_banding_34_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Limits Banding Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_limits_banding_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_limits_banding_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding_legacy.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Daily Statistics 33 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_group = {}

-- Size Of: M D Incremental Refresh Daily Statistics 33 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_9.trading_reference_date.size + 
  cme_futures_mdp3_sbe_v1_9.settl_price_type.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_daily_statistics.size + 
  cme_futures_mdp3_sbe_v1_9.padding_7.size;

-- Display: M D Incremental Refresh Daily Statistics 33 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics 33 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_33_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Daily Statistics 33 Group Index
  if m_d_incremental_refresh_daily_statistics_33_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_33_group_index, m_d_incremental_refresh_daily_statistics_33_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Daily Statistics: 1 Byte Ascii String Enum with 4 values
  index, md_entry_type_daily_statistics = cme_futures_mdp3_sbe_v1_9.md_entry_type_daily_statistics.dissect(buffer, index, packet, parent)

  -- Padding 7: 7 Byte
  index, padding_7 = cme_futures_mdp3_sbe_v1_9.padding_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics 33 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_33_group_index)
  if show.m_d_incremental_refresh_daily_statistics_33_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_33_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_33_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_33_group_index)
  end
end

-- M D Incremental Refresh Daily Statistics 33 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_groups = {}

-- Calculate size of: M D Incremental Refresh Daily Statistics 33 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_daily_statistics_33_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_daily_statistics_33_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Daily Statistics 33 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics 33 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Daily Statistics 33 Group
  for m_d_incremental_refresh_daily_statistics_33_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_daily_statistics_33_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_daily_statistics_33_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics 33 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_daily_statistics_33_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_daily_statistics_33_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Daily Statistics Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics_legacy = {}

-- Calculate size of: Md Incremental Refresh Daily Statistics Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Daily Statistics Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Daily Statistics Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Daily Statistics 33 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_daily_statistics_33_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_daily_statistics_33_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Daily Statistics Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_daily_statistics_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_daily_statistics_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics_legacy.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Book 32 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_group = {}

-- Size Of: M D Incremental Refresh Book 32 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_group.size =
  cme_futures_mdp3_sbe_v1_9.order_id.size + 
  cme_futures_mdp3_sbe_v1_9.md_order_priority.size + 
  cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.size + 
  cme_futures_mdp3_sbe_v1_9.reference_id.size + 
  cme_futures_mdp3_sbe_v1_9.order_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.padding_2.size;

-- Display: M D Incremental Refresh Book 32 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 32 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_32_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book 32 Order Group Index
  if m_d_incremental_refresh_book_32_order_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_order_group_index, m_d_incremental_refresh_book_32_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_9.order_id.dissect(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority = cme_futures_mdp3_sbe_v1_9.md_order_priority.dissect(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = cme_futures_mdp3_sbe_v1_9.md_display_qty_optional.dissect(buffer, index, packet, parent)

  -- Reference Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, reference_id = cme_futures_mdp3_sbe_v1_9.reference_id.dissect(buffer, index, packet, parent)

  -- Order Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_update_action = cme_futures_mdp3_sbe_v1_9.order_update_action.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book 32 Order Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_32_order_group_index)
  if show.m_d_incremental_refresh_book_32_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_32_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_32_order_group_index)
  end
end

-- M D Incremental Refresh Book 32 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_groups = {}

-- Calculate size of: M D Incremental Refresh Book 32 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size_8_byte.size

  -- Calculate field size from count
  local m_d_incremental_refresh_book_32_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_32_order_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Book 32 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 32 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_9.group_size_8_byte.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book 32 Order Group
  for m_d_incremental_refresh_book_32_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_32_order_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_book_32_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book 32 Order Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_32_order_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_groups.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Book 32 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_group = {}

-- Size Of: M D Incremental Refresh Book 32 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_group.size =
  cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_9.security_id.size + 
  cme_futures_mdp3_sbe_v1_9.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_9.md_price_level.size + 
  cme_futures_mdp3_sbe_v1_9.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_9.md_entry_type_book.size + 
  cme_futures_mdp3_sbe_v1_9.padding_5.size;

-- Display: M D Incremental Refresh Book 32 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 32 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_32_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book 32 Group Index
  if m_d_incremental_refresh_book_32_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_group_index, m_d_incremental_refresh_book_32_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_9.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_9.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_9.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_9.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = cme_futures_mdp3_sbe_v1_9.md_price_level.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_9.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 5 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_9.md_entry_type_book.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_futures_mdp3_sbe_v1_9.padding_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book 32 Group
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_32_group_index)
  if show.m_d_incremental_refresh_book_32_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_32_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_32_group_index)
  end
end

-- M D Incremental Refresh Book 32 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_groups = {}

-- Calculate size of: M D Incremental Refresh Book 32 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_book_32_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_32_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Book 32 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book 32 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book 32 Group
  for m_d_incremental_refresh_book_32_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_32_group = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_book_32_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book 32 Groups
cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_32_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_incremental_refresh_book_32_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Book Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book_legacy = {}

-- Calculate size of: Md Incremental Refresh Book Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Book Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Book Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_9.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Book 32 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_32_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_groups.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Book 32 Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_32_order_groups = cme_futures_mdp3_sbe_v1_9.m_d_incremental_refresh_book_32_order_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Book Legacy
cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_incremental_refresh_book_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book_legacy.fields(buffer, offset, packet, parent)
end

-- Security Trading Event
cme_futures_mdp3_sbe_v1_9.security_trading_event = {}

-- Size Of: Security Trading Event
cme_futures_mdp3_sbe_v1_9.security_trading_event.size = 1

-- Display: Security Trading Event
cme_futures_mdp3_sbe_v1_9.security_trading_event.display = function(value)
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
cme_futures_mdp3_sbe_v1_9.security_trading_event.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.security_trading_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.security_trading_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Halt Reason
cme_futures_mdp3_sbe_v1_9.halt_reason = {}

-- Size Of: Halt Reason
cme_futures_mdp3_sbe_v1_9.halt_reason.size = 1

-- Display: Halt Reason
cme_futures_mdp3_sbe_v1_9.halt_reason.display = function(value)
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
cme_futures_mdp3_sbe_v1_9.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Security Trading Status
cme_futures_mdp3_sbe_v1_9.security_trading_status = {}

-- Size Of: Security Trading Status
cme_futures_mdp3_sbe_v1_9.security_trading_status.size = 1

-- Display: Security Trading Status
cme_futures_mdp3_sbe_v1_9.security_trading_status.display = function(value)
  if value == 255 then
    return "Security Trading Status: No Value"
  end
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

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
cme_futures_mdp3_sbe_v1_9.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Id Optional
cme_futures_mdp3_sbe_v1_9.security_id_optional = {}

-- Size Of: Security Id Optional
cme_futures_mdp3_sbe_v1_9.security_id_optional.size = 4

-- Display: Security Id Optional
cme_futures_mdp3_sbe_v1_9.security_id_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Security Id Optional: No Value"
  end

  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
cme_futures_mdp3_sbe_v1_9.security_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.security_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.security_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Security Status
cme_futures_mdp3_sbe_v1_9.security_status = {}

-- Size Of: Security Status
cme_futures_mdp3_sbe_v1_9.security_status.size =
  cme_futures_mdp3_sbe_v1_9.transact_time.size + 
  cme_futures_mdp3_sbe_v1_9.security_group.size + 
  cme_futures_mdp3_sbe_v1_9.asset.size + 
  cme_futures_mdp3_sbe_v1_9.security_id_optional.size + 
  cme_futures_mdp3_sbe_v1_9.trade_date.size + 
  cme_futures_mdp3_sbe_v1_9.match_event_indicator.size + 
  cme_futures_mdp3_sbe_v1_9.security_trading_status.size + 
  cme_futures_mdp3_sbe_v1_9.halt_reason.size + 
  cme_futures_mdp3_sbe_v1_9.security_trading_event.size;

-- Display: Security Status
cme_futures_mdp3_sbe_v1_9.security_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status
cme_futures_mdp3_sbe_v1_9.security_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_9.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_9.asset.dissect(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = cme_futures_mdp3_sbe_v1_9.security_id_optional.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_9.trade_date.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, security_trading_status = cme_futures_mdp3_sbe_v1_9.security_trading_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, halt_reason = cme_futures_mdp3_sbe_v1_9.halt_reason.dissect(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, security_trading_event = cme_futures_mdp3_sbe_v1_9.security_trading_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status
cme_futures_mdp3_sbe_v1_9.security_status.dissect = function(buffer, offset, packet, parent)
  if show.security_status then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.security_status, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.security_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.security_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.security_status.fields(buffer, offset, packet, parent)
  end
end

-- Leg Price Pricenull
cme_futures_mdp3_sbe_v1_9.leg_price_pricenull = {}

-- Size Of: Leg Price Pricenull
cme_futures_mdp3_sbe_v1_9.leg_price_pricenull.size = 8

-- Display: Leg Price Pricenull
cme_futures_mdp3_sbe_v1_9.leg_price_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Leg Price Pricenull: No Value"
  end

  return "Leg Price Pricenull: "..value
end

-- Translate: Leg Price Pricenull
cme_futures_mdp3_sbe_v1_9.leg_price_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Leg Price Pricenull
cme_futures_mdp3_sbe_v1_9.leg_price_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.leg_price_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.leg_price_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.leg_price_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.leg_price_pricenull, range, value, display)

  return offset + length, value
end

-- M D Instrument Definition Spread 29 Leg Group
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_group = {}

-- Size Of: M D Instrument Definition Spread 29 Leg Group
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_group.size =
  cme_futures_mdp3_sbe_v1_9.leg_security_id.size + 
  cme_futures_mdp3_sbe_v1_9.leg_side.size + 
  cme_futures_mdp3_sbe_v1_9.leg_ratio_qty.size + 
  cme_futures_mdp3_sbe_v1_9.leg_price_pricenull.size + 
  cme_futures_mdp3_sbe_v1_9.leg_option_delta.size;

-- Display: M D Instrument Definition Spread 29 Leg Group
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread 29 Leg Group
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_group.fields = function(buffer, offset, packet, parent, m_d_instrument_definition_spread_29_leg_group_index)
  local index = offset

  -- Implicit M D Instrument Definition Spread 29 Leg Group Index
  if m_d_instrument_definition_spread_29_leg_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_29_leg_group_index, m_d_instrument_definition_spread_29_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = cme_futures_mdp3_sbe_v1_9.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = cme_futures_mdp3_sbe_v1_9.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = cme_futures_mdp3_sbe_v1_9.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price_pricenull = cme_futures_mdp3_sbe_v1_9.leg_price_pricenull.dissect(buffer, index, packet, parent)

  -- Leg Option Delta: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_option_delta = cme_futures_mdp3_sbe_v1_9.leg_option_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Instrument Definition Spread 29 Leg Group
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_group.dissect = function(buffer, offset, packet, parent, m_d_instrument_definition_spread_29_leg_group_index)
  if show.m_d_instrument_definition_spread_29_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_29_leg_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_group.fields(buffer, offset, packet, parent, m_d_instrument_definition_spread_29_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_group.fields(buffer, offset, packet, parent, m_d_instrument_definition_spread_29_leg_group_index)
  end
end

-- M D Instrument Definition Spread 29 Leg Groups
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_groups = {}

-- Calculate size of: M D Instrument Definition Spread 29 Leg Groups
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local m_d_instrument_definition_spread_29_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_instrument_definition_spread_29_leg_group_count * 18

  return index
end

-- Display: M D Instrument Definition Spread 29 Leg Groups
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread 29 Leg Groups
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Instrument Definition Spread 29 Leg Group
  for m_d_instrument_definition_spread_29_leg_group_index = 1, num_in_group do
    index, m_d_instrument_definition_spread_29_leg_group = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_group.dissect(buffer, index, packet, parent, m_d_instrument_definition_spread_29_leg_group_index)
  end

  return index
end

-- Dissect: M D Instrument Definition Spread 29 Leg Groups
cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_instrument_definition_spread_29_leg_groups then
    local length = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.m_d_instrument_definition_spread_29_leg_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_groups.fields(buffer, offset, packet, parent)
end

-- Price Ratio Pricenull
cme_futures_mdp3_sbe_v1_9.price_ratio_pricenull = {}

-- Size Of: Price Ratio Pricenull
cme_futures_mdp3_sbe_v1_9.price_ratio_pricenull.size = 8

-- Display: Price Ratio Pricenull
cme_futures_mdp3_sbe_v1_9.price_ratio_pricenull.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Price Ratio Pricenull: No Value"
  end

  return "Price Ratio Pricenull: "..value
end

-- Translate: Price Ratio Pricenull
cme_futures_mdp3_sbe_v1_9.price_ratio_pricenull.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Price Ratio Pricenull
cme_futures_mdp3_sbe_v1_9.price_ratio_pricenull.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.price_ratio_pricenull.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.price_ratio_pricenull.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.price_ratio_pricenull.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.price_ratio_pricenull, range, value, display)

  return offset + length, value
end

-- Min Price Increment Price
cme_futures_mdp3_sbe_v1_9.min_price_increment_price = {}

-- Size Of: Min Price Increment Price
cme_futures_mdp3_sbe_v1_9.min_price_increment_price.size = 8

-- Display: Min Price Increment Price
cme_futures_mdp3_sbe_v1_9.min_price_increment_price.display = function(value)
  return "Min Price Increment Price: "..value
end

-- Translate: Min Price Increment Price
cme_futures_mdp3_sbe_v1_9.min_price_increment_price.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Min Price Increment Price
cme_futures_mdp3_sbe_v1_9.min_price_increment_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.min_price_increment_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_9.min_price_increment_price.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_9.min_price_increment_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.min_price_increment_price, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Spread Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread_legacy = {}

-- Calculate size of: Md Instrument Definition Spread Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_9.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_9.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.underlying_product_optional.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_9.asset.size

  index = index + cme_futures_mdp3_sbe_v1_9.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_9.maturity_month_year.size

  index = index + cme_futures_mdp3_sbe_v1_9.currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_sub_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_price_increment_price.size

  index = index + cme_futures_mdp3_sbe_v1_9.display_factor_float.size

  index = index + cme_futures_mdp3_sbe_v1_9.price_display_format.size

  index = index + cme_futures_mdp3_sbe_v1_9.price_ratio_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.tick_rule.size

  index = index + cme_futures_mdp3_sbe_v1_9.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.settl_price_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.open_interest_qty.size

  index = index + cme_futures_mdp3_sbe_v1_9.cleared_volume.size

  index = index + cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.main_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.sub_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_9.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Spread Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Spread Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_9.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_9.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_9.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_9.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_9.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_optional = cme_futures_mdp3_sbe_v1_9.underlying_product_optional.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_9.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_9.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_9.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_9.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_9.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_9.cfi_code.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_9.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_9.currency.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 5 Byte Ascii String
  index, security_sub_type = cme_futures_mdp3_sbe_v1_9.security_sub_type.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_9.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_9.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_9.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_9.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment Price: 8 Byte Signed Fixed Width Integer
  index, min_price_increment_price = cme_futures_mdp3_sbe_v1_9.min_price_increment_price.dissect(buffer, index, packet, parent)

  -- Display Factor Float: 8 Byte Signed Fixed Width Integer
  index, display_factor_float = cme_futures_mdp3_sbe_v1_9.display_factor_float.dissect(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_9.price_display_format.dissect(buffer, index, packet, parent)

  -- Price Ratio Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, price_ratio_pricenull = cme_futures_mdp3_sbe_v1_9.price_ratio_pricenull.dissect(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = cme_futures_mdp3_sbe_v1_9.tick_rule.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_9.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Trading Reference Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenull = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_9.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_9.cleared_volume.dissect(buffer, index, packet, parent)

  -- High Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenull = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.dissect(buffer, index, packet, parent)

  -- Low Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenull = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.dissect(buffer, index, packet, parent)

  -- Max Price Variation Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenull = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.dissect(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_9.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_9.sub_fraction.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_9.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  -- M D Instrument Definition Spread 29 Leg Groups: Struct of 2 fields
  index, m_d_instrument_definition_spread_29_leg_groups = cme_futures_mdp3_sbe_v1_9.m_d_instrument_definition_spread_29_leg_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Spread Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_spread_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_spread_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread_legacy.fields(buffer, offset, packet, parent)
end

-- Md Instrument Definition Future Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future_legacy = {}

-- Calculate size of: Md Instrument Definition Future Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future_legacy.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_9.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_9.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.underlying_product.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_9.asset.size

  index = index + cme_futures_mdp3_sbe_v1_9.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_9.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_9.maturity_month_year.size

  index = index + cme_futures_mdp3_sbe_v1_9.currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.settl_currency.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_price_increment_price.size

  index = index + cme_futures_mdp3_sbe_v1_9.display_factor_float.size

  index = index + cme_futures_mdp3_sbe_v1_9.main_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.sub_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_9.price_display_format.size

  index = index + cme_futures_mdp3_sbe_v1_9.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.settl_price_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.open_interest_qty.size

  index = index + cme_futures_mdp3_sbe_v1_9.cleared_volume.size

  index = index + cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.decay_quantity.size

  index = index + cme_futures_mdp3_sbe_v1_9.decay_start_date.size

  index = index + cme_futures_mdp3_sbe_v1_9.original_contract_size.size

  index = index + cme_futures_mdp3_sbe_v1_9.contract_multiplier.size

  index = index + cme_futures_mdp3_sbe_v1_9.contract_multiplier_unit.size

  index = index + cme_futures_mdp3_sbe_v1_9.flow_schedule_type.size

  index = index + cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.size

  index = index + cme_futures_mdp3_sbe_v1_9.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_9.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_9.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Future Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future_legacy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Future Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future_legacy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_9.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_9.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_9.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_9.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_9.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_9.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_9.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_9.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_9.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_9.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_9.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_9.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_9.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_9.cfi_code.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_9.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_9.currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_9.settl_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_9.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_9.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_9.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment Price: 8 Byte Signed Fixed Width Integer
  index, min_price_increment_price = cme_futures_mdp3_sbe_v1_9.min_price_increment_price.dissect(buffer, index, packet, parent)

  -- Display Factor Float: 8 Byte Signed Fixed Width Integer
  index, display_factor_float = cme_futures_mdp3_sbe_v1_9.display_factor_float.dissect(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_9.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_9.sub_fraction.dissect(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_9.price_display_format.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_9.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_pricenull = cme_futures_mdp3_sbe_v1_9.unit_of_measure_qty_pricenull.dissect(buffer, index, packet, parent)

  -- Trading Reference Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price_pricenull = cme_futures_mdp3_sbe_v1_9.trading_reference_price_pricenull.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_9.settl_price_type.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_9.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_9.cleared_volume.dissect(buffer, index, packet, parent)

  -- High Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price_pricenull = cme_futures_mdp3_sbe_v1_9.high_limit_price_pricenull.dissect(buffer, index, packet, parent)

  -- Low Limit Price Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price_pricenull = cme_futures_mdp3_sbe_v1_9.low_limit_price_pricenull.dissect(buffer, index, packet, parent)

  -- Max Price Variation Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation_pricenull = cme_futures_mdp3_sbe_v1_9.max_price_variation_pricenull.dissect(buffer, index, packet, parent)

  -- Decay Quantity: 4 Byte Signed Fixed Width Integer Nullable
  index, decay_quantity = cme_futures_mdp3_sbe_v1_9.decay_quantity.dissect(buffer, index, packet, parent)

  -- Decay Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, decay_start_date = cme_futures_mdp3_sbe_v1_9.decay_start_date.dissect(buffer, index, packet, parent)

  -- Original Contract Size: 4 Byte Signed Fixed Width Integer Nullable
  index, original_contract_size = cme_futures_mdp3_sbe_v1_9.original_contract_size.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: 4 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier = cme_futures_mdp3_sbe_v1_9.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Contract Multiplier Unit: 1 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier_unit = cme_futures_mdp3_sbe_v1_9.contract_multiplier_unit.dissect(buffer, index, packet, parent)

  -- Flow Schedule Type: 1 Byte Signed Fixed Width Integer Nullable
  index, flow_schedule_type = cme_futures_mdp3_sbe_v1_9.flow_schedule_type.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount Pricenull: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount_pricenull = cme_futures_mdp3_sbe_v1_9.min_price_increment_amount_pricenull.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_9.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_9.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_9.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_9.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_9.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_9.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Future Legacy
cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future_legacy.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_future_legacy then
    local length = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future_legacy.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future_legacy.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.md_instrument_definition_future_legacy, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future_legacy.fields(buffer, offset, packet, parent)
end

-- Text
cme_futures_mdp3_sbe_v1_9.text = {}

-- Size Of: Text
cme_futures_mdp3_sbe_v1_9.text.size = 180

-- Display: Text
cme_futures_mdp3_sbe_v1_9.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cme_futures_mdp3_sbe_v1_9.text.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.text.size
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

  local display = cme_futures_mdp3_sbe_v1_9.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.text, range, value, display)

  return offset + length, value
end

-- Admin Logout
cme_futures_mdp3_sbe_v1_9.admin_logout = {}

-- Size Of: Admin Logout
cme_futures_mdp3_sbe_v1_9.admin_logout.size =
  cme_futures_mdp3_sbe_v1_9.text.size;

-- Display: Admin Logout
cme_futures_mdp3_sbe_v1_9.admin_logout.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Logout
cme_futures_mdp3_sbe_v1_9.admin_logout.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 180 Byte Ascii String
  index, text = cme_futures_mdp3_sbe_v1_9.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Logout
cme_futures_mdp3_sbe_v1_9.admin_logout.dissect = function(buffer, offset, packet, parent)
  if show.admin_logout then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.admin_logout, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.admin_logout.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.admin_logout.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.admin_logout.fields(buffer, offset, packet, parent)
  end
end

-- Heart Bt Int
cme_futures_mdp3_sbe_v1_9.heart_bt_int = {}

-- Size Of: Heart Bt Int
cme_futures_mdp3_sbe_v1_9.heart_bt_int.size = 1

-- Display: Heart Bt Int
cme_futures_mdp3_sbe_v1_9.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
cme_futures_mdp3_sbe_v1_9.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_9.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Admin Login
cme_futures_mdp3_sbe_v1_9.admin_login = {}

-- Size Of: Admin Login
cme_futures_mdp3_sbe_v1_9.admin_login.size =
  cme_futures_mdp3_sbe_v1_9.heart_bt_int.size;

-- Display: Admin Login
cme_futures_mdp3_sbe_v1_9.admin_login.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Login
cme_futures_mdp3_sbe_v1_9.admin_login.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heart Bt Int: 1 Byte Signed Fixed Width Integer
  index, heart_bt_int = cme_futures_mdp3_sbe_v1_9.heart_bt_int.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Login
cme_futures_mdp3_sbe_v1_9.admin_login.dissect = function(buffer, offset, packet, parent)
  if show.admin_login then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.admin_login, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.admin_login.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.admin_login.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.admin_login.fields(buffer, offset, packet, parent)
  end
end

-- Channel Reset Group
cme_futures_mdp3_sbe_v1_9.channel_reset_group = {}

-- Size Of: Channel Reset Group
cme_futures_mdp3_sbe_v1_9.channel_reset_group.size =
  cme_futures_mdp3_sbe_v1_9.appl_id.size;

-- Display: Channel Reset Group
cme_futures_mdp3_sbe_v1_9.channel_reset_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset Group
cme_futures_mdp3_sbe_v1_9.channel_reset_group.fields = function(buffer, offset, packet, parent, channel_reset_group_index)
  local index = offset

  -- Implicit Channel Reset Group Index
  if channel_reset_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.channel_reset_group_index, channel_reset_group_index)
    iteration:set_generated()
  end

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_9.appl_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset Group
cme_futures_mdp3_sbe_v1_9.channel_reset_group.dissect = function(buffer, offset, packet, parent, channel_reset_group_index)
  if show.channel_reset_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.channel_reset_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.channel_reset_group.fields(buffer, offset, packet, parent, channel_reset_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.channel_reset_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.channel_reset_group.fields(buffer, offset, packet, parent, channel_reset_group_index)
  end
end

-- Channel Reset Groups
cme_futures_mdp3_sbe_v1_9.channel_reset_groups = {}

-- Calculate size of: Channel Reset Groups
cme_futures_mdp3_sbe_v1_9.channel_reset_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.group_size.size

  -- Calculate field size from count
  local channel_reset_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + channel_reset_group_count * 2

  return index
end

-- Display: Channel Reset Groups
cme_futures_mdp3_sbe_v1_9.channel_reset_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset Groups
cme_futures_mdp3_sbe_v1_9.channel_reset_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_9.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Channel Reset Group
  for channel_reset_group_index = 1, num_in_group do
    index, channel_reset_group = cme_futures_mdp3_sbe_v1_9.channel_reset_group.dissect(buffer, index, packet, parent, channel_reset_group_index)
  end

  return index
end

-- Dissect: Channel Reset Groups
cme_futures_mdp3_sbe_v1_9.channel_reset_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.channel_reset_groups then
    local length = cme_futures_mdp3_sbe_v1_9.channel_reset_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.channel_reset_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.channel_reset_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.channel_reset_groups.fields(buffer, offset, packet, parent)
end

-- Channel Reset
cme_futures_mdp3_sbe_v1_9.channel_reset = {}

-- Calculate size of: Channel Reset
cme_futures_mdp3_sbe_v1_9.channel_reset.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_9.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_9.channel_reset_groups.size(buffer, offset + index)

  return index
end

-- Display: Channel Reset
cme_futures_mdp3_sbe_v1_9.channel_reset.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset
cme_futures_mdp3_sbe_v1_9.channel_reset.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_9.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_9.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Channel Reset Groups: Struct of 2 fields
  index, channel_reset_groups = cme_futures_mdp3_sbe_v1_9.channel_reset_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset
cme_futures_mdp3_sbe_v1_9.channel_reset.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.channel_reset then
    local length = cme_futures_mdp3_sbe_v1_9.channel_reset.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.channel_reset.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.channel_reset, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.channel_reset.fields(buffer, offset, packet, parent)
end

-- Payload
cme_futures_mdp3_sbe_v1_9.payload = {}

-- Calculate runtime size of: Payload
cme_futures_mdp3_sbe_v1_9.payload.size = function(buffer, offset, template_id)
  -- Size of Channel Reset
  if template_id == 4 then
    return cme_futures_mdp3_sbe_v1_9.channel_reset.size(buffer, offset)
  end
  -- Size of Admin Heartbeat
  if template_id == 12 then
    return 0
  end
  -- Size of Admin Login
  if template_id == 15 then
    return cme_futures_mdp3_sbe_v1_9.admin_login.size(buffer, offset)
  end
  -- Size of Admin Logout
  if template_id == 16 then
    return cme_futures_mdp3_sbe_v1_9.admin_logout.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Future Legacy
  if template_id == 27 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future_legacy.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Spread Legacy
  if template_id == 29 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread_legacy.size(buffer, offset)
  end
  -- Size of Security Status
  if template_id == 30 then
    return cme_futures_mdp3_sbe_v1_9.security_status.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Book Legacy
  if template_id == 32 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book_legacy.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Daily Statistics Legacy
  if template_id == 33 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics_legacy.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Limits Banding Legacy
  if template_id == 34 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding_legacy.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Session Statistics Legacy
  if template_id == 35 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics_legacy.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Volume
  if template_id == 37 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_volume.size(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Legacy
  if template_id == 38 then
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_legacy.size(buffer, offset)
  end
  -- Size of Quote Request
  if template_id == 39 then
    return cme_futures_mdp3_sbe_v1_9.quote_request.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Option Legacy
  if template_id == 41 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option_legacy.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Summary Legacy
  if template_id == 42 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary_legacy.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Order Book Legacy
  if template_id == 43 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book_legacy.size(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Order Book Legacy
  if template_id == 44 then
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_legacy.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Book
  if template_id == 46 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Order Book
  if template_id == 47 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Summary
  if template_id == 48 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Daily Statistics
  if template_id == 49 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Limits Banding
  if template_id == 50 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Session Statistics
  if template_id == 51 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics.size(buffer, offset)
  end
  -- Size of Snapshot Full Refresh
  if template_id == 52 then
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh.size(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Order Book
  if template_id == 53 then
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Future
  if template_id == 54 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Option
  if template_id == 55 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Spread
  if template_id == 56 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cme_futures_mdp3_sbe_v1_9.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_futures_mdp3_sbe_v1_9.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Channel Reset
  if template_id == 4 then
    return cme_futures_mdp3_sbe_v1_9.channel_reset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if template_id == 12 then
  end
  -- Dissect Admin Login
  if template_id == 15 then
    return cme_futures_mdp3_sbe_v1_9.admin_login.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Logout
  if template_id == 16 then
    return cme_futures_mdp3_sbe_v1_9.admin_logout.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Future Legacy
  if template_id == 27 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Spread Legacy
  if template_id == 29 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status
  if template_id == 30 then
    return cme_futures_mdp3_sbe_v1_9.security_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Book Legacy
  if template_id == 32 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Daily Statistics Legacy
  if template_id == 33 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Limits Banding Legacy
  if template_id == 34 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Session Statistics Legacy
  if template_id == 35 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Volume
  if template_id == 37 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_volume.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Legacy
  if template_id == 38 then
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 39 then
    return cme_futures_mdp3_sbe_v1_9.quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Option Legacy
  if template_id == 41 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Summary Legacy
  if template_id == 42 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Order Book Legacy
  if template_id == 43 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Order Book Legacy
  if template_id == 44 then
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book_legacy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Book
  if template_id == 46 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_book.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Order Book
  if template_id == 47 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_order_book.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Summary
  if template_id == 48 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_trade_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Daily Statistics
  if template_id == 49 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_daily_statistics.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Limits Banding
  if template_id == 50 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_limits_banding.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Session Statistics
  if template_id == 51 then
    return cme_futures_mdp3_sbe_v1_9.md_incremental_refresh_session_statistics.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh
  if template_id == 52 then
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Order Book
  if template_id == 53 then
    return cme_futures_mdp3_sbe_v1_9.snapshot_full_refresh_order_book.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Future
  if template_id == 54 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_future.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Option
  if template_id == 55 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Spread
  if template_id == 56 then
    return cme_futures_mdp3_sbe_v1_9.md_instrument_definition_spread.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cme_futures_mdp3_sbe_v1_9.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_futures_mdp3_sbe_v1_9.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_futures_mdp3_sbe_v1_9.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_9.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.payload, range, display)

  return cme_futures_mdp3_sbe_v1_9.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
cme_futures_mdp3_sbe_v1_9.version = {}

-- Size Of: Version
cme_futures_mdp3_sbe_v1_9.version.size = 2

-- Display: Version
cme_futures_mdp3_sbe_v1_9.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_futures_mdp3_sbe_v1_9.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_futures_mdp3_sbe_v1_9.schema_id = {}

-- Size Of: Schema Id
cme_futures_mdp3_sbe_v1_9.schema_id.size = 2

-- Display: Schema Id
cme_futures_mdp3_sbe_v1_9.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_futures_mdp3_sbe_v1_9.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
cme_futures_mdp3_sbe_v1_9.template_id = {}

-- Size Of: Template Id
cme_futures_mdp3_sbe_v1_9.template_id.size = 2

-- Display: Template Id
cme_futures_mdp3_sbe_v1_9.template_id.display = function(value)
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
    return "Template Id: Md Instrument Definition Future 27 (27)"
  end
  if value == 29 then
    return "Template Id: Md Instrument Definition Spread 29 (29)"
  end
  if value == 30 then
    return "Template Id: Security Status (30)"
  end
  if value == 32 then
    return "Template Id: Md Incremental Refresh Book 32 (32)"
  end
  if value == 33 then
    return "Template Id: Md Incremental Refresh Daily Statistics 33 (33)"
  end
  if value == 34 then
    return "Template Id: Md Incremental Refresh Limits Banding 34 (34)"
  end
  if value == 35 then
    return "Template Id: Md Incremental Refresh Session Statistics 35 (35)"
  end
  if value == 37 then
    return "Template Id: Md Incremental Refresh Volume (37)"
  end
  if value == 38 then
    return "Template Id: Snapshot Full Refresh 38 (38)"
  end
  if value == 39 then
    return "Template Id: Quote Request (39)"
  end
  if value == 41 then
    return "Template Id: Md Instrument Definition Option 41 (41)"
  end
  if value == 42 then
    return "Template Id: Md Incremental Refresh Trade Summary 42 (42)"
  end
  if value == 43 then
    return "Template Id: Md Incremental Refresh Order Book 43 (43)"
  end
  if value == 44 then
    return "Template Id: Snapshot Full Refresh Order Book 44 (44)"
  end
  if value == 46 then
    return "Template Id: Md Incremental Refresh Book 46 (46)"
  end
  if value == 47 then
    return "Template Id: Md Incremental Refresh Order Book 47 (47)"
  end
  if value == 48 then
    return "Template Id: Md Incremental Refresh Trade Summary 48 (48)"
  end
  if value == 49 then
    return "Template Id: Md Incremental Refresh Daily Statistics 49 (49)"
  end
  if value == 50 then
    return "Template Id: Md Incremental Refresh Limits Banding 50 (50)"
  end
  if value == 51 then
    return "Template Id: Md Incremental Refresh Session Statistics 51 (51)"
  end
  if value == 52 then
    return "Template Id: Snapshot Full Refresh 52 (52)"
  end
  if value == 53 then
    return "Template Id: Snapshot Full Refresh Order Book 53 (53)"
  end
  if value == 54 then
    return "Template Id: Md Instrument Definition Future 54 (54)"
  end
  if value == 55 then
    return "Template Id: Md Instrument Definition Option 55 (55)"
  end
  if value == 56 then
    return "Template Id: Md Instrument Definition Spread 56 (56)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_futures_mdp3_sbe_v1_9.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Header
cme_futures_mdp3_sbe_v1_9.message_header = {}

-- Size Of: Message Header
cme_futures_mdp3_sbe_v1_9.message_header.size =
  cme_futures_mdp3_sbe_v1_9.block_length.size + 
  cme_futures_mdp3_sbe_v1_9.template_id.size + 
  cme_futures_mdp3_sbe_v1_9.schema_id.size + 
  cme_futures_mdp3_sbe_v1_9.version.size;

-- Display: Message Header
cme_futures_mdp3_sbe_v1_9.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_futures_mdp3_sbe_v1_9.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_mdp3_sbe_v1_9.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 29 values
  index, template_id = cme_futures_mdp3_sbe_v1_9.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_futures_mdp3_sbe_v1_9.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_futures_mdp3_sbe_v1_9.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_futures_mdp3_sbe_v1_9.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.message_header, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Size
cme_futures_mdp3_sbe_v1_9.message_size = {}

-- Size Of: Message Size
cme_futures_mdp3_sbe_v1_9.message_size.size = 2

-- Display: Message Size
cme_futures_mdp3_sbe_v1_9.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_futures_mdp3_sbe_v1_9.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message
cme_futures_mdp3_sbe_v1_9.message = {}

-- Calculate size of: Message
cme_futures_mdp3_sbe_v1_9.message.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_9.message_size.size

  index = index + cme_futures_mdp3_sbe_v1_9.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + cme_futures_mdp3_sbe_v1_9.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cme_futures_mdp3_sbe_v1_9.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_futures_mdp3_sbe_v1_9.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_futures_mdp3_sbe_v1_9.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_futures_mdp3_sbe_v1_9.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 29 branches
  index = cme_futures_mdp3_sbe_v1_9.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_futures_mdp3_sbe_v1_9.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cme_futures_mdp3_sbe_v1_9.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_9.message.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.message, range, display)
  end

  return cme_futures_mdp3_sbe_v1_9.message.fields(buffer, offset, packet, parent)
end

-- Sending Time
cme_futures_mdp3_sbe_v1_9.sending_time = {}

-- Size Of: Sending Time
cme_futures_mdp3_sbe_v1_9.sending_time.size = 8

-- Display: Sending Time
cme_futures_mdp3_sbe_v1_9.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_futures_mdp3_sbe_v1_9.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_9.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
cme_futures_mdp3_sbe_v1_9.message_sequence_number = {}

-- Size Of: Message Sequence Number
cme_futures_mdp3_sbe_v1_9.message_sequence_number.size = 4

-- Display: Message Sequence Number
cme_futures_mdp3_sbe_v1_9.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_futures_mdp3_sbe_v1_9.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_9.message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_9.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Binary Packet Header
cme_futures_mdp3_sbe_v1_9.binary_packet_header = {}

-- Size Of: Binary Packet Header
cme_futures_mdp3_sbe_v1_9.binary_packet_header.size =
  cme_futures_mdp3_sbe_v1_9.message_sequence_number.size + 
  cme_futures_mdp3_sbe_v1_9.sending_time.size;

-- Display: Binary Packet Header
cme_futures_mdp3_sbe_v1_9.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_futures_mdp3_sbe_v1_9.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_futures_mdp3_sbe_v1_9.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_futures_mdp3_sbe_v1_9.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_futures_mdp3_sbe_v1_9.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_9.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_9.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_9.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_9.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cme_futures_mdp3_sbe_v1_9.packet = {}

-- Dissect Packet
cme_futures_mdp3_sbe_v1_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_futures_mdp3_sbe_v1_9.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = cme_futures_mdp3_sbe_v1_9.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_futures_mdp3_sbe_v1_9.init()
end

-- Dissector for Cme Futures Mdp3 Sbe 1.9
function omi_cme_futures_mdp3_sbe_v1_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_futures_mdp3_sbe_v1_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_futures_mdp3_sbe_v1_9, buffer(), omi_cme_futures_mdp3_sbe_v1_9.description, "("..buffer:len().." Bytes)")
  return cme_futures_mdp3_sbe_v1_9.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cme_futures_mdp3_sbe_v1_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cme_futures_mdp3_sbe_v1_9.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
cme_futures_mdp3_sbe_v1_9.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
cme_futures_mdp3_sbe_v1_9.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 9 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures Mdp3 Sbe 1.9
local function omi_cme_futures_mdp3_sbe_v1_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_futures_mdp3_sbe_v1_9.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_futures_mdp3_sbe_v1_9.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not cme_futures_mdp3_sbe_v1_9.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_futures_mdp3_sbe_v1_9
  omi_cme_futures_mdp3_sbe_v1_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures Mdp3 Sbe 1.9
omi_cme_futures_mdp3_sbe_v1_9:register_heuristic("udp", omi_cme_futures_mdp3_sbe_v1_9_heuristic)

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
