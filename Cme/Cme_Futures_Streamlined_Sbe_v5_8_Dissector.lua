-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures Streamlined Sbe 5.8 Protocol
local omi_cme_futures_streamlined_sbe_v5_8 = Proto("Cme.Futures.Streamlined.Sbe.v5.8.Lua", "Cme Futures Streamlined Sbe 5.8")

-- Protocol table
local cme_futures_streamlined_sbe_v5_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Futures Streamlined Sbe 5.8 Fields
omi_cme_futures_streamlined_sbe_v5_8.fields.accrual_days = ProtoField.new("Accrual Days", "cme.futures.streamlined.sbe.v5.8.accrualdays", ftypes.UINT32)
omi_cme_futures_streamlined_sbe_v5_8.fields.accrued_coupons = ProtoField.new("Accrued Coupons", "cme.futures.streamlined.sbe.v5.8.accruedcoupons", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.actual = ProtoField.new("Actual", "cme.futures.streamlined.sbe.v5.8.actual", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cme_futures_streamlined_sbe_v5_8.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.futures.streamlined.sbe.v5.8.aggressorside", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.appl_id = ProtoField.new("Appl Id", "cme.futures.streamlined.sbe.v5.8.applid", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.batch_total_messages = ProtoField.new("Batch Total Messages", "cme.futures.streamlined.sbe.v5.8.batchtotalmessages", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.batch_total_messages_optional = ProtoField.new("Batch Total Messages Optional", "cme.futures.streamlined.sbe.v5.8.batchtotalmessagesoptional", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.futures.streamlined.sbe.v5.8.binarypacketheader", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.block_length = ProtoField.new("Block Length", "cme.futures.streamlined.sbe.v5.8.blocklength", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.cal_fut_px = ProtoField.new("Cal Fut Px", "cme.futures.streamlined.sbe.v5.8.calfutpx", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.cal_fut_px_optional = ProtoField.new("Cal Fut Px Optional", "cme.futures.streamlined.sbe.v5.8.calfutpxoptional", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.coupon_rate = ProtoField.new("Coupon Rate", "cme.futures.streamlined.sbe.v5.8.couponrate", ftypes.DOUBLE)
omi_cme_futures_streamlined_sbe_v5_8.fields.coupon_rate_optional = ProtoField.new("Coupon Rate Optional", "cme.futures.streamlined.sbe.v5.8.couponrateoptional", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.currency = ProtoField.new("Currency", "cme.futures.streamlined.sbe.v5.8.currency", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.d_v_01 = ProtoField.new("D V 01", "cme.futures.streamlined.sbe.v5.8.dv01", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.daily_incremental_eris_pai = ProtoField.new("Daily Incremental Eris Pai", "cme.futures.streamlined.sbe.v5.8.dailyincrementalerispai", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.day = ProtoField.new("Day", "cme.futures.streamlined.sbe.v5.8.day", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.end_of_event = ProtoField.new("End Of Event", "cme.futures.streamlined.sbe.v5.8.endofevent", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_cme_futures_streamlined_sbe_v5_8.fields.eris_pai = ProtoField.new("Eris Pai", "cme.futures.streamlined.sbe.v5.8.erispai", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.event_time = ProtoField.new("Event Time", "cme.futures.streamlined.sbe.v5.8.eventtime", ftypes.UINT64)
omi_cme_futures_streamlined_sbe_v5_8.fields.event_type_indices = ProtoField.new("Event Type Indices", "cme.futures.streamlined.sbe.v5.8.eventtypeindices", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.events_group = ProtoField.new("Events Group", "cme.futures.streamlined.sbe.v5.8.eventsgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.events_groups = ProtoField.new("Events Groups", "cme.futures.streamlined.sbe.v5.8.eventsgroups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.exponent = ProtoField.new("Exponent", "cme.futures.streamlined.sbe.v5.8.exponent", ftypes.INT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.fair_coupon_pct = ProtoField.new("Fair Coupon Pct", "cme.futures.streamlined.sbe.v5.8.faircouponpct", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.fed_funds_date = ProtoField.new("Fed Funds Date", "cme.futures.streamlined.sbe.v5.8.fedfundsdate", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.fed_funds_rate = ProtoField.new("Fed Funds Rate", "cme.futures.streamlined.sbe.v5.8.fedfundsrate", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.final = ProtoField.new("Final", "cme.futures.streamlined.sbe.v5.8.final", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cme_futures_streamlined_sbe_v5_8.fields.final_settlement_futures_price = ProtoField.new("Final Settlement Futures Price", "cme.futures.streamlined.sbe.v5.8.finalsettlementfuturesprice", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.fixed_npv = ProtoField.new("Fixed Npv", "cme.futures.streamlined.sbe.v5.8.fixednpv", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.fixed_payment = ProtoField.new("Fixed Payment", "cme.futures.streamlined.sbe.v5.8.fixedpayment", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.float_npv = ProtoField.new("Float Npv", "cme.futures.streamlined.sbe.v5.8.floatnpv", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.floating_payment = ProtoField.new("Floating Payment", "cme.futures.streamlined.sbe.v5.8.floatingpayment", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.group_size = ProtoField.new("Group Size", "cme.futures.streamlined.sbe.v5.8.groupsize", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "cme.futures.streamlined.sbe.v5.8.groupsizeencoding", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.headline = ProtoField.new("Headline", "cme.futures.streamlined.sbe.v5.8.headline", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "cme.futures.streamlined.sbe.v5.8.heartbtint", ftypes.INT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_group = ProtoField.new("Inst Attrib Group", "cme.futures.streamlined.sbe.v5.8.instattribgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_groups = ProtoField.new("Inst Attrib Groups", "cme.futures.streamlined.sbe.v5.8.instattribgroups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_type = ProtoField.new("Inst Attrib Type", "cme.futures.streamlined.sbe.v5.8.instattribtype", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "cme.futures.streamlined.sbe.v5.8.instattribvalue", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.interpolation_factor = ProtoField.new("Interpolation Factor", "cme.futures.streamlined.sbe.v5.8.interpolationfactor", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "cme.futures.streamlined.sbe.v5.8.lastimpliedmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_cme_futures_streamlined_sbe_v5_8.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "cme.futures.streamlined.sbe.v5.8.lastquotemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_cme_futures_streamlined_sbe_v5_8.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "cme.futures.streamlined.sbe.v5.8.laststatsmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_cme_futures_streamlined_sbe_v5_8.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "cme.futures.streamlined.sbe.v5.8.lasttrademsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cme_futures_streamlined_sbe_v5_8.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "cme.futures.streamlined.sbe.v5.8.lastvolumemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_benchmark_curve_name = ProtoField.new("Leg Benchmark Curve Name", "cme.futures.streamlined.sbe.v5.8.legbenchmarkcurvename", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_contract_multiplier = ProtoField.new("Leg Contract Multiplier", "cme.futures.streamlined.sbe.v5.8.legcontractmultiplier", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_credit_rating = ProtoField.new("Leg Credit Rating", "cme.futures.streamlined.sbe.v5.8.legcreditrating", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_currency = ProtoField.new("Leg Currency", "cme.futures.streamlined.sbe.v5.8.legcurrency", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_date_offset = ProtoField.new("Leg Date Offset", "cme.futures.streamlined.sbe.v5.8.legdateoffset", ftypes.INT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_pay_frequencey = ProtoField.new("Leg Pay Frequencey", "cme.futures.streamlined.sbe.v5.8.legpayfrequencey", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_purchase_rate = ProtoField.new("Leg Purchase Rate", "cme.futures.streamlined.sbe.v5.8.legpurchaserate", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.futures.streamlined.sbe.v5.8.legratioqty", ftypes.INT32)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_ref_id = ProtoField.new("Leg Ref Id", "cme.futures.streamlined.sbe.v5.8.legrefid", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_security_group = ProtoField.new("Leg Security Group", "cme.futures.streamlined.sbe.v5.8.legsecuritygroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_security_type = ProtoField.new("Leg Security Type", "cme.futures.streamlined.sbe.v5.8.legsecuritytype", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_side = ProtoField.new("Leg Side", "cme.futures.streamlined.sbe.v5.8.legside", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.leg_symbol = ProtoField.new("Leg Symbol", "cme.futures.streamlined.sbe.v5.8.legsymbol", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.lines_of_text_group = ProtoField.new("Lines Of Text Group", "cme.futures.streamlined.sbe.v5.8.linesoftextgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.lines_of_text_groups = ProtoField.new("Lines Of Text Groups", "cme.futures.streamlined.sbe.v5.8.linesoftextgroups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_feed_types_group = ProtoField.new("M D Feed Types Group", "cme.futures.streamlined.sbe.v5.8.mdfeedtypesgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_feed_types_groups = ProtoField.new("M D Feed Types Groups", "cme.futures.streamlined.sbe.v5.8.mdfeedtypesgroups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_351_group = ProtoField.new("M D Incremental Refresh Eris 351 Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris351group", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_351_groups = ProtoField.new("M D Incremental Refresh Eris 351 Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris351groups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_353_group = ProtoField.new("M D Incremental Refresh Eris 353 Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris353group", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_353_groups = ProtoField.new("M D Incremental Refresh Eris 353 Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris353groups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = ProtoField.new("M D Incremental Refresh Eris Reference Data And Daily Statistics Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresherisreferencedataanddailystatisticsgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = ProtoField.new("M D Incremental Refresh Eris Reference Data And Daily Statistics Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresherisreferencedataanddailystatisticsgroups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_indices_group = ProtoField.new("M D Incremental Refresh Indices Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshindicesgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_indices_groups = ProtoField.new("M D Incremental Refresh Indices Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshindicesgroups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_otc_group = ProtoField.new("M D Incremental Refresh Otc Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshotcgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_otc_groups = ProtoField.new("M D Incremental Refresh Otc Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshotcgroups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_340_group = ProtoField.new("M D Incremental Refresh Trade Blocks 340 Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks340group", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_340_groups = ProtoField.new("M D Incremental Refresh Trade Blocks 340 Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks340groups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_349_group = ProtoField.new("M D Incremental Refresh Trade Blocks 349 Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks349group", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_349_groups = ProtoField.new("M D Incremental Refresh Trade Blocks 349 Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks349groups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_instrument_definition_eris_leg_group = ProtoField.new("M D Instrument Definition Eris Leg Group", "cme.futures.streamlined.sbe.v5.8.mdinstrumentdefinitionerisleggroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_instrument_definition_eris_leg_groups = ProtoField.new("M D Instrument Definition Eris Leg Groups", "cme.futures.streamlined.sbe.v5.8.mdinstrumentdefinitionerisleggroups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.mantissa = ProtoField.new("Mantissa", "cme.futures.streamlined.sbe.v5.8.mantissa", ftypes.INT64)
omi_cme_futures_streamlined_sbe_v5_8.fields.mantissa_32 = ProtoField.new("Mantissa 32", "cme.futures.streamlined.sbe.v5.8.mantissa32", ftypes.INT32)
omi_cme_futures_streamlined_sbe_v5_8.fields.market_depth = ProtoField.new("Market Depth", "cme.futures.streamlined.sbe.v5.8.marketdepth", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.market_sector = ProtoField.new("Market Sector", "cme.futures.streamlined.sbe.v5.8.marketsector", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "cme.futures.streamlined.sbe.v5.8.matcheventindicator", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.maturity_date = ProtoField.new("Maturity Date", "cme.futures.streamlined.sbe.v5.8.maturitydate", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.streamlined.sbe.v5.8.maturitymonthyear", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_code = ProtoField.new("Md Entry Code", "cme.futures.streamlined.sbe.v5.8.mdentrycode", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_date = ProtoField.new("Md Entry Date", "cme.futures.streamlined.sbe.v5.8.mdentrydate", ftypes.INT32)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_id = ProtoField.new("Md Entry Id", "cme.futures.streamlined.sbe.v5.8.mdentryid", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_position_no = ProtoField.new("Md Entry Position No", "cme.futures.streamlined.sbe.v5.8.mdentrypositionno", ftypes.INT32)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_decimal = ProtoField.new("Md Entry Px Decimal", "cme.futures.streamlined.sbe.v5.8.mdentrypxdecimal", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_decimal_optional = ProtoField.new("Md Entry Px Decimal Optional", "cme.futures.streamlined.sbe.v5.8.mdentrypxdecimaloptional", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_optional = ProtoField.new("Md Entry Px Optional", "cme.futures.streamlined.sbe.v5.8.mdentrypxoptional", ftypes.DOUBLE)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.futures.streamlined.sbe.v5.8.mdentrysize", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_size_optional = ProtoField.new("Md Entry Size Optional", "cme.futures.streamlined.sbe.v5.8.mdentrysizeoptional", ftypes.UINT64)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_time = ProtoField.new("Md Entry Time", "cme.futures.streamlined.sbe.v5.8.mdentrytime", ftypes.INT32)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_type = ProtoField.new("Md Entry Type", "cme.futures.streamlined.sbe.v5.8.mdentrytype", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_type_indices = ProtoField.new("Md Entry Type Indices", "cme.futures.streamlined.sbe.v5.8.mdentrytypeindices", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_feed_type = ProtoField.new("Md Feed Type", "cme.futures.streamlined.sbe.v5.8.mdfeedtype", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_feed_type_3 = ProtoField.new("Md Feed Type 3", "cme.futures.streamlined.sbe.v5.8.mdfeedtype3", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_quote_type = ProtoField.new("Md Quote Type", "cme.futures.streamlined.sbe.v5.8.mdquotetype", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_update_action = ProtoField.new("Md Update Action", "cme.futures.streamlined.sbe.v5.8.mdupdateaction", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_update_action_char = ProtoField.new("Md Update Action Char", "cme.futures.streamlined.sbe.v5.8.mdupdateactionchar", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.message = ProtoField.new("Message", "cme.futures.streamlined.sbe.v5.8.message", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.message_header = ProtoField.new("Message Header", "cme.futures.streamlined.sbe.v5.8.messageheader", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.futures.streamlined.sbe.v5.8.messagesequencenumber", ftypes.UINT32)
omi_cme_futures_streamlined_sbe_v5_8.fields.message_size = ProtoField.new("Message Size", "cme.futures.streamlined.sbe.v5.8.messagesize", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.min_price_increment = ProtoField.new("Min Price Increment", "cme.futures.streamlined.sbe.v5.8.minpriceincrement", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.min_price_increment_optional = ProtoField.new("Min Price Increment Optional", "cme.futures.streamlined.sbe.v5.8.minpriceincrementoptional", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.month = ProtoField.new("Month", "cme.futures.streamlined.sbe.v5.8.month", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "cme.futures.streamlined.sbe.v5.8.netchgprevday", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.net_pct_chg = ProtoField.new("Net Pct Chg", "cme.futures.streamlined.sbe.v5.8.netpctchg", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.next_fixed_payment_amount = ProtoField.new("Next Fixed Payment Amount", "cme.futures.streamlined.sbe.v5.8.nextfixedpaymentamount", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.next_fixed_payment_date = ProtoField.new("Next Fixed Payment Date", "cme.futures.streamlined.sbe.v5.8.nextfixedpaymentdate", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.next_floating_payment_amount = ProtoField.new("Next Floating Payment Amount", "cme.futures.streamlined.sbe.v5.8.nextfloatingpaymentamount", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.next_floating_payment_date = ProtoField.new("Next Floating Payment Date", "cme.futures.streamlined.sbe.v5.8.nextfloatingpaymentdate", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.nominal = ProtoField.new("Nominal", "cme.futures.streamlined.sbe.v5.8.nominal", ftypes.UINT64)
omi_cme_futures_streamlined_sbe_v5_8.fields.notional_percentage_outstanding = ProtoField.new("Notional Percentage Outstanding", "cme.futures.streamlined.sbe.v5.8.notionalpercentageoutstanding", ftypes.DOUBLE)
omi_cme_futures_streamlined_sbe_v5_8.fields.npv = ProtoField.new("Npv", "cme.futures.streamlined.sbe.v5.8.npv", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.null_value = ProtoField.new("Null Value", "cme.futures.streamlined.sbe.v5.8.nullvalue", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_cme_futures_streamlined_sbe_v5_8.fields.num_in_group_16 = ProtoField.new("Num In Group 16", "cme.futures.streamlined.sbe.v5.8.numingroup16", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.num_in_group_uint_8 = ProtoField.new("Num In Group uint 8", "cme.futures.streamlined.sbe.v5.8.numingroupuint8", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.number_of_orders = ProtoField.new("Number Of Orders", "cme.futures.streamlined.sbe.v5.8.numberoforders", ftypes.INT32)
omi_cme_futures_streamlined_sbe_v5_8.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.futures.streamlined.sbe.v5.8.openclosesettlflag", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.orig_time = ProtoField.new("Orig Time", "cme.futures.streamlined.sbe.v5.8.origtime", ftypes.UINT64)
omi_cme_futures_streamlined_sbe_v5_8.fields.p_v_01 = ProtoField.new("P V 01", "cme.futures.streamlined.sbe.v5.8.pv01", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.packet = ProtoField.new("Packet", "cme.futures.streamlined.sbe.v5.8.packet", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.payload = ProtoField.new("Payload", "cme.futures.streamlined.sbe.v5.8.payload", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.percent_trading = ProtoField.new("Percent Trading", "cme.futures.streamlined.sbe.v5.8.percenttrading", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.previous_eris_pai = ProtoField.new("Previous Eris Pai", "cme.futures.streamlined.sbe.v5.8.previouserispai", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.previous_fixing_date = ProtoField.new("Previous Fixing Date", "cme.futures.streamlined.sbe.v5.8.previousfixingdate", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.previous_fixing_rate = ProtoField.new("Previous Fixing Rate", "cme.futures.streamlined.sbe.v5.8.previousfixingrate", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.price_type = ProtoField.new("Price Type", "cme.futures.streamlined.sbe.v5.8.pricetype", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.product = ProtoField.new("Product", "cme.futures.streamlined.sbe.v5.8.product", ftypes.INT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.product_complex = ProtoField.new("Product Complex", "cme.futures.streamlined.sbe.v5.8.productcomplex", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.product_optional = ProtoField.new("Product Optional", "cme.futures.streamlined.sbe.v5.8.productoptional", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.put_or_call = ProtoField.new("Put Or Call", "cme.futures.streamlined.sbe.v5.8.putorcall", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.quote_condition = ProtoField.new("Quote Condition", "cme.futures.streamlined.sbe.v5.8.quotecondition", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.futures.streamlined.sbe.v5.8.quotereqid", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.rate_descriptor = ProtoField.new("Rate Descriptor", "cme.futures.streamlined.sbe.v5.8.ratedescriptor", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.rate_type = ProtoField.new("Rate Type", "cme.futures.streamlined.sbe.v5.8.ratetype", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.recovery_msg = ProtoField.new("Recovery Msg", "cme.futures.streamlined.sbe.v5.8.recoverymsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_cme_futures_streamlined_sbe_v5_8.fields.reference_id_100 = ProtoField.new("Reference Id 100", "cme.futures.streamlined.sbe.v5.8.referenceid100", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.reference_id_50 = ProtoField.new("Reference Id 50", "cme.futures.streamlined.sbe.v5.8.referenceid50", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.futures.streamlined.sbe.v5.8.relatedsymgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.futures.streamlined.sbe.v5.8.relatedsymgroups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.reserved = ProtoField.new("Reserved", "cme.futures.streamlined.sbe.v5.8.reserved", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_cme_futures_streamlined_sbe_v5_8.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.futures.streamlined.sbe.v5.8.reservedbits", ftypes.UINT8, nil, base.DEC, 0x78)
omi_cme_futures_streamlined_sbe_v5_8.fields.restructuring_type = ProtoField.new("Restructuring Type", "cme.futures.streamlined.sbe.v5.8.restructuringtype", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.rounded = ProtoField.new("Rounded", "cme.futures.streamlined.sbe.v5.8.rounded", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_cme_futures_streamlined_sbe_v5_8.fields.rpt_seq = ProtoField.new("Rpt Seq", "cme.futures.streamlined.sbe.v5.8.rptseq", ftypes.UINT32)
omi_cme_futures_streamlined_sbe_v5_8.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.streamlined.sbe.v5.8.schemaid", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.sector_group = ProtoField.new("Sector Group", "cme.futures.streamlined.sbe.v5.8.sectorgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.sector_sub_group = ProtoField.new("Sector Sub Group", "cme.futures.streamlined.sbe.v5.8.sectorsubgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_alt_id = ProtoField.new("Security Alt Id", "cme.futures.streamlined.sbe.v5.8.securityaltid", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_group = ProtoField.new("Security Alt Id Group", "cme.futures.streamlined.sbe.v5.8.securityaltidgroup", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_groups = ProtoField.new("Security Alt Id Groups", "cme.futures.streamlined.sbe.v5.8.securityaltidgroups", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "cme.futures.streamlined.sbe.v5.8.securityaltidsource", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_description = ProtoField.new("Security Description", "cme.futures.streamlined.sbe.v5.8.securitydescription", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_exchange = ProtoField.new("Security Exchange", "cme.futures.streamlined.sbe.v5.8.securityexchange", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_exchange_4 = ProtoField.new("Security Exchange 4", "cme.futures.streamlined.sbe.v5.8.securityexchange4", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_group_12 = ProtoField.new("Security Group 12", "cme.futures.streamlined.sbe.v5.8.securitygroup12", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_group_26 = ProtoField.new("Security Group 26", "cme.futures.streamlined.sbe.v5.8.securitygroup26", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_id = ProtoField.new("Security Id", "cme.futures.streamlined.sbe.v5.8.securityid", ftypes.UINT64)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.futures.streamlined.sbe.v5.8.securitysubtype", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_type = ProtoField.new("Security Type", "cme.futures.streamlined.sbe.v5.8.securitytype", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_type_4 = ProtoField.new("Security Type 4", "cme.futures.streamlined.sbe.v5.8.securitytype4", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_update_action = ProtoField.new("Security Update Action", "cme.futures.streamlined.sbe.v5.8.securityupdateaction", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.sending_time = ProtoField.new("Sending Time", "cme.futures.streamlined.sbe.v5.8.sendingtime", ftypes.UINT64)
omi_cme_futures_streamlined_sbe_v5_8.fields.seniority = ProtoField.new("Seniority", "cme.futures.streamlined.sbe.v5.8.seniority", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.settl_date = ProtoField.new("Settl Date", "cme.futures.streamlined.sbe.v5.8.settldate", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.futures.streamlined.sbe.v5.8.settlpricetype", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.settlement_npv = ProtoField.new("Settlement Npv", "cme.futures.streamlined.sbe.v5.8.settlementnpv", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.strategy_link_id = ProtoField.new("Strategy Link Id", "cme.futures.streamlined.sbe.v5.8.strategylinkid", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.strike_price = ProtoField.new("Strike Price", "cme.futures.streamlined.sbe.v5.8.strikeprice", ftypes.DOUBLE)
omi_cme_futures_streamlined_sbe_v5_8.fields.strike_price_decimal = ProtoField.new("Strike Price Decimal", "cme.futures.streamlined.sbe.v5.8.strikepricedecimal", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.symbol = ProtoField.new("Symbol", "cme.futures.streamlined.sbe.v5.8.symbol", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.template_id = ProtoField.new("Template Id", "cme.futures.streamlined.sbe.v5.8.templateid", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.text = ProtoField.new("Text", "cme.futures.streamlined.sbe.v5.8.text", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.text_500 = ProtoField.new("Text 500", "cme.futures.streamlined.sbe.v5.8.text500", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.trade_date = ProtoField.new("Trade Date", "cme.futures.streamlined.sbe.v5.8.tradedate", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.trade_id = ProtoField.new("Trade Id", "cme.futures.streamlined.sbe.v5.8.tradeid", ftypes.INT32)
omi_cme_futures_streamlined_sbe_v5_8.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.futures.streamlined.sbe.v5.8.tradingreferencedate", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.streamlined.sbe.v5.8.transacttime", ftypes.UINT64)
omi_cme_futures_streamlined_sbe_v5_8.fields.transact_time_optional = ProtoField.new("Transact Time Optional", "cme.futures.streamlined.sbe.v5.8.transacttimeoptional", ftypes.UINT64)
omi_cme_futures_streamlined_sbe_v5_8.fields.trd_type = ProtoField.new("Trd Type", "cme.futures.streamlined.sbe.v5.8.trdtype", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "cme.futures.streamlined.sbe.v5.8.unitofmeasure", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_currency = ProtoField.new("Unit Of Measure Currency", "cme.futures.streamlined.sbe.v5.8.unitofmeasurecurrency", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_currency_3 = ProtoField.new("Unit Of Measure Currency 3", "cme.futures.streamlined.sbe.v5.8.unitofmeasurecurrency3", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_qty_decimal = ProtoField.new("Unit Of Measure Qty Decimal", "cme.futures.streamlined.sbe.v5.8.unitofmeasureqtydecimal", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_qty_optional = ProtoField.new("Unit Of Measure Qty Optional", "cme.futures.streamlined.sbe.v5.8.unitofmeasureqtyoptional", ftypes.DOUBLE)
omi_cme_futures_streamlined_sbe_v5_8.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "cme.futures.streamlined.sbe.v5.8.userdefinedinstrument", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.version = ProtoField.new("Version", "cme.futures.streamlined.sbe.v5.8.version", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.vol_type = ProtoField.new("Vol Type", "cme.futures.streamlined.sbe.v5.8.voltype", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.week = ProtoField.new("Week", "cme.futures.streamlined.sbe.v5.8.week", ftypes.UINT8)
omi_cme_futures_streamlined_sbe_v5_8.fields.year = ProtoField.new("Year", "cme.futures.streamlined.sbe.v5.8.year", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.yield = ProtoField.new("Yield", "cme.futures.streamlined.sbe.v5.8.yield", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.yield_type = ProtoField.new("Yield Type", "cme.futures.streamlined.sbe.v5.8.yieldtype", ftypes.STRING)

-- Cme Futures Streamlined Sbe 5.8 messages
omi_cme_futures_streamlined_sbe_v5_8.fields.admin_login = ProtoField.new("Admin Login", "cme.futures.streamlined.sbe.v5.8.adminlogin", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.admin_logout = ProtoField.new("Admin Logout", "cme.futures.streamlined.sbe.v5.8.adminlogout", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris = ProtoField.new("Md Incremental Refresh Eris", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris_no_quote = ProtoField.new("Md Incremental Refresh Eris No Quote", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresherisnoquote", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris_reference_data_and_daily_statistics = ProtoField.new("Md Incremental Refresh Eris Reference Data And Daily Statistics", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresherisreferencedataanddailystatistics", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_indices = ProtoField.new("Md Incremental Refresh Indices", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshindices", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_otc = ProtoField.new("Md Incremental Refresh Otc", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshotc", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_trade_blocks = ProtoField.new("Md Incremental Refresh Trade Blocks", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_trade_blocks_no_date = ProtoField.new("Md Incremental Refresh Trade Blocks No Date", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocksnodate", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_instrument_definition_eris = ProtoField.new("Md Instrument Definition Eris", "cme.futures.streamlined.sbe.v5.8.mdinstrumentdefinitioneris", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_instrument_definition_indices = ProtoField.new("Md Instrument Definition Indices", "cme.futures.streamlined.sbe.v5.8.mdinstrumentdefinitionindices", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.md_news_indices = ProtoField.new("Md News Indices", "cme.futures.streamlined.sbe.v5.8.mdnewsindices", ftypes.STRING)
omi_cme_futures_streamlined_sbe_v5_8.fields.quote_request = ProtoField.new("Quote Request", "cme.futures.streamlined.sbe.v5.8.quoterequest", ftypes.STRING)

-- Cme Futures Streamlined Sbe 5.8 generated fields
omi_cme_futures_streamlined_sbe_v5_8.fields.events_group_index = ProtoField.new("Events Group Index", "cme.futures.streamlined.sbe.v5.8.eventsgroupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_group_index = ProtoField.new("Inst Attrib Group Index", "cme.futures.streamlined.sbe.v5.8.instattribgroupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.lines_of_text_group_index = ProtoField.new("Lines Of Text Group Index", "cme.futures.streamlined.sbe.v5.8.linesoftextgroupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_feed_types_group_index = ProtoField.new("M D Feed Types Group Index", "cme.futures.streamlined.sbe.v5.8.mdfeedtypesgroupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_351_group_index = ProtoField.new("M D Incremental Refresh Eris 351 Group Index", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris351groupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_353_group_index = ProtoField.new("M D Incremental Refresh Eris 353 Group Index", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris353groupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_index = ProtoField.new("M D Incremental Refresh Eris Reference Data And Daily Statistics Group Index", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresherisreferencedataanddailystatisticsgroupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_indices_group_index = ProtoField.new("M D Incremental Refresh Indices Group Index", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshindicesgroupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_otc_group_index = ProtoField.new("M D Incremental Refresh Otc Group Index", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshotcgroupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_340_group_index = ProtoField.new("M D Incremental Refresh Trade Blocks 340 Group Index", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks340groupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_349_group_index = ProtoField.new("M D Incremental Refresh Trade Blocks 349 Group Index", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks349groupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_instrument_definition_eris_leg_group_index = ProtoField.new("M D Instrument Definition Eris Leg Group Index", "cme.futures.streamlined.sbe.v5.8.mdinstrumentdefinitionerisleggroupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.related_sym_group_index = ProtoField.new("Related Sym Group Index", "cme.futures.streamlined.sbe.v5.8.relatedsymgroupindex", ftypes.UINT16)
omi_cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_group_index = ProtoField.new("Security Alt Id Group Index", "cme.futures.streamlined.sbe.v5.8.securityaltidgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cme Futures Streamlined Sbe 5.8 Element Dissection Options
show.accrued_coupons = true
show.admin_login = true
show.admin_logout = true
show.binary_packet_header = true
show.cal_fut_px = true
show.cal_fut_px_optional = true
show.coupon_rate_optional = true
show.d_v_01 = true
show.daily_incremental_eris_pai = true
show.eris_pai = true
show.events_group = true
show.events_groups = true
show.fair_coupon_pct = true
show.fed_funds_rate = true
show.final_settlement_futures_price = true
show.fixed_npv = true
show.fixed_payment = true
show.float_npv = true
show.floating_payment = true
show.group_size = true
show.group_size_encoding = true
show.inst_attrib_group = true
show.inst_attrib_groups = true
show.interpolation_factor = true
show.leg_contract_multiplier = true
show.leg_purchase_rate = true
show.lines_of_text_group = true
show.lines_of_text_groups = true
show.m_d_feed_types_group = true
show.m_d_feed_types_groups = true
show.m_d_incremental_refresh_eris_351_group = true
show.m_d_incremental_refresh_eris_351_groups = true
show.m_d_incremental_refresh_eris_353_group = true
show.m_d_incremental_refresh_eris_353_groups = true
show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = true
show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = true
show.m_d_incremental_refresh_indices_group = true
show.m_d_incremental_refresh_indices_groups = true
show.m_d_incremental_refresh_otc_group = true
show.m_d_incremental_refresh_otc_groups = true
show.m_d_incremental_refresh_trade_blocks_340_group = true
show.m_d_incremental_refresh_trade_blocks_340_groups = true
show.m_d_incremental_refresh_trade_blocks_349_group = true
show.m_d_incremental_refresh_trade_blocks_349_groups = true
show.m_d_instrument_definition_eris_leg_group = true
show.m_d_instrument_definition_eris_leg_groups = true
show.match_event_indicator = true
show.maturity_month_year = true
show.md_entry_px_decimal = true
show.md_entry_px_decimal_optional = true
show.md_entry_size = true
show.md_incremental_refresh_eris = true
show.md_incremental_refresh_eris_no_quote = true
show.md_incremental_refresh_eris_reference_data_and_daily_statistics = true
show.md_incremental_refresh_indices = true
show.md_incremental_refresh_otc = true
show.md_incremental_refresh_trade_blocks = true
show.md_incremental_refresh_trade_blocks_no_date = true
show.md_instrument_definition_eris = true
show.md_instrument_definition_indices = true
show.md_news_indices = true
show.message = true
show.message_header = true
show.min_price_increment = true
show.min_price_increment_optional = true
show.net_chg_prev_day = true
show.net_pct_chg = true
show.next_fixed_payment_amount = true
show.next_floating_payment_amount = true
show.npv = true
show.p_v_01 = true
show.packet = true
show.percent_trading = true
show.previous_eris_pai = true
show.previous_fixing_rate = true
show.quote_request = true
show.related_sym_group = true
show.related_sym_groups = true
show.security_alt_id_group = true
show.security_alt_id_groups = true
show.settl_price_type = true
show.settlement_npv = true
show.strike_price_decimal = true
show.unit_of_measure_qty_decimal = true
show.yield = true
show.payload = false

-- Register Cme Futures Streamlined Sbe 5.8 Show Options
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_accrued_coupons = Pref.bool("Show Accrued Coupons", show.accrued_coupons, "Parse and add Accrued Coupons to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_admin_login = Pref.bool("Show Admin Login", show.admin_login, "Parse and add Admin Login to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_admin_logout = Pref.bool("Show Admin Logout", show.admin_logout, "Parse and add Admin Logout to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px = Pref.bool("Show Cal Fut Px", show.cal_fut_px, "Parse and add Cal Fut Px to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px_optional = Pref.bool("Show Cal Fut Px Optional", show.cal_fut_px_optional, "Parse and add Cal Fut Px Optional to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_coupon_rate_optional = Pref.bool("Show Coupon Rate Optional", show.coupon_rate_optional, "Parse and add Coupon Rate Optional to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_d_v_01 = Pref.bool("Show D V 01", show.d_v_01, "Parse and add D V 01 to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_daily_incremental_eris_pai = Pref.bool("Show Daily Incremental Eris Pai", show.daily_incremental_eris_pai, "Parse and add Daily Incremental Eris Pai to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_eris_pai = Pref.bool("Show Eris Pai", show.eris_pai, "Parse and add Eris Pai to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_events_group = Pref.bool("Show Events Group", show.events_group, "Parse and add Events Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_events_groups = Pref.bool("Show Events Groups", show.events_groups, "Parse and add Events Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fair_coupon_pct = Pref.bool("Show Fair Coupon Pct", show.fair_coupon_pct, "Parse and add Fair Coupon Pct to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fed_funds_rate = Pref.bool("Show Fed Funds Rate", show.fed_funds_rate, "Parse and add Fed Funds Rate to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_final_settlement_futures_price = Pref.bool("Show Final Settlement Futures Price", show.final_settlement_futures_price, "Parse and add Final Settlement Futures Price to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_npv = Pref.bool("Show Fixed Npv", show.fixed_npv, "Parse and add Fixed Npv to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_payment = Pref.bool("Show Fixed Payment", show.fixed_payment, "Parse and add Fixed Payment to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_float_npv = Pref.bool("Show Float Npv", show.float_npv, "Parse and add Float Npv to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_floating_payment = Pref.bool("Show Floating Payment", show.floating_payment, "Parse and add Floating Payment to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_group = Pref.bool("Show Inst Attrib Group", show.inst_attrib_group, "Parse and add Inst Attrib Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_groups = Pref.bool("Show Inst Attrib Groups", show.inst_attrib_groups, "Parse and add Inst Attrib Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_interpolation_factor = Pref.bool("Show Interpolation Factor", show.interpolation_factor, "Parse and add Interpolation Factor to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_leg_contract_multiplier = Pref.bool("Show Leg Contract Multiplier", show.leg_contract_multiplier, "Parse and add Leg Contract Multiplier to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_leg_purchase_rate = Pref.bool("Show Leg Purchase Rate", show.leg_purchase_rate, "Parse and add Leg Purchase Rate to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_group = Pref.bool("Show Lines Of Text Group", show.lines_of_text_group, "Parse and add Lines Of Text Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_groups = Pref.bool("Show Lines Of Text Groups", show.lines_of_text_groups, "Parse and add Lines Of Text Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_group = Pref.bool("Show M D Feed Types Group", show.m_d_feed_types_group, "Parse and add M D Feed Types Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_groups = Pref.bool("Show M D Feed Types Groups", show.m_d_feed_types_groups, "Parse and add M D Feed Types Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_group = Pref.bool("Show M D Incremental Refresh Eris 351 Group", show.m_d_incremental_refresh_eris_351_group, "Parse and add M D Incremental Refresh Eris 351 Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_groups = Pref.bool("Show M D Incremental Refresh Eris 351 Groups", show.m_d_incremental_refresh_eris_351_groups, "Parse and add M D Incremental Refresh Eris 351 Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_group = Pref.bool("Show M D Incremental Refresh Eris 353 Group", show.m_d_incremental_refresh_eris_353_group, "Parse and add M D Incremental Refresh Eris 353 Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_groups = Pref.bool("Show M D Incremental Refresh Eris 353 Groups", show.m_d_incremental_refresh_eris_353_groups, "Parse and add M D Incremental Refresh Eris 353 Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = Pref.bool("Show M D Incremental Refresh Eris Reference Data And Daily Statistics Group", show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group, "Parse and add M D Incremental Refresh Eris Reference Data And Daily Statistics Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = Pref.bool("Show M D Incremental Refresh Eris Reference Data And Daily Statistics Groups", show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups, "Parse and add M D Incremental Refresh Eris Reference Data And Daily Statistics Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_group = Pref.bool("Show M D Incremental Refresh Indices Group", show.m_d_incremental_refresh_indices_group, "Parse and add M D Incremental Refresh Indices Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_groups = Pref.bool("Show M D Incremental Refresh Indices Groups", show.m_d_incremental_refresh_indices_groups, "Parse and add M D Incremental Refresh Indices Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_group = Pref.bool("Show M D Incremental Refresh Otc Group", show.m_d_incremental_refresh_otc_group, "Parse and add M D Incremental Refresh Otc Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_groups = Pref.bool("Show M D Incremental Refresh Otc Groups", show.m_d_incremental_refresh_otc_groups, "Parse and add M D Incremental Refresh Otc Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_group = Pref.bool("Show M D Incremental Refresh Trade Blocks 340 Group", show.m_d_incremental_refresh_trade_blocks_340_group, "Parse and add M D Incremental Refresh Trade Blocks 340 Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_groups = Pref.bool("Show M D Incremental Refresh Trade Blocks 340 Groups", show.m_d_incremental_refresh_trade_blocks_340_groups, "Parse and add M D Incremental Refresh Trade Blocks 340 Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_group = Pref.bool("Show M D Incremental Refresh Trade Blocks 349 Group", show.m_d_incremental_refresh_trade_blocks_349_group, "Parse and add M D Incremental Refresh Trade Blocks 349 Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_groups = Pref.bool("Show M D Incremental Refresh Trade Blocks 349 Groups", show.m_d_incremental_refresh_trade_blocks_349_groups, "Parse and add M D Incremental Refresh Trade Blocks 349 Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_group = Pref.bool("Show M D Instrument Definition Eris Leg Group", show.m_d_instrument_definition_eris_leg_group, "Parse and add M D Instrument Definition Eris Leg Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_groups = Pref.bool("Show M D Instrument Definition Eris Leg Groups", show.m_d_instrument_definition_eris_leg_groups, "Parse and add M D Instrument Definition Eris Leg Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_match_event_indicator = Pref.bool("Show Match Event Indicator", show.match_event_indicator, "Parse and add Match Event Indicator to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal = Pref.bool("Show Md Entry Px Decimal", show.md_entry_px_decimal, "Parse and add Md Entry Px Decimal to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal_optional = Pref.bool("Show Md Entry Px Decimal Optional", show.md_entry_px_decimal_optional, "Parse and add Md Entry Px Decimal Optional to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_size = Pref.bool("Show Md Entry Size", show.md_entry_size, "Parse and add Md Entry Size to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris = Pref.bool("Show Md Incremental Refresh Eris", show.md_incremental_refresh_eris, "Parse and add Md Incremental Refresh Eris to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_no_quote = Pref.bool("Show Md Incremental Refresh Eris No Quote", show.md_incremental_refresh_eris_no_quote, "Parse and add Md Incremental Refresh Eris No Quote to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics = Pref.bool("Show Md Incremental Refresh Eris Reference Data And Daily Statistics", show.md_incremental_refresh_eris_reference_data_and_daily_statistics, "Parse and add Md Incremental Refresh Eris Reference Data And Daily Statistics to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_indices = Pref.bool("Show Md Incremental Refresh Indices", show.md_incremental_refresh_indices, "Parse and add Md Incremental Refresh Indices to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_otc = Pref.bool("Show Md Incremental Refresh Otc", show.md_incremental_refresh_otc, "Parse and add Md Incremental Refresh Otc to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks = Pref.bool("Show Md Incremental Refresh Trade Blocks", show.md_incremental_refresh_trade_blocks, "Parse and add Md Incremental Refresh Trade Blocks to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks_no_date = Pref.bool("Show Md Incremental Refresh Trade Blocks No Date", show.md_incremental_refresh_trade_blocks_no_date, "Parse and add Md Incremental Refresh Trade Blocks No Date to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_eris = Pref.bool("Show Md Instrument Definition Eris", show.md_instrument_definition_eris, "Parse and add Md Instrument Definition Eris to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_indices = Pref.bool("Show Md Instrument Definition Indices", show.md_instrument_definition_indices, "Parse and add Md Instrument Definition Indices to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_news_indices = Pref.bool("Show Md News Indices", show.md_news_indices, "Parse and add Md News Indices to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment = Pref.bool("Show Min Price Increment", show.min_price_increment, "Parse and add Min Price Increment to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment_optional = Pref.bool("Show Min Price Increment Optional", show.min_price_increment_optional, "Parse and add Min Price Increment Optional to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_net_chg_prev_day = Pref.bool("Show Net Chg Prev Day", show.net_chg_prev_day, "Parse and add Net Chg Prev Day to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_net_pct_chg = Pref.bool("Show Net Pct Chg", show.net_pct_chg, "Parse and add Net Pct Chg to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_next_fixed_payment_amount = Pref.bool("Show Next Fixed Payment Amount", show.next_fixed_payment_amount, "Parse and add Next Fixed Payment Amount to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_next_floating_payment_amount = Pref.bool("Show Next Floating Payment Amount", show.next_floating_payment_amount, "Parse and add Next Floating Payment Amount to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_npv = Pref.bool("Show Npv", show.npv, "Parse and add Npv to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_p_v_01 = Pref.bool("Show P V 01", show.p_v_01, "Parse and add P V 01 to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_percent_trading = Pref.bool("Show Percent Trading", show.percent_trading, "Parse and add Percent Trading to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_previous_eris_pai = Pref.bool("Show Previous Eris Pai", show.previous_eris_pai, "Parse and add Previous Eris Pai to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_previous_fixing_rate = Pref.bool("Show Previous Fixing Rate", show.previous_fixing_rate, "Parse and add Previous Fixing Rate to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_group = Pref.bool("Show Security Alt Id Group", show.security_alt_id_group, "Parse and add Security Alt Id Group to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_groups = Pref.bool("Show Security Alt Id Groups", show.security_alt_id_groups, "Parse and add Security Alt Id Groups to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_settl_price_type = Pref.bool("Show Settl Price Type", show.settl_price_type, "Parse and add Settl Price Type to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_settlement_npv = Pref.bool("Show Settlement Npv", show.settlement_npv, "Parse and add Settlement Npv to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_strike_price_decimal = Pref.bool("Show Strike Price Decimal", show.strike_price_decimal, "Parse and add Strike Price Decimal to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_unit_of_measure_qty_decimal = Pref.bool("Show Unit Of Measure Qty Decimal", show.unit_of_measure_qty_decimal, "Parse and add Unit Of Measure Qty Decimal to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_yield = Pref.bool("Show Yield", show.yield, "Parse and add Yield to protocol tree")
omi_cme_futures_streamlined_sbe_v5_8.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cme_futures_streamlined_sbe_v5_8.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.accrued_coupons ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_accrued_coupons then
    show.accrued_coupons = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_accrued_coupons
    changed = true
  end
  if show.admin_login ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_admin_login then
    show.admin_login = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_admin_login
    changed = true
  end
  if show.admin_logout ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_admin_logout then
    show.admin_logout = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_admin_logout
    changed = true
  end
  if show.binary_packet_header ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_binary_packet_header then
    show.binary_packet_header = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_binary_packet_header
    changed = true
  end
  if show.cal_fut_px ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px then
    show.cal_fut_px = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px
    changed = true
  end
  if show.cal_fut_px_optional ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px_optional then
    show.cal_fut_px_optional = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px_optional
    changed = true
  end
  if show.coupon_rate_optional ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_coupon_rate_optional then
    show.coupon_rate_optional = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_coupon_rate_optional
    changed = true
  end
  if show.d_v_01 ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_d_v_01 then
    show.d_v_01 = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_d_v_01
    changed = true
  end
  if show.daily_incremental_eris_pai ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_daily_incremental_eris_pai then
    show.daily_incremental_eris_pai = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_daily_incremental_eris_pai
    changed = true
  end
  if show.eris_pai ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_eris_pai then
    show.eris_pai = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_eris_pai
    changed = true
  end
  if show.events_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_events_group then
    show.events_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_events_group
    changed = true
  end
  if show.events_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_events_groups then
    show.events_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_events_groups
    changed = true
  end
  if show.fair_coupon_pct ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fair_coupon_pct then
    show.fair_coupon_pct = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fair_coupon_pct
    changed = true
  end
  if show.fed_funds_rate ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fed_funds_rate then
    show.fed_funds_rate = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fed_funds_rate
    changed = true
  end
  if show.final_settlement_futures_price ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_final_settlement_futures_price then
    show.final_settlement_futures_price = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_final_settlement_futures_price
    changed = true
  end
  if show.fixed_npv ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_npv then
    show.fixed_npv = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_npv
    changed = true
  end
  if show.fixed_payment ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_payment then
    show.fixed_payment = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_payment
    changed = true
  end
  if show.float_npv ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_float_npv then
    show.float_npv = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_float_npv
    changed = true
  end
  if show.floating_payment ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_floating_payment then
    show.floating_payment = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_floating_payment
    changed = true
  end
  if show.group_size ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_group_size then
    show.group_size = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_group_size
    changed = true
  end
  if show.group_size_encoding ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_group_size_encoding then
    show.group_size_encoding = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_group_size_encoding
    changed = true
  end
  if show.inst_attrib_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_group then
    show.inst_attrib_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_group
    changed = true
  end
  if show.inst_attrib_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_groups then
    show.inst_attrib_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_groups
    changed = true
  end
  if show.interpolation_factor ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_interpolation_factor then
    show.interpolation_factor = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_interpolation_factor
    changed = true
  end
  if show.leg_contract_multiplier ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_leg_contract_multiplier then
    show.leg_contract_multiplier = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_leg_contract_multiplier
    changed = true
  end
  if show.leg_purchase_rate ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_leg_purchase_rate then
    show.leg_purchase_rate = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_leg_purchase_rate
    changed = true
  end
  if show.lines_of_text_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_group then
    show.lines_of_text_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_group
    changed = true
  end
  if show.lines_of_text_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_groups then
    show.lines_of_text_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_groups
    changed = true
  end
  if show.m_d_feed_types_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_group then
    show.m_d_feed_types_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_group
    changed = true
  end
  if show.m_d_feed_types_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_groups then
    show.m_d_feed_types_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_groups
    changed = true
  end
  if show.m_d_incremental_refresh_eris_351_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_group then
    show.m_d_incremental_refresh_eris_351_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_group
    changed = true
  end
  if show.m_d_incremental_refresh_eris_351_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_groups then
    show.m_d_incremental_refresh_eris_351_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_groups
    changed = true
  end
  if show.m_d_incremental_refresh_eris_353_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_group then
    show.m_d_incremental_refresh_eris_353_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_group
    changed = true
  end
  if show.m_d_incremental_refresh_eris_353_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_groups then
    show.m_d_incremental_refresh_eris_353_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_groups
    changed = true
  end
  if show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group then
    show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group
    changed = true
  end
  if show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups then
    show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups
    changed = true
  end
  if show.m_d_incremental_refresh_indices_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_group then
    show.m_d_incremental_refresh_indices_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_group
    changed = true
  end
  if show.m_d_incremental_refresh_indices_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_groups then
    show.m_d_incremental_refresh_indices_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_groups
    changed = true
  end
  if show.m_d_incremental_refresh_otc_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_group then
    show.m_d_incremental_refresh_otc_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_group
    changed = true
  end
  if show.m_d_incremental_refresh_otc_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_groups then
    show.m_d_incremental_refresh_otc_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_blocks_340_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_group then
    show.m_d_incremental_refresh_trade_blocks_340_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_blocks_340_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_groups then
    show.m_d_incremental_refresh_trade_blocks_340_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_blocks_349_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_group then
    show.m_d_incremental_refresh_trade_blocks_349_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_blocks_349_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_groups then
    show.m_d_incremental_refresh_trade_blocks_349_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_groups
    changed = true
  end
  if show.m_d_instrument_definition_eris_leg_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_group then
    show.m_d_instrument_definition_eris_leg_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_group
    changed = true
  end
  if show.m_d_instrument_definition_eris_leg_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_groups then
    show.m_d_instrument_definition_eris_leg_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_groups
    changed = true
  end
  if show.match_event_indicator ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_match_event_indicator then
    show.match_event_indicator = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_match_event_indicator
    changed = true
  end
  if show.maturity_month_year ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_maturity_month_year then
    show.maturity_month_year = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_maturity_month_year
    changed = true
  end
  if show.md_entry_px_decimal ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal then
    show.md_entry_px_decimal = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal
    changed = true
  end
  if show.md_entry_px_decimal_optional ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal_optional then
    show.md_entry_px_decimal_optional = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal_optional
    changed = true
  end
  if show.md_entry_size ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_size then
    show.md_entry_size = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_size
    changed = true
  end
  if show.md_incremental_refresh_eris ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris then
    show.md_incremental_refresh_eris = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris
    changed = true
  end
  if show.md_incremental_refresh_eris_no_quote ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_no_quote then
    show.md_incremental_refresh_eris_no_quote = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_no_quote
    changed = true
  end
  if show.md_incremental_refresh_eris_reference_data_and_daily_statistics ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics then
    show.md_incremental_refresh_eris_reference_data_and_daily_statistics = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics
    changed = true
  end
  if show.md_incremental_refresh_indices ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_indices then
    show.md_incremental_refresh_indices = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_indices
    changed = true
  end
  if show.md_incremental_refresh_otc ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_otc then
    show.md_incremental_refresh_otc = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_otc
    changed = true
  end
  if show.md_incremental_refresh_trade_blocks ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks then
    show.md_incremental_refresh_trade_blocks = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks
    changed = true
  end
  if show.md_incremental_refresh_trade_blocks_no_date ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks_no_date then
    show.md_incremental_refresh_trade_blocks_no_date = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks_no_date
    changed = true
  end
  if show.md_instrument_definition_eris ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_eris then
    show.md_instrument_definition_eris = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_eris
    changed = true
  end
  if show.md_instrument_definition_indices ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_indices then
    show.md_instrument_definition_indices = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_indices
    changed = true
  end
  if show.md_news_indices ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_news_indices then
    show.md_news_indices = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_md_news_indices
    changed = true
  end
  if show.message ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_message then
    show.message = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_message_header then
    show.message_header = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_message_header
    changed = true
  end
  if show.min_price_increment ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment then
    show.min_price_increment = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment
    changed = true
  end
  if show.min_price_increment_optional ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment_optional then
    show.min_price_increment_optional = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment_optional
    changed = true
  end
  if show.net_chg_prev_day ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_net_chg_prev_day then
    show.net_chg_prev_day = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_net_chg_prev_day
    changed = true
  end
  if show.net_pct_chg ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_net_pct_chg then
    show.net_pct_chg = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_net_pct_chg
    changed = true
  end
  if show.next_fixed_payment_amount ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_next_fixed_payment_amount then
    show.next_fixed_payment_amount = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_next_fixed_payment_amount
    changed = true
  end
  if show.next_floating_payment_amount ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_next_floating_payment_amount then
    show.next_floating_payment_amount = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_next_floating_payment_amount
    changed = true
  end
  if show.npv ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_npv then
    show.npv = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_npv
    changed = true
  end
  if show.p_v_01 ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_p_v_01 then
    show.p_v_01 = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_p_v_01
    changed = true
  end
  if show.packet ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_packet then
    show.packet = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_packet
    changed = true
  end
  if show.percent_trading ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_percent_trading then
    show.percent_trading = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_percent_trading
    changed = true
  end
  if show.previous_eris_pai ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_previous_eris_pai then
    show.previous_eris_pai = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_previous_eris_pai
    changed = true
  end
  if show.previous_fixing_rate ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_previous_fixing_rate then
    show.previous_fixing_rate = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_previous_fixing_rate
    changed = true
  end
  if show.quote_request ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_quote_request then
    show.quote_request = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_quote_request
    changed = true
  end
  if show.related_sym_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_group then
    show.related_sym_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_groups then
    show.related_sym_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_groups
    changed = true
  end
  if show.security_alt_id_group ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_group then
    show.security_alt_id_group = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_group
    changed = true
  end
  if show.security_alt_id_groups ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_groups then
    show.security_alt_id_groups = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_groups
    changed = true
  end
  if show.settl_price_type ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_settl_price_type then
    show.settl_price_type = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_settl_price_type
    changed = true
  end
  if show.settlement_npv ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_settlement_npv then
    show.settlement_npv = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_settlement_npv
    changed = true
  end
  if show.strike_price_decimal ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_strike_price_decimal then
    show.strike_price_decimal = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_strike_price_decimal
    changed = true
  end
  if show.unit_of_measure_qty_decimal ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_unit_of_measure_qty_decimal then
    show.unit_of_measure_qty_decimal = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_unit_of_measure_qty_decimal
    changed = true
  end
  if show.yield ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_yield then
    show.yield = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_yield
    changed = true
  end
  if show.payload ~= omi_cme_futures_streamlined_sbe_v5_8.prefs.show_payload then
    show.payload = omi_cme_futures_streamlined_sbe_v5_8.prefs.show_payload
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

-- Convert exponent to decimal
factor = function(value)
  if value == nil then
    return nil
  elseif value == -1 then
    return 10
  elseif value == -2 then
    return 100
  elseif value == -3 then
    return 1000
  elseif value == -4 then
    return 10000
  elseif value == -5 then
    return 100000
  elseif value == -6 then
    return 1000000
  elseif value == -7 then
    return 10000000
  elseif value == -8 then
    return 100000000
  elseif value == -9 then
    return 1000000000
  end

  return 1
end


-----------------------------------------------------------------------
-- Dissect Cme Futures Streamlined Sbe 5.8
-----------------------------------------------------------------------

-- Exponent
cme_futures_streamlined_sbe_v5_8.exponent = {}

-- Size: Exponent
cme_futures_streamlined_sbe_v5_8.exponent.size = 1

-- Display: Exponent
cme_futures_streamlined_sbe_v5_8.exponent.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Exponent: No Value"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
cme_futures_streamlined_sbe_v5_8.exponent.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.exponent.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.exponent, range, value, display)

  return offset + length, value
end

-- Mantissa
cme_futures_streamlined_sbe_v5_8.mantissa = {}

-- Size: Mantissa
cme_futures_streamlined_sbe_v5_8.mantissa.size = 8

-- Display: Mantissa
cme_futures_streamlined_sbe_v5_8.mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Mantissa: No Value"
  end

  return "Mantissa: "..value
end

-- Dissect: Mantissa
cme_futures_streamlined_sbe_v5_8.mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cme_futures_streamlined_sbe_v5_8.mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.mantissa, range, value, display)

  return offset + length, value
end

-- Interpolation Factor
cme_futures_streamlined_sbe_v5_8.interpolation_factor = {}

-- Size: Interpolation Factor
cme_futures_streamlined_sbe_v5_8.interpolation_factor.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Interpolation Factor
cme_futures_streamlined_sbe_v5_8.interpolation_factor.display = function(raw, value)
  if raw ~= nil then
    return "Interpolation Factor: No Value"
  end

  return "Interpolation Factor: "..value
end

-- Dissect Fields: Interpolation Factor
cme_futures_streamlined_sbe_v5_8.interpolation_factor.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local interpolation_factor = mantissa / factor( exponent )

  return index, interpolation_factor
end

-- Dissect: Interpolation Factor
cme_futures_streamlined_sbe_v5_8.interpolation_factor.dissect = function(buffer, offset, packet, parent)
  if show.interpolation_factor then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.interpolation_factor, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.interpolation_factor.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.interpolation_factor.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.interpolation_factor.fields(buffer, offset, packet, parent)
  end
end

-- Leg Date Offset
cme_futures_streamlined_sbe_v5_8.leg_date_offset = {}

-- Size: Leg Date Offset
cme_futures_streamlined_sbe_v5_8.leg_date_offset.size = 1

-- Display: Leg Date Offset
cme_futures_streamlined_sbe_v5_8.leg_date_offset.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Leg Date Offset: No Value"
  end

  return "Leg Date Offset: "..value
end

-- Dissect: Leg Date Offset
cme_futures_streamlined_sbe_v5_8.leg_date_offset.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_date_offset.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.leg_date_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_date_offset, range, value, display)

  return offset + length, value
end

-- Leg Security Group
cme_futures_streamlined_sbe_v5_8.leg_security_group = {}

-- Size: Leg Security Group
cme_futures_streamlined_sbe_v5_8.leg_security_group.size = 12

-- Display: Leg Security Group
cme_futures_streamlined_sbe_v5_8.leg_security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Security Group: No Value"
  end

  return "Leg Security Group: "..value
end

-- Dissect: Leg Security Group
cme_futures_streamlined_sbe_v5_8.leg_security_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_security_group.size
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

  local display = cme_futures_streamlined_sbe_v5_8.leg_security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_security_group, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cme_futures_streamlined_sbe_v5_8.leg_security_type = {}

-- Size: Leg Security Type
cme_futures_streamlined_sbe_v5_8.leg_security_type.size = 8

-- Display: Leg Security Type
cme_futures_streamlined_sbe_v5_8.leg_security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Security Type: No Value"
  end

  return "Leg Security Type: "..value
end

-- Dissect: Leg Security Type
cme_futures_streamlined_sbe_v5_8.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_security_type.size
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

  local display = cme_futures_streamlined_sbe_v5_8.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Currency
cme_futures_streamlined_sbe_v5_8.leg_currency = {}

-- Size: Leg Currency
cme_futures_streamlined_sbe_v5_8.leg_currency.size = 3

-- Display: Leg Currency
cme_futures_streamlined_sbe_v5_8.leg_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Currency: No Value"
  end

  return "Leg Currency: "..value
end

-- Dissect: Leg Currency
cme_futures_streamlined_sbe_v5_8.leg_currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_currency.size
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

  local display = cme_futures_streamlined_sbe_v5_8.leg_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_currency, range, value, display)

  return offset + length, value
end

-- Leg Side
cme_futures_streamlined_sbe_v5_8.leg_side = {}

-- Size: Leg Side
cme_futures_streamlined_sbe_v5_8.leg_side.size = 1

-- Display: Leg Side
cme_futures_streamlined_sbe_v5_8.leg_side.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Leg Side: No Value"
  end

  return "Leg Side: "..value
end

-- Dissect: Leg Side
cme_futures_streamlined_sbe_v5_8.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
cme_futures_streamlined_sbe_v5_8.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
cme_futures_streamlined_sbe_v5_8.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
cme_futures_streamlined_sbe_v5_8.leg_ratio_qty.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cme_futures_streamlined_sbe_v5_8.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cme_futures_streamlined_sbe_v5_8.leg_symbol = {}

-- Size: Leg Symbol
cme_futures_streamlined_sbe_v5_8.leg_symbol.size = 50

-- Display: Leg Symbol
cme_futures_streamlined_sbe_v5_8.leg_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cme_futures_streamlined_sbe_v5_8.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_symbol.size
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

  local display = cme_futures_streamlined_sbe_v5_8.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Previous Fixing Rate
cme_futures_streamlined_sbe_v5_8.previous_fixing_rate = {}

-- Size: Previous Fixing Rate
cme_futures_streamlined_sbe_v5_8.previous_fixing_rate.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Previous Fixing Rate
cme_futures_streamlined_sbe_v5_8.previous_fixing_rate.display = function(raw, value)
  if raw ~= nil then
    return "Previous Fixing Rate: No Value"
  end

  return "Previous Fixing Rate: "..value
end

-- Dissect Fields: Previous Fixing Rate
cme_futures_streamlined_sbe_v5_8.previous_fixing_rate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local previous_fixing_rate = mantissa / factor( exponent )

  return index, previous_fixing_rate
end

-- Dissect: Previous Fixing Rate
cme_futures_streamlined_sbe_v5_8.previous_fixing_rate.dissect = function(buffer, offset, packet, parent)
  if show.previous_fixing_rate then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.previous_fixing_rate, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.previous_fixing_rate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.previous_fixing_rate.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.previous_fixing_rate.fields(buffer, offset, packet, parent)
  end
end

-- Leg Pay Frequencey
cme_futures_streamlined_sbe_v5_8.leg_pay_frequencey = {}

-- Size: Leg Pay Frequencey
cme_futures_streamlined_sbe_v5_8.leg_pay_frequencey.size = 3

-- Display: Leg Pay Frequencey
cme_futures_streamlined_sbe_v5_8.leg_pay_frequencey.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Pay Frequencey: No Value"
  end

  return "Leg Pay Frequencey: "..value
end

-- Dissect: Leg Pay Frequencey
cme_futures_streamlined_sbe_v5_8.leg_pay_frequencey.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_pay_frequencey.size
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

  local display = cme_futures_streamlined_sbe_v5_8.leg_pay_frequencey.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_pay_frequencey, range, value, display)

  return offset + length, value
end

-- Previous Fixing Date
cme_futures_streamlined_sbe_v5_8.previous_fixing_date = {}

-- Size: Previous Fixing Date
cme_futures_streamlined_sbe_v5_8.previous_fixing_date.size = 2

-- Display: Previous Fixing Date
cme_futures_streamlined_sbe_v5_8.previous_fixing_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Previous Fixing Date: No Value"
  end

  return "Previous Fixing Date: "..value
end

-- Dissect: Previous Fixing Date
cme_futures_streamlined_sbe_v5_8.previous_fixing_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.previous_fixing_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.previous_fixing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.previous_fixing_date, range, value, display)

  return offset + length, value
end

-- Rate Descriptor
cme_futures_streamlined_sbe_v5_8.rate_descriptor = {}

-- Size: Rate Descriptor
cme_futures_streamlined_sbe_v5_8.rate_descriptor.size = 8

-- Display: Rate Descriptor
cme_futures_streamlined_sbe_v5_8.rate_descriptor.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Rate Descriptor: No Value"
  end

  return "Rate Descriptor: "..value
end

-- Dissect: Rate Descriptor
cme_futures_streamlined_sbe_v5_8.rate_descriptor.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.rate_descriptor.size
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

  local display = cme_futures_streamlined_sbe_v5_8.rate_descriptor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.rate_descriptor, range, value, display)

  return offset + length, value
end

-- Leg Benchmark Curve Name
cme_futures_streamlined_sbe_v5_8.leg_benchmark_curve_name = {}

-- Size: Leg Benchmark Curve Name
cme_futures_streamlined_sbe_v5_8.leg_benchmark_curve_name.size = 5

-- Display: Leg Benchmark Curve Name
cme_futures_streamlined_sbe_v5_8.leg_benchmark_curve_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Benchmark Curve Name: No Value"
  end

  return "Leg Benchmark Curve Name: "..value
end

-- Dissect: Leg Benchmark Curve Name
cme_futures_streamlined_sbe_v5_8.leg_benchmark_curve_name.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_benchmark_curve_name.size
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

  local display = cme_futures_streamlined_sbe_v5_8.leg_benchmark_curve_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_benchmark_curve_name, range, value, display)

  return offset + length, value
end

-- M D Instrument Definition Eris Leg Group
cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_group = {}

-- Size: M D Instrument Definition Eris Leg Group
cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_group.size =
  cme_futures_streamlined_sbe_v5_8.leg_benchmark_curve_name.size + 
  cme_futures_streamlined_sbe_v5_8.rate_descriptor.size + 
  cme_futures_streamlined_sbe_v5_8.previous_fixing_date.size + 
  cme_futures_streamlined_sbe_v5_8.leg_pay_frequencey.size + 
  cme_futures_streamlined_sbe_v5_8.previous_fixing_rate.size + 
  cme_futures_streamlined_sbe_v5_8.leg_symbol.size + 
  cme_futures_streamlined_sbe_v5_8.leg_ratio_qty.size + 
  cme_futures_streamlined_sbe_v5_8.leg_side.size + 
  cme_futures_streamlined_sbe_v5_8.leg_currency.size + 
  cme_futures_streamlined_sbe_v5_8.leg_security_type.size + 
  cme_futures_streamlined_sbe_v5_8.leg_security_group.size + 
  cme_futures_streamlined_sbe_v5_8.leg_date_offset.size + 
  cme_futures_streamlined_sbe_v5_8.interpolation_factor.size

-- Display: M D Instrument Definition Eris Leg Group
cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Instrument Definition Eris Leg Group
cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_group.fields = function(buffer, offset, packet, parent, m_d_instrument_definition_eris_leg_group_index)
  local index = offset

  -- Implicit M D Instrument Definition Eris Leg Group Index
  if m_d_instrument_definition_eris_leg_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_instrument_definition_eris_leg_group_index, m_d_instrument_definition_eris_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Benchmark Curve Name: 5 Byte Ascii String
  index, leg_benchmark_curve_name = cme_futures_streamlined_sbe_v5_8.leg_benchmark_curve_name.dissect(buffer, index, packet, parent)

  -- Rate Descriptor: 8 Byte Ascii String
  index, rate_descriptor = cme_futures_streamlined_sbe_v5_8.rate_descriptor.dissect(buffer, index, packet, parent)

  -- Previous Fixing Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, previous_fixing_date = cme_futures_streamlined_sbe_v5_8.previous_fixing_date.dissect(buffer, index, packet, parent)

  -- Leg Pay Frequencey: 3 Byte Ascii String
  index, leg_pay_frequencey = cme_futures_streamlined_sbe_v5_8.leg_pay_frequencey.dissect(buffer, index, packet, parent)

  -- Previous Fixing Rate: Struct of 2 fields
  index, previous_fixing_rate = cme_futures_streamlined_sbe_v5_8.previous_fixing_rate.dissect(buffer, index, packet, parent)

  -- Leg Symbol: 50 Byte Ascii String
  index, leg_symbol = cme_futures_streamlined_sbe_v5_8.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_ratio_qty = cme_futures_streamlined_sbe_v5_8.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Nullable
  index, leg_side = cme_futures_streamlined_sbe_v5_8.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Currency: 3 Byte Ascii String
  index, leg_currency = cme_futures_streamlined_sbe_v5_8.leg_currency.dissect(buffer, index, packet, parent)

  -- Leg Security Type: 8 Byte Ascii String
  index, leg_security_type = cme_futures_streamlined_sbe_v5_8.leg_security_type.dissect(buffer, index, packet, parent)

  -- Leg Security Group: 12 Byte Ascii String
  index, leg_security_group = cme_futures_streamlined_sbe_v5_8.leg_security_group.dissect(buffer, index, packet, parent)

  -- Leg Date Offset: 1 Byte Signed Fixed Width Integer Nullable
  index, leg_date_offset = cme_futures_streamlined_sbe_v5_8.leg_date_offset.dissect(buffer, index, packet, parent)

  -- Interpolation Factor: Struct of 2 fields
  index, interpolation_factor = cme_futures_streamlined_sbe_v5_8.interpolation_factor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Instrument Definition Eris Leg Group
cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_group.dissect = function(buffer, offset, packet, parent, m_d_instrument_definition_eris_leg_group_index)
  if show.m_d_instrument_definition_eris_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_instrument_definition_eris_leg_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_group.fields(buffer, offset, packet, parent, m_d_instrument_definition_eris_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_group.fields(buffer, offset, packet, parent, m_d_instrument_definition_eris_leg_group_index)
  end
end

-- Num In Group uint 8
cme_futures_streamlined_sbe_v5_8.num_in_group_uint_8 = {}

-- Size: Num In Group uint 8
cme_futures_streamlined_sbe_v5_8.num_in_group_uint_8.size = 1

-- Display: Num In Group uint 8
cme_futures_streamlined_sbe_v5_8.num_in_group_uint_8.display = function(value)
  return "Num In Group uint 8: "..value
end

-- Dissect: Num In Group uint 8
cme_futures_streamlined_sbe_v5_8.num_in_group_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.num_in_group_uint_8.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.num_in_group_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.num_in_group_uint_8, range, value, display)

  return offset + length, value
end

-- Block Length
cme_futures_streamlined_sbe_v5_8.block_length = {}

-- Size: Block Length
cme_futures_streamlined_sbe_v5_8.block_length.size = 2

-- Display: Block Length
cme_futures_streamlined_sbe_v5_8.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_futures_streamlined_sbe_v5_8.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.block_length, range, value, display)

  return offset + length, value
end

-- Group Size
cme_futures_streamlined_sbe_v5_8.group_size = {}

-- Size: Group Size
cme_futures_streamlined_sbe_v5_8.group_size.size =
  cme_futures_streamlined_sbe_v5_8.block_length.size + 
  cme_futures_streamlined_sbe_v5_8.num_in_group_uint_8.size

-- Display: Group Size
cme_futures_streamlined_sbe_v5_8.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_futures_streamlined_sbe_v5_8.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_streamlined_sbe_v5_8.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group uint 8: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group_uint_8 = cme_futures_streamlined_sbe_v5_8.num_in_group_uint_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_futures_streamlined_sbe_v5_8.group_size.dissect = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.group_size, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.group_size.fields(buffer, offset, packet, parent)
  end
end

-- M D Instrument Definition Eris Leg Groups
cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_groups = {}

-- Calculate size of: M D Instrument Definition Eris Leg Groups
cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local m_d_instrument_definition_eris_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_instrument_definition_eris_leg_group_count * 115

  return index
end

-- Display: M D Instrument Definition Eris Leg Groups
cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Instrument Definition Eris Leg Groups
cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Instrument Definition Eris Leg Group
  for m_d_instrument_definition_eris_leg_group_index = 1, num_in_group_uint_8 do
    index, m_d_instrument_definition_eris_leg_group = cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_group.dissect(buffer, index, packet, parent, m_d_instrument_definition_eris_leg_group_index)
  end

  return index
end

-- Dissect: M D Instrument Definition Eris Leg Groups
cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_instrument_definition_eris_leg_groups then
    local length = cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_instrument_definition_eris_leg_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_groups.fields(buffer, offset, packet, parent)
end

-- Security Alt Id Source
cme_futures_streamlined_sbe_v5_8.security_alt_id_source = {}

-- Size: Security Alt Id Source
cme_futures_streamlined_sbe_v5_8.security_alt_id_source.size = 1

-- Display: Security Alt Id Source
cme_futures_streamlined_sbe_v5_8.security_alt_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id Source: No Value"
  end

  return "Security Alt Id Source: "..value
end

-- Dissect: Security Alt Id Source
cme_futures_streamlined_sbe_v5_8.security_alt_id_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_alt_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8.security_alt_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Security Alt Id
cme_futures_streamlined_sbe_v5_8.security_alt_id = {}

-- Size: Security Alt Id
cme_futures_streamlined_sbe_v5_8.security_alt_id.size = 26

-- Display: Security Alt Id
cme_futures_streamlined_sbe_v5_8.security_alt_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id: No Value"
  end

  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
cme_futures_streamlined_sbe_v5_8.security_alt_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_alt_id.size
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

  local display = cme_futures_streamlined_sbe_v5_8.security_alt_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_alt_id, range, value, display)

  return offset + length, value
end

-- Security Alt Id Group
cme_futures_streamlined_sbe_v5_8.security_alt_id_group = {}

-- Size: Security Alt Id Group
cme_futures_streamlined_sbe_v5_8.security_alt_id_group.size =
  cme_futures_streamlined_sbe_v5_8.security_alt_id.size + 
  cme_futures_streamlined_sbe_v5_8.security_alt_id_source.size

-- Display: Security Alt Id Group
cme_futures_streamlined_sbe_v5_8.security_alt_id_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Alt Id Group
cme_futures_streamlined_sbe_v5_8.security_alt_id_group.fields = function(buffer, offset, packet, parent, security_alt_id_group_index)
  local index = offset

  -- Implicit Security Alt Id Group Index
  if security_alt_id_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_group_index, security_alt_id_group_index)
    iteration:set_generated()
  end

  -- Security Alt Id: 26 Byte Ascii String
  index, security_alt_id = cme_futures_streamlined_sbe_v5_8.security_alt_id.dissect(buffer, index, packet, parent)

  -- Security Alt Id Source: 1 Byte Ascii String
  index, security_alt_id_source = cme_futures_streamlined_sbe_v5_8.security_alt_id_source.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Alt Id Group
cme_futures_streamlined_sbe_v5_8.security_alt_id_group.dissect = function(buffer, offset, packet, parent, security_alt_id_group_index)
  if show.security_alt_id_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.security_alt_id_group.fields(buffer, offset, packet, parent, security_alt_id_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.security_alt_id_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.security_alt_id_group.fields(buffer, offset, packet, parent, security_alt_id_group_index)
  end
end

-- Security Alt Id Groups
cme_futures_streamlined_sbe_v5_8.security_alt_id_groups = {}

-- Calculate size of: Security Alt Id Groups
cme_futures_streamlined_sbe_v5_8.security_alt_id_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local security_alt_id_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_alt_id_group_count * 27

  return index
end

-- Display: Security Alt Id Groups
cme_futures_streamlined_sbe_v5_8.security_alt_id_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Alt Id Groups
cme_futures_streamlined_sbe_v5_8.security_alt_id_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: Security Alt Id Group
  for security_alt_id_group_index = 1, num_in_group_uint_8 do
    index, security_alt_id_group = cme_futures_streamlined_sbe_v5_8.security_alt_id_group.dissect(buffer, index, packet, parent, security_alt_id_group_index)
  end

  return index
end

-- Dissect: Security Alt Id Groups
cme_futures_streamlined_sbe_v5_8.security_alt_id_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_alt_id_groups then
    local length = cme_futures_streamlined_sbe_v5_8.security_alt_id_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.security_alt_id_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.security_alt_id_groups.fields(buffer, offset, packet, parent)
end

-- Event Time
cme_futures_streamlined_sbe_v5_8.event_time = {}

-- Size: Event Time
cme_futures_streamlined_sbe_v5_8.event_time.size = 8

-- Display: Event Time
cme_futures_streamlined_sbe_v5_8.event_time.display = function(value)
  return "Event Time: "..value
end

-- Dissect: Event Time
cme_futures_streamlined_sbe_v5_8.event_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8.event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.event_time, range, value, display)

  return offset + length, value
end

-- Event Type Indices
cme_futures_streamlined_sbe_v5_8.event_type_indices = {}

-- Size: Event Type Indices
cme_futures_streamlined_sbe_v5_8.event_type_indices.size = 1

-- Display: Event Type Indices
cme_futures_streamlined_sbe_v5_8.event_type_indices.display = function(value)
  if value == 5 then
    return "Event Type Indices: Activation (5)"
  end
  if value == 6 then
    return "Event Type Indices: Deletion (6)"
  end
  if value == 120 then
    return "Event Type Indices: Modification (120)"
  end

  return "Event Type Indices: Unknown("..value..")"
end

-- Dissect: Event Type Indices
cme_futures_streamlined_sbe_v5_8.event_type_indices.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.event_type_indices.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.event_type_indices.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.event_type_indices, range, value, display)

  return offset + length, value
end

-- Events Group
cme_futures_streamlined_sbe_v5_8.events_group = {}

-- Size: Events Group
cme_futures_streamlined_sbe_v5_8.events_group.size =
  cme_futures_streamlined_sbe_v5_8.event_type_indices.size + 
  cme_futures_streamlined_sbe_v5_8.event_time.size

-- Display: Events Group
cme_futures_streamlined_sbe_v5_8.events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events Group
cme_futures_streamlined_sbe_v5_8.events_group.fields = function(buffer, offset, packet, parent, events_group_index)
  local index = offset

  -- Implicit Events Group Index
  if events_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.events_group_index, events_group_index)
    iteration:set_generated()
  end

  -- Event Type Indices: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, event_type_indices = cme_futures_streamlined_sbe_v5_8.event_type_indices.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = cme_futures_streamlined_sbe_v5_8.event_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Events Group
cme_futures_streamlined_sbe_v5_8.events_group.dissect = function(buffer, offset, packet, parent, events_group_index)
  if show.events_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.events_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.events_group.fields(buffer, offset, packet, parent, events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.events_group.fields(buffer, offset, packet, parent, events_group_index)
  end
end

-- Num In Group 16
cme_futures_streamlined_sbe_v5_8.num_in_group_16 = {}

-- Size: Num In Group 16
cme_futures_streamlined_sbe_v5_8.num_in_group_16.size = 2

-- Display: Num In Group 16
cme_futures_streamlined_sbe_v5_8.num_in_group_16.display = function(value)
  return "Num In Group 16: "..value
end

-- Dissect: Num In Group 16
cme_futures_streamlined_sbe_v5_8.num_in_group_16.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.num_in_group_16.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.num_in_group_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.num_in_group_16, range, value, display)

  return offset + length, value
end

-- Group Size Encoding
cme_futures_streamlined_sbe_v5_8.group_size_encoding = {}

-- Size: Group Size Encoding
cme_futures_streamlined_sbe_v5_8.group_size_encoding.size =
  cme_futures_streamlined_sbe_v5_8.block_length.size + 
  cme_futures_streamlined_sbe_v5_8.num_in_group_16.size

-- Display: Group Size Encoding
cme_futures_streamlined_sbe_v5_8.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
cme_futures_streamlined_sbe_v5_8.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_streamlined_sbe_v5_8.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group 16: 2 Byte Unsigned Fixed Width Integer
  index, num_in_group_16 = cme_futures_streamlined_sbe_v5_8.num_in_group_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
cme_futures_streamlined_sbe_v5_8.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.group_size_encoding, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Events Groups
cme_futures_streamlined_sbe_v5_8.events_groups = {}

-- Calculate size of: Events Groups
cme_futures_streamlined_sbe_v5_8.events_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size_encoding.size

  -- Calculate field size from count
  local events_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + events_group_count * 9

  return index
end

-- Display: Events Groups
cme_futures_streamlined_sbe_v5_8.events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events Groups
cme_futures_streamlined_sbe_v5_8.events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = cme_futures_streamlined_sbe_v5_8.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group 16
  local num_in_group_16 = buffer(index - 2, 2):le_uint()

  -- Repeating: Events Group
  for events_group_index = 1, num_in_group_16 do
    index, events_group = cme_futures_streamlined_sbe_v5_8.events_group.dissect(buffer, index, packet, parent, events_group_index)
  end

  return index
end

-- Dissect: Events Groups
cme_futures_streamlined_sbe_v5_8.events_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.events_groups then
    local length = cme_futures_streamlined_sbe_v5_8.events_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.events_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.events_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.events_groups.fields(buffer, offset, packet, parent)
end

-- Market Depth
cme_futures_streamlined_sbe_v5_8.market_depth = {}

-- Size: Market Depth
cme_futures_streamlined_sbe_v5_8.market_depth.size = 1

-- Display: Market Depth
cme_futures_streamlined_sbe_v5_8.market_depth.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Market Depth: No Value"
  end

  return "Market Depth: "..value
end

-- Dissect: Market Depth
cme_futures_streamlined_sbe_v5_8.market_depth.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.market_depth.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.market_depth, range, value, display)

  return offset + length, value
end

-- Md Feed Type 3
cme_futures_streamlined_sbe_v5_8.md_feed_type_3 = {}

-- Size: Md Feed Type 3
cme_futures_streamlined_sbe_v5_8.md_feed_type_3.size = 3

-- Display: Md Feed Type 3
cme_futures_streamlined_sbe_v5_8.md_feed_type_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Feed Type 3: No Value"
  end

  return "Md Feed Type 3: "..value
end

-- Dissect: Md Feed Type 3
cme_futures_streamlined_sbe_v5_8.md_feed_type_3.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_feed_type_3.size
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

  local display = cme_futures_streamlined_sbe_v5_8.md_feed_type_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_feed_type_3, range, value, display)

  return offset + length, value
end

-- M D Feed Types Group
cme_futures_streamlined_sbe_v5_8.m_d_feed_types_group = {}

-- Size: M D Feed Types Group
cme_futures_streamlined_sbe_v5_8.m_d_feed_types_group.size =
  cme_futures_streamlined_sbe_v5_8.md_feed_type_3.size + 
  cme_futures_streamlined_sbe_v5_8.market_depth.size

-- Display: M D Feed Types Group
cme_futures_streamlined_sbe_v5_8.m_d_feed_types_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Feed Types Group
cme_futures_streamlined_sbe_v5_8.m_d_feed_types_group.fields = function(buffer, offset, packet, parent, m_d_feed_types_group_index)
  local index = offset

  -- Implicit M D Feed Types Group Index
  if m_d_feed_types_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_feed_types_group_index, m_d_feed_types_group_index)
    iteration:set_generated()
  end

  -- Md Feed Type 3: 3 Byte Ascii String
  index, md_feed_type_3 = cme_futures_streamlined_sbe_v5_8.md_feed_type_3.dissect(buffer, index, packet, parent)

  -- Market Depth: 1 Byte Unsigned Fixed Width Integer Nullable
  index, market_depth = cme_futures_streamlined_sbe_v5_8.market_depth.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Feed Types Group
cme_futures_streamlined_sbe_v5_8.m_d_feed_types_group.dissect = function(buffer, offset, packet, parent, m_d_feed_types_group_index)
  if show.m_d_feed_types_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_feed_types_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.m_d_feed_types_group.fields(buffer, offset, packet, parent, m_d_feed_types_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_feed_types_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.m_d_feed_types_group.fields(buffer, offset, packet, parent, m_d_feed_types_group_index)
  end
end

-- M D Feed Types Groups
cme_futures_streamlined_sbe_v5_8.m_d_feed_types_groups = {}

-- Calculate size of: M D Feed Types Groups
cme_futures_streamlined_sbe_v5_8.m_d_feed_types_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local m_d_feed_types_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_feed_types_group_count * 4

  return index
end

-- Display: M D Feed Types Groups
cme_futures_streamlined_sbe_v5_8.m_d_feed_types_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Feed Types Groups
cme_futures_streamlined_sbe_v5_8.m_d_feed_types_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Feed Types Group
  for m_d_feed_types_group_index = 1, num_in_group_uint_8 do
    index, m_d_feed_types_group = cme_futures_streamlined_sbe_v5_8.m_d_feed_types_group.dissect(buffer, index, packet, parent, m_d_feed_types_group_index)
  end

  return index
end

-- Dissect: M D Feed Types Groups
cme_futures_streamlined_sbe_v5_8.m_d_feed_types_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_feed_types_groups then
    local length = cme_futures_streamlined_sbe_v5_8.m_d_feed_types_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_feed_types_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_feed_types_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.m_d_feed_types_groups.fields(buffer, offset, packet, parent)
end

-- Appl Id
cme_futures_streamlined_sbe_v5_8.appl_id = {}

-- Size: Appl Id
cme_futures_streamlined_sbe_v5_8.appl_id.size = 2

-- Display: Appl Id
cme_futures_streamlined_sbe_v5_8.appl_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Appl Id: No Value"
  end

  return "Appl Id: "..value
end

-- Dissect: Appl Id
cme_futures_streamlined_sbe_v5_8.appl_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.appl_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.appl_id, range, value, display)

  return offset + length, value
end

-- User Defined Instrument
cme_futures_streamlined_sbe_v5_8.user_defined_instrument = {}

-- Size: User Defined Instrument
cme_futures_streamlined_sbe_v5_8.user_defined_instrument.size = 1

-- Display: User Defined Instrument
cme_futures_streamlined_sbe_v5_8.user_defined_instrument.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Defined Instrument: No Value"
  end

  return "User Defined Instrument: "..value
end

-- Dissect: User Defined Instrument
cme_futures_streamlined_sbe_v5_8.user_defined_instrument.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.user_defined_instrument.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8.user_defined_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.user_defined_instrument, range, value, display)

  return offset + length, value
end

-- Coupon Rate
cme_futures_streamlined_sbe_v5_8.coupon_rate = {}

-- Size: Coupon Rate
cme_futures_streamlined_sbe_v5_8.coupon_rate.size = 4

-- Display: Coupon Rate
cme_futures_streamlined_sbe_v5_8.coupon_rate.display = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Coupon Rate: No Value"
  end

  return "Coupon Rate: "..value
end

-- Translate: Coupon Rate
cme_futures_streamlined_sbe_v5_8.coupon_rate.translate = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Coupon Rate
cme_futures_streamlined_sbe_v5_8.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.coupon_rate.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cme_futures_streamlined_sbe_v5_8.coupon_rate.translate(raw)
  local display = cme_futures_streamlined_sbe_v5_8.coupon_rate.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Rate Type
cme_futures_streamlined_sbe_v5_8.rate_type = {}

-- Size: Rate Type
cme_futures_streamlined_sbe_v5_8.rate_type.size = 2

-- Display: Rate Type
cme_futures_streamlined_sbe_v5_8.rate_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Rate Type: No Value"
  end

  return "Rate Type: "..value
end

-- Dissect: Rate Type
cme_futures_streamlined_sbe_v5_8.rate_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.rate_type.size
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

  local display = cme_futures_streamlined_sbe_v5_8.rate_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.rate_type, range, value, display)

  return offset + length, value
end

-- Security Update Action
cme_futures_streamlined_sbe_v5_8.security_update_action = {}

-- Size: Security Update Action
cme_futures_streamlined_sbe_v5_8.security_update_action.size = 1

-- Display: Security Update Action
cme_futures_streamlined_sbe_v5_8.security_update_action.display = function(value)
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
cme_futures_streamlined_sbe_v5_8.security_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_update_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8.security_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_update_action, range, value, display)

  return offset + length, value
end

-- Min Price Increment
cme_futures_streamlined_sbe_v5_8.min_price_increment = {}

-- Size: Min Price Increment
cme_futures_streamlined_sbe_v5_8.min_price_increment.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Min Price Increment
cme_futures_streamlined_sbe_v5_8.min_price_increment.display = function(raw, value)
  if raw ~= nil then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Dissect Fields: Min Price Increment
cme_futures_streamlined_sbe_v5_8.min_price_increment.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local min_price_increment = mantissa / factor( exponent )

  return index, min_price_increment
end

-- Dissect: Min Price Increment
cme_futures_streamlined_sbe_v5_8.min_price_increment.dissect = function(buffer, offset, packet, parent)
  if show.min_price_increment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.min_price_increment, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.min_price_increment.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.min_price_increment.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.min_price_increment.fields(buffer, offset, packet, parent)
  end
end

-- Currency
cme_futures_streamlined_sbe_v5_8.currency = {}

-- Size: Currency
cme_futures_streamlined_sbe_v5_8.currency.size = 3

-- Display: Currency
cme_futures_streamlined_sbe_v5_8.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
cme_futures_streamlined_sbe_v5_8.currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.currency.size
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

  local display = cme_futures_streamlined_sbe_v5_8.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.currency, range, value, display)

  return offset + length, value
end

-- Maturity Date
cme_futures_streamlined_sbe_v5_8.maturity_date = {}

-- Size: Maturity Date
cme_futures_streamlined_sbe_v5_8.maturity_date.size = 2

-- Display: Maturity Date
cme_futures_streamlined_sbe_v5_8.maturity_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cme_futures_streamlined_sbe_v5_8.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Security Exchange
cme_futures_streamlined_sbe_v5_8.security_exchange = {}

-- Size: Security Exchange
cme_futures_streamlined_sbe_v5_8.security_exchange.size = 4

-- Display: Security Exchange
cme_futures_streamlined_sbe_v5_8.security_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
cme_futures_streamlined_sbe_v5_8.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_exchange.size
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

  local display = cme_futures_streamlined_sbe_v5_8.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Product Optional
cme_futures_streamlined_sbe_v5_8.product_optional = {}

-- Size: Product Optional
cme_futures_streamlined_sbe_v5_8.product_optional.size = 1

-- Display: Product Optional
cme_futures_streamlined_sbe_v5_8.product_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Product Optional: No Value"
  end

  return "Product Optional: "..value
end

-- Dissect: Product Optional
cme_futures_streamlined_sbe_v5_8.product_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.product_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.product_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.product_optional, range, value, display)

  return offset + length, value
end

-- Security Type 4
cme_futures_streamlined_sbe_v5_8.security_type_4 = {}

-- Size: Security Type 4
cme_futures_streamlined_sbe_v5_8.security_type_4.size = 4

-- Display: Security Type 4
cme_futures_streamlined_sbe_v5_8.security_type_4.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type 4: No Value"
  end

  return "Security Type 4: "..value
end

-- Dissect: Security Type 4
cme_futures_streamlined_sbe_v5_8.security_type_4.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_type_4.size
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

  local display = cme_futures_streamlined_sbe_v5_8.security_type_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_type_4, range, value, display)

  return offset + length, value
end

-- Symbol
cme_futures_streamlined_sbe_v5_8.symbol = {}

-- Size: Symbol
cme_futures_streamlined_sbe_v5_8.symbol.size = 50

-- Display: Symbol
cme_futures_streamlined_sbe_v5_8.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_futures_streamlined_sbe_v5_8.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.symbol.size
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

  local display = cme_futures_streamlined_sbe_v5_8.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.symbol, range, value, display)

  return offset + length, value
end

-- Security Group 12
cme_futures_streamlined_sbe_v5_8.security_group_12 = {}

-- Size: Security Group 12
cme_futures_streamlined_sbe_v5_8.security_group_12.size = 12

-- Display: Security Group 12
cme_futures_streamlined_sbe_v5_8.security_group_12.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group 12: No Value"
  end

  return "Security Group 12: "..value
end

-- Dissect: Security Group 12
cme_futures_streamlined_sbe_v5_8.security_group_12.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_group_12.size
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

  local display = cme_futures_streamlined_sbe_v5_8.security_group_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_group_12, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Eris
cme_futures_streamlined_sbe_v5_8.md_instrument_definition_eris = {}

-- Calculate size of: Md Instrument Definition Eris
cme_futures_streamlined_sbe_v5_8.md_instrument_definition_eris.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.security_group_12.size

  index = index + cme_futures_streamlined_sbe_v5_8.symbol.size

  index = index + cme_futures_streamlined_sbe_v5_8.security_type_4.size

  index = index + cme_futures_streamlined_sbe_v5_8.product_optional.size

  index = index + cme_futures_streamlined_sbe_v5_8.security_exchange.size

  index = index + cme_futures_streamlined_sbe_v5_8.maturity_date.size

  index = index + cme_futures_streamlined_sbe_v5_8.currency.size

  index = index + cme_futures_streamlined_sbe_v5_8.min_price_increment.size

  index = index + cme_futures_streamlined_sbe_v5_8.security_update_action.size

  index = index + cme_futures_streamlined_sbe_v5_8.rate_type.size

  index = index + cme_futures_streamlined_sbe_v5_8.coupon_rate.size

  index = index + cme_futures_streamlined_sbe_v5_8.user_defined_instrument.size

  index = index + cme_futures_streamlined_sbe_v5_8.appl_id.size

  index = index + cme_futures_streamlined_sbe_v5_8.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8.events_groups.size(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8.security_alt_id_groups.size(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Eris
cme_futures_streamlined_sbe_v5_8.md_instrument_definition_eris.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Eris
cme_futures_streamlined_sbe_v5_8.md_instrument_definition_eris.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Group 12: 12 Byte Ascii String
  index, security_group_12 = cme_futures_streamlined_sbe_v5_8.security_group_12.dissect(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index, symbol = cme_futures_streamlined_sbe_v5_8.symbol.dissect(buffer, index, packet, parent)

  -- Security Type 4: 4 Byte Ascii String
  index, security_type_4 = cme_futures_streamlined_sbe_v5_8.security_type_4.dissect(buffer, index, packet, parent)

  -- Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, product_optional = cme_futures_streamlined_sbe_v5_8.product_optional.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8.security_exchange.dissect(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8.maturity_date.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_streamlined_sbe_v5_8.currency.dissect(buffer, index, packet, parent)

  -- Min Price Increment: Struct of 2 fields
  index, min_price_increment = cme_futures_streamlined_sbe_v5_8.min_price_increment.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_streamlined_sbe_v5_8.security_update_action.dissect(buffer, index, packet, parent)

  -- Rate Type: 2 Byte Ascii String
  index, rate_type = cme_futures_streamlined_sbe_v5_8.rate_type.dissect(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer Nullable
  index, coupon_rate = cme_futures_streamlined_sbe_v5_8.coupon_rate.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String Nullable
  index, user_defined_instrument = cme_futures_streamlined_sbe_v5_8.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, appl_id = cme_futures_streamlined_sbe_v5_8.appl_id.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_streamlined_sbe_v5_8.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_streamlined_sbe_v5_8.events_groups.dissect(buffer, index, packet, parent)

  -- Security Alt Id Groups: Struct of 2 fields
  index, security_alt_id_groups = cme_futures_streamlined_sbe_v5_8.security_alt_id_groups.dissect(buffer, index, packet, parent)

  -- M D Instrument Definition Eris Leg Groups: Struct of 2 fields
  index, m_d_instrument_definition_eris_leg_groups = cme_futures_streamlined_sbe_v5_8.m_d_instrument_definition_eris_leg_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Eris
cme_futures_streamlined_sbe_v5_8.md_instrument_definition_eris.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_eris then
    local length = cme_futures_streamlined_sbe_v5_8.md_instrument_definition_eris.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.md_instrument_definition_eris.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_instrument_definition_eris, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.md_instrument_definition_eris.fields(buffer, offset, packet, parent)
end

-- Reference Id 100
cme_futures_streamlined_sbe_v5_8.reference_id_100 = {}

-- Size: Reference Id 100
cme_futures_streamlined_sbe_v5_8.reference_id_100.size = 100

-- Display: Reference Id 100
cme_futures_streamlined_sbe_v5_8.reference_id_100.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reference Id 100: No Value"
  end

  return "Reference Id 100: "..value
end

-- Dissect: Reference Id 100
cme_futures_streamlined_sbe_v5_8.reference_id_100.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.reference_id_100.size
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

  local display = cme_futures_streamlined_sbe_v5_8.reference_id_100.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.reference_id_100, range, value, display)

  return offset + length, value
end

-- Vol Type
cme_futures_streamlined_sbe_v5_8.vol_type = {}

-- Size: Vol Type
cme_futures_streamlined_sbe_v5_8.vol_type.size = 2

-- Display: Vol Type
cme_futures_streamlined_sbe_v5_8.vol_type.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Vol Type: No Value"
  end

  return "Vol Type: "..value
end

-- Dissect: Vol Type
cme_futures_streamlined_sbe_v5_8.vol_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.vol_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.vol_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.vol_type, range, value, display)

  return offset + length, value
end

-- Security Sub Type
cme_futures_streamlined_sbe_v5_8.security_sub_type = {}

-- Size: Security Sub Type
cme_futures_streamlined_sbe_v5_8.security_sub_type.size = 2

-- Display: Security Sub Type
cme_futures_streamlined_sbe_v5_8.security_sub_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
cme_futures_streamlined_sbe_v5_8.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_sub_type.size
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

  local display = cme_futures_streamlined_sbe_v5_8.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Product Complex
cme_futures_streamlined_sbe_v5_8.product_complex = {}

-- Size: Product Complex
cme_futures_streamlined_sbe_v5_8.product_complex.size = 26

-- Display: Product Complex
cme_futures_streamlined_sbe_v5_8.product_complex.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Complex: No Value"
  end

  return "Product Complex: "..value
end

-- Dissect: Product Complex
cme_futures_streamlined_sbe_v5_8.product_complex.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.product_complex.size
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

  local display = cme_futures_streamlined_sbe_v5_8.product_complex.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Sector Sub Group
cme_futures_streamlined_sbe_v5_8.sector_sub_group = {}

-- Size: Sector Sub Group
cme_futures_streamlined_sbe_v5_8.sector_sub_group.size = 26

-- Display: Sector Sub Group
cme_futures_streamlined_sbe_v5_8.sector_sub_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sector Sub Group: No Value"
  end

  return "Sector Sub Group: "..value
end

-- Dissect: Sector Sub Group
cme_futures_streamlined_sbe_v5_8.sector_sub_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.sector_sub_group.size
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

  local display = cme_futures_streamlined_sbe_v5_8.sector_sub_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.sector_sub_group, range, value, display)

  return offset + length, value
end

-- Sector Group
cme_futures_streamlined_sbe_v5_8.sector_group = {}

-- Size: Sector Group
cme_futures_streamlined_sbe_v5_8.sector_group.size = 2

-- Display: Sector Group
cme_futures_streamlined_sbe_v5_8.sector_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sector Group: No Value"
  end

  return "Sector Group: "..value
end

-- Dissect: Sector Group
cme_futures_streamlined_sbe_v5_8.sector_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.sector_group.size
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

  local display = cme_futures_streamlined_sbe_v5_8.sector_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.sector_group, range, value, display)

  return offset + length, value
end

-- Market Sector
cme_futures_streamlined_sbe_v5_8.market_sector = {}

-- Size: Market Sector
cme_futures_streamlined_sbe_v5_8.market_sector.size = 26

-- Display: Market Sector
cme_futures_streamlined_sbe_v5_8.market_sector.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Sector: No Value"
  end

  return "Market Sector: "..value
end

-- Dissect: Market Sector
cme_futures_streamlined_sbe_v5_8.market_sector.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.market_sector.size
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

  local display = cme_futures_streamlined_sbe_v5_8.market_sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.market_sector, range, value, display)

  return offset + length, value
end

-- Quote Condition
cme_futures_streamlined_sbe_v5_8.quote_condition = {}

-- Size: Quote Condition
cme_futures_streamlined_sbe_v5_8.quote_condition.size = 1

-- Display: Quote Condition
cme_futures_streamlined_sbe_v5_8.quote_condition.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Condition: No Value"
  end

  return "Quote Condition: "..value
end

-- Dissect: Quote Condition
cme_futures_streamlined_sbe_v5_8.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.quote_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Settl Date
cme_futures_streamlined_sbe_v5_8.settl_date = {}

-- Size: Settl Date
cme_futures_streamlined_sbe_v5_8.settl_date.size = 2

-- Display: Settl Date
cme_futures_streamlined_sbe_v5_8.settl_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Settl Date: No Value"
  end

  return "Settl Date: "..value
end

-- Dissect: Settl Date
cme_futures_streamlined_sbe_v5_8.settl_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.settl_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.settl_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Price Type
cme_futures_streamlined_sbe_v5_8.price_type = {}

-- Size: Price Type
cme_futures_streamlined_sbe_v5_8.price_type.size = 2

-- Display: Price Type
cme_futures_streamlined_sbe_v5_8.price_type.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Price Type: No Value"
  end

  return "Price Type: "..value
end

-- Dissect: Price Type
cme_futures_streamlined_sbe_v5_8.price_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.price_type, range, value, display)

  return offset + length, value
end

-- Open Close Settl Flag
cme_futures_streamlined_sbe_v5_8.open_close_settl_flag = {}

-- Size: Open Close Settl Flag
cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.size = 1

-- Display: Open Close Settl Flag
cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Open Close Settl Flag: No Value"
  end

  return "Open Close Settl Flag: "..value
end

-- Dissect: Open Close Settl Flag
cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Md Entry Date
cme_futures_streamlined_sbe_v5_8.md_entry_date = {}

-- Size: Md Entry Date
cme_futures_streamlined_sbe_v5_8.md_entry_date.size = 4

-- Display: Md Entry Date
cme_futures_streamlined_sbe_v5_8.md_entry_date.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Date: No Value"
  end

  return "Md Entry Date: "..value
end

-- Dissect: Md Entry Date
cme_futures_streamlined_sbe_v5_8.md_entry_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_entry_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.md_entry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_date, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Qty Decimal
cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_decimal = {}

-- Size: Unit Of Measure Qty Decimal
cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_decimal.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Unit Of Measure Qty Decimal
cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_decimal.display = function(raw, value)
  if raw ~= nil then
    return "Unit Of Measure Qty Decimal: No Value"
  end

  return "Unit Of Measure Qty Decimal: "..value
end

-- Dissect Fields: Unit Of Measure Qty Decimal
cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_decimal.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local unit_of_measure_qty_decimal = mantissa / factor( exponent )

  return index, unit_of_measure_qty_decimal
end

-- Dissect: Unit Of Measure Qty Decimal
cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_decimal.dissect = function(buffer, offset, packet, parent)
  if show.unit_of_measure_qty_decimal then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_qty_decimal, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_decimal.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_decimal.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_decimal.fields(buffer, offset, packet, parent)
  end
end

-- Unit Of Measure Currency
cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency = {}

-- Size: Unit Of Measure Currency
cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency.size = 3

-- Display: Unit Of Measure Currency
cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure Currency: No Value"
  end

  return "Unit Of Measure Currency: "..value
end

-- Dissect: Unit Of Measure Currency
cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency.size
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

  local display = cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_currency, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
cme_futures_streamlined_sbe_v5_8.unit_of_measure = {}

-- Size: Unit Of Measure
cme_futures_streamlined_sbe_v5_8.unit_of_measure.size = 5

-- Display: Unit Of Measure
cme_futures_streamlined_sbe_v5_8.unit_of_measure.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
cme_futures_streamlined_sbe_v5_8.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.unit_of_measure.size
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

  local display = cme_futures_streamlined_sbe_v5_8.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Strike Price Decimal
cme_futures_streamlined_sbe_v5_8.strike_price_decimal = {}

-- Size: Strike Price Decimal
cme_futures_streamlined_sbe_v5_8.strike_price_decimal.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Strike Price Decimal
cme_futures_streamlined_sbe_v5_8.strike_price_decimal.display = function(raw, value)
  if raw ~= nil then
    return "Strike Price Decimal: No Value"
  end

  return "Strike Price Decimal: "..value
end

-- Dissect Fields: Strike Price Decimal
cme_futures_streamlined_sbe_v5_8.strike_price_decimal.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local strike_price_decimal = mantissa / factor( exponent )

  return index, strike_price_decimal
end

-- Dissect: Strike Price Decimal
cme_futures_streamlined_sbe_v5_8.strike_price_decimal.dissect = function(buffer, offset, packet, parent)
  if show.strike_price_decimal then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.strike_price_decimal, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.strike_price_decimal.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.strike_price_decimal.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.strike_price_decimal.fields(buffer, offset, packet, parent)
  end
end

-- Put Or Call
cme_futures_streamlined_sbe_v5_8.put_or_call = {}

-- Size: Put Or Call
cme_futures_streamlined_sbe_v5_8.put_or_call.size = 1

-- Display: Put Or Call
cme_futures_streamlined_sbe_v5_8.put_or_call.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Put Or Call: No Value"
  end

  return "Put Or Call: "..value
end

-- Dissect: Put Or Call
cme_futures_streamlined_sbe_v5_8.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Notional Percentage Outstanding
cme_futures_streamlined_sbe_v5_8.notional_percentage_outstanding = {}

-- Size: Notional Percentage Outstanding
cme_futures_streamlined_sbe_v5_8.notional_percentage_outstanding.size = 4

-- Display: Notional Percentage Outstanding
cme_futures_streamlined_sbe_v5_8.notional_percentage_outstanding.display = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Notional Percentage Outstanding: No Value"
  end

  return "Notional Percentage Outstanding: "..value
end

-- Translate: Notional Percentage Outstanding
cme_futures_streamlined_sbe_v5_8.notional_percentage_outstanding.translate = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Notional Percentage Outstanding
cme_futures_streamlined_sbe_v5_8.notional_percentage_outstanding.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.notional_percentage_outstanding.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cme_futures_streamlined_sbe_v5_8.notional_percentage_outstanding.translate(raw)
  local display = cme_futures_streamlined_sbe_v5_8.notional_percentage_outstanding.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.notional_percentage_outstanding, range, value, display)

  return offset + length, value
end

-- Seniority
cme_futures_streamlined_sbe_v5_8.seniority = {}

-- Size: Seniority
cme_futures_streamlined_sbe_v5_8.seniority.size = 2

-- Display: Seniority
cme_futures_streamlined_sbe_v5_8.seniority.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Seniority: No Value"
  end

  return "Seniority: "..value
end

-- Dissect: Seniority
cme_futures_streamlined_sbe_v5_8.seniority.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.seniority.size
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

  local display = cme_futures_streamlined_sbe_v5_8.seniority.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.seniority, range, value, display)

  return offset + length, value
end

-- Restructuring Type
cme_futures_streamlined_sbe_v5_8.restructuring_type = {}

-- Size: Restructuring Type
cme_futures_streamlined_sbe_v5_8.restructuring_type.size = 2

-- Display: Restructuring Type
cme_futures_streamlined_sbe_v5_8.restructuring_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Restructuring Type: No Value"
  end

  return "Restructuring Type: "..value
end

-- Dissect: Restructuring Type
cme_futures_streamlined_sbe_v5_8.restructuring_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.restructuring_type.size
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

  local display = cme_futures_streamlined_sbe_v5_8.restructuring_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.restructuring_type, range, value, display)

  return offset + length, value
end

-- Week
cme_futures_streamlined_sbe_v5_8.week = {}

-- Size: Week
cme_futures_streamlined_sbe_v5_8.week.size = 1

-- Display: Week
cme_futures_streamlined_sbe_v5_8.week.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
cme_futures_streamlined_sbe_v5_8.week.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.week.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.week.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.week, range, value, display)

  return offset + length, value
end

-- Day
cme_futures_streamlined_sbe_v5_8.day = {}

-- Size: Day
cme_futures_streamlined_sbe_v5_8.day.size = 1

-- Display: Day
cme_futures_streamlined_sbe_v5_8.day.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
cme_futures_streamlined_sbe_v5_8.day.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.day.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.day, range, value, display)

  return offset + length, value
end

-- Month
cme_futures_streamlined_sbe_v5_8.month = {}

-- Size: Month
cme_futures_streamlined_sbe_v5_8.month.size = 1

-- Display: Month
cme_futures_streamlined_sbe_v5_8.month.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
cme_futures_streamlined_sbe_v5_8.month.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.month.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.month, range, value, display)

  return offset + length, value
end

-- Year
cme_futures_streamlined_sbe_v5_8.year = {}

-- Size: Year
cme_futures_streamlined_sbe_v5_8.year.size = 2

-- Display: Year
cme_futures_streamlined_sbe_v5_8.year.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
cme_futures_streamlined_sbe_v5_8.year.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.year, range, value, display)

  return offset + length, value
end

-- Maturity Month Year
cme_futures_streamlined_sbe_v5_8.maturity_month_year = {}

-- Size: Maturity Month Year
cme_futures_streamlined_sbe_v5_8.maturity_month_year.size =
  cme_futures_streamlined_sbe_v5_8.year.size + 
  cme_futures_streamlined_sbe_v5_8.month.size + 
  cme_futures_streamlined_sbe_v5_8.day.size + 
  cme_futures_streamlined_sbe_v5_8.week.size

-- Display: Maturity Month Year
cme_futures_streamlined_sbe_v5_8.maturity_month_year.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Month Year
cme_futures_streamlined_sbe_v5_8.maturity_month_year.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = cme_futures_streamlined_sbe_v5_8.year.dissect(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = cme_futures_streamlined_sbe_v5_8.month.dissect(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = cme_futures_streamlined_sbe_v5_8.day.dissect(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = cme_futures_streamlined_sbe_v5_8.week.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
cme_futures_streamlined_sbe_v5_8.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  if show.maturity_month_year then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.maturity_month_year, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.maturity_month_year.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.maturity_month_year.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.maturity_month_year.fields(buffer, offset, packet, parent)
  end
end

-- Security Type
cme_futures_streamlined_sbe_v5_8.security_type = {}

-- Size: Security Type
cme_futures_streamlined_sbe_v5_8.security_type.size = 9

-- Display: Security Type
cme_futures_streamlined_sbe_v5_8.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
cme_futures_streamlined_sbe_v5_8.security_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_type.size
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

  local display = cme_futures_streamlined_sbe_v5_8.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_type, range, value, display)

  return offset + length, value
end

-- Md Entry Size
cme_futures_streamlined_sbe_v5_8.md_entry_size = {}

-- Size: Md Entry Size
cme_futures_streamlined_sbe_v5_8.md_entry_size.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Md Entry Size
cme_futures_streamlined_sbe_v5_8.md_entry_size.display = function(raw, value)
  if raw ~= nil then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect Fields: Md Entry Size
cme_futures_streamlined_sbe_v5_8.md_entry_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local md_entry_size = mantissa / factor( exponent )

  return index, md_entry_size
end

-- Dissect: Md Entry Size
cme_futures_streamlined_sbe_v5_8.md_entry_size.dissect = function(buffer, offset, packet, parent)
  if show.md_entry_size then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_size, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.md_entry_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.md_entry_size.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.md_entry_size.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Px Optional
cme_futures_streamlined_sbe_v5_8.md_entry_px_optional = {}

-- Size: Md Entry Px Optional
cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.size = 8

-- Display: Md Entry Px Optional
cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Md Entry Px Optional: No Value"
  end

  return "Md Entry Px Optional: "..value
end

-- Translate: Md Entry Px Optional
cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Md Entry Px Optional
cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.translate(raw)
  local display = cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_optional, range, value, display)

  return offset + length, value
end

-- Rpt Seq
cme_futures_streamlined_sbe_v5_8.rpt_seq = {}

-- Size: Rpt Seq
cme_futures_streamlined_sbe_v5_8.rpt_seq.size = 4

-- Display: Rpt Seq
cme_futures_streamlined_sbe_v5_8.rpt_seq.display = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
cme_futures_streamlined_sbe_v5_8.rpt_seq.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.rpt_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.rpt_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Md Entry Type
cme_futures_streamlined_sbe_v5_8.md_entry_type = {}

-- Size: Md Entry Type
cme_futures_streamlined_sbe_v5_8.md_entry_type.size = 1

-- Display: Md Entry Type
cme_futures_streamlined_sbe_v5_8.md_entry_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Entry Type: No Value"
  end

  return "Md Entry Type: "..value
end

-- Dissect: Md Entry Type
cme_futures_streamlined_sbe_v5_8.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_entry_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Otc Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_group = {}

-- Size: M D Incremental Refresh Otc Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_group.size =
  cme_futures_streamlined_sbe_v5_8.md_entry_type.size + 
  cme_futures_streamlined_sbe_v5_8.rpt_seq.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_size.size + 
  cme_futures_streamlined_sbe_v5_8.symbol.size + 
  cme_futures_streamlined_sbe_v5_8.security_group_12.size + 
  cme_futures_streamlined_sbe_v5_8.security_type.size + 
  cme_futures_streamlined_sbe_v5_8.maturity_month_year.size + 
  cme_futures_streamlined_sbe_v5_8.security_exchange.size + 
  cme_futures_streamlined_sbe_v5_8.product_optional.size + 
  cme_futures_streamlined_sbe_v5_8.maturity_date.size + 
  cme_futures_streamlined_sbe_v5_8.coupon_rate.size + 
  cme_futures_streamlined_sbe_v5_8.restructuring_type.size + 
  cme_futures_streamlined_sbe_v5_8.seniority.size + 
  cme_futures_streamlined_sbe_v5_8.notional_percentage_outstanding.size + 
  cme_futures_streamlined_sbe_v5_8.put_or_call.size + 
  cme_futures_streamlined_sbe_v5_8.strike_price_decimal.size + 
  cme_futures_streamlined_sbe_v5_8.unit_of_measure.size + 
  cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency.size + 
  cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_decimal.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_date.size + 
  cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.size + 
  cme_futures_streamlined_sbe_v5_8.price_type.size + 
  cme_futures_streamlined_sbe_v5_8.settl_date.size + 
  cme_futures_streamlined_sbe_v5_8.quote_condition.size + 
  cme_futures_streamlined_sbe_v5_8.market_sector.size + 
  cme_futures_streamlined_sbe_v5_8.sector_group.size + 
  cme_futures_streamlined_sbe_v5_8.sector_sub_group.size + 
  cme_futures_streamlined_sbe_v5_8.product_complex.size + 
  cme_futures_streamlined_sbe_v5_8.security_sub_type.size + 
  cme_futures_streamlined_sbe_v5_8.vol_type.size + 
  cme_futures_streamlined_sbe_v5_8.reference_id_100.size

-- Display: M D Incremental Refresh Otc Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Otc Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_otc_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Otc Group Index
  if m_d_incremental_refresh_otc_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_otc_group_index, m_d_incremental_refresh_otc_group_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String
  index, md_entry_type = cme_futures_streamlined_sbe_v5_8.md_entry_type.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size: Struct of 2 fields
  index, md_entry_size = cme_futures_streamlined_sbe_v5_8.md_entry_size.dissect(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index, symbol = cme_futures_streamlined_sbe_v5_8.symbol.dissect(buffer, index, packet, parent)

  -- Security Group 12: 12 Byte Ascii String
  index, security_group_12 = cme_futures_streamlined_sbe_v5_8.security_group_12.dissect(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String
  index, security_type = cme_futures_streamlined_sbe_v5_8.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_streamlined_sbe_v5_8.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8.security_exchange.dissect(buffer, index, packet, parent)

  -- Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, product_optional = cme_futures_streamlined_sbe_v5_8.product_optional.dissect(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8.maturity_date.dissect(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer Nullable
  index, coupon_rate = cme_futures_streamlined_sbe_v5_8.coupon_rate.dissect(buffer, index, packet, parent)

  -- Restructuring Type: 2 Byte Ascii String
  index, restructuring_type = cme_futures_streamlined_sbe_v5_8.restructuring_type.dissect(buffer, index, packet, parent)

  -- Seniority: 2 Byte Ascii String
  index, seniority = cme_futures_streamlined_sbe_v5_8.seniority.dissect(buffer, index, packet, parent)

  -- Notional Percentage Outstanding: 4 Byte Signed Fixed Width Integer Nullable
  index, notional_percentage_outstanding = cme_futures_streamlined_sbe_v5_8.notional_percentage_outstanding.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Nullable
  index, put_or_call = cme_futures_streamlined_sbe_v5_8.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price Decimal: Struct of 2 fields
  index, strike_price_decimal = cme_futures_streamlined_sbe_v5_8.strike_price_decimal.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 5 Byte Ascii String
  index, unit_of_measure = cme_futures_streamlined_sbe_v5_8.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Currency: 3 Byte Ascii String
  index, unit_of_measure_currency = cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty Decimal: Struct of 2 fields
  index, unit_of_measure_qty_decimal = cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_decimal.dissect(buffer, index, packet, parent)

  -- Md Entry Date: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_date = cme_futures_streamlined_sbe_v5_8.md_entry_date.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, open_close_settl_flag = cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Price Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, price_type = cme_futures_streamlined_sbe_v5_8.price_type.dissect(buffer, index, packet, parent)

  -- Settl Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settl_date = cme_futures_streamlined_sbe_v5_8.settl_date.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String
  index, quote_condition = cme_futures_streamlined_sbe_v5_8.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Sector: 26 Byte Ascii String
  index, market_sector = cme_futures_streamlined_sbe_v5_8.market_sector.dissect(buffer, index, packet, parent)

  -- Sector Group: 2 Byte Ascii String
  index, sector_group = cme_futures_streamlined_sbe_v5_8.sector_group.dissect(buffer, index, packet, parent)

  -- Sector Sub Group: 26 Byte Ascii String
  index, sector_sub_group = cme_futures_streamlined_sbe_v5_8.sector_sub_group.dissect(buffer, index, packet, parent)

  -- Product Complex: 26 Byte Ascii String
  index, product_complex = cme_futures_streamlined_sbe_v5_8.product_complex.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 2 Byte Ascii String
  index, security_sub_type = cme_futures_streamlined_sbe_v5_8.security_sub_type.dissect(buffer, index, packet, parent)

  -- Vol Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, vol_type = cme_futures_streamlined_sbe_v5_8.vol_type.dissect(buffer, index, packet, parent)

  -- Reference Id 100: 100 Byte Ascii String
  index, reference_id_100 = cme_futures_streamlined_sbe_v5_8.reference_id_100.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Otc Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_otc_group_index)
  if show.m_d_incremental_refresh_otc_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_otc_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_otc_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_otc_group_index)
  end
end

-- M D Incremental Refresh Otc Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_groups = {}

-- Calculate size of: M D Incremental Refresh Otc Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_otc_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_otc_group_count * 338

  return index
end

-- Display: M D Incremental Refresh Otc Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Otc Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Otc Group
  for m_d_incremental_refresh_otc_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_otc_group = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_otc_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Otc Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_otc_groups then
    local length = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_otc_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_groups.fields(buffer, offset, packet, parent)
end

-- Batch Total Messages Optional
cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional = {}

-- Size: Batch Total Messages Optional
cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.size = 2

-- Display: Batch Total Messages Optional
cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Batch Total Messages Optional: No Value"
  end

  return "Batch Total Messages Optional: "..value
end

-- Dissect: Batch Total Messages Optional
cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.batch_total_messages_optional, range, value, display)

  return offset + length, value
end

-- Match Event Indicator
cme_futures_streamlined_sbe_v5_8.match_event_indicator = {}

-- Size: Match Event Indicator
cme_futures_streamlined_sbe_v5_8.match_event_indicator.size = 1

-- Display: Match Event Indicator
cme_futures_streamlined_sbe_v5_8.match_event_indicator.display = function(buffer, packet, parent)
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
cme_futures_streamlined_sbe_v5_8.match_event_indicator.bits = function(buffer, offset, packet, parent)

  -- End Of Event: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.end_of_event, buffer(offset, 1))

  -- Reserved: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.reserved, buffer(offset, 1))

  -- Recovery Msg: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.recovery_msg, buffer(offset, 1))

  -- Last Implied Msg: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.last_implied_msg, buffer(offset, 1))

  -- Last Stats Msg: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.last_stats_msg, buffer(offset, 1))

  -- Last Quote Msg: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.last_quote_msg, buffer(offset, 1))

  -- Last Volume Msg: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.last_volume_msg, buffer(offset, 1))

  -- Last Trade Msg: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.last_trade_msg, buffer(offset, 1))
end

-- Dissect: Match Event Indicator
cme_futures_streamlined_sbe_v5_8.match_event_indicator.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_streamlined_sbe_v5_8.match_event_indicator.display(range, packet, parent)
  local element = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.match_event_indicator, range, display)

  if show.match_event_indicator then
    cme_futures_streamlined_sbe_v5_8.match_event_indicator.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Trade Date
cme_futures_streamlined_sbe_v5_8.trade_date = {}

-- Size: Trade Date
cme_futures_streamlined_sbe_v5_8.trade_date.size = 2

-- Display: Trade Date
cme_futures_streamlined_sbe_v5_8.trade_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_futures_streamlined_sbe_v5_8.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Transact Time
cme_futures_streamlined_sbe_v5_8.transact_time = {}

-- Size: Transact Time
cme_futures_streamlined_sbe_v5_8.transact_time.size = 8

-- Display: Transact Time
cme_futures_streamlined_sbe_v5_8.transact_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
cme_futures_streamlined_sbe_v5_8.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Md Incremental Refresh Otc
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_otc = {}

-- Calculate size of: Md Incremental Refresh Otc
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_otc.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.transact_time.size

  index = index + cme_futures_streamlined_sbe_v5_8.trade_date.size

  index = index + cme_futures_streamlined_sbe_v5_8.match_event_indicator.size

  index = index + cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.size

  index = index + cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Otc
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_otc.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Otc
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_otc.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8.transact_time.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_streamlined_sbe_v5_8.trade_date.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Batch Total Messages Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, batch_total_messages_optional = cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Otc Groups: Struct of 2 fields
  index, m_d_incremental_refresh_otc_groups = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_otc_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Otc
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_otc.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_otc then
    local length = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_otc.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_otc.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_otc, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_otc.fields(buffer, offset, packet, parent)
end

-- Md Quote Type
cme_futures_streamlined_sbe_v5_8.md_quote_type = {}

-- Size: Md Quote Type
cme_futures_streamlined_sbe_v5_8.md_quote_type.size = 1

-- Display: Md Quote Type
cme_futures_streamlined_sbe_v5_8.md_quote_type.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Md Quote Type: No Value"
  end

  return "Md Quote Type: "..value
end

-- Dissect: Md Quote Type
cme_futures_streamlined_sbe_v5_8.md_quote_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_quote_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.md_quote_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_quote_type, range, value, display)

  return offset + length, value
end

-- Reference Id 50
cme_futures_streamlined_sbe_v5_8.reference_id_50 = {}

-- Size: Reference Id 50
cme_futures_streamlined_sbe_v5_8.reference_id_50.size = 50

-- Display: Reference Id 50
cme_futures_streamlined_sbe_v5_8.reference_id_50.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reference Id 50: No Value"
  end

  return "Reference Id 50: "..value
end

-- Dissect: Reference Id 50
cme_futures_streamlined_sbe_v5_8.reference_id_50.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.reference_id_50.size
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

  local display = cme_futures_streamlined_sbe_v5_8.reference_id_50.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.reference_id_50, range, value, display)

  return offset + length, value
end

-- Security Group 26
cme_futures_streamlined_sbe_v5_8.security_group_26 = {}

-- Size: Security Group 26
cme_futures_streamlined_sbe_v5_8.security_group_26.size = 26

-- Display: Security Group 26
cme_futures_streamlined_sbe_v5_8.security_group_26.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group 26: No Value"
  end

  return "Security Group 26: "..value
end

-- Dissect: Security Group 26
cme_futures_streamlined_sbe_v5_8.security_group_26.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_group_26.size
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

  local display = cme_futures_streamlined_sbe_v5_8.security_group_26.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_group_26, range, value, display)

  return offset + length, value
end

-- Aggressor Side
cme_futures_streamlined_sbe_v5_8.aggressor_side = {}

-- Size: Aggressor Side
cme_futures_streamlined_sbe_v5_8.aggressor_side.size = 1

-- Display: Aggressor Side
cme_futures_streamlined_sbe_v5_8.aggressor_side.display = function(value)
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
cme_futures_streamlined_sbe_v5_8.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Trade Id
cme_futures_streamlined_sbe_v5_8.trade_id = {}

-- Size: Trade Id
cme_futures_streamlined_sbe_v5_8.trade_id.size = 4

-- Display: Trade Id
cme_futures_streamlined_sbe_v5_8.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cme_futures_streamlined_sbe_v5_8.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Number Of Orders
cme_futures_streamlined_sbe_v5_8.number_of_orders = {}

-- Size: Number Of Orders
cme_futures_streamlined_sbe_v5_8.number_of_orders.size = 4

-- Display: Number Of Orders
cme_futures_streamlined_sbe_v5_8.number_of_orders.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Number Of Orders: No Value"
  end

  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
cme_futures_streamlined_sbe_v5_8.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Md Entry Position No
cme_futures_streamlined_sbe_v5_8.md_entry_position_no = {}

-- Size: Md Entry Position No
cme_futures_streamlined_sbe_v5_8.md_entry_position_no.size = 4

-- Display: Md Entry Position No
cme_futures_streamlined_sbe_v5_8.md_entry_position_no.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Position No: No Value"
  end

  return "Md Entry Position No: "..value
end

-- Dissect: Md Entry Position No
cme_futures_streamlined_sbe_v5_8.md_entry_position_no.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_entry_position_no.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.md_entry_position_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_position_no, range, value, display)

  return offset + length, value
end

-- Cal Fut Px
cme_futures_streamlined_sbe_v5_8.cal_fut_px = {}

-- Size: Cal Fut Px
cme_futures_streamlined_sbe_v5_8.cal_fut_px.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Cal Fut Px
cme_futures_streamlined_sbe_v5_8.cal_fut_px.display = function(raw, value)
  if raw ~= nil then
    return "Cal Fut Px: No Value"
  end

  return "Cal Fut Px: "..value
end

-- Dissect Fields: Cal Fut Px
cme_futures_streamlined_sbe_v5_8.cal_fut_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local cal_fut_px = mantissa / factor( exponent )

  return index, cal_fut_px
end

-- Dissect: Cal Fut Px
cme_futures_streamlined_sbe_v5_8.cal_fut_px.dissect = function(buffer, offset, packet, parent)
  if show.cal_fut_px then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.cal_fut_px, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.cal_fut_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.cal_fut_px.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.cal_fut_px.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Size Optional
cme_futures_streamlined_sbe_v5_8.md_entry_size_optional = {}

-- Size: Md Entry Size Optional
cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.size = 8

-- Display: Md Entry Size Optional
cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Entry Size Optional: No Value"
  end

  return "Md Entry Size Optional: "..value
end

-- Dissect: Md Entry Size Optional
cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_size_optional, range, value, display)

  return offset + length, value
end

-- Md Entry Px Decimal
cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal = {}

-- Size: Md Entry Px Decimal
cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Md Entry Px Decimal
cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.display = function(raw, value)
  if raw ~= nil then
    return "Md Entry Px Decimal: No Value"
  end

  return "Md Entry Px Decimal: "..value
end

-- Dissect Fields: Md Entry Px Decimal
cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local md_entry_px_decimal = mantissa / factor( exponent )

  return index, md_entry_px_decimal
end

-- Dissect: Md Entry Px Decimal
cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.dissect = function(buffer, offset, packet, parent)
  if show.md_entry_px_decimal then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_decimal, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.fields(buffer, offset, packet, parent)
  end
end

-- Md Update Action Char
cme_futures_streamlined_sbe_v5_8.md_update_action_char = {}

-- Size: Md Update Action Char
cme_futures_streamlined_sbe_v5_8.md_update_action_char.size = 1

-- Display: Md Update Action Char
cme_futures_streamlined_sbe_v5_8.md_update_action_char.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Update Action Char: No Value"
  end

  return "Md Update Action Char: "..value
end

-- Dissect: Md Update Action Char
cme_futures_streamlined_sbe_v5_8.md_update_action_char.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_update_action_char.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8.md_update_action_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_update_action_char, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Eris 353 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_group = {}

-- Size: M D Incremental Refresh Eris 353 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_group.size =
  cme_futures_streamlined_sbe_v5_8.md_update_action_char.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_type.size + 
  cme_futures_streamlined_sbe_v5_8.rpt_seq.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.size + 
  cme_futures_streamlined_sbe_v5_8.cal_fut_px.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_position_no.size + 
  cme_futures_streamlined_sbe_v5_8.number_of_orders.size + 
  cme_futures_streamlined_sbe_v5_8.trade_id.size + 
  cme_futures_streamlined_sbe_v5_8.aggressor_side.size + 
  cme_futures_streamlined_sbe_v5_8.symbol.size + 
  cme_futures_streamlined_sbe_v5_8.security_group_26.size + 
  cme_futures_streamlined_sbe_v5_8.security_type.size + 
  cme_futures_streamlined_sbe_v5_8.security_exchange.size + 
  cme_futures_streamlined_sbe_v5_8.product_optional.size + 
  cme_futures_streamlined_sbe_v5_8.maturity_date.size + 
  cme_futures_streamlined_sbe_v5_8.reference_id_50.size + 
  cme_futures_streamlined_sbe_v5_8.md_quote_type.size

-- Display: M D Incremental Refresh Eris 353 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris 353 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_eris_353_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Eris 353 Group Index
  if m_d_incremental_refresh_eris_353_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_353_group_index, m_d_incremental_refresh_eris_353_group_index)
    iteration:set_generated()
  end

  -- Md Update Action Char: 1 Byte Ascii String
  index, md_update_action_char = cme_futures_streamlined_sbe_v5_8.md_update_action_char.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String
  index, md_entry_type = cme_futures_streamlined_sbe_v5_8.md_entry_type.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Entry Px Decimal: Struct of 2 fields
  index, md_entry_px_decimal = cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Cal Fut Px: Struct of 2 fields
  index, cal_fut_px = cme_futures_streamlined_sbe_v5_8.cal_fut_px.dissect(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_position_no = cme_futures_streamlined_sbe_v5_8.md_entry_position_no.dissect(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders = cme_futures_streamlined_sbe_v5_8.number_of_orders.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Signed Fixed Width Integer
  index, trade_id = cme_futures_streamlined_sbe_v5_8.trade_id.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_streamlined_sbe_v5_8.aggressor_side.dissect(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index, symbol = cme_futures_streamlined_sbe_v5_8.symbol.dissect(buffer, index, packet, parent)

  -- Security Group 26: 26 Byte Ascii String
  index, security_group_26 = cme_futures_streamlined_sbe_v5_8.security_group_26.dissect(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String
  index, security_type = cme_futures_streamlined_sbe_v5_8.security_type.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8.security_exchange.dissect(buffer, index, packet, parent)

  -- Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, product_optional = cme_futures_streamlined_sbe_v5_8.product_optional.dissect(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8.maturity_date.dissect(buffer, index, packet, parent)

  -- Reference Id 50: 50 Byte Ascii String
  index, reference_id_50 = cme_futures_streamlined_sbe_v5_8.reference_id_50.dissect(buffer, index, packet, parent)

  -- Md Quote Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, md_quote_type = cme_futures_streamlined_sbe_v5_8.md_quote_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Eris 353 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_eris_353_group_index)
  if show.m_d_incremental_refresh_eris_353_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_353_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_eris_353_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_eris_353_group_index)
  end
end

-- M D Incremental Refresh Eris 353 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_groups = {}

-- Calculate size of: M D Incremental Refresh Eris 353 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_eris_353_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_eris_353_group_count * 188

  return index
end

-- Display: M D Incremental Refresh Eris 353 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris 353 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Eris 353 Group
  for m_d_incremental_refresh_eris_353_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_eris_353_group = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_eris_353_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Eris 353 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_eris_353_groups then
    local length = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_353_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Eris
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris = {}

-- Calculate size of: Md Incremental Refresh Eris
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.transact_time.size

  index = index + cme_futures_streamlined_sbe_v5_8.match_event_indicator.size

  index = index + cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.size

  index = index + cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Eris
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Eris
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Batch Total Messages Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, batch_total_messages_optional = cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Eris 353 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_eris_353_groups = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_353_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Eris
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris then
    local length = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Eris 351 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_group = {}

-- Size: M D Incremental Refresh Eris 351 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_group.size =
  cme_futures_streamlined_sbe_v5_8.md_update_action_char.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_type.size + 
  cme_futures_streamlined_sbe_v5_8.rpt_seq.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.size + 
  cme_futures_streamlined_sbe_v5_8.cal_fut_px.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_position_no.size + 
  cme_futures_streamlined_sbe_v5_8.number_of_orders.size + 
  cme_futures_streamlined_sbe_v5_8.trade_id.size + 
  cme_futures_streamlined_sbe_v5_8.aggressor_side.size + 
  cme_futures_streamlined_sbe_v5_8.symbol.size + 
  cme_futures_streamlined_sbe_v5_8.security_group_26.size + 
  cme_futures_streamlined_sbe_v5_8.security_type.size + 
  cme_futures_streamlined_sbe_v5_8.security_exchange.size + 
  cme_futures_streamlined_sbe_v5_8.product_optional.size + 
  cme_futures_streamlined_sbe_v5_8.maturity_date.size + 
  cme_futures_streamlined_sbe_v5_8.reference_id_50.size

-- Display: M D Incremental Refresh Eris 351 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris 351 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_eris_351_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Eris 351 Group Index
  if m_d_incremental_refresh_eris_351_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_351_group_index, m_d_incremental_refresh_eris_351_group_index)
    iteration:set_generated()
  end

  -- Md Update Action Char: 1 Byte Ascii String
  index, md_update_action_char = cme_futures_streamlined_sbe_v5_8.md_update_action_char.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String
  index, md_entry_type = cme_futures_streamlined_sbe_v5_8.md_entry_type.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Entry Px Decimal: Struct of 2 fields
  index, md_entry_px_decimal = cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Cal Fut Px: Struct of 2 fields
  index, cal_fut_px = cme_futures_streamlined_sbe_v5_8.cal_fut_px.dissect(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_position_no = cme_futures_streamlined_sbe_v5_8.md_entry_position_no.dissect(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders = cme_futures_streamlined_sbe_v5_8.number_of_orders.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Signed Fixed Width Integer
  index, trade_id = cme_futures_streamlined_sbe_v5_8.trade_id.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_streamlined_sbe_v5_8.aggressor_side.dissect(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index, symbol = cme_futures_streamlined_sbe_v5_8.symbol.dissect(buffer, index, packet, parent)

  -- Security Group 26: 26 Byte Ascii String
  index, security_group_26 = cme_futures_streamlined_sbe_v5_8.security_group_26.dissect(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String
  index, security_type = cme_futures_streamlined_sbe_v5_8.security_type.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8.security_exchange.dissect(buffer, index, packet, parent)

  -- Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, product_optional = cme_futures_streamlined_sbe_v5_8.product_optional.dissect(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8.maturity_date.dissect(buffer, index, packet, parent)

  -- Reference Id 50: 50 Byte Ascii String
  index, reference_id_50 = cme_futures_streamlined_sbe_v5_8.reference_id_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Eris 351 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_eris_351_group_index)
  if show.m_d_incremental_refresh_eris_351_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_351_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_eris_351_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_eris_351_group_index)
  end
end

-- M D Incremental Refresh Eris 351 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_groups = {}

-- Calculate size of: M D Incremental Refresh Eris 351 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_eris_351_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_eris_351_group_count * 187

  return index
end

-- Display: M D Incremental Refresh Eris 351 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris 351 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Eris 351 Group
  for m_d_incremental_refresh_eris_351_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_eris_351_group = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_eris_351_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Eris 351 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_eris_351_groups then
    local length = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_351_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Eris No Quote
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_no_quote = {}

-- Calculate size of: Md Incremental Refresh Eris No Quote
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_no_quote.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.transact_time.size

  index = index + cme_futures_streamlined_sbe_v5_8.match_event_indicator.size

  index = index + cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.size

  index = index + cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Eris No Quote
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_no_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Eris No Quote
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_no_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Batch Total Messages Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, batch_total_messages_optional = cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Eris 351 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_eris_351_groups = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_351_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Eris No Quote
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_no_quote.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris_no_quote then
    local length = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_no_quote.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_no_quote.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris_no_quote, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_no_quote.fields(buffer, offset, packet, parent)
end

-- Leg Ref Id
cme_futures_streamlined_sbe_v5_8.leg_ref_id = {}

-- Size: Leg Ref Id
cme_futures_streamlined_sbe_v5_8.leg_ref_id.size = 17

-- Display: Leg Ref Id
cme_futures_streamlined_sbe_v5_8.leg_ref_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Ref Id: No Value"
  end

  return "Leg Ref Id: "..value
end

-- Dissect: Leg Ref Id
cme_futures_streamlined_sbe_v5_8.leg_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_ref_id.size
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

  local display = cme_futures_streamlined_sbe_v5_8.leg_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_ref_id, range, value, display)

  return offset + length, value
end

-- Strategy Link Id
cme_futures_streamlined_sbe_v5_8.strategy_link_id = {}

-- Size: Strategy Link Id
cme_futures_streamlined_sbe_v5_8.strategy_link_id.size = 26

-- Display: Strategy Link Id
cme_futures_streamlined_sbe_v5_8.strategy_link_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strategy Link Id: No Value"
  end

  return "Strategy Link Id: "..value
end

-- Dissect: Strategy Link Id
cme_futures_streamlined_sbe_v5_8.strategy_link_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.strategy_link_id.size
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

  local display = cme_futures_streamlined_sbe_v5_8.strategy_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.strategy_link_id, range, value, display)

  return offset + length, value
end

-- Strike Price
cme_futures_streamlined_sbe_v5_8.strike_price = {}

-- Size: Strike Price
cme_futures_streamlined_sbe_v5_8.strike_price.size = 8

-- Display: Strike Price
cme_futures_streamlined_sbe_v5_8.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
cme_futures_streamlined_sbe_v5_8.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Strike Price
cme_futures_streamlined_sbe_v5_8.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_streamlined_sbe_v5_8.strike_price.translate(raw)
  local display = cme_futures_streamlined_sbe_v5_8.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Md Entry Id
cme_futures_streamlined_sbe_v5_8.md_entry_id = {}

-- Size: Md Entry Id
cme_futures_streamlined_sbe_v5_8.md_entry_id.size = 26

-- Display: Md Entry Id
cme_futures_streamlined_sbe_v5_8.md_entry_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Entry Id: No Value"
  end

  return "Md Entry Id: "..value
end

-- Dissect: Md Entry Id
cme_futures_streamlined_sbe_v5_8.md_entry_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_entry_id.size
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

  local display = cme_futures_streamlined_sbe_v5_8.md_entry_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_id, range, value, display)

  return offset + length, value
end

-- Trd Type
cme_futures_streamlined_sbe_v5_8.trd_type = {}

-- Size: Trd Type
cme_futures_streamlined_sbe_v5_8.trd_type.size = 1

-- Display: Trd Type
cme_futures_streamlined_sbe_v5_8.trd_type.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Trd Type: No Value"
  end

  return "Trd Type: "..value
end

-- Dissect: Trd Type
cme_futures_streamlined_sbe_v5_8.trd_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.trd_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.trd_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.trd_type, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Qty Optional
cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional = {}

-- Size: Unit Of Measure Qty Optional
cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.size = 8

-- Display: Unit Of Measure Qty Optional
cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Unit Of Measure Qty Optional: No Value"
  end

  return "Unit Of Measure Qty Optional: "..value
end

-- Translate: Unit Of Measure Qty Optional
cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Unit Of Measure Qty Optional
cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.translate(raw)
  local display = cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_qty_optional, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Currency 3
cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency_3 = {}

-- Size: Unit Of Measure Currency 3
cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency_3.size = 3

-- Display: Unit Of Measure Currency 3
cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure Currency 3: No Value"
  end

  return "Unit Of Measure Currency 3: "..value
end

-- Dissect: Unit Of Measure Currency 3
cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency_3.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency_3.size
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

  local display = cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_currency_3, range, value, display)

  return offset + length, value
end

-- Security Exchange 4
cme_futures_streamlined_sbe_v5_8.security_exchange_4 = {}

-- Size: Security Exchange 4
cme_futures_streamlined_sbe_v5_8.security_exchange_4.size = 4

-- Display: Security Exchange 4
cme_futures_streamlined_sbe_v5_8.security_exchange_4.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange 4: No Value"
  end

  return "Security Exchange 4: "..value
end

-- Dissect: Security Exchange 4
cme_futures_streamlined_sbe_v5_8.security_exchange_4.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_exchange_4.size
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

  local display = cme_futures_streamlined_sbe_v5_8.security_exchange_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_exchange_4, range, value, display)

  return offset + length, value
end

-- Security Id
cme_futures_streamlined_sbe_v5_8.security_id = {}

-- Size: Security Id
cme_futures_streamlined_sbe_v5_8.security_id.size = 8

-- Display: Security Id
cme_futures_streamlined_sbe_v5_8.security_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
cme_futures_streamlined_sbe_v5_8.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_id, range, value, display)

  return offset + length, value
end

-- Md Update Action
cme_futures_streamlined_sbe_v5_8.md_update_action = {}

-- Size: Md Update Action
cme_futures_streamlined_sbe_v5_8.md_update_action.size = 1

-- Display: Md Update Action
cme_futures_streamlined_sbe_v5_8.md_update_action.display = function(value)
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
cme_futures_streamlined_sbe_v5_8.md_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.md_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Trade Blocks 349 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_group = {}

-- Size: M D Incremental Refresh Trade Blocks 349 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_group.size =
  cme_futures_streamlined_sbe_v5_8.md_update_action.size + 
  cme_futures_streamlined_sbe_v5_8.security_id.size + 
  cme_futures_streamlined_sbe_v5_8.rpt_seq.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_size.size + 
  cme_futures_streamlined_sbe_v5_8.number_of_orders.size + 
  cme_futures_streamlined_sbe_v5_8.trade_id.size + 
  cme_futures_streamlined_sbe_v5_8.aggressor_side.size + 
  cme_futures_streamlined_sbe_v5_8.symbol.size + 
  cme_futures_streamlined_sbe_v5_8.security_group_12.size + 
  cme_futures_streamlined_sbe_v5_8.security_type.size + 
  cme_futures_streamlined_sbe_v5_8.security_sub_type.size + 
  cme_futures_streamlined_sbe_v5_8.maturity_month_year.size + 
  cme_futures_streamlined_sbe_v5_8.security_exchange_4.size + 
  cme_futures_streamlined_sbe_v5_8.maturity_date.size + 
  cme_futures_streamlined_sbe_v5_8.unit_of_measure.size + 
  cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency_3.size + 
  cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.size + 
  cme_futures_streamlined_sbe_v5_8.coupon_rate.size + 
  cme_futures_streamlined_sbe_v5_8.price_type.size + 
  cme_futures_streamlined_sbe_v5_8.trd_type.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_id.size + 
  cme_futures_streamlined_sbe_v5_8.put_or_call.size + 
  cme_futures_streamlined_sbe_v5_8.strike_price.size + 
  cme_futures_streamlined_sbe_v5_8.restructuring_type.size + 
  cme_futures_streamlined_sbe_v5_8.seniority.size + 
  cme_futures_streamlined_sbe_v5_8.reference_id_100.size + 
  cme_futures_streamlined_sbe_v5_8.strategy_link_id.size + 
  cme_futures_streamlined_sbe_v5_8.leg_ref_id.size

-- Display: M D Incremental Refresh Trade Blocks 349 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Blocks 349 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_blocks_349_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Blocks 349 Group Index
  if m_d_incremental_refresh_trade_blocks_349_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_349_group_index, m_d_incremental_refresh_trade_blocks_349_group_index)
    iteration:set_generated()
  end

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_streamlined_sbe_v5_8.md_update_action.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, security_id = cme_futures_streamlined_sbe_v5_8.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size: Struct of 2 fields
  index, md_entry_size = cme_futures_streamlined_sbe_v5_8.md_entry_size.dissect(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders = cme_futures_streamlined_sbe_v5_8.number_of_orders.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Signed Fixed Width Integer
  index, trade_id = cme_futures_streamlined_sbe_v5_8.trade_id.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_streamlined_sbe_v5_8.aggressor_side.dissect(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index, symbol = cme_futures_streamlined_sbe_v5_8.symbol.dissect(buffer, index, packet, parent)

  -- Security Group 12: 12 Byte Ascii String
  index, security_group_12 = cme_futures_streamlined_sbe_v5_8.security_group_12.dissect(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String
  index, security_type = cme_futures_streamlined_sbe_v5_8.security_type.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 2 Byte Ascii String
  index, security_sub_type = cme_futures_streamlined_sbe_v5_8.security_sub_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_streamlined_sbe_v5_8.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Security Exchange 4: 4 Byte Ascii String
  index, security_exchange_4 = cme_futures_streamlined_sbe_v5_8.security_exchange_4.dissect(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8.maturity_date.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 5 Byte Ascii String
  index, unit_of_measure = cme_futures_streamlined_sbe_v5_8.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Currency 3: 3 Byte Ascii String
  index, unit_of_measure_currency_3 = cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency_3.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_optional = cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.dissect(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer Nullable
  index, coupon_rate = cme_futures_streamlined_sbe_v5_8.coupon_rate.dissect(buffer, index, packet, parent)

  -- Price Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, price_type = cme_futures_streamlined_sbe_v5_8.price_type.dissect(buffer, index, packet, parent)

  -- Trd Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trd_type = cme_futures_streamlined_sbe_v5_8.trd_type.dissect(buffer, index, packet, parent)

  -- Md Entry Id: 26 Byte Ascii String
  index, md_entry_id = cme_futures_streamlined_sbe_v5_8.md_entry_id.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Nullable
  index, put_or_call = cme_futures_streamlined_sbe_v5_8.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = cme_futures_streamlined_sbe_v5_8.strike_price.dissect(buffer, index, packet, parent)

  -- Restructuring Type: 2 Byte Ascii String
  index, restructuring_type = cme_futures_streamlined_sbe_v5_8.restructuring_type.dissect(buffer, index, packet, parent)

  -- Seniority: 2 Byte Ascii String
  index, seniority = cme_futures_streamlined_sbe_v5_8.seniority.dissect(buffer, index, packet, parent)

  -- Reference Id 100: 100 Byte Ascii String
  index, reference_id_100 = cme_futures_streamlined_sbe_v5_8.reference_id_100.dissect(buffer, index, packet, parent)

  -- Strategy Link Id: 26 Byte Ascii String
  index, strategy_link_id = cme_futures_streamlined_sbe_v5_8.strategy_link_id.dissect(buffer, index, packet, parent)

  -- Leg Ref Id: 17 Byte Ascii String
  index, leg_ref_id = cme_futures_streamlined_sbe_v5_8.leg_ref_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Blocks 349 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_blocks_349_group_index)
  if show.m_d_incremental_refresh_trade_blocks_349_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_349_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_blocks_349_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_blocks_349_group_index)
  end
end

-- M D Incremental Refresh Trade Blocks 349 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_groups = {}

-- Calculate size of: M D Incremental Refresh Trade Blocks 349 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_blocks_349_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_blocks_349_group_count * 328

  return index
end

-- Display: M D Incremental Refresh Trade Blocks 349 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Blocks 349 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Blocks 349 Group
  for m_d_incremental_refresh_trade_blocks_349_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_trade_blocks_349_group = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_trade_blocks_349_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Blocks 349 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_blocks_349_groups then
    local length = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_349_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_groups.fields(buffer, offset, packet, parent)
end

-- Batch Total Messages
cme_futures_streamlined_sbe_v5_8.batch_total_messages = {}

-- Size: Batch Total Messages
cme_futures_streamlined_sbe_v5_8.batch_total_messages.size = 2

-- Display: Batch Total Messages
cme_futures_streamlined_sbe_v5_8.batch_total_messages.display = function(value)
  return "Batch Total Messages: "..value
end

-- Dissect: Batch Total Messages
cme_futures_streamlined_sbe_v5_8.batch_total_messages.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.batch_total_messages.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.batch_total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.batch_total_messages, range, value, display)

  return offset + length, value
end

-- Transact Time Optional
cme_futures_streamlined_sbe_v5_8.transact_time_optional = {}

-- Size: Transact Time Optional
cme_futures_streamlined_sbe_v5_8.transact_time_optional.size = 8

-- Display: Transact Time Optional
cme_futures_streamlined_sbe_v5_8.transact_time_optional.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time Optional: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time Optional
cme_futures_streamlined_sbe_v5_8.transact_time_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.transact_time_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8.transact_time_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.transact_time_optional, range, value, display)

  return offset + length, value
end

-- Md Incremental Refresh Trade Blocks
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks = {}

-- Calculate size of: Md Incremental Refresh Trade Blocks
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.transact_time_optional.size

  index = index + cme_futures_streamlined_sbe_v5_8.match_event_indicator.size

  index = index + cme_futures_streamlined_sbe_v5_8.batch_total_messages.size

  index = index + cme_futures_streamlined_sbe_v5_8.trade_date.size

  index = index + cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Blocks
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Blocks
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time Optional: 8 Byte Unsigned Fixed Width Integer
  index, transact_time_optional = cme_futures_streamlined_sbe_v5_8.transact_time_optional.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index, batch_total_messages = cme_futures_streamlined_sbe_v5_8.batch_total_messages.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_streamlined_sbe_v5_8.trade_date.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Blocks 349 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_blocks_349_groups = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_349_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Blocks
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_blocks then
    local length = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_trade_blocks, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks.fields(buffer, offset, packet, parent)
end

-- Md Entry Time
cme_futures_streamlined_sbe_v5_8.md_entry_time = {}

-- Size: Md Entry Time
cme_futures_streamlined_sbe_v5_8.md_entry_time.size = 4

-- Display: Md Entry Time
cme_futures_streamlined_sbe_v5_8.md_entry_time.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Time: No Value"
  end

  return "Md Entry Time: "..value
end

-- Dissect: Md Entry Time
cme_futures_streamlined_sbe_v5_8.md_entry_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_entry_time.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.md_entry_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_time, range, value, display)

  return offset + length, value
end

-- Md Entry Code
cme_futures_streamlined_sbe_v5_8.md_entry_code = {}

-- Size: Md Entry Code
cme_futures_streamlined_sbe_v5_8.md_entry_code.size = 1

-- Display: Md Entry Code
cme_futures_streamlined_sbe_v5_8.md_entry_code.display = function(value)
  if value == 255 then
    return "Md Entry Code: No Value"
  end
  if value == 1 then
    return "Md Entry Code: Indicative (1)"
  end
  if value == 2 then
    return "Md Entry Code: Pre Market (2)"
  end
  if value == 3 then
    return "Md Entry Code: Preliminary Close (3)"
  end
  if value == 4 then
    return "Md Entry Code: Session Close (4)"
  end
  if value == 5 then
    return "Md Entry Code: Close (5)"
  end

  return "Md Entry Code: Unknown("..value..")"
end

-- Dissect: Md Entry Code
cme_futures_streamlined_sbe_v5_8.md_entry_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_entry_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.md_entry_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_code, range, value, display)

  return offset + length, value
end

-- Percent Trading
cme_futures_streamlined_sbe_v5_8.percent_trading = {}

-- Size: Percent Trading
cme_futures_streamlined_sbe_v5_8.percent_trading.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Percent Trading
cme_futures_streamlined_sbe_v5_8.percent_trading.display = function(raw, value)
  if raw ~= nil then
    return "Percent Trading: No Value"
  end

  return "Percent Trading: "..value
end

-- Dissect Fields: Percent Trading
cme_futures_streamlined_sbe_v5_8.percent_trading.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local percent_trading = mantissa / factor( exponent )

  return index, percent_trading
end

-- Dissect: Percent Trading
cme_futures_streamlined_sbe_v5_8.percent_trading.dissect = function(buffer, offset, packet, parent)
  if show.percent_trading then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.percent_trading, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.percent_trading.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.percent_trading.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.percent_trading.fields(buffer, offset, packet, parent)
  end
end

-- Net Pct Chg
cme_futures_streamlined_sbe_v5_8.net_pct_chg = {}

-- Size: Net Pct Chg
cme_futures_streamlined_sbe_v5_8.net_pct_chg.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Net Pct Chg
cme_futures_streamlined_sbe_v5_8.net_pct_chg.display = function(raw, value)
  if raw ~= nil then
    return "Net Pct Chg: No Value"
  end

  return "Net Pct Chg: "..value
end

-- Dissect Fields: Net Pct Chg
cme_futures_streamlined_sbe_v5_8.net_pct_chg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local net_pct_chg = mantissa / factor( exponent )

  return index, net_pct_chg
end

-- Dissect: Net Pct Chg
cme_futures_streamlined_sbe_v5_8.net_pct_chg.dissect = function(buffer, offset, packet, parent)
  if show.net_pct_chg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.net_pct_chg, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.net_pct_chg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.net_pct_chg.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.net_pct_chg.fields(buffer, offset, packet, parent)
  end
end

-- Net Chg Prev Day
cme_futures_streamlined_sbe_v5_8.net_chg_prev_day = {}

-- Size: Net Chg Prev Day
cme_futures_streamlined_sbe_v5_8.net_chg_prev_day.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Net Chg Prev Day
cme_futures_streamlined_sbe_v5_8.net_chg_prev_day.display = function(raw, value)
  if raw ~= nil then
    return "Net Chg Prev Day: No Value"
  end

  return "Net Chg Prev Day: "..value
end

-- Dissect Fields: Net Chg Prev Day
cme_futures_streamlined_sbe_v5_8.net_chg_prev_day.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local net_chg_prev_day = mantissa / factor( exponent )

  return index, net_chg_prev_day
end

-- Dissect: Net Chg Prev Day
cme_futures_streamlined_sbe_v5_8.net_chg_prev_day.dissect = function(buffer, offset, packet, parent)
  if show.net_chg_prev_day then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.net_chg_prev_day, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.net_chg_prev_day.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.net_chg_prev_day.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.net_chg_prev_day.fields(buffer, offset, packet, parent)
  end
end

-- Yield
cme_futures_streamlined_sbe_v5_8.yield = {}

-- Size: Yield
cme_futures_streamlined_sbe_v5_8.yield.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Yield
cme_futures_streamlined_sbe_v5_8.yield.display = function(raw, value)
  if raw ~= nil then
    return "Yield: No Value"
  end

  return "Yield: "..value
end

-- Dissect Fields: Yield
cme_futures_streamlined_sbe_v5_8.yield.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local yield = mantissa / factor( exponent )

  return index, yield
end

-- Dissect: Yield
cme_futures_streamlined_sbe_v5_8.yield.dissect = function(buffer, offset, packet, parent)
  if show.yield then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.yield, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.yield.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.yield.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.yield.fields(buffer, offset, packet, parent)
  end
end

-- Yield Type
cme_futures_streamlined_sbe_v5_8.yield_type = {}

-- Size: Yield Type
cme_futures_streamlined_sbe_v5_8.yield_type.size = 8

-- Display: Yield Type
cme_futures_streamlined_sbe_v5_8.yield_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Yield Type: No Value"
  end

  return "Yield Type: "..value
end

-- Dissect: Yield Type
cme_futures_streamlined_sbe_v5_8.yield_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.yield_type.size
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

  local display = cme_futures_streamlined_sbe_v5_8.yield_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.yield_type, range, value, display)

  return offset + length, value
end

-- Md Entry Type Indices
cme_futures_streamlined_sbe_v5_8.md_entry_type_indices = {}

-- Size: Md Entry Type Indices
cme_futures_streamlined_sbe_v5_8.md_entry_type_indices.size = 1

-- Display: Md Entry Type Indices
cme_futures_streamlined_sbe_v5_8.md_entry_type_indices.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type Indices: No Value"
  end

  if value == "0" then
    return "Md Entry Type Indices: Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type Indices: Offer (1)"
  end
  if value == "2" then
    return "Md Entry Type Indices: Trade (2)"
  end
  if value == "3" then
    return "Md Entry Type Indices: Index Value (3)"
  end
  if value == "4" then
    return "Md Entry Type Indices: Opening Value (4)"
  end
  if value == "5" then
    return "Md Entry Type Indices: Closing Price (5)"
  end
  if value == "6" then
    return "Md Entry Type Indices: Settlement Price (6)"
  end
  if value == "7" then
    return "Md Entry Type Indices: Session High Price (7)"
  end
  if value == "8" then
    return "Md Entry Type Indices: Session Low Price (8)"
  end
  if value == "e" then
    return "Md Entry Type Indices: Trade Volume (e)"
  end

  return "Md Entry Type Indices: Unknown("..value..")"
end

-- Dissect: Md Entry Type Indices
cme_futures_streamlined_sbe_v5_8.md_entry_type_indices.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_entry_type_indices.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8.md_entry_type_indices.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_type_indices, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Indices Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_group = {}

-- Size: M D Incremental Refresh Indices Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_group.size =
  cme_futures_streamlined_sbe_v5_8.md_entry_type_indices.size + 
  cme_futures_streamlined_sbe_v5_8.rpt_seq.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.size + 
  cme_futures_streamlined_sbe_v5_8.symbol.size + 
  cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.size + 
  cme_futures_streamlined_sbe_v5_8.yield_type.size + 
  cme_futures_streamlined_sbe_v5_8.yield.size + 
  cme_futures_streamlined_sbe_v5_8.net_chg_prev_day.size + 
  cme_futures_streamlined_sbe_v5_8.net_pct_chg.size + 
  cme_futures_streamlined_sbe_v5_8.percent_trading.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_code.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_date.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_time.size + 
  cme_futures_streamlined_sbe_v5_8.reference_id_50.size

-- Display: M D Incremental Refresh Indices Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Indices Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_indices_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Indices Group Index
  if m_d_incremental_refresh_indices_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_indices_group_index, m_d_incremental_refresh_indices_group_index)
    iteration:set_generated()
  end

  -- Md Entry Type Indices: 1 Byte Ascii String Enum with 10 values
  index, md_entry_type_indices = cme_futures_streamlined_sbe_v5_8.md_entry_type_indices.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Entry Px Decimal: Struct of 2 fields
  index, md_entry_px_decimal = cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index, symbol = cme_futures_streamlined_sbe_v5_8.symbol.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Signed Fixed Width Integer Nullable
  index, open_close_settl_flag = cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Yield Type: 8 Byte Ascii String
  index, yield_type = cme_futures_streamlined_sbe_v5_8.yield_type.dissect(buffer, index, packet, parent)

  -- Yield: Struct of 2 fields
  index, yield = cme_futures_streamlined_sbe_v5_8.yield.dissect(buffer, index, packet, parent)

  -- Net Chg Prev Day: Struct of 2 fields
  index, net_chg_prev_day = cme_futures_streamlined_sbe_v5_8.net_chg_prev_day.dissect(buffer, index, packet, parent)

  -- Net Pct Chg: Struct of 2 fields
  index, net_pct_chg = cme_futures_streamlined_sbe_v5_8.net_pct_chg.dissect(buffer, index, packet, parent)

  -- Percent Trading: Struct of 2 fields
  index, percent_trading = cme_futures_streamlined_sbe_v5_8.percent_trading.dissect(buffer, index, packet, parent)

  -- Md Entry Code: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_entry_code = cme_futures_streamlined_sbe_v5_8.md_entry_code.dissect(buffer, index, packet, parent)

  -- Md Entry Date: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_date = cme_futures_streamlined_sbe_v5_8.md_entry_date.dissect(buffer, index, packet, parent)

  -- Md Entry Time: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_time = cme_futures_streamlined_sbe_v5_8.md_entry_time.dissect(buffer, index, packet, parent)

  -- Reference Id 50: 50 Byte Ascii String
  index, reference_id_50 = cme_futures_streamlined_sbe_v5_8.reference_id_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Indices Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_indices_group_index)
  if show.m_d_incremental_refresh_indices_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_indices_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_indices_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_indices_group_index)
  end
end

-- M D Incremental Refresh Indices Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_groups = {}

-- Calculate size of: M D Incremental Refresh Indices Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_indices_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_indices_group_count * 176

  return index
end

-- Display: M D Incremental Refresh Indices Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Indices Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Indices Group
  for m_d_incremental_refresh_indices_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_indices_group = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_indices_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Indices Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_indices_groups then
    local length = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_indices_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_groups.fields(buffer, offset, packet, parent)
end

-- Md Feed Type
cme_futures_streamlined_sbe_v5_8.md_feed_type = {}

-- Size: Md Feed Type
cme_futures_streamlined_sbe_v5_8.md_feed_type.size = 2

-- Display: Md Feed Type
cme_futures_streamlined_sbe_v5_8.md_feed_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Feed Type: No Value"
  end

  return "Md Feed Type: "..value
end

-- Dissect: Md Feed Type
cme_futures_streamlined_sbe_v5_8.md_feed_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.md_feed_type.size
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

  local display = cme_futures_streamlined_sbe_v5_8.md_feed_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_feed_type, range, value, display)

  return offset + length, value
end

-- Md Incremental Refresh Indices
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_indices = {}

-- Calculate size of: Md Incremental Refresh Indices
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_indices.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.transact_time.size

  index = index + cme_futures_streamlined_sbe_v5_8.md_feed_type.size

  index = index + cme_futures_streamlined_sbe_v5_8.match_event_indicator.size

  index = index + cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.size

  index = index + cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Indices
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_indices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Indices
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_indices.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8.transact_time.dissect(buffer, index, packet, parent)

  -- Md Feed Type: 2 Byte Ascii String
  index, md_feed_type = cme_futures_streamlined_sbe_v5_8.md_feed_type.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Batch Total Messages Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, batch_total_messages_optional = cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Indices Groups: Struct of 2 fields
  index, m_d_incremental_refresh_indices_groups = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_indices_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Indices
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_indices.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_indices then
    local length = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_indices.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_indices.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_indices, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_indices.fields(buffer, offset, packet, parent)
end

-- Inst Attrib Value
cme_futures_streamlined_sbe_v5_8.inst_attrib_value = {}

-- Size: Inst Attrib Value
cme_futures_streamlined_sbe_v5_8.inst_attrib_value.size = 100

-- Display: Inst Attrib Value
cme_futures_streamlined_sbe_v5_8.inst_attrib_value.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Inst Attrib Value: No Value"
  end

  return "Inst Attrib Value: "..value
end

-- Dissect: Inst Attrib Value
cme_futures_streamlined_sbe_v5_8.inst_attrib_value.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.inst_attrib_value.size
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

  local display = cme_futures_streamlined_sbe_v5_8.inst_attrib_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_value, range, value, display)

  return offset + length, value
end

-- Inst Attrib Type
cme_futures_streamlined_sbe_v5_8.inst_attrib_type = {}

-- Size: Inst Attrib Type
cme_futures_streamlined_sbe_v5_8.inst_attrib_type.size = 1

-- Display: Inst Attrib Type
cme_futures_streamlined_sbe_v5_8.inst_attrib_type.display = function(value)
  return "Inst Attrib Type: "..value
end

-- Dissect: Inst Attrib Type
cme_futures_streamlined_sbe_v5_8.inst_attrib_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.inst_attrib_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.inst_attrib_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_type, range, value, display)

  return offset + length, value
end

-- Inst Attrib Group
cme_futures_streamlined_sbe_v5_8.inst_attrib_group = {}

-- Size: Inst Attrib Group
cme_futures_streamlined_sbe_v5_8.inst_attrib_group.size =
  cme_futures_streamlined_sbe_v5_8.inst_attrib_type.size + 
  cme_futures_streamlined_sbe_v5_8.inst_attrib_value.size

-- Display: Inst Attrib Group
cme_futures_streamlined_sbe_v5_8.inst_attrib_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inst Attrib Group
cme_futures_streamlined_sbe_v5_8.inst_attrib_group.fields = function(buffer, offset, packet, parent, inst_attrib_group_index)
  local index = offset

  -- Implicit Inst Attrib Group Index
  if inst_attrib_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_group_index, inst_attrib_group_index)
    iteration:set_generated()
  end

  -- Inst Attrib Type: 1 Byte Unsigned Fixed Width Integer
  index, inst_attrib_type = cme_futures_streamlined_sbe_v5_8.inst_attrib_type.dissect(buffer, index, packet, parent)

  -- Inst Attrib Value: 100 Byte Ascii String
  index, inst_attrib_value = cme_futures_streamlined_sbe_v5_8.inst_attrib_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inst Attrib Group
cme_futures_streamlined_sbe_v5_8.inst_attrib_group.dissect = function(buffer, offset, packet, parent, inst_attrib_group_index)
  if show.inst_attrib_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.inst_attrib_group.fields(buffer, offset, packet, parent, inst_attrib_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.inst_attrib_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.inst_attrib_group.fields(buffer, offset, packet, parent, inst_attrib_group_index)
  end
end

-- Inst Attrib Groups
cme_futures_streamlined_sbe_v5_8.inst_attrib_groups = {}

-- Calculate size of: Inst Attrib Groups
cme_futures_streamlined_sbe_v5_8.inst_attrib_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size_encoding.size

  -- Calculate field size from count
  local inst_attrib_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + inst_attrib_group_count * 101

  return index
end

-- Display: Inst Attrib Groups
cme_futures_streamlined_sbe_v5_8.inst_attrib_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inst Attrib Groups
cme_futures_streamlined_sbe_v5_8.inst_attrib_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = cme_futures_streamlined_sbe_v5_8.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group 16
  local num_in_group_16 = buffer(index - 2, 2):le_uint()

  -- Repeating: Inst Attrib Group
  for inst_attrib_group_index = 1, num_in_group_16 do
    index, inst_attrib_group = cme_futures_streamlined_sbe_v5_8.inst_attrib_group.dissect(buffer, index, packet, parent, inst_attrib_group_index)
  end

  return index
end

-- Dissect: Inst Attrib Groups
cme_futures_streamlined_sbe_v5_8.inst_attrib_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.inst_attrib_groups then
    local length = cme_futures_streamlined_sbe_v5_8.inst_attrib_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.inst_attrib_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.inst_attrib_groups.fields(buffer, offset, packet, parent)
end

-- Product
cme_futures_streamlined_sbe_v5_8.product = {}

-- Size: Product
cme_futures_streamlined_sbe_v5_8.product.size = 1

-- Display: Product
cme_futures_streamlined_sbe_v5_8.product.display = function(value)
  return "Product: "..value
end

-- Dissect: Product
cme_futures_streamlined_sbe_v5_8.product.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.product.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.product.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.product, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Indices
cme_futures_streamlined_sbe_v5_8.md_instrument_definition_indices = {}

-- Calculate size of: Md Instrument Definition Indices
cme_futures_streamlined_sbe_v5_8.md_instrument_definition_indices.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.symbol.size

  index = index + cme_futures_streamlined_sbe_v5_8.product.size

  index = index + cme_futures_streamlined_sbe_v5_8.security_exchange.size

  index = index + cme_futures_streamlined_sbe_v5_8.currency.size

  index = index + cme_futures_streamlined_sbe_v5_8.security_update_action.size

  index = index + cme_futures_streamlined_sbe_v5_8.md_feed_type.size

  index = index + cme_futures_streamlined_sbe_v5_8.appl_id.size

  index = index + cme_futures_streamlined_sbe_v5_8.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8.events_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Indices
cme_futures_streamlined_sbe_v5_8.md_instrument_definition_indices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Indices
cme_futures_streamlined_sbe_v5_8.md_instrument_definition_indices.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 50 Byte Ascii String
  index, symbol = cme_futures_streamlined_sbe_v5_8.symbol.dissect(buffer, index, packet, parent)

  -- Product: 1 Byte Signed Fixed Width Integer
  index, product = cme_futures_streamlined_sbe_v5_8.product.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8.security_exchange.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_streamlined_sbe_v5_8.currency.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_streamlined_sbe_v5_8.security_update_action.dissect(buffer, index, packet, parent)

  -- Md Feed Type: 2 Byte Ascii String
  index, md_feed_type = cme_futures_streamlined_sbe_v5_8.md_feed_type.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, appl_id = cme_futures_streamlined_sbe_v5_8.appl_id.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_streamlined_sbe_v5_8.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_streamlined_sbe_v5_8.events_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Indices
cme_futures_streamlined_sbe_v5_8.md_instrument_definition_indices.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_indices then
    local length = cme_futures_streamlined_sbe_v5_8.md_instrument_definition_indices.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.md_instrument_definition_indices.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_instrument_definition_indices, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.md_instrument_definition_indices.fields(buffer, offset, packet, parent)
end

-- Related Sym Group
cme_futures_streamlined_sbe_v5_8.related_sym_group = {}

-- Size: Related Sym Group
cme_futures_streamlined_sbe_v5_8.related_sym_group.size =
  cme_futures_streamlined_sbe_v5_8.symbol.size

-- Display: Related Sym Group
cme_futures_streamlined_sbe_v5_8.related_sym_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Group
cme_futures_streamlined_sbe_v5_8.related_sym_group.fields = function(buffer, offset, packet, parent, related_sym_group_index)
  local index = offset

  -- Implicit Related Sym Group Index
  if related_sym_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.related_sym_group_index, related_sym_group_index)
    iteration:set_generated()
  end

  -- Symbol: 50 Byte Ascii String
  index, symbol = cme_futures_streamlined_sbe_v5_8.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
cme_futures_streamlined_sbe_v5_8.related_sym_group.dissect = function(buffer, offset, packet, parent, related_sym_group_index)
  if show.related_sym_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.related_sym_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.related_sym_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
  end
end

-- Related Sym Groups
cme_futures_streamlined_sbe_v5_8.related_sym_groups = {}

-- Calculate size of: Related Sym Groups
cme_futures_streamlined_sbe_v5_8.related_sym_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_sym_group_count * 50

  return index
end

-- Display: Related Sym Groups
cme_futures_streamlined_sbe_v5_8.related_sym_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Groups
cme_futures_streamlined_sbe_v5_8.related_sym_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: Related Sym Group
  for related_sym_group_index = 1, num_in_group_uint_8 do
    index, related_sym_group = cme_futures_streamlined_sbe_v5_8.related_sym_group.dissect(buffer, index, packet, parent, related_sym_group_index)
  end

  return index
end

-- Dissect: Related Sym Groups
cme_futures_streamlined_sbe_v5_8.related_sym_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_sym_groups then
    local length = cme_futures_streamlined_sbe_v5_8.related_sym_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.related_sym_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.related_sym_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.related_sym_groups.fields(buffer, offset, packet, parent)
end

-- Quote Req Id
cme_futures_streamlined_sbe_v5_8.quote_req_id = {}

-- Size: Quote Req Id
cme_futures_streamlined_sbe_v5_8.quote_req_id.size = 26

-- Display: Quote Req Id
cme_futures_streamlined_sbe_v5_8.quote_req_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Req Id: No Value"
  end

  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
cme_futures_streamlined_sbe_v5_8.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.quote_req_id.size
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

  local display = cme_futures_streamlined_sbe_v5_8.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Quote Request
cme_futures_streamlined_sbe_v5_8.quote_request = {}

-- Calculate size of: Quote Request
cme_futures_streamlined_sbe_v5_8.quote_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.transact_time.size

  index = index + cme_futures_streamlined_sbe_v5_8.match_event_indicator.size

  index = index + cme_futures_streamlined_sbe_v5_8.quote_req_id.size

  index = index + cme_futures_streamlined_sbe_v5_8.related_sym_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Request
cme_futures_streamlined_sbe_v5_8.quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request
cme_futures_streamlined_sbe_v5_8.quote_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 26 Byte Ascii String
  index, quote_req_id = cme_futures_streamlined_sbe_v5_8.quote_req_id.dissect(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = cme_futures_streamlined_sbe_v5_8.related_sym_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
cme_futures_streamlined_sbe_v5_8.quote_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request then
    local length = cme_futures_streamlined_sbe_v5_8.quote_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.quote_request.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.quote_request, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.quote_request.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Trade Blocks 340 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_group = {}

-- Size: M D Incremental Refresh Trade Blocks 340 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_group.size =
  cme_futures_streamlined_sbe_v5_8.md_update_action.size + 
  cme_futures_streamlined_sbe_v5_8.security_id.size + 
  cme_futures_streamlined_sbe_v5_8.rpt_seq.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.size + 
  cme_futures_streamlined_sbe_v5_8.number_of_orders.size + 
  cme_futures_streamlined_sbe_v5_8.trade_id.size + 
  cme_futures_streamlined_sbe_v5_8.aggressor_side.size + 
  cme_futures_streamlined_sbe_v5_8.symbol.size + 
  cme_futures_streamlined_sbe_v5_8.security_group_12.size + 
  cme_futures_streamlined_sbe_v5_8.security_type.size + 
  cme_futures_streamlined_sbe_v5_8.security_sub_type.size + 
  cme_futures_streamlined_sbe_v5_8.maturity_month_year.size + 
  cme_futures_streamlined_sbe_v5_8.security_exchange_4.size + 
  cme_futures_streamlined_sbe_v5_8.maturity_date.size + 
  cme_futures_streamlined_sbe_v5_8.unit_of_measure.size + 
  cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency_3.size + 
  cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.size + 
  cme_futures_streamlined_sbe_v5_8.coupon_rate.size + 
  cme_futures_streamlined_sbe_v5_8.price_type.size + 
  cme_futures_streamlined_sbe_v5_8.trd_type.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_id.size + 
  cme_futures_streamlined_sbe_v5_8.put_or_call.size + 
  cme_futures_streamlined_sbe_v5_8.strike_price.size + 
  cme_futures_streamlined_sbe_v5_8.restructuring_type.size + 
  cme_futures_streamlined_sbe_v5_8.seniority.size + 
  cme_futures_streamlined_sbe_v5_8.reference_id_100.size + 
  cme_futures_streamlined_sbe_v5_8.strategy_link_id.size + 
  cme_futures_streamlined_sbe_v5_8.leg_ref_id.size

-- Display: M D Incremental Refresh Trade Blocks 340 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Blocks 340 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_blocks_340_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Blocks 340 Group Index
  if m_d_incremental_refresh_trade_blocks_340_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_340_group_index, m_d_incremental_refresh_trade_blocks_340_group_index)
    iteration:set_generated()
  end

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_streamlined_sbe_v5_8.md_update_action.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, security_id = cme_futures_streamlined_sbe_v5_8.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_streamlined_sbe_v5_8.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders = cme_futures_streamlined_sbe_v5_8.number_of_orders.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Signed Fixed Width Integer
  index, trade_id = cme_futures_streamlined_sbe_v5_8.trade_id.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_streamlined_sbe_v5_8.aggressor_side.dissect(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index, symbol = cme_futures_streamlined_sbe_v5_8.symbol.dissect(buffer, index, packet, parent)

  -- Security Group 12: 12 Byte Ascii String
  index, security_group_12 = cme_futures_streamlined_sbe_v5_8.security_group_12.dissect(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String
  index, security_type = cme_futures_streamlined_sbe_v5_8.security_type.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 2 Byte Ascii String
  index, security_sub_type = cme_futures_streamlined_sbe_v5_8.security_sub_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_streamlined_sbe_v5_8.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Security Exchange 4: 4 Byte Ascii String
  index, security_exchange_4 = cme_futures_streamlined_sbe_v5_8.security_exchange_4.dissect(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8.maturity_date.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 5 Byte Ascii String
  index, unit_of_measure = cme_futures_streamlined_sbe_v5_8.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Currency 3: 3 Byte Ascii String
  index, unit_of_measure_currency_3 = cme_futures_streamlined_sbe_v5_8.unit_of_measure_currency_3.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_optional = cme_futures_streamlined_sbe_v5_8.unit_of_measure_qty_optional.dissect(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer Nullable
  index, coupon_rate = cme_futures_streamlined_sbe_v5_8.coupon_rate.dissect(buffer, index, packet, parent)

  -- Price Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, price_type = cme_futures_streamlined_sbe_v5_8.price_type.dissect(buffer, index, packet, parent)

  -- Trd Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trd_type = cme_futures_streamlined_sbe_v5_8.trd_type.dissect(buffer, index, packet, parent)

  -- Md Entry Id: 26 Byte Ascii String
  index, md_entry_id = cme_futures_streamlined_sbe_v5_8.md_entry_id.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Nullable
  index, put_or_call = cme_futures_streamlined_sbe_v5_8.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = cme_futures_streamlined_sbe_v5_8.strike_price.dissect(buffer, index, packet, parent)

  -- Restructuring Type: 2 Byte Ascii String
  index, restructuring_type = cme_futures_streamlined_sbe_v5_8.restructuring_type.dissect(buffer, index, packet, parent)

  -- Seniority: 2 Byte Ascii String
  index, seniority = cme_futures_streamlined_sbe_v5_8.seniority.dissect(buffer, index, packet, parent)

  -- Reference Id 100: 100 Byte Ascii String
  index, reference_id_100 = cme_futures_streamlined_sbe_v5_8.reference_id_100.dissect(buffer, index, packet, parent)

  -- Strategy Link Id: 26 Byte Ascii String
  index, strategy_link_id = cme_futures_streamlined_sbe_v5_8.strategy_link_id.dissect(buffer, index, packet, parent)

  -- Leg Ref Id: 17 Byte Ascii String
  index, leg_ref_id = cme_futures_streamlined_sbe_v5_8.leg_ref_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Blocks 340 Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_blocks_340_group_index)
  if show.m_d_incremental_refresh_trade_blocks_340_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_340_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_blocks_340_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_blocks_340_group_index)
  end
end

-- M D Incremental Refresh Trade Blocks 340 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_groups = {}

-- Calculate size of: M D Incremental Refresh Trade Blocks 340 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_blocks_340_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_blocks_340_group_count * 327

  return index
end

-- Display: M D Incremental Refresh Trade Blocks 340 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Blocks 340 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Blocks 340 Group
  for m_d_incremental_refresh_trade_blocks_340_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_trade_blocks_340_group = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_trade_blocks_340_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Blocks 340 Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_blocks_340_groups then
    local length = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_340_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Trade Blocks No Date
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks_no_date = {}

-- Calculate size of: Md Incremental Refresh Trade Blocks No Date
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks_no_date.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.transact_time.size

  index = index + cme_futures_streamlined_sbe_v5_8.match_event_indicator.size

  index = index + cme_futures_streamlined_sbe_v5_8.batch_total_messages.size

  index = index + cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Blocks No Date
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks_no_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Blocks No Date
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks_no_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index, batch_total_messages = cme_futures_streamlined_sbe_v5_8.batch_total_messages.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Blocks 340 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_blocks_340_groups = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_trade_blocks_340_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Blocks No Date
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks_no_date.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_blocks_no_date then
    local length = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks_no_date.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks_no_date.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_trade_blocks_no_date, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks_no_date.fields(buffer, offset, packet, parent)
end

-- Text 500
cme_futures_streamlined_sbe_v5_8.text_500 = {}

-- Size: Text 500
cme_futures_streamlined_sbe_v5_8.text_500.size = 500

-- Display: Text 500
cme_futures_streamlined_sbe_v5_8.text_500.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text 500: No Value"
  end

  return "Text 500: "..value
end

-- Dissect: Text 500
cme_futures_streamlined_sbe_v5_8.text_500.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.text_500.size
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

  local display = cme_futures_streamlined_sbe_v5_8.text_500.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.text_500, range, value, display)

  return offset + length, value
end

-- Lines Of Text Group
cme_futures_streamlined_sbe_v5_8.lines_of_text_group = {}

-- Size: Lines Of Text Group
cme_futures_streamlined_sbe_v5_8.lines_of_text_group.size =
  cme_futures_streamlined_sbe_v5_8.text_500.size

-- Display: Lines Of Text Group
cme_futures_streamlined_sbe_v5_8.lines_of_text_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lines Of Text Group
cme_futures_streamlined_sbe_v5_8.lines_of_text_group.fields = function(buffer, offset, packet, parent, lines_of_text_group_index)
  local index = offset

  -- Implicit Lines Of Text Group Index
  if lines_of_text_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.lines_of_text_group_index, lines_of_text_group_index)
    iteration:set_generated()
  end

  -- Text 500: 500 Byte Ascii String
  index, text_500 = cme_futures_streamlined_sbe_v5_8.text_500.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Lines Of Text Group
cme_futures_streamlined_sbe_v5_8.lines_of_text_group.dissect = function(buffer, offset, packet, parent, lines_of_text_group_index)
  if show.lines_of_text_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.lines_of_text_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.lines_of_text_group.fields(buffer, offset, packet, parent, lines_of_text_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.lines_of_text_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.lines_of_text_group.fields(buffer, offset, packet, parent, lines_of_text_group_index)
  end
end

-- Lines Of Text Groups
cme_futures_streamlined_sbe_v5_8.lines_of_text_groups = {}

-- Calculate size of: Lines Of Text Groups
cme_futures_streamlined_sbe_v5_8.lines_of_text_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local lines_of_text_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + lines_of_text_group_count * 500

  return index
end

-- Display: Lines Of Text Groups
cme_futures_streamlined_sbe_v5_8.lines_of_text_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lines Of Text Groups
cme_futures_streamlined_sbe_v5_8.lines_of_text_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: Lines Of Text Group
  for lines_of_text_group_index = 1, num_in_group_uint_8 do
    index, lines_of_text_group = cme_futures_streamlined_sbe_v5_8.lines_of_text_group.dissect(buffer, index, packet, parent, lines_of_text_group_index)
  end

  return index
end

-- Dissect: Lines Of Text Groups
cme_futures_streamlined_sbe_v5_8.lines_of_text_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.lines_of_text_groups then
    local length = cme_futures_streamlined_sbe_v5_8.lines_of_text_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.lines_of_text_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.lines_of_text_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.lines_of_text_groups.fields(buffer, offset, packet, parent)
end

-- Orig Time
cme_futures_streamlined_sbe_v5_8.orig_time = {}

-- Size: Orig Time
cme_futures_streamlined_sbe_v5_8.orig_time.size = 8

-- Display: Orig Time
cme_futures_streamlined_sbe_v5_8.orig_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Orig Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Orig Time
cme_futures_streamlined_sbe_v5_8.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Headline
cme_futures_streamlined_sbe_v5_8.headline = {}

-- Size: Headline
cme_futures_streamlined_sbe_v5_8.headline.size = 50

-- Display: Headline
cme_futures_streamlined_sbe_v5_8.headline.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Headline: No Value"
  end

  return "Headline: "..value
end

-- Dissect: Headline
cme_futures_streamlined_sbe_v5_8.headline.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.headline.size
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

  local display = cme_futures_streamlined_sbe_v5_8.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.headline, range, value, display)

  return offset + length, value
end

-- Md News Indices
cme_futures_streamlined_sbe_v5_8.md_news_indices = {}

-- Calculate size of: Md News Indices
cme_futures_streamlined_sbe_v5_8.md_news_indices.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.headline.size

  index = index + cme_futures_streamlined_sbe_v5_8.orig_time.size

  index = index + cme_futures_streamlined_sbe_v5_8.md_feed_type.size

  index = index + cme_futures_streamlined_sbe_v5_8.related_sym_groups.size(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8.lines_of_text_groups.size(buffer, offset + index)

  return index
end

-- Display: Md News Indices
cme_futures_streamlined_sbe_v5_8.md_news_indices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md News Indices
cme_futures_streamlined_sbe_v5_8.md_news_indices.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Headline: 50 Byte Ascii String
  index, headline = cme_futures_streamlined_sbe_v5_8.headline.dissect(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer
  index, orig_time = cme_futures_streamlined_sbe_v5_8.orig_time.dissect(buffer, index, packet, parent)

  -- Md Feed Type: 2 Byte Ascii String
  index, md_feed_type = cme_futures_streamlined_sbe_v5_8.md_feed_type.dissect(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = cme_futures_streamlined_sbe_v5_8.related_sym_groups.dissect(buffer, index, packet, parent)

  -- Lines Of Text Groups: Struct of 2 fields
  index, lines_of_text_groups = cme_futures_streamlined_sbe_v5_8.lines_of_text_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md News Indices
cme_futures_streamlined_sbe_v5_8.md_news_indices.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_news_indices then
    local length = cme_futures_streamlined_sbe_v5_8.md_news_indices.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.md_news_indices.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_news_indices, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.md_news_indices.fields(buffer, offset, packet, parent)
end

-- Security Description
cme_futures_streamlined_sbe_v5_8.security_description = {}

-- Size: Security Description
cme_futures_streamlined_sbe_v5_8.security_description.size = 30

-- Display: Security Description
cme_futures_streamlined_sbe_v5_8.security_description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Description: No Value"
  end

  return "Security Description: "..value
end

-- Dissect: Security Description
cme_futures_streamlined_sbe_v5_8.security_description.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.security_description.size
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

  local display = cme_futures_streamlined_sbe_v5_8.security_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.security_description, range, value, display)

  return offset + length, value
end

-- Final Settlement Futures Price
cme_futures_streamlined_sbe_v5_8.final_settlement_futures_price = {}

-- Size: Final Settlement Futures Price
cme_futures_streamlined_sbe_v5_8.final_settlement_futures_price.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Final Settlement Futures Price
cme_futures_streamlined_sbe_v5_8.final_settlement_futures_price.display = function(raw, value)
  if raw ~= nil then
    return "Final Settlement Futures Price: No Value"
  end

  return "Final Settlement Futures Price: "..value
end

-- Dissect Fields: Final Settlement Futures Price
cme_futures_streamlined_sbe_v5_8.final_settlement_futures_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local final_settlement_futures_price = mantissa / factor( exponent )

  return index, final_settlement_futures_price
end

-- Dissect: Final Settlement Futures Price
cme_futures_streamlined_sbe_v5_8.final_settlement_futures_price.dissect = function(buffer, offset, packet, parent)
  if show.final_settlement_futures_price then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.final_settlement_futures_price, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.final_settlement_futures_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.final_settlement_futures_price.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.final_settlement_futures_price.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Npv
cme_futures_streamlined_sbe_v5_8.settlement_npv = {}

-- Size: Settlement Npv
cme_futures_streamlined_sbe_v5_8.settlement_npv.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Settlement Npv
cme_futures_streamlined_sbe_v5_8.settlement_npv.display = function(raw, value)
  if raw ~= nil then
    return "Settlement Npv: No Value"
  end

  return "Settlement Npv: "..value
end

-- Dissect Fields: Settlement Npv
cme_futures_streamlined_sbe_v5_8.settlement_npv.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local settlement_npv = mantissa / factor( exponent )

  return index, settlement_npv
end

-- Dissect: Settlement Npv
cme_futures_streamlined_sbe_v5_8.settlement_npv.dissect = function(buffer, offset, packet, parent)
  if show.settlement_npv then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.settlement_npv, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.settlement_npv.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.settlement_npv.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.settlement_npv.fields(buffer, offset, packet, parent)
  end
end

-- D V 01
cme_futures_streamlined_sbe_v5_8.d_v_01 = {}

-- Size: D V 01
cme_futures_streamlined_sbe_v5_8.d_v_01.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: D V 01
cme_futures_streamlined_sbe_v5_8.d_v_01.display = function(raw, value)
  if raw ~= nil then
    return "D V 01: No Value"
  end

  return "D V 01: "..value
end

-- Dissect Fields: D V 01
cme_futures_streamlined_sbe_v5_8.d_v_01.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local d_v_01 = mantissa / factor( exponent )

  return index, d_v_01
end

-- Dissect: D V 01
cme_futures_streamlined_sbe_v5_8.d_v_01.dissect = function(buffer, offset, packet, parent)
  if show.d_v_01 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.d_v_01, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.d_v_01.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.d_v_01.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.d_v_01.fields(buffer, offset, packet, parent)
  end
end

-- P V 01
cme_futures_streamlined_sbe_v5_8.p_v_01 = {}

-- Size: P V 01
cme_futures_streamlined_sbe_v5_8.p_v_01.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: P V 01
cme_futures_streamlined_sbe_v5_8.p_v_01.display = function(raw, value)
  if raw ~= nil then
    return "P V 01: No Value"
  end

  return "P V 01: "..value
end

-- Dissect Fields: P V 01
cme_futures_streamlined_sbe_v5_8.p_v_01.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local p_v_01 = mantissa / factor( exponent )

  return index, p_v_01
end

-- Dissect: P V 01
cme_futures_streamlined_sbe_v5_8.p_v_01.dissect = function(buffer, offset, packet, parent)
  if show.p_v_01 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.p_v_01, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.p_v_01.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.p_v_01.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.p_v_01.fields(buffer, offset, packet, parent)
  end
end

-- Next Floating Payment Date
cme_futures_streamlined_sbe_v5_8.next_floating_payment_date = {}

-- Size: Next Floating Payment Date
cme_futures_streamlined_sbe_v5_8.next_floating_payment_date.size = 2

-- Display: Next Floating Payment Date
cme_futures_streamlined_sbe_v5_8.next_floating_payment_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Next Floating Payment Date: No Value"
  end

  return "Next Floating Payment Date: "..value
end

-- Dissect: Next Floating Payment Date
cme_futures_streamlined_sbe_v5_8.next_floating_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.next_floating_payment_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.next_floating_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.next_floating_payment_date, range, value, display)

  return offset + length, value
end

-- Leg Contract Multiplier
cme_futures_streamlined_sbe_v5_8.leg_contract_multiplier = {}

-- Size: Leg Contract Multiplier
cme_futures_streamlined_sbe_v5_8.leg_contract_multiplier.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Leg Contract Multiplier
cme_futures_streamlined_sbe_v5_8.leg_contract_multiplier.display = function(raw, value)
  if raw ~= nil then
    return "Leg Contract Multiplier: No Value"
  end

  return "Leg Contract Multiplier: "..value
end

-- Dissect Fields: Leg Contract Multiplier
cme_futures_streamlined_sbe_v5_8.leg_contract_multiplier.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local leg_contract_multiplier = mantissa / factor( exponent )

  return index, leg_contract_multiplier
end

-- Dissect: Leg Contract Multiplier
cme_futures_streamlined_sbe_v5_8.leg_contract_multiplier.dissect = function(buffer, offset, packet, parent)
  if show.leg_contract_multiplier then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_contract_multiplier, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.leg_contract_multiplier.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.leg_contract_multiplier.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.leg_contract_multiplier.fields(buffer, offset, packet, parent)
  end
end

-- Leg Credit Rating
cme_futures_streamlined_sbe_v5_8.leg_credit_rating = {}

-- Size: Leg Credit Rating
cme_futures_streamlined_sbe_v5_8.leg_credit_rating.size = 6

-- Display: Leg Credit Rating
cme_futures_streamlined_sbe_v5_8.leg_credit_rating.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Credit Rating: No Value"
  end

  return "Leg Credit Rating: "..value
end

-- Dissect: Leg Credit Rating
cme_futures_streamlined_sbe_v5_8.leg_credit_rating.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.leg_credit_rating.size
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

  local display = cme_futures_streamlined_sbe_v5_8.leg_credit_rating.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_credit_rating, range, value, display)

  return offset + length, value
end

-- Nominal
cme_futures_streamlined_sbe_v5_8.nominal = {}

-- Size: Nominal
cme_futures_streamlined_sbe_v5_8.nominal.size = 8

-- Display: Nominal
cme_futures_streamlined_sbe_v5_8.nominal.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Nominal: No Value"
  end

  return "Nominal: "..value
end

-- Dissect: Nominal
cme_futures_streamlined_sbe_v5_8.nominal.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.nominal.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8.nominal.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.nominal, range, value, display)

  return offset + length, value
end

-- Accrual Days
cme_futures_streamlined_sbe_v5_8.accrual_days = {}

-- Size: Accrual Days
cme_futures_streamlined_sbe_v5_8.accrual_days.size = 4

-- Display: Accrual Days
cme_futures_streamlined_sbe_v5_8.accrual_days.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Accrual Days: No Value"
  end

  return "Accrual Days: "..value
end

-- Dissect: Accrual Days
cme_futures_streamlined_sbe_v5_8.accrual_days.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.accrual_days.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.accrual_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.accrual_days, range, value, display)

  return offset + length, value
end

-- Fed Funds Date
cme_futures_streamlined_sbe_v5_8.fed_funds_date = {}

-- Size: Fed Funds Date
cme_futures_streamlined_sbe_v5_8.fed_funds_date.size = 2

-- Display: Fed Funds Date
cme_futures_streamlined_sbe_v5_8.fed_funds_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Fed Funds Date: No Value"
  end

  return "Fed Funds Date: "..value
end

-- Dissect: Fed Funds Date
cme_futures_streamlined_sbe_v5_8.fed_funds_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.fed_funds_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.fed_funds_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.fed_funds_date, range, value, display)

  return offset + length, value
end

-- Previous Eris Pai
cme_futures_streamlined_sbe_v5_8.previous_eris_pai = {}

-- Size: Previous Eris Pai
cme_futures_streamlined_sbe_v5_8.previous_eris_pai.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Previous Eris Pai
cme_futures_streamlined_sbe_v5_8.previous_eris_pai.display = function(raw, value)
  if raw ~= nil then
    return "Previous Eris Pai: No Value"
  end

  return "Previous Eris Pai: "..value
end

-- Dissect Fields: Previous Eris Pai
cme_futures_streamlined_sbe_v5_8.previous_eris_pai.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local previous_eris_pai = mantissa / factor( exponent )

  return index, previous_eris_pai
end

-- Dissect: Previous Eris Pai
cme_futures_streamlined_sbe_v5_8.previous_eris_pai.dissect = function(buffer, offset, packet, parent)
  if show.previous_eris_pai then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.previous_eris_pai, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.previous_eris_pai.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.previous_eris_pai.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.previous_eris_pai.fields(buffer, offset, packet, parent)
  end
end

-- Trading Reference Date
cme_futures_streamlined_sbe_v5_8.trading_reference_date = {}

-- Size: Trading Reference Date
cme_futures_streamlined_sbe_v5_8.trading_reference_date.size = 2

-- Display: Trading Reference Date
cme_futures_streamlined_sbe_v5_8.trading_reference_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trading Reference Date: No Value"
  end

  return "Trading Reference Date: "..value
end

-- Dissect: Trading Reference Date
cme_futures_streamlined_sbe_v5_8.trading_reference_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.trading_reference_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.trading_reference_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.trading_reference_date, range, value, display)

  return offset + length, value
end

-- Next Floating Payment Amount
cme_futures_streamlined_sbe_v5_8.next_floating_payment_amount = {}

-- Size: Next Floating Payment Amount
cme_futures_streamlined_sbe_v5_8.next_floating_payment_amount.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Next Floating Payment Amount
cme_futures_streamlined_sbe_v5_8.next_floating_payment_amount.display = function(raw, value)
  if raw ~= nil then
    return "Next Floating Payment Amount: No Value"
  end

  return "Next Floating Payment Amount: "..value
end

-- Dissect Fields: Next Floating Payment Amount
cme_futures_streamlined_sbe_v5_8.next_floating_payment_amount.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local next_floating_payment_amount = mantissa / factor( exponent )

  return index, next_floating_payment_amount
end

-- Dissect: Next Floating Payment Amount
cme_futures_streamlined_sbe_v5_8.next_floating_payment_amount.dissect = function(buffer, offset, packet, parent)
  if show.next_floating_payment_amount then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.next_floating_payment_amount, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.next_floating_payment_amount.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.next_floating_payment_amount.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.next_floating_payment_amount.fields(buffer, offset, packet, parent)
  end
end

-- Next Fixed Payment Amount
cme_futures_streamlined_sbe_v5_8.next_fixed_payment_amount = {}

-- Size: Next Fixed Payment Amount
cme_futures_streamlined_sbe_v5_8.next_fixed_payment_amount.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Next Fixed Payment Amount
cme_futures_streamlined_sbe_v5_8.next_fixed_payment_amount.display = function(raw, value)
  if raw ~= nil then
    return "Next Fixed Payment Amount: No Value"
  end

  return "Next Fixed Payment Amount: "..value
end

-- Dissect Fields: Next Fixed Payment Amount
cme_futures_streamlined_sbe_v5_8.next_fixed_payment_amount.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local next_fixed_payment_amount = mantissa / factor( exponent )

  return index, next_fixed_payment_amount
end

-- Dissect: Next Fixed Payment Amount
cme_futures_streamlined_sbe_v5_8.next_fixed_payment_amount.dissect = function(buffer, offset, packet, parent)
  if show.next_fixed_payment_amount then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.next_fixed_payment_amount, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.next_fixed_payment_amount.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.next_fixed_payment_amount.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.next_fixed_payment_amount.fields(buffer, offset, packet, parent)
  end
end

-- Next Fixed Payment Date
cme_futures_streamlined_sbe_v5_8.next_fixed_payment_date = {}

-- Size: Next Fixed Payment Date
cme_futures_streamlined_sbe_v5_8.next_fixed_payment_date.size = 2

-- Display: Next Fixed Payment Date
cme_futures_streamlined_sbe_v5_8.next_fixed_payment_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Next Fixed Payment Date: No Value"
  end

  return "Next Fixed Payment Date: "..value
end

-- Dissect: Next Fixed Payment Date
cme_futures_streamlined_sbe_v5_8.next_fixed_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.next_fixed_payment_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.next_fixed_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.next_fixed_payment_date, range, value, display)

  return offset + length, value
end

-- Floating Payment
cme_futures_streamlined_sbe_v5_8.floating_payment = {}

-- Size: Floating Payment
cme_futures_streamlined_sbe_v5_8.floating_payment.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Floating Payment
cme_futures_streamlined_sbe_v5_8.floating_payment.display = function(raw, value)
  if raw ~= nil then
    return "Floating Payment: No Value"
  end

  return "Floating Payment: "..value
end

-- Dissect Fields: Floating Payment
cme_futures_streamlined_sbe_v5_8.floating_payment.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local floating_payment = mantissa / factor( exponent )

  return index, floating_payment
end

-- Dissect: Floating Payment
cme_futures_streamlined_sbe_v5_8.floating_payment.dissect = function(buffer, offset, packet, parent)
  if show.floating_payment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.floating_payment, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.floating_payment.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.floating_payment.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.floating_payment.fields(buffer, offset, packet, parent)
  end
end

-- Fixed Payment
cme_futures_streamlined_sbe_v5_8.fixed_payment = {}

-- Size: Fixed Payment
cme_futures_streamlined_sbe_v5_8.fixed_payment.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Fixed Payment
cme_futures_streamlined_sbe_v5_8.fixed_payment.display = function(raw, value)
  if raw ~= nil then
    return "Fixed Payment: No Value"
  end

  return "Fixed Payment: "..value
end

-- Dissect Fields: Fixed Payment
cme_futures_streamlined_sbe_v5_8.fixed_payment.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local fixed_payment = mantissa / factor( exponent )

  return index, fixed_payment
end

-- Dissect: Fixed Payment
cme_futures_streamlined_sbe_v5_8.fixed_payment.dissect = function(buffer, offset, packet, parent)
  if show.fixed_payment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.fixed_payment, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.fixed_payment.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.fixed_payment.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.fixed_payment.fields(buffer, offset, packet, parent)
  end
end

-- Min Price Increment Optional
cme_futures_streamlined_sbe_v5_8.min_price_increment_optional = {}

-- Size: Min Price Increment Optional
cme_futures_streamlined_sbe_v5_8.min_price_increment_optional.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Min Price Increment Optional
cme_futures_streamlined_sbe_v5_8.min_price_increment_optional.display = function(raw, value)
  if raw ~= nil then
    return "Min Price Increment Optional: No Value"
  end

  return "Min Price Increment Optional: "..value
end

-- Dissect Fields: Min Price Increment Optional
cme_futures_streamlined_sbe_v5_8.min_price_increment_optional.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local min_price_increment_optional = mantissa / factor( exponent )

  return index, min_price_increment_optional
end

-- Dissect: Min Price Increment Optional
cme_futures_streamlined_sbe_v5_8.min_price_increment_optional.dissect = function(buffer, offset, packet, parent)
  if show.min_price_increment_optional then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.min_price_increment_optional, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.min_price_increment_optional.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.min_price_increment_optional.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.min_price_increment_optional.fields(buffer, offset, packet, parent)
  end
end

-- Fed Funds Rate
cme_futures_streamlined_sbe_v5_8.fed_funds_rate = {}

-- Size: Fed Funds Rate
cme_futures_streamlined_sbe_v5_8.fed_funds_rate.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Fed Funds Rate
cme_futures_streamlined_sbe_v5_8.fed_funds_rate.display = function(raw, value)
  if raw ~= nil then
    return "Fed Funds Rate: No Value"
  end

  return "Fed Funds Rate: "..value
end

-- Dissect Fields: Fed Funds Rate
cme_futures_streamlined_sbe_v5_8.fed_funds_rate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local fed_funds_rate = mantissa / factor( exponent )

  return index, fed_funds_rate
end

-- Dissect: Fed Funds Rate
cme_futures_streamlined_sbe_v5_8.fed_funds_rate.dissect = function(buffer, offset, packet, parent)
  if show.fed_funds_rate then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.fed_funds_rate, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.fed_funds_rate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.fed_funds_rate.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.fed_funds_rate.fields(buffer, offset, packet, parent)
  end
end

-- Eris Pai
cme_futures_streamlined_sbe_v5_8.eris_pai = {}

-- Size: Eris Pai
cme_futures_streamlined_sbe_v5_8.eris_pai.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Eris Pai
cme_futures_streamlined_sbe_v5_8.eris_pai.display = function(raw, value)
  if raw ~= nil then
    return "Eris Pai: No Value"
  end

  return "Eris Pai: "..value
end

-- Dissect Fields: Eris Pai
cme_futures_streamlined_sbe_v5_8.eris_pai.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local eris_pai = mantissa / factor( exponent )

  return index, eris_pai
end

-- Dissect: Eris Pai
cme_futures_streamlined_sbe_v5_8.eris_pai.dissect = function(buffer, offset, packet, parent)
  if show.eris_pai then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.eris_pai, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.eris_pai.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.eris_pai.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.eris_pai.fields(buffer, offset, packet, parent)
  end
end

-- Daily Incremental Eris Pai
cme_futures_streamlined_sbe_v5_8.daily_incremental_eris_pai = {}

-- Size: Daily Incremental Eris Pai
cme_futures_streamlined_sbe_v5_8.daily_incremental_eris_pai.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Daily Incremental Eris Pai
cme_futures_streamlined_sbe_v5_8.daily_incremental_eris_pai.display = function(raw, value)
  if raw ~= nil then
    return "Daily Incremental Eris Pai: No Value"
  end

  return "Daily Incremental Eris Pai: "..value
end

-- Dissect Fields: Daily Incremental Eris Pai
cme_futures_streamlined_sbe_v5_8.daily_incremental_eris_pai.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local daily_incremental_eris_pai = mantissa / factor( exponent )

  return index, daily_incremental_eris_pai
end

-- Dissect: Daily Incremental Eris Pai
cme_futures_streamlined_sbe_v5_8.daily_incremental_eris_pai.dissect = function(buffer, offset, packet, parent)
  if show.daily_incremental_eris_pai then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.daily_incremental_eris_pai, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.daily_incremental_eris_pai.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.daily_incremental_eris_pai.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.daily_incremental_eris_pai.fields(buffer, offset, packet, parent)
  end
end

-- Accrued Coupons
cme_futures_streamlined_sbe_v5_8.accrued_coupons = {}

-- Size: Accrued Coupons
cme_futures_streamlined_sbe_v5_8.accrued_coupons.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Accrued Coupons
cme_futures_streamlined_sbe_v5_8.accrued_coupons.display = function(raw, value)
  if raw ~= nil then
    return "Accrued Coupons: No Value"
  end

  return "Accrued Coupons: "..value
end

-- Dissect Fields: Accrued Coupons
cme_futures_streamlined_sbe_v5_8.accrued_coupons.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local accrued_coupons = mantissa / factor( exponent )

  return index, accrued_coupons
end

-- Dissect: Accrued Coupons
cme_futures_streamlined_sbe_v5_8.accrued_coupons.dissect = function(buffer, offset, packet, parent)
  if show.accrued_coupons then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.accrued_coupons, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.accrued_coupons.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.accrued_coupons.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.accrued_coupons.fields(buffer, offset, packet, parent)
  end
end

-- Npv
cme_futures_streamlined_sbe_v5_8.npv = {}

-- Size: Npv
cme_futures_streamlined_sbe_v5_8.npv.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Npv
cme_futures_streamlined_sbe_v5_8.npv.display = function(raw, value)
  if raw ~= nil then
    return "Npv: No Value"
  end

  return "Npv: "..value
end

-- Dissect Fields: Npv
cme_futures_streamlined_sbe_v5_8.npv.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local npv = mantissa / factor( exponent )

  return index, npv
end

-- Dissect: Npv
cme_futures_streamlined_sbe_v5_8.npv.dissect = function(buffer, offset, packet, parent)
  if show.npv then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.npv, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.npv.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.npv.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.npv.fields(buffer, offset, packet, parent)
  end
end

-- Float Npv
cme_futures_streamlined_sbe_v5_8.float_npv = {}

-- Size: Float Npv
cme_futures_streamlined_sbe_v5_8.float_npv.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Float Npv
cme_futures_streamlined_sbe_v5_8.float_npv.display = function(raw, value)
  if raw ~= nil then
    return "Float Npv: No Value"
  end

  return "Float Npv: "..value
end

-- Dissect Fields: Float Npv
cme_futures_streamlined_sbe_v5_8.float_npv.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local float_npv = mantissa / factor( exponent )

  return index, float_npv
end

-- Dissect: Float Npv
cme_futures_streamlined_sbe_v5_8.float_npv.dissect = function(buffer, offset, packet, parent)
  if show.float_npv then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.float_npv, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.float_npv.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.float_npv.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.float_npv.fields(buffer, offset, packet, parent)
  end
end

-- Fixed Npv
cme_futures_streamlined_sbe_v5_8.fixed_npv = {}

-- Size: Fixed Npv
cme_futures_streamlined_sbe_v5_8.fixed_npv.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Fixed Npv
cme_futures_streamlined_sbe_v5_8.fixed_npv.display = function(raw, value)
  if raw ~= nil then
    return "Fixed Npv: No Value"
  end

  return "Fixed Npv: "..value
end

-- Dissect Fields: Fixed Npv
cme_futures_streamlined_sbe_v5_8.fixed_npv.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local fixed_npv = mantissa / factor( exponent )

  return index, fixed_npv
end

-- Dissect: Fixed Npv
cme_futures_streamlined_sbe_v5_8.fixed_npv.dissect = function(buffer, offset, packet, parent)
  if show.fixed_npv then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.fixed_npv, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.fixed_npv.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.fixed_npv.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.fixed_npv.fields(buffer, offset, packet, parent)
  end
end

-- Leg Purchase Rate
cme_futures_streamlined_sbe_v5_8.leg_purchase_rate = {}

-- Size: Leg Purchase Rate
cme_futures_streamlined_sbe_v5_8.leg_purchase_rate.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Leg Purchase Rate
cme_futures_streamlined_sbe_v5_8.leg_purchase_rate.display = function(raw, value)
  if raw ~= nil then
    return "Leg Purchase Rate: No Value"
  end

  return "Leg Purchase Rate: "..value
end

-- Dissect Fields: Leg Purchase Rate
cme_futures_streamlined_sbe_v5_8.leg_purchase_rate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local leg_purchase_rate = mantissa / factor( exponent )

  return index, leg_purchase_rate
end

-- Dissect: Leg Purchase Rate
cme_futures_streamlined_sbe_v5_8.leg_purchase_rate.dissect = function(buffer, offset, packet, parent)
  if show.leg_purchase_rate then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.leg_purchase_rate, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.leg_purchase_rate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.leg_purchase_rate.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.leg_purchase_rate.fields(buffer, offset, packet, parent)
  end
end

-- Fair Coupon Pct
cme_futures_streamlined_sbe_v5_8.fair_coupon_pct = {}

-- Size: Fair Coupon Pct
cme_futures_streamlined_sbe_v5_8.fair_coupon_pct.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Fair Coupon Pct
cme_futures_streamlined_sbe_v5_8.fair_coupon_pct.display = function(raw, value)
  if raw ~= nil then
    return "Fair Coupon Pct: No Value"
  end

  return "Fair Coupon Pct: "..value
end

-- Dissect Fields: Fair Coupon Pct
cme_futures_streamlined_sbe_v5_8.fair_coupon_pct.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local fair_coupon_pct = mantissa / factor( exponent )

  return index, fair_coupon_pct
end

-- Dissect: Fair Coupon Pct
cme_futures_streamlined_sbe_v5_8.fair_coupon_pct.dissect = function(buffer, offset, packet, parent)
  if show.fair_coupon_pct then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.fair_coupon_pct, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.fair_coupon_pct.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.fair_coupon_pct.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.fair_coupon_pct.fields(buffer, offset, packet, parent)
  end
end

-- Mantissa 32
cme_futures_streamlined_sbe_v5_8.mantissa_32 = {}

-- Size: Mantissa 32
cme_futures_streamlined_sbe_v5_8.mantissa_32.size = 4

-- Display: Mantissa 32
cme_futures_streamlined_sbe_v5_8.mantissa_32.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Mantissa 32: No Value"
  end

  return "Mantissa 32: "..value
end

-- Dissect: Mantissa 32
cme_futures_streamlined_sbe_v5_8.mantissa_32.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.mantissa_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.mantissa_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.mantissa_32, range, value, display)

  return offset + length, value
end

-- Coupon Rate Optional
cme_futures_streamlined_sbe_v5_8.coupon_rate_optional = {}

-- Size: Coupon Rate Optional
cme_futures_streamlined_sbe_v5_8.coupon_rate_optional.size =
  cme_futures_streamlined_sbe_v5_8.mantissa_32.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Coupon Rate Optional
cme_futures_streamlined_sbe_v5_8.coupon_rate_optional.display = function(raw, value)
  if raw ~= nil then
    return "Coupon Rate Optional: No Value"
  end

  return "Coupon Rate Optional: "..value
end

-- Dissect Fields: Coupon Rate Optional
cme_futures_streamlined_sbe_v5_8.coupon_rate_optional.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_32 = cme_futures_streamlined_sbe_v5_8.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local coupon_rate_optional = mantissa_32 / factor( exponent )

  return index, coupon_rate_optional
end

-- Dissect: Coupon Rate Optional
cme_futures_streamlined_sbe_v5_8.coupon_rate_optional.dissect = function(buffer, offset, packet, parent)
  if show.coupon_rate_optional then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.coupon_rate_optional, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.coupon_rate_optional.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.coupon_rate_optional.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.coupon_rate_optional.fields(buffer, offset, packet, parent)
  end
end

-- Cal Fut Px Optional
cme_futures_streamlined_sbe_v5_8.cal_fut_px_optional = {}

-- Size: Cal Fut Px Optional
cme_futures_streamlined_sbe_v5_8.cal_fut_px_optional.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Cal Fut Px Optional
cme_futures_streamlined_sbe_v5_8.cal_fut_px_optional.display = function(raw, value)
  if raw ~= nil then
    return "Cal Fut Px Optional: No Value"
  end

  return "Cal Fut Px Optional: "..value
end

-- Dissect Fields: Cal Fut Px Optional
cme_futures_streamlined_sbe_v5_8.cal_fut_px_optional.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local cal_fut_px_optional = mantissa / factor( exponent )

  return index, cal_fut_px_optional
end

-- Dissect: Cal Fut Px Optional
cme_futures_streamlined_sbe_v5_8.cal_fut_px_optional.dissect = function(buffer, offset, packet, parent)
  if show.cal_fut_px_optional then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.cal_fut_px_optional, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.cal_fut_px_optional.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.cal_fut_px_optional.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.cal_fut_px_optional.fields(buffer, offset, packet, parent)
  end
end

-- Settl Price Type
cme_futures_streamlined_sbe_v5_8.settl_price_type = {}

-- Size: Settl Price Type
cme_futures_streamlined_sbe_v5_8.settl_price_type.size = 1

-- Display: Settl Price Type
cme_futures_streamlined_sbe_v5_8.settl_price_type.display = function(buffer, packet, parent)
  local display = ""

  -- Is Null Value flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Null Value|"
  end
  -- Is Rounded flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Rounded|"
  end
  -- Is Actual flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Actual|"
  end
  -- Is Final flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Final|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Settl Price Type
cme_futures_streamlined_sbe_v5_8.settl_price_type.bits = function(buffer, offset, packet, parent)

  -- Null Value: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.null_value, buffer(offset, 1))

  -- Reserved Bits: 4 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.reserved_bits, buffer(offset, 1))

  -- Rounded: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.rounded, buffer(offset, 1))

  -- Actual: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.actual, buffer(offset, 1))

  -- Final: 1 Bit
  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.final, buffer(offset, 1))
end

-- Dissect: Settl Price Type
cme_futures_streamlined_sbe_v5_8.settl_price_type.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_streamlined_sbe_v5_8.settl_price_type.display(range, packet, parent)
  local element = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.settl_price_type, range, display)

  if show.settl_price_type then
    cme_futures_streamlined_sbe_v5_8.settl_price_type.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Md Entry Px Decimal Optional
cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal_optional = {}

-- Size: Md Entry Px Decimal Optional
cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal_optional.size =
  cme_futures_streamlined_sbe_v5_8.mantissa.size + 
  cme_futures_streamlined_sbe_v5_8.exponent.size

-- Display: Md Entry Px Decimal Optional
cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal_optional.display = function(raw, value)
  if raw ~= nil then
    return "Md Entry Px Decimal Optional: No Value"
  end

  return "Md Entry Px Decimal Optional: "..value
end

-- Dissect Fields: Md Entry Px Decimal Optional
cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal_optional.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local md_entry_px_decimal_optional = mantissa / factor( exponent )

  return index, md_entry_px_decimal_optional
end

-- Dissect: Md Entry Px Decimal Optional
cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal_optional.dissect = function(buffer, offset, packet, parent)
  if show.md_entry_px_decimal_optional then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_decimal_optional, buffer(offset, 0))
    local index, value = cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal_optional.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal_optional.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal_optional.fields(buffer, offset, packet, parent)
  end
end

-- M D Incremental Refresh Eris Reference Data And Daily Statistics Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = {}

-- Size: M D Incremental Refresh Eris Reference Data And Daily Statistics Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group.size =
  cme_futures_streamlined_sbe_v5_8.md_update_action_char.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_type.size + 
  cme_futures_streamlined_sbe_v5_8.rpt_seq.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal_optional.size + 
  cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.size + 
  cme_futures_streamlined_sbe_v5_8.settl_price_type.size + 
  cme_futures_streamlined_sbe_v5_8.cal_fut_px_optional.size + 
  cme_futures_streamlined_sbe_v5_8.reference_id_50.size + 
  cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.size + 
  cme_futures_streamlined_sbe_v5_8.symbol.size + 
  cme_futures_streamlined_sbe_v5_8.security_group_26.size + 
  cme_futures_streamlined_sbe_v5_8.product_optional.size + 
  cme_futures_streamlined_sbe_v5_8.security_type.size + 
  cme_futures_streamlined_sbe_v5_8.security_exchange.size + 
  cme_futures_streamlined_sbe_v5_8.maturity_date.size + 
  cme_futures_streamlined_sbe_v5_8.coupon_rate_optional.size + 
  cme_futures_streamlined_sbe_v5_8.trade_date.size + 
  cme_futures_streamlined_sbe_v5_8.fair_coupon_pct.size + 
  cme_futures_streamlined_sbe_v5_8.leg_purchase_rate.size + 
  cme_futures_streamlined_sbe_v5_8.fixed_npv.size + 
  cme_futures_streamlined_sbe_v5_8.float_npv.size + 
  cme_futures_streamlined_sbe_v5_8.npv.size + 
  cme_futures_streamlined_sbe_v5_8.accrued_coupons.size + 
  cme_futures_streamlined_sbe_v5_8.daily_incremental_eris_pai.size + 
  cme_futures_streamlined_sbe_v5_8.eris_pai.size + 
  cme_futures_streamlined_sbe_v5_8.fed_funds_rate.size + 
  cme_futures_streamlined_sbe_v5_8.min_price_increment_optional.size + 
  cme_futures_streamlined_sbe_v5_8.fixed_payment.size + 
  cme_futures_streamlined_sbe_v5_8.floating_payment.size + 
  cme_futures_streamlined_sbe_v5_8.next_fixed_payment_date.size + 
  cme_futures_streamlined_sbe_v5_8.next_fixed_payment_amount.size + 
  cme_futures_streamlined_sbe_v5_8.next_floating_payment_amount.size + 
  cme_futures_streamlined_sbe_v5_8.trading_reference_date.size + 
  cme_futures_streamlined_sbe_v5_8.previous_eris_pai.size + 
  cme_futures_streamlined_sbe_v5_8.fed_funds_date.size + 
  cme_futures_streamlined_sbe_v5_8.accrual_days.size + 
  cme_futures_streamlined_sbe_v5_8.nominal.size + 
  cme_futures_streamlined_sbe_v5_8.leg_credit_rating.size + 
  cme_futures_streamlined_sbe_v5_8.leg_contract_multiplier.size + 
  cme_futures_streamlined_sbe_v5_8.next_floating_payment_date.size + 
  cme_futures_streamlined_sbe_v5_8.p_v_01.size + 
  cme_futures_streamlined_sbe_v5_8.d_v_01.size + 
  cme_futures_streamlined_sbe_v5_8.settlement_npv.size + 
  cme_futures_streamlined_sbe_v5_8.final_settlement_futures_price.size + 
  cme_futures_streamlined_sbe_v5_8.security_description.size

-- Display: M D Incremental Refresh Eris Reference Data And Daily Statistics Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris Reference Data And Daily Statistics Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Eris Reference Data And Daily Statistics Group Index
  if m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_index, m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_index)
    iteration:set_generated()
  end

  -- Md Update Action Char: 1 Byte Ascii String
  index, md_update_action_char = cme_futures_streamlined_sbe_v5_8.md_update_action_char.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String
  index, md_entry_type = cme_futures_streamlined_sbe_v5_8.md_entry_type.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Entry Px Decimal Optional: Struct of 2 fields
  index, md_entry_px_decimal_optional = cme_futures_streamlined_sbe_v5_8.md_entry_px_decimal_optional.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, open_close_settl_flag = cme_futures_streamlined_sbe_v5_8.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 5 fields
  index, settl_price_type = cme_futures_streamlined_sbe_v5_8.settl_price_type.dissect(buffer, index, packet, parent)

  -- Cal Fut Px Optional: Struct of 2 fields
  index, cal_fut_px_optional = cme_futures_streamlined_sbe_v5_8.cal_fut_px_optional.dissect(buffer, index, packet, parent)

  -- Reference Id 50: 50 Byte Ascii String
  index, reference_id_50 = cme_futures_streamlined_sbe_v5_8.reference_id_50.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_streamlined_sbe_v5_8.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index, symbol = cme_futures_streamlined_sbe_v5_8.symbol.dissect(buffer, index, packet, parent)

  -- Security Group 26: 26 Byte Ascii String
  index, security_group_26 = cme_futures_streamlined_sbe_v5_8.security_group_26.dissect(buffer, index, packet, parent)

  -- Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, product_optional = cme_futures_streamlined_sbe_v5_8.product_optional.dissect(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String
  index, security_type = cme_futures_streamlined_sbe_v5_8.security_type.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8.security_exchange.dissect(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8.maturity_date.dissect(buffer, index, packet, parent)

  -- Coupon Rate Optional: Struct of 2 fields
  index, coupon_rate_optional = cme_futures_streamlined_sbe_v5_8.coupon_rate_optional.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_streamlined_sbe_v5_8.trade_date.dissect(buffer, index, packet, parent)

  -- Fair Coupon Pct: Struct of 2 fields
  index, fair_coupon_pct = cme_futures_streamlined_sbe_v5_8.fair_coupon_pct.dissect(buffer, index, packet, parent)

  -- Leg Purchase Rate: Struct of 2 fields
  index, leg_purchase_rate = cme_futures_streamlined_sbe_v5_8.leg_purchase_rate.dissect(buffer, index, packet, parent)

  -- Fixed Npv: Struct of 2 fields
  index, fixed_npv = cme_futures_streamlined_sbe_v5_8.fixed_npv.dissect(buffer, index, packet, parent)

  -- Float Npv: Struct of 2 fields
  index, float_npv = cme_futures_streamlined_sbe_v5_8.float_npv.dissect(buffer, index, packet, parent)

  -- Npv: Struct of 2 fields
  index, npv = cme_futures_streamlined_sbe_v5_8.npv.dissect(buffer, index, packet, parent)

  -- Accrued Coupons: Struct of 2 fields
  index, accrued_coupons = cme_futures_streamlined_sbe_v5_8.accrued_coupons.dissect(buffer, index, packet, parent)

  -- Daily Incremental Eris Pai: Struct of 2 fields
  index, daily_incremental_eris_pai = cme_futures_streamlined_sbe_v5_8.daily_incremental_eris_pai.dissect(buffer, index, packet, parent)

  -- Eris Pai: Struct of 2 fields
  index, eris_pai = cme_futures_streamlined_sbe_v5_8.eris_pai.dissect(buffer, index, packet, parent)

  -- Fed Funds Rate: Struct of 2 fields
  index, fed_funds_rate = cme_futures_streamlined_sbe_v5_8.fed_funds_rate.dissect(buffer, index, packet, parent)

  -- Min Price Increment Optional: Struct of 2 fields
  index, min_price_increment_optional = cme_futures_streamlined_sbe_v5_8.min_price_increment_optional.dissect(buffer, index, packet, parent)

  -- Fixed Payment: Struct of 2 fields
  index, fixed_payment = cme_futures_streamlined_sbe_v5_8.fixed_payment.dissect(buffer, index, packet, parent)

  -- Floating Payment: Struct of 2 fields
  index, floating_payment = cme_futures_streamlined_sbe_v5_8.floating_payment.dissect(buffer, index, packet, parent)

  -- Next Fixed Payment Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, next_fixed_payment_date = cme_futures_streamlined_sbe_v5_8.next_fixed_payment_date.dissect(buffer, index, packet, parent)

  -- Next Fixed Payment Amount: Struct of 2 fields
  index, next_fixed_payment_amount = cme_futures_streamlined_sbe_v5_8.next_fixed_payment_amount.dissect(buffer, index, packet, parent)

  -- Next Floating Payment Amount: Struct of 2 fields
  index, next_floating_payment_amount = cme_futures_streamlined_sbe_v5_8.next_floating_payment_amount.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_streamlined_sbe_v5_8.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Previous Eris Pai: Struct of 2 fields
  index, previous_eris_pai = cme_futures_streamlined_sbe_v5_8.previous_eris_pai.dissect(buffer, index, packet, parent)

  -- Fed Funds Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, fed_funds_date = cme_futures_streamlined_sbe_v5_8.fed_funds_date.dissect(buffer, index, packet, parent)

  -- Accrual Days: 4 Byte Unsigned Fixed Width Integer Nullable
  index, accrual_days = cme_futures_streamlined_sbe_v5_8.accrual_days.dissect(buffer, index, packet, parent)

  -- Nominal: 8 Byte Unsigned Fixed Width Integer Nullable
  index, nominal = cme_futures_streamlined_sbe_v5_8.nominal.dissect(buffer, index, packet, parent)

  -- Leg Credit Rating: 6 Byte Ascii String
  index, leg_credit_rating = cme_futures_streamlined_sbe_v5_8.leg_credit_rating.dissect(buffer, index, packet, parent)

  -- Leg Contract Multiplier: Struct of 2 fields
  index, leg_contract_multiplier = cme_futures_streamlined_sbe_v5_8.leg_contract_multiplier.dissect(buffer, index, packet, parent)

  -- Next Floating Payment Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, next_floating_payment_date = cme_futures_streamlined_sbe_v5_8.next_floating_payment_date.dissect(buffer, index, packet, parent)

  -- P V 01: Struct of 2 fields
  index, p_v_01 = cme_futures_streamlined_sbe_v5_8.p_v_01.dissect(buffer, index, packet, parent)

  -- D V 01: Struct of 2 fields
  index, d_v_01 = cme_futures_streamlined_sbe_v5_8.d_v_01.dissect(buffer, index, packet, parent)

  -- Settlement Npv: Struct of 2 fields
  index, settlement_npv = cme_futures_streamlined_sbe_v5_8.settlement_npv.dissect(buffer, index, packet, parent)

  -- Final Settlement Futures Price: Struct of 2 fields
  index, final_settlement_futures_price = cme_futures_streamlined_sbe_v5_8.final_settlement_futures_price.dissect(buffer, index, packet, parent)

  -- Security Description: 30 Byte Ascii String
  index, security_description = cme_futures_streamlined_sbe_v5_8.security_description.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Eris Reference Data And Daily Statistics Group
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_index)
  if show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_index)
  end
end

-- M D Incremental Refresh Eris Reference Data And Daily Statistics Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = {}

-- Calculate size of: M D Incremental Refresh Eris Reference Data And Daily Statistics Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_count * 419

  return index
end

-- Display: M D Incremental Refresh Eris Reference Data And Daily Statistics Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris Reference Data And Daily Statistics Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Eris Reference Data And Daily Statistics Group
  for m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Eris Reference Data And Daily Statistics Groups
cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups then
    local length = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Eris Reference Data And Daily Statistics
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_reference_data_and_daily_statistics = {}

-- Calculate size of: Md Incremental Refresh Eris Reference Data And Daily Statistics
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_reference_data_and_daily_statistics.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.transact_time.size

  index = index + cme_futures_streamlined_sbe_v5_8.match_event_indicator.size

  index = index + cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.size

  index = index + cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Eris Reference Data And Daily Statistics
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_reference_data_and_daily_statistics.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Eris Reference Data And Daily Statistics
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_reference_data_and_daily_statistics.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Batch Total Messages Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, batch_total_messages_optional = cme_futures_streamlined_sbe_v5_8.batch_total_messages_optional.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Eris Reference Data And Daily Statistics Groups: Struct of 2 fields
  index, m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = cme_futures_streamlined_sbe_v5_8.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Eris Reference Data And Daily Statistics
cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_reference_data_and_daily_statistics.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris_reference_data_and_daily_statistics then
    local length = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_reference_data_and_daily_statistics.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_reference_data_and_daily_statistics.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris_reference_data_and_daily_statistics, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_reference_data_and_daily_statistics.fields(buffer, offset, packet, parent)
end

-- Text
cme_futures_streamlined_sbe_v5_8.text = {}

-- Size: Text
cme_futures_streamlined_sbe_v5_8.text.size = 180

-- Display: Text
cme_futures_streamlined_sbe_v5_8.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cme_futures_streamlined_sbe_v5_8.text.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.text.size
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

  local display = cme_futures_streamlined_sbe_v5_8.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.text, range, value, display)

  return offset + length, value
end

-- Admin Logout
cme_futures_streamlined_sbe_v5_8.admin_logout = {}

-- Size: Admin Logout
cme_futures_streamlined_sbe_v5_8.admin_logout.size =
  cme_futures_streamlined_sbe_v5_8.text.size

-- Display: Admin Logout
cme_futures_streamlined_sbe_v5_8.admin_logout.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Logout
cme_futures_streamlined_sbe_v5_8.admin_logout.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 180 Byte Ascii String
  index, text = cme_futures_streamlined_sbe_v5_8.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Logout
cme_futures_streamlined_sbe_v5_8.admin_logout.dissect = function(buffer, offset, packet, parent)
  if show.admin_logout then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.admin_logout, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.admin_logout.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.admin_logout.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.admin_logout.fields(buffer, offset, packet, parent)
  end
end

-- Heart Bt Int
cme_futures_streamlined_sbe_v5_8.heart_bt_int = {}

-- Size: Heart Bt Int
cme_futures_streamlined_sbe_v5_8.heart_bt_int.size = 1

-- Display: Heart Bt Int
cme_futures_streamlined_sbe_v5_8.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
cme_futures_streamlined_sbe_v5_8.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Admin Login
cme_futures_streamlined_sbe_v5_8.admin_login = {}

-- Size: Admin Login
cme_futures_streamlined_sbe_v5_8.admin_login.size =
  cme_futures_streamlined_sbe_v5_8.heart_bt_int.size

-- Display: Admin Login
cme_futures_streamlined_sbe_v5_8.admin_login.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Login
cme_futures_streamlined_sbe_v5_8.admin_login.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heart Bt Int: 1 Byte Signed Fixed Width Integer
  index, heart_bt_int = cme_futures_streamlined_sbe_v5_8.heart_bt_int.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Login
cme_futures_streamlined_sbe_v5_8.admin_login.dissect = function(buffer, offset, packet, parent)
  if show.admin_login then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.admin_login, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.admin_login.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.admin_login.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.admin_login.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cme_futures_streamlined_sbe_v5_8.payload = {}

-- Calculate runtime size of: Payload
cme_futures_streamlined_sbe_v5_8.payload.size = function(buffer, offset, template_id)
  -- Size of Admin Heartbeat
  if template_id == 312 then
    return 0
  end
  -- Size of Admin Login
  if template_id == 315 then
    return cme_futures_streamlined_sbe_v5_8.admin_login.size(buffer, offset)
  end
  -- Size of Admin Logout
  if template_id == 316 then
    return cme_futures_streamlined_sbe_v5_8.admin_logout.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Eris Reference Data And Daily Statistics
  if template_id == 333 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_reference_data_and_daily_statistics.size(buffer, offset)
  end
  -- Size of Md News Indices
  if template_id == 339 then
    return cme_futures_streamlined_sbe_v5_8.md_news_indices.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Blocks No Date
  if template_id == 340 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks_no_date.size(buffer, offset)
  end
  -- Size of Quote Request
  if template_id == 345 then
    return cme_futures_streamlined_sbe_v5_8.quote_request.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Indices
  if template_id == 347 then
    return cme_futures_streamlined_sbe_v5_8.md_instrument_definition_indices.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Indices
  if template_id == 348 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_indices.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Blocks
  if template_id == 349 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Eris No Quote
  if template_id == 351 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_no_quote.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Eris
  if template_id == 353 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Otc
  if template_id == 356 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_otc.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Eris
  if template_id == 363 then
    return cme_futures_streamlined_sbe_v5_8.md_instrument_definition_eris.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cme_futures_streamlined_sbe_v5_8.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_futures_streamlined_sbe_v5_8.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Admin Heartbeat
  if template_id == 312 then
  end
  -- Dissect Admin Login
  if template_id == 315 then
    return cme_futures_streamlined_sbe_v5_8.admin_login.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Logout
  if template_id == 316 then
    return cme_futures_streamlined_sbe_v5_8.admin_logout.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Eris Reference Data And Daily Statistics
  if template_id == 333 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_reference_data_and_daily_statistics.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md News Indices
  if template_id == 339 then
    return cme_futures_streamlined_sbe_v5_8.md_news_indices.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Blocks No Date
  if template_id == 340 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks_no_date.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 345 then
    return cme_futures_streamlined_sbe_v5_8.quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Indices
  if template_id == 347 then
    return cme_futures_streamlined_sbe_v5_8.md_instrument_definition_indices.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Indices
  if template_id == 348 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_indices.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Blocks
  if template_id == 349 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_trade_blocks.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Eris No Quote
  if template_id == 351 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris_no_quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Eris
  if template_id == 353 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_eris.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Otc
  if template_id == 356 then
    return cme_futures_streamlined_sbe_v5_8.md_incremental_refresh_otc.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Eris
  if template_id == 363 then
    return cme_futures_streamlined_sbe_v5_8.md_instrument_definition_eris.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cme_futures_streamlined_sbe_v5_8.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_futures_streamlined_sbe_v5_8.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_futures_streamlined_sbe_v5_8.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_futures_streamlined_sbe_v5_8.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.payload, range, display)

  return cme_futures_streamlined_sbe_v5_8.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
cme_futures_streamlined_sbe_v5_8.version = {}

-- Size: Version
cme_futures_streamlined_sbe_v5_8.version.size = 2

-- Display: Version
cme_futures_streamlined_sbe_v5_8.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_futures_streamlined_sbe_v5_8.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_futures_streamlined_sbe_v5_8.schema_id = {}

-- Size: Schema Id
cme_futures_streamlined_sbe_v5_8.schema_id.size = 2

-- Display: Schema Id
cme_futures_streamlined_sbe_v5_8.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_futures_streamlined_sbe_v5_8.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
cme_futures_streamlined_sbe_v5_8.template_id = {}

-- Size: Template Id
cme_futures_streamlined_sbe_v5_8.template_id.size = 2

-- Display: Template Id
cme_futures_streamlined_sbe_v5_8.template_id.display = function(value)
  if value == 312 then
    return "Template Id: Admin Heartbeat (312)"
  end
  if value == 315 then
    return "Template Id: Admin Login (315)"
  end
  if value == 316 then
    return "Template Id: Admin Logout (316)"
  end
  if value == 333 then
    return "Template Id: Md Incremental Refresh Eris Reference Data And Daily Statistics (333)"
  end
  if value == 339 then
    return "Template Id: Md News Indices (339)"
  end
  if value == 340 then
    return "Template Id: Md Incremental Refresh Trade Blocks 340 (340)"
  end
  if value == 345 then
    return "Template Id: Quote Request (345)"
  end
  if value == 347 then
    return "Template Id: Md Instrument Definition Indices (347)"
  end
  if value == 348 then
    return "Template Id: Md Incremental Refresh Indices (348)"
  end
  if value == 349 then
    return "Template Id: Md Incremental Refresh Trade Blocks 349 (349)"
  end
  if value == 351 then
    return "Template Id: Md Incremental Refresh Eris 351 (351)"
  end
  if value == 353 then
    return "Template Id: Md Incremental Refresh Eris 353 (353)"
  end
  if value == 356 then
    return "Template Id: Md Incremental Refresh Otc (356)"
  end
  if value == 363 then
    return "Template Id: Md Instrument Definition Eris (363)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_futures_streamlined_sbe_v5_8.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Header
cme_futures_streamlined_sbe_v5_8.message_header = {}

-- Size: Message Header
cme_futures_streamlined_sbe_v5_8.message_header.size =
  cme_futures_streamlined_sbe_v5_8.block_length.size + 
  cme_futures_streamlined_sbe_v5_8.template_id.size + 
  cme_futures_streamlined_sbe_v5_8.schema_id.size + 
  cme_futures_streamlined_sbe_v5_8.version.size

-- Display: Message Header
cme_futures_streamlined_sbe_v5_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_futures_streamlined_sbe_v5_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_streamlined_sbe_v5_8.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, template_id = cme_futures_streamlined_sbe_v5_8.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_futures_streamlined_sbe_v5_8.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_futures_streamlined_sbe_v5_8.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_futures_streamlined_sbe_v5_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.message_header, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Size
cme_futures_streamlined_sbe_v5_8.message_size = {}

-- Size: Message Size
cme_futures_streamlined_sbe_v5_8.message_size.size = 2

-- Display: Message Size
cme_futures_streamlined_sbe_v5_8.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_futures_streamlined_sbe_v5_8.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message
cme_futures_streamlined_sbe_v5_8.message = {}

-- Calculate size of: Message
cme_futures_streamlined_sbe_v5_8.message.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8.message_size.size

  index = index + cme_futures_streamlined_sbe_v5_8.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + cme_futures_streamlined_sbe_v5_8.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cme_futures_streamlined_sbe_v5_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_futures_streamlined_sbe_v5_8.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_futures_streamlined_sbe_v5_8.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_futures_streamlined_sbe_v5_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 14 branches
  index = cme_futures_streamlined_sbe_v5_8.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_futures_streamlined_sbe_v5_8.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cme_futures_streamlined_sbe_v5_8.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8.message.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.message, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8.message.fields(buffer, offset, packet, parent)
end

-- Sending Time
cme_futures_streamlined_sbe_v5_8.sending_time = {}

-- Size: Sending Time
cme_futures_streamlined_sbe_v5_8.sending_time.size = 8

-- Display: Sending Time
cme_futures_streamlined_sbe_v5_8.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_futures_streamlined_sbe_v5_8.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
cme_futures_streamlined_sbe_v5_8.message_sequence_number = {}

-- Size: Message Sequence Number
cme_futures_streamlined_sbe_v5_8.message_sequence_number.size = 4

-- Display: Message Sequence Number
cme_futures_streamlined_sbe_v5_8.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_futures_streamlined_sbe_v5_8.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8.message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Binary Packet Header
cme_futures_streamlined_sbe_v5_8.binary_packet_header = {}

-- Size: Binary Packet Header
cme_futures_streamlined_sbe_v5_8.binary_packet_header.size =
  cme_futures_streamlined_sbe_v5_8.message_sequence_number.size + 
  cme_futures_streamlined_sbe_v5_8.sending_time.size

-- Display: Binary Packet Header
cme_futures_streamlined_sbe_v5_8.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_futures_streamlined_sbe_v5_8.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_futures_streamlined_sbe_v5_8.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_futures_streamlined_sbe_v5_8.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_futures_streamlined_sbe_v5_8.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_streamlined_sbe_v5_8.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_futures_streamlined_sbe_v5_8.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_streamlined_sbe_v5_8.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_streamlined_sbe_v5_8.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cme_futures_streamlined_sbe_v5_8.packet = {}

-- Dissect Packet
cme_futures_streamlined_sbe_v5_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_futures_streamlined_sbe_v5_8.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = cme_futures_streamlined_sbe_v5_8.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_futures_streamlined_sbe_v5_8.init()
end

-- Dissector for Cme Futures Streamlined Sbe 5.8
function omi_cme_futures_streamlined_sbe_v5_8.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_futures_streamlined_sbe_v5_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_futures_streamlined_sbe_v5_8, buffer(), omi_cme_futures_streamlined_sbe_v5_8.description, "("..buffer:len().." Bytes)")
  return cme_futures_streamlined_sbe_v5_8.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cme_futures_streamlined_sbe_v5_8)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cme_futures_streamlined_sbe_v5_8.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
cme_futures_streamlined_sbe_v5_8.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 5 then
    return true
  end

  return false
end

-- Verify Version Field
cme_futures_streamlined_sbe_v5_8.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 8 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures Streamlined Sbe 5.8
local function omi_cme_futures_streamlined_sbe_v5_8_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_futures_streamlined_sbe_v5_8.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_futures_streamlined_sbe_v5_8.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not cme_futures_streamlined_sbe_v5_8.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_futures_streamlined_sbe_v5_8
  omi_cme_futures_streamlined_sbe_v5_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures Streamlined Sbe 5.8
omi_cme_futures_streamlined_sbe_v5_8:register_heuristic("udp", omi_cme_futures_streamlined_sbe_v5_8_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 5.8
--   Date: Friday, June 2, 2017
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
