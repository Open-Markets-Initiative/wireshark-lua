-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures Streamlined Sbe 5.8 Protocol
local cme_futures_streamlined_sbe_v5_8 = Proto("Cme.Futures.Streamlined.Sbe.v5.8.Lua", "Cme Futures Streamlined Sbe 5.8")

-- Component Tables
local show = {}
local format = {}
local cme_futures_streamlined_sbe_v5_8_display = {}
local cme_futures_streamlined_sbe_v5_8_dissect = {}
local cme_futures_streamlined_sbe_v5_8_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Futures Streamlined Sbe 5.8 Fields
cme_futures_streamlined_sbe_v5_8.fields.accrual_days = ProtoField.new("Accrual Days", "cme.futures.streamlined.sbe.v5.8.accrualdays", ftypes.UINT32)
cme_futures_streamlined_sbe_v5_8.fields.accrued_coupons = ProtoField.new("Accrued Coupons", "cme.futures.streamlined.sbe.v5.8.accruedcoupons", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.actual = ProtoField.new("Actual", "cme.futures.streamlined.sbe.v5.8.actual", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
cme_futures_streamlined_sbe_v5_8.fields.admin_login = ProtoField.new("Admin Login", "cme.futures.streamlined.sbe.v5.8.adminlogin", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.admin_logout = ProtoField.new("Admin Logout", "cme.futures.streamlined.sbe.v5.8.adminlogout", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.futures.streamlined.sbe.v5.8.aggressorside", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.appl_id = ProtoField.new("Appl Id", "cme.futures.streamlined.sbe.v5.8.applid", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.batch_total_messages = ProtoField.new("Batch Total Messages", "cme.futures.streamlined.sbe.v5.8.batchtotalmessages", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.batch_total_messages_optional = ProtoField.new("Batch Total Messages Optional", "cme.futures.streamlined.sbe.v5.8.batchtotalmessagesoptional", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.futures.streamlined.sbe.v5.8.binarypacketheader", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.block_length = ProtoField.new("Block Length", "cme.futures.streamlined.sbe.v5.8.blocklength", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.cal_fut_px = ProtoField.new("Cal Fut Px", "cme.futures.streamlined.sbe.v5.8.calfutpx", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.cal_fut_px_optional = ProtoField.new("Cal Fut Px Optional", "cme.futures.streamlined.sbe.v5.8.calfutpxoptional", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.coupon_rate = ProtoField.new("Coupon Rate", "cme.futures.streamlined.sbe.v5.8.couponrate", ftypes.DOUBLE)
cme_futures_streamlined_sbe_v5_8.fields.coupon_rate_optional = ProtoField.new("Coupon Rate Optional", "cme.futures.streamlined.sbe.v5.8.couponrateoptional", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.currency = ProtoField.new("Currency", "cme.futures.streamlined.sbe.v5.8.currency", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.d_v_01 = ProtoField.new("D V 01", "cme.futures.streamlined.sbe.v5.8.dv01", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.daily_incremental_eris_pai = ProtoField.new("Daily Incremental Eris Pai", "cme.futures.streamlined.sbe.v5.8.dailyincrementalerispai", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.day = ProtoField.new("Day", "cme.futures.streamlined.sbe.v5.8.day", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.end_of_event = ProtoField.new("End Of Event", "cme.futures.streamlined.sbe.v5.8.endofevent", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
cme_futures_streamlined_sbe_v5_8.fields.eris_pai = ProtoField.new("Eris Pai", "cme.futures.streamlined.sbe.v5.8.erispai", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.event_time = ProtoField.new("Event Time", "cme.futures.streamlined.sbe.v5.8.eventtime", ftypes.UINT64)
cme_futures_streamlined_sbe_v5_8.fields.event_type_indices = ProtoField.new("Event Type Indices", "cme.futures.streamlined.sbe.v5.8.eventtypeindices", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.events_group = ProtoField.new("Events Group", "cme.futures.streamlined.sbe.v5.8.eventsgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.events_groups = ProtoField.new("Events Groups", "cme.futures.streamlined.sbe.v5.8.eventsgroups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.exponent = ProtoField.new("Exponent", "cme.futures.streamlined.sbe.v5.8.exponent", ftypes.INT8)
cme_futures_streamlined_sbe_v5_8.fields.fair_coupon_pct = ProtoField.new("Fair Coupon Pct", "cme.futures.streamlined.sbe.v5.8.faircouponpct", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.fed_funds_date = ProtoField.new("Fed Funds Date", "cme.futures.streamlined.sbe.v5.8.fedfundsdate", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.fed_funds_rate = ProtoField.new("Fed Funds Rate", "cme.futures.streamlined.sbe.v5.8.fedfundsrate", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.final = ProtoField.new("Final", "cme.futures.streamlined.sbe.v5.8.final", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
cme_futures_streamlined_sbe_v5_8.fields.final_settlement_futures_price = ProtoField.new("Final Settlement Futures Price", "cme.futures.streamlined.sbe.v5.8.finalsettlementfuturesprice", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.fixed_npv = ProtoField.new("Fixed Npv", "cme.futures.streamlined.sbe.v5.8.fixednpv", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.fixed_payment = ProtoField.new("Fixed Payment", "cme.futures.streamlined.sbe.v5.8.fixedpayment", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.float_npv = ProtoField.new("Float Npv", "cme.futures.streamlined.sbe.v5.8.floatnpv", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.floating_payment = ProtoField.new("Floating Payment", "cme.futures.streamlined.sbe.v5.8.floatingpayment", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.group_size = ProtoField.new("Group Size", "cme.futures.streamlined.sbe.v5.8.groupsize", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "cme.futures.streamlined.sbe.v5.8.groupsizeencoding", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.headline = ProtoField.new("Headline", "cme.futures.streamlined.sbe.v5.8.headline", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "cme.futures.streamlined.sbe.v5.8.heartbtint", ftypes.INT8)
cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_group = ProtoField.new("Inst Attrib Group", "cme.futures.streamlined.sbe.v5.8.instattribgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_groups = ProtoField.new("Inst Attrib Groups", "cme.futures.streamlined.sbe.v5.8.instattribgroups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_type = ProtoField.new("Inst Attrib Type", "cme.futures.streamlined.sbe.v5.8.instattribtype", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "cme.futures.streamlined.sbe.v5.8.instattribvalue", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.interpolation_factor = ProtoField.new("Interpolation Factor", "cme.futures.streamlined.sbe.v5.8.interpolationfactor", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "cme.futures.streamlined.sbe.v5.8.lastimpliedmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
cme_futures_streamlined_sbe_v5_8.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "cme.futures.streamlined.sbe.v5.8.lastquotemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
cme_futures_streamlined_sbe_v5_8.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "cme.futures.streamlined.sbe.v5.8.laststatsmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
cme_futures_streamlined_sbe_v5_8.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "cme.futures.streamlined.sbe.v5.8.lasttrademsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
cme_futures_streamlined_sbe_v5_8.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "cme.futures.streamlined.sbe.v5.8.lastvolumemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
cme_futures_streamlined_sbe_v5_8.fields.leg_benchmark_curve_name = ProtoField.new("Leg Benchmark Curve Name", "cme.futures.streamlined.sbe.v5.8.legbenchmarkcurvename", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.leg_contract_multiplier = ProtoField.new("Leg Contract Multiplier", "cme.futures.streamlined.sbe.v5.8.legcontractmultiplier", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.leg_credit_rating = ProtoField.new("Leg Credit Rating", "cme.futures.streamlined.sbe.v5.8.legcreditrating", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.leg_currency = ProtoField.new("Leg Currency", "cme.futures.streamlined.sbe.v5.8.legcurrency", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.leg_date_offset = ProtoField.new("Leg Date Offset", "cme.futures.streamlined.sbe.v5.8.legdateoffset", ftypes.INT8)
cme_futures_streamlined_sbe_v5_8.fields.leg_pay_frequencey = ProtoField.new("Leg Pay Frequencey", "cme.futures.streamlined.sbe.v5.8.legpayfrequencey", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.leg_purchase_rate = ProtoField.new("Leg Purchase Rate", "cme.futures.streamlined.sbe.v5.8.legpurchaserate", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.futures.streamlined.sbe.v5.8.legratioqty", ftypes.INT32)
cme_futures_streamlined_sbe_v5_8.fields.leg_ref_id = ProtoField.new("Leg Ref Id", "cme.futures.streamlined.sbe.v5.8.legrefid", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.leg_security_group = ProtoField.new("Leg Security Group", "cme.futures.streamlined.sbe.v5.8.legsecuritygroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.leg_security_type = ProtoField.new("Leg Security Type", "cme.futures.streamlined.sbe.v5.8.legsecuritytype", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.leg_side = ProtoField.new("Leg Side", "cme.futures.streamlined.sbe.v5.8.legside", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.leg_symbol = ProtoField.new("Leg Symbol", "cme.futures.streamlined.sbe.v5.8.legsymbol", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.lines_of_text_group = ProtoField.new("Lines Of Text Group", "cme.futures.streamlined.sbe.v5.8.linesoftextgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.lines_of_text_groups = ProtoField.new("Lines Of Text Groups", "cme.futures.streamlined.sbe.v5.8.linesoftextgroups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_feed_types_group = ProtoField.new("M D Feed Types Group", "cme.futures.streamlined.sbe.v5.8.mdfeedtypesgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_feed_types_groups = ProtoField.new("M D Feed Types Groups", "cme.futures.streamlined.sbe.v5.8.mdfeedtypesgroups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_351_group = ProtoField.new("M D Incremental Refresh Eris 351 Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris351group", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_351_groups = ProtoField.new("M D Incremental Refresh Eris 351 Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris351groups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_353_group = ProtoField.new("M D Incremental Refresh Eris 353 Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris353group", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_353_groups = ProtoField.new("M D Incremental Refresh Eris 353 Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris353groups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = ProtoField.new("M D Incremental Refresh Eris Reference Data And Daily Statistics Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresherisreferencedataanddailystatisticsgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = ProtoField.new("M D Incremental Refresh Eris Reference Data And Daily Statistics Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresherisreferencedataanddailystatisticsgroups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_indices_group = ProtoField.new("M D Incremental Refresh Indices Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshindicesgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_indices_groups = ProtoField.new("M D Incremental Refresh Indices Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshindicesgroups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_otc_group = ProtoField.new("M D Incremental Refresh Otc Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshotcgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_otc_groups = ProtoField.new("M D Incremental Refresh Otc Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshotcgroups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_340_group = ProtoField.new("M D Incremental Refresh Trade Blocks 340 Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks340group", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_340_groups = ProtoField.new("M D Incremental Refresh Trade Blocks 340 Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks340groups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_349_group = ProtoField.new("M D Incremental Refresh Trade Blocks 349 Group", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks349group", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_349_groups = ProtoField.new("M D Incremental Refresh Trade Blocks 349 Groups", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks349groups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_instrument_definition_eris_leg_group = ProtoField.new("M D Instrument Definition Eris Leg Group", "cme.futures.streamlined.sbe.v5.8.mdinstrumentdefinitionerisleggroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.m_d_instrument_definition_eris_leg_groups = ProtoField.new("M D Instrument Definition Eris Leg Groups", "cme.futures.streamlined.sbe.v5.8.mdinstrumentdefinitionerisleggroups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.mantissa = ProtoField.new("Mantissa", "cme.futures.streamlined.sbe.v5.8.mantissa", ftypes.INT64)
cme_futures_streamlined_sbe_v5_8.fields.mantissa_32 = ProtoField.new("Mantissa 32", "cme.futures.streamlined.sbe.v5.8.mantissa32", ftypes.INT32)
cme_futures_streamlined_sbe_v5_8.fields.market_depth = ProtoField.new("Market Depth", "cme.futures.streamlined.sbe.v5.8.marketdepth", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.market_sector = ProtoField.new("Market Sector", "cme.futures.streamlined.sbe.v5.8.marketsector", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "cme.futures.streamlined.sbe.v5.8.matcheventindicator", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.maturity_date = ProtoField.new("Maturity Date", "cme.futures.streamlined.sbe.v5.8.maturitydate", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.streamlined.sbe.v5.8.maturitymonthyear", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_code = ProtoField.new("Md Entry Code", "cme.futures.streamlined.sbe.v5.8.mdentrycode", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_date = ProtoField.new("Md Entry Date", "cme.futures.streamlined.sbe.v5.8.mdentrydate", ftypes.INT32)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_id = ProtoField.new("Md Entry Id", "cme.futures.streamlined.sbe.v5.8.mdentryid", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_position_no = ProtoField.new("Md Entry Position No", "cme.futures.streamlined.sbe.v5.8.mdentrypositionno", ftypes.INT32)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_decimal = ProtoField.new("Md Entry Px Decimal", "cme.futures.streamlined.sbe.v5.8.mdentrypxdecimal", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_decimal_optional = ProtoField.new("Md Entry Px Decimal Optional", "cme.futures.streamlined.sbe.v5.8.mdentrypxdecimaloptional", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_optional = ProtoField.new("Md Entry Px Optional", "cme.futures.streamlined.sbe.v5.8.mdentrypxoptional", ftypes.DOUBLE)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.futures.streamlined.sbe.v5.8.mdentrysize", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_size_optional = ProtoField.new("Md Entry Size Optional", "cme.futures.streamlined.sbe.v5.8.mdentrysizeoptional", ftypes.UINT64)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_time = ProtoField.new("Md Entry Time", "cme.futures.streamlined.sbe.v5.8.mdentrytime", ftypes.INT32)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_type = ProtoField.new("Md Entry Type", "cme.futures.streamlined.sbe.v5.8.mdentrytype", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_entry_type_indices = ProtoField.new("Md Entry Type Indices", "cme.futures.streamlined.sbe.v5.8.mdentrytypeindices", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_feed_type = ProtoField.new("Md Feed Type", "cme.futures.streamlined.sbe.v5.8.mdfeedtype", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_feed_type_3 = ProtoField.new("Md Feed Type 3", "cme.futures.streamlined.sbe.v5.8.mdfeedtype3", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris = ProtoField.new("Md Incremental Refresh Eris", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresheris", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris_no_quote = ProtoField.new("Md Incremental Refresh Eris No Quote", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresherisnoquote", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris_reference_data_and_daily_statistics = ProtoField.new("Md Incremental Refresh Eris Reference Data And Daily Statistics", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefresherisreferencedataanddailystatistics", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_indices = ProtoField.new("Md Incremental Refresh Indices", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshindices", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_otc = ProtoField.new("Md Incremental Refresh Otc", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshotc", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_trade_blocks = ProtoField.new("Md Incremental Refresh Trade Blocks", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocks", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_trade_blocks_no_date = ProtoField.new("Md Incremental Refresh Trade Blocks No Date", "cme.futures.streamlined.sbe.v5.8.mdincrementalrefreshtradeblocksnodate", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_instrument_definition_eris = ProtoField.new("Md Instrument Definition Eris", "cme.futures.streamlined.sbe.v5.8.mdinstrumentdefinitioneris", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_instrument_definition_indices = ProtoField.new("Md Instrument Definition Indices", "cme.futures.streamlined.sbe.v5.8.mdinstrumentdefinitionindices", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_news_indices = ProtoField.new("Md News Indices", "cme.futures.streamlined.sbe.v5.8.mdnewsindices", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.md_quote_type = ProtoField.new("Md Quote Type", "cme.futures.streamlined.sbe.v5.8.mdquotetype", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.md_update_action = ProtoField.new("Md Update Action", "cme.futures.streamlined.sbe.v5.8.mdupdateaction", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.md_update_action_char = ProtoField.new("Md Update Action Char", "cme.futures.streamlined.sbe.v5.8.mdupdateactionchar", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.message = ProtoField.new("Message", "cme.futures.streamlined.sbe.v5.8.message", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.message_header = ProtoField.new("Message Header", "cme.futures.streamlined.sbe.v5.8.messageheader", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.futures.streamlined.sbe.v5.8.messagesequencenumber", ftypes.UINT32)
cme_futures_streamlined_sbe_v5_8.fields.message_size = ProtoField.new("Message Size", "cme.futures.streamlined.sbe.v5.8.messagesize", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.min_price_increment = ProtoField.new("Min Price Increment", "cme.futures.streamlined.sbe.v5.8.minpriceincrement", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.min_price_increment_optional = ProtoField.new("Min Price Increment Optional", "cme.futures.streamlined.sbe.v5.8.minpriceincrementoptional", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.month = ProtoField.new("Month", "cme.futures.streamlined.sbe.v5.8.month", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "cme.futures.streamlined.sbe.v5.8.netchgprevday", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.net_pct_chg = ProtoField.new("Net Pct Chg", "cme.futures.streamlined.sbe.v5.8.netpctchg", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.next_fixed_payment_amount = ProtoField.new("Next Fixed Payment Amount", "cme.futures.streamlined.sbe.v5.8.nextfixedpaymentamount", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.next_fixed_payment_date = ProtoField.new("Next Fixed Payment Date", "cme.futures.streamlined.sbe.v5.8.nextfixedpaymentdate", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.next_floating_payment_amount = ProtoField.new("Next Floating Payment Amount", "cme.futures.streamlined.sbe.v5.8.nextfloatingpaymentamount", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.next_floating_payment_date = ProtoField.new("Next Floating Payment Date", "cme.futures.streamlined.sbe.v5.8.nextfloatingpaymentdate", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.nominal = ProtoField.new("Nominal", "cme.futures.streamlined.sbe.v5.8.nominal", ftypes.UINT64)
cme_futures_streamlined_sbe_v5_8.fields.notional_percentage_outstanding = ProtoField.new("Notional Percentage Outstanding", "cme.futures.streamlined.sbe.v5.8.notionalpercentageoutstanding", ftypes.DOUBLE)
cme_futures_streamlined_sbe_v5_8.fields.npv = ProtoField.new("Npv", "cme.futures.streamlined.sbe.v5.8.npv", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.null_value = ProtoField.new("Null Value", "cme.futures.streamlined.sbe.v5.8.nullvalue", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
cme_futures_streamlined_sbe_v5_8.fields.num_in_group_16 = ProtoField.new("Num In Group 16", "cme.futures.streamlined.sbe.v5.8.numingroup16", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.num_in_group_uint_8 = ProtoField.new("Num In Group uint 8", "cme.futures.streamlined.sbe.v5.8.numingroupuint8", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.number_of_orders = ProtoField.new("Number Of Orders", "cme.futures.streamlined.sbe.v5.8.numberoforders", ftypes.INT32)
cme_futures_streamlined_sbe_v5_8.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.futures.streamlined.sbe.v5.8.openclosesettlflag", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.orig_time = ProtoField.new("Orig Time", "cme.futures.streamlined.sbe.v5.8.origtime", ftypes.UINT64)
cme_futures_streamlined_sbe_v5_8.fields.p_v_01 = ProtoField.new("P V 01", "cme.futures.streamlined.sbe.v5.8.pv01", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.packet = ProtoField.new("Packet", "cme.futures.streamlined.sbe.v5.8.packet", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.payload = ProtoField.new("Payload", "cme.futures.streamlined.sbe.v5.8.payload", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.percent_trading = ProtoField.new("Percent Trading", "cme.futures.streamlined.sbe.v5.8.percenttrading", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.previous_eris_pai = ProtoField.new("Previous Eris Pai", "cme.futures.streamlined.sbe.v5.8.previouserispai", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.previous_fixing_date = ProtoField.new("Previous Fixing Date", "cme.futures.streamlined.sbe.v5.8.previousfixingdate", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.previous_fixing_rate = ProtoField.new("Previous Fixing Rate", "cme.futures.streamlined.sbe.v5.8.previousfixingrate", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.price_type = ProtoField.new("Price Type", "cme.futures.streamlined.sbe.v5.8.pricetype", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.product = ProtoField.new("Product", "cme.futures.streamlined.sbe.v5.8.product", ftypes.INT8)
cme_futures_streamlined_sbe_v5_8.fields.product_complex = ProtoField.new("Product Complex", "cme.futures.streamlined.sbe.v5.8.productcomplex", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.product_optional = ProtoField.new("Product Optional", "cme.futures.streamlined.sbe.v5.8.productoptional", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.put_or_call = ProtoField.new("Put Or Call", "cme.futures.streamlined.sbe.v5.8.putorcall", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.quote_condition = ProtoField.new("Quote Condition", "cme.futures.streamlined.sbe.v5.8.quotecondition", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.futures.streamlined.sbe.v5.8.quotereqid", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.quote_request = ProtoField.new("Quote Request", "cme.futures.streamlined.sbe.v5.8.quoterequest", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.rate_descriptor = ProtoField.new("Rate Descriptor", "cme.futures.streamlined.sbe.v5.8.ratedescriptor", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.rate_type = ProtoField.new("Rate Type", "cme.futures.streamlined.sbe.v5.8.ratetype", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.recovery_msg = ProtoField.new("Recovery Msg", "cme.futures.streamlined.sbe.v5.8.recoverymsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
cme_futures_streamlined_sbe_v5_8.fields.reference_id_100 = ProtoField.new("Reference Id 100", "cme.futures.streamlined.sbe.v5.8.referenceid100", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.reference_id_50 = ProtoField.new("Reference Id 50", "cme.futures.streamlined.sbe.v5.8.referenceid50", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.futures.streamlined.sbe.v5.8.relatedsymgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.futures.streamlined.sbe.v5.8.relatedsymgroups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.reserved = ProtoField.new("Reserved", "cme.futures.streamlined.sbe.v5.8.reserved", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
cme_futures_streamlined_sbe_v5_8.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.futures.streamlined.sbe.v5.8.reservedbits", ftypes.UINT8, nil, base.DEC, "0x78")
cme_futures_streamlined_sbe_v5_8.fields.restructuring_type = ProtoField.new("Restructuring Type", "cme.futures.streamlined.sbe.v5.8.restructuringtype", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.rounded = ProtoField.new("Rounded", "cme.futures.streamlined.sbe.v5.8.rounded", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
cme_futures_streamlined_sbe_v5_8.fields.rpt_seq = ProtoField.new("Rpt Seq", "cme.futures.streamlined.sbe.v5.8.rptseq", ftypes.UINT32)
cme_futures_streamlined_sbe_v5_8.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.streamlined.sbe.v5.8.schemaid", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.sector_group = ProtoField.new("Sector Group", "cme.futures.streamlined.sbe.v5.8.sectorgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.sector_sub_group = ProtoField.new("Sector Sub Group", "cme.futures.streamlined.sbe.v5.8.sectorsubgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_alt_id = ProtoField.new("Security Alt Id", "cme.futures.streamlined.sbe.v5.8.securityaltid", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_group = ProtoField.new("Security Alt Id Group", "cme.futures.streamlined.sbe.v5.8.securityaltidgroup", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_groups = ProtoField.new("Security Alt Id Groups", "cme.futures.streamlined.sbe.v5.8.securityaltidgroups", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "cme.futures.streamlined.sbe.v5.8.securityaltidsource", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_description = ProtoField.new("Security Description", "cme.futures.streamlined.sbe.v5.8.securitydescription", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_exchange = ProtoField.new("Security Exchange", "cme.futures.streamlined.sbe.v5.8.securityexchange", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_exchange_4 = ProtoField.new("Security Exchange 4", "cme.futures.streamlined.sbe.v5.8.securityexchange4", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_group_12 = ProtoField.new("Security Group 12", "cme.futures.streamlined.sbe.v5.8.securitygroup12", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_group_26 = ProtoField.new("Security Group 26", "cme.futures.streamlined.sbe.v5.8.securitygroup26", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_id = ProtoField.new("Security Id", "cme.futures.streamlined.sbe.v5.8.securityid", ftypes.UINT64)
cme_futures_streamlined_sbe_v5_8.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.futures.streamlined.sbe.v5.8.securitysubtype", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_type = ProtoField.new("Security Type", "cme.futures.streamlined.sbe.v5.8.securitytype", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_type_4 = ProtoField.new("Security Type 4", "cme.futures.streamlined.sbe.v5.8.securitytype4", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.security_update_action = ProtoField.new("Security Update Action", "cme.futures.streamlined.sbe.v5.8.securityupdateaction", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.sending_time = ProtoField.new("Sending Time", "cme.futures.streamlined.sbe.v5.8.sendingtime", ftypes.UINT64)
cme_futures_streamlined_sbe_v5_8.fields.seniority = ProtoField.new("Seniority", "cme.futures.streamlined.sbe.v5.8.seniority", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.settl_date = ProtoField.new("Settl Date", "cme.futures.streamlined.sbe.v5.8.settldate", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.futures.streamlined.sbe.v5.8.settlpricetype", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.settlement_npv = ProtoField.new("Settlement Npv", "cme.futures.streamlined.sbe.v5.8.settlementnpv", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.strategy_link_id = ProtoField.new("Strategy Link Id", "cme.futures.streamlined.sbe.v5.8.strategylinkid", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.strike_price = ProtoField.new("Strike Price", "cme.futures.streamlined.sbe.v5.8.strikeprice", ftypes.DOUBLE)
cme_futures_streamlined_sbe_v5_8.fields.strike_price_decimal = ProtoField.new("Strike Price Decimal", "cme.futures.streamlined.sbe.v5.8.strikepricedecimal", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.symbol = ProtoField.new("Symbol", "cme.futures.streamlined.sbe.v5.8.symbol", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.template_id = ProtoField.new("Template Id", "cme.futures.streamlined.sbe.v5.8.templateid", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.text = ProtoField.new("Text", "cme.futures.streamlined.sbe.v5.8.text", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.text_500 = ProtoField.new("Text 500", "cme.futures.streamlined.sbe.v5.8.text500", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.trade_date = ProtoField.new("Trade Date", "cme.futures.streamlined.sbe.v5.8.tradedate", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.trade_id = ProtoField.new("Trade Id", "cme.futures.streamlined.sbe.v5.8.tradeid", ftypes.INT32)
cme_futures_streamlined_sbe_v5_8.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.futures.streamlined.sbe.v5.8.tradingreferencedate", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.streamlined.sbe.v5.8.transacttime", ftypes.UINT64)
cme_futures_streamlined_sbe_v5_8.fields.transact_time_optional = ProtoField.new("Transact Time Optional", "cme.futures.streamlined.sbe.v5.8.transacttimeoptional", ftypes.UINT64)
cme_futures_streamlined_sbe_v5_8.fields.trd_type = ProtoField.new("Trd Type", "cme.futures.streamlined.sbe.v5.8.trdtype", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "cme.futures.streamlined.sbe.v5.8.unitofmeasure", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_currency = ProtoField.new("Unit Of Measure Currency", "cme.futures.streamlined.sbe.v5.8.unitofmeasurecurrency", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_currency_3 = ProtoField.new("Unit Of Measure Currency 3", "cme.futures.streamlined.sbe.v5.8.unitofmeasurecurrency3", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_qty_decimal = ProtoField.new("Unit Of Measure Qty Decimal", "cme.futures.streamlined.sbe.v5.8.unitofmeasureqtydecimal", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_qty_optional = ProtoField.new("Unit Of Measure Qty Optional", "cme.futures.streamlined.sbe.v5.8.unitofmeasureqtyoptional", ftypes.DOUBLE)
cme_futures_streamlined_sbe_v5_8.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "cme.futures.streamlined.sbe.v5.8.userdefinedinstrument", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.version = ProtoField.new("Version", "cme.futures.streamlined.sbe.v5.8.version", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.vol_type = ProtoField.new("Vol Type", "cme.futures.streamlined.sbe.v5.8.voltype", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.week = ProtoField.new("Week", "cme.futures.streamlined.sbe.v5.8.week", ftypes.UINT8)
cme_futures_streamlined_sbe_v5_8.fields.year = ProtoField.new("Year", "cme.futures.streamlined.sbe.v5.8.year", ftypes.UINT16)
cme_futures_streamlined_sbe_v5_8.fields.yield = ProtoField.new("Yield", "cme.futures.streamlined.sbe.v5.8.yield", ftypes.STRING)
cme_futures_streamlined_sbe_v5_8.fields.yield_type = ProtoField.new("Yield Type", "cme.futures.streamlined.sbe.v5.8.yieldtype", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

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
cme_futures_streamlined_sbe_v5_8.prefs.show_accrued_coupons = Pref.bool("Show Accrued Coupons", show.accrued_coupons, "Parse and add Accrued Coupons to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_admin_login = Pref.bool("Show Admin Login", show.admin_login, "Parse and add Admin Login to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_admin_logout = Pref.bool("Show Admin Logout", show.admin_logout, "Parse and add Admin Logout to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px = Pref.bool("Show Cal Fut Px", show.cal_fut_px, "Parse and add Cal Fut Px to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px_optional = Pref.bool("Show Cal Fut Px Optional", show.cal_fut_px_optional, "Parse and add Cal Fut Px Optional to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_coupon_rate_optional = Pref.bool("Show Coupon Rate Optional", show.coupon_rate_optional, "Parse and add Coupon Rate Optional to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_d_v_01 = Pref.bool("Show D V 01", show.d_v_01, "Parse and add D V 01 to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_daily_incremental_eris_pai = Pref.bool("Show Daily Incremental Eris Pai", show.daily_incremental_eris_pai, "Parse and add Daily Incremental Eris Pai to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_eris_pai = Pref.bool("Show Eris Pai", show.eris_pai, "Parse and add Eris Pai to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_events_group = Pref.bool("Show Events Group", show.events_group, "Parse and add Events Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_events_groups = Pref.bool("Show Events Groups", show.events_groups, "Parse and add Events Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_fair_coupon_pct = Pref.bool("Show Fair Coupon Pct", show.fair_coupon_pct, "Parse and add Fair Coupon Pct to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_fed_funds_rate = Pref.bool("Show Fed Funds Rate", show.fed_funds_rate, "Parse and add Fed Funds Rate to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_final_settlement_futures_price = Pref.bool("Show Final Settlement Futures Price", show.final_settlement_futures_price, "Parse and add Final Settlement Futures Price to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_npv = Pref.bool("Show Fixed Npv", show.fixed_npv, "Parse and add Fixed Npv to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_payment = Pref.bool("Show Fixed Payment", show.fixed_payment, "Parse and add Fixed Payment to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_float_npv = Pref.bool("Show Float Npv", show.float_npv, "Parse and add Float Npv to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_floating_payment = Pref.bool("Show Floating Payment", show.floating_payment, "Parse and add Floating Payment to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_group = Pref.bool("Show Inst Attrib Group", show.inst_attrib_group, "Parse and add Inst Attrib Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_groups = Pref.bool("Show Inst Attrib Groups", show.inst_attrib_groups, "Parse and add Inst Attrib Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_interpolation_factor = Pref.bool("Show Interpolation Factor", show.interpolation_factor, "Parse and add Interpolation Factor to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_leg_contract_multiplier = Pref.bool("Show Leg Contract Multiplier", show.leg_contract_multiplier, "Parse and add Leg Contract Multiplier to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_leg_purchase_rate = Pref.bool("Show Leg Purchase Rate", show.leg_purchase_rate, "Parse and add Leg Purchase Rate to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_group = Pref.bool("Show Lines Of Text Group", show.lines_of_text_group, "Parse and add Lines Of Text Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_groups = Pref.bool("Show Lines Of Text Groups", show.lines_of_text_groups, "Parse and add Lines Of Text Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_group = Pref.bool("Show M D Feed Types Group", show.m_d_feed_types_group, "Parse and add M D Feed Types Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_groups = Pref.bool("Show M D Feed Types Groups", show.m_d_feed_types_groups, "Parse and add M D Feed Types Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_group = Pref.bool("Show M D Incremental Refresh Eris 351 Group", show.m_d_incremental_refresh_eris_351_group, "Parse and add M D Incremental Refresh Eris 351 Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_groups = Pref.bool("Show M D Incremental Refresh Eris 351 Groups", show.m_d_incremental_refresh_eris_351_groups, "Parse and add M D Incremental Refresh Eris 351 Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_group = Pref.bool("Show M D Incremental Refresh Eris 353 Group", show.m_d_incremental_refresh_eris_353_group, "Parse and add M D Incremental Refresh Eris 353 Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_groups = Pref.bool("Show M D Incremental Refresh Eris 353 Groups", show.m_d_incremental_refresh_eris_353_groups, "Parse and add M D Incremental Refresh Eris 353 Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = Pref.bool("Show M D Incremental Refresh Eris Reference Data And Daily Statistics Group", show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group, "Parse and add M D Incremental Refresh Eris Reference Data And Daily Statistics Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = Pref.bool("Show M D Incremental Refresh Eris Reference Data And Daily Statistics Groups", show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups, "Parse and add M D Incremental Refresh Eris Reference Data And Daily Statistics Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_group = Pref.bool("Show M D Incremental Refresh Indices Group", show.m_d_incremental_refresh_indices_group, "Parse and add M D Incremental Refresh Indices Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_groups = Pref.bool("Show M D Incremental Refresh Indices Groups", show.m_d_incremental_refresh_indices_groups, "Parse and add M D Incremental Refresh Indices Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_group = Pref.bool("Show M D Incremental Refresh Otc Group", show.m_d_incremental_refresh_otc_group, "Parse and add M D Incremental Refresh Otc Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_groups = Pref.bool("Show M D Incremental Refresh Otc Groups", show.m_d_incremental_refresh_otc_groups, "Parse and add M D Incremental Refresh Otc Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_group = Pref.bool("Show M D Incremental Refresh Trade Blocks 340 Group", show.m_d_incremental_refresh_trade_blocks_340_group, "Parse and add M D Incremental Refresh Trade Blocks 340 Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_groups = Pref.bool("Show M D Incremental Refresh Trade Blocks 340 Groups", show.m_d_incremental_refresh_trade_blocks_340_groups, "Parse and add M D Incremental Refresh Trade Blocks 340 Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_group = Pref.bool("Show M D Incremental Refresh Trade Blocks 349 Group", show.m_d_incremental_refresh_trade_blocks_349_group, "Parse and add M D Incremental Refresh Trade Blocks 349 Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_groups = Pref.bool("Show M D Incremental Refresh Trade Blocks 349 Groups", show.m_d_incremental_refresh_trade_blocks_349_groups, "Parse and add M D Incremental Refresh Trade Blocks 349 Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_group = Pref.bool("Show M D Instrument Definition Eris Leg Group", show.m_d_instrument_definition_eris_leg_group, "Parse and add M D Instrument Definition Eris Leg Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_groups = Pref.bool("Show M D Instrument Definition Eris Leg Groups", show.m_d_instrument_definition_eris_leg_groups, "Parse and add M D Instrument Definition Eris Leg Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_match_event_indicator = Pref.bool("Show Match Event Indicator", show.match_event_indicator, "Parse and add Match Event Indicator to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal = Pref.bool("Show Md Entry Px Decimal", show.md_entry_px_decimal, "Parse and add Md Entry Px Decimal to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal_optional = Pref.bool("Show Md Entry Px Decimal Optional", show.md_entry_px_decimal_optional, "Parse and add Md Entry Px Decimal Optional to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_size = Pref.bool("Show Md Entry Size", show.md_entry_size, "Parse and add Md Entry Size to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris = Pref.bool("Show Md Incremental Refresh Eris", show.md_incremental_refresh_eris, "Parse and add Md Incremental Refresh Eris to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_no_quote = Pref.bool("Show Md Incremental Refresh Eris No Quote", show.md_incremental_refresh_eris_no_quote, "Parse and add Md Incremental Refresh Eris No Quote to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics = Pref.bool("Show Md Incremental Refresh Eris Reference Data And Daily Statistics", show.md_incremental_refresh_eris_reference_data_and_daily_statistics, "Parse and add Md Incremental Refresh Eris Reference Data And Daily Statistics to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_indices = Pref.bool("Show Md Incremental Refresh Indices", show.md_incremental_refresh_indices, "Parse and add Md Incremental Refresh Indices to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_otc = Pref.bool("Show Md Incremental Refresh Otc", show.md_incremental_refresh_otc, "Parse and add Md Incremental Refresh Otc to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks = Pref.bool("Show Md Incremental Refresh Trade Blocks", show.md_incremental_refresh_trade_blocks, "Parse and add Md Incremental Refresh Trade Blocks to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks_no_date = Pref.bool("Show Md Incremental Refresh Trade Blocks No Date", show.md_incremental_refresh_trade_blocks_no_date, "Parse and add Md Incremental Refresh Trade Blocks No Date to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_eris = Pref.bool("Show Md Instrument Definition Eris", show.md_instrument_definition_eris, "Parse and add Md Instrument Definition Eris to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_indices = Pref.bool("Show Md Instrument Definition Indices", show.md_instrument_definition_indices, "Parse and add Md Instrument Definition Indices to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_md_news_indices = Pref.bool("Show Md News Indices", show.md_news_indices, "Parse and add Md News Indices to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment = Pref.bool("Show Min Price Increment", show.min_price_increment, "Parse and add Min Price Increment to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment_optional = Pref.bool("Show Min Price Increment Optional", show.min_price_increment_optional, "Parse and add Min Price Increment Optional to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_net_chg_prev_day = Pref.bool("Show Net Chg Prev Day", show.net_chg_prev_day, "Parse and add Net Chg Prev Day to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_net_pct_chg = Pref.bool("Show Net Pct Chg", show.net_pct_chg, "Parse and add Net Pct Chg to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_next_fixed_payment_amount = Pref.bool("Show Next Fixed Payment Amount", show.next_fixed_payment_amount, "Parse and add Next Fixed Payment Amount to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_next_floating_payment_amount = Pref.bool("Show Next Floating Payment Amount", show.next_floating_payment_amount, "Parse and add Next Floating Payment Amount to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_npv = Pref.bool("Show Npv", show.npv, "Parse and add Npv to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_p_v_01 = Pref.bool("Show P V 01", show.p_v_01, "Parse and add P V 01 to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_percent_trading = Pref.bool("Show Percent Trading", show.percent_trading, "Parse and add Percent Trading to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_previous_eris_pai = Pref.bool("Show Previous Eris Pai", show.previous_eris_pai, "Parse and add Previous Eris Pai to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_previous_fixing_rate = Pref.bool("Show Previous Fixing Rate", show.previous_fixing_rate, "Parse and add Previous Fixing Rate to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_group = Pref.bool("Show Security Alt Id Group", show.security_alt_id_group, "Parse and add Security Alt Id Group to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_groups = Pref.bool("Show Security Alt Id Groups", show.security_alt_id_groups, "Parse and add Security Alt Id Groups to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_settl_price_type = Pref.bool("Show Settl Price Type", show.settl_price_type, "Parse and add Settl Price Type to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_settlement_npv = Pref.bool("Show Settlement Npv", show.settlement_npv, "Parse and add Settlement Npv to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_strike_price_decimal = Pref.bool("Show Strike Price Decimal", show.strike_price_decimal, "Parse and add Strike Price Decimal to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_unit_of_measure_qty_decimal = Pref.bool("Show Unit Of Measure Qty Decimal", show.unit_of_measure_qty_decimal, "Parse and add Unit Of Measure Qty Decimal to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_yield = Pref.bool("Show Yield", show.yield, "Parse and add Yield to protocol tree")
cme_futures_streamlined_sbe_v5_8.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cme_futures_streamlined_sbe_v5_8.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.accrued_coupons ~= cme_futures_streamlined_sbe_v5_8.prefs.show_accrued_coupons then
    show.accrued_coupons = cme_futures_streamlined_sbe_v5_8.prefs.show_accrued_coupons
    changed = true
  end
  if show.admin_login ~= cme_futures_streamlined_sbe_v5_8.prefs.show_admin_login then
    show.admin_login = cme_futures_streamlined_sbe_v5_8.prefs.show_admin_login
    changed = true
  end
  if show.admin_logout ~= cme_futures_streamlined_sbe_v5_8.prefs.show_admin_logout then
    show.admin_logout = cme_futures_streamlined_sbe_v5_8.prefs.show_admin_logout
    changed = true
  end
  if show.binary_packet_header ~= cme_futures_streamlined_sbe_v5_8.prefs.show_binary_packet_header then
    show.binary_packet_header = cme_futures_streamlined_sbe_v5_8.prefs.show_binary_packet_header
    changed = true
  end
  if show.cal_fut_px ~= cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px then
    show.cal_fut_px = cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px
    changed = true
  end
  if show.cal_fut_px_optional ~= cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px_optional then
    show.cal_fut_px_optional = cme_futures_streamlined_sbe_v5_8.prefs.show_cal_fut_px_optional
    changed = true
  end
  if show.coupon_rate_optional ~= cme_futures_streamlined_sbe_v5_8.prefs.show_coupon_rate_optional then
    show.coupon_rate_optional = cme_futures_streamlined_sbe_v5_8.prefs.show_coupon_rate_optional
    changed = true
  end
  if show.d_v_01 ~= cme_futures_streamlined_sbe_v5_8.prefs.show_d_v_01 then
    show.d_v_01 = cme_futures_streamlined_sbe_v5_8.prefs.show_d_v_01
    changed = true
  end
  if show.daily_incremental_eris_pai ~= cme_futures_streamlined_sbe_v5_8.prefs.show_daily_incremental_eris_pai then
    show.daily_incremental_eris_pai = cme_futures_streamlined_sbe_v5_8.prefs.show_daily_incremental_eris_pai
    changed = true
  end
  if show.eris_pai ~= cme_futures_streamlined_sbe_v5_8.prefs.show_eris_pai then
    show.eris_pai = cme_futures_streamlined_sbe_v5_8.prefs.show_eris_pai
    changed = true
  end
  if show.events_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_events_group then
    show.events_group = cme_futures_streamlined_sbe_v5_8.prefs.show_events_group
    changed = true
  end
  if show.events_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_events_groups then
    show.events_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_events_groups
    changed = true
  end
  if show.fair_coupon_pct ~= cme_futures_streamlined_sbe_v5_8.prefs.show_fair_coupon_pct then
    show.fair_coupon_pct = cme_futures_streamlined_sbe_v5_8.prefs.show_fair_coupon_pct
    changed = true
  end
  if show.fed_funds_rate ~= cme_futures_streamlined_sbe_v5_8.prefs.show_fed_funds_rate then
    show.fed_funds_rate = cme_futures_streamlined_sbe_v5_8.prefs.show_fed_funds_rate
    changed = true
  end
  if show.final_settlement_futures_price ~= cme_futures_streamlined_sbe_v5_8.prefs.show_final_settlement_futures_price then
    show.final_settlement_futures_price = cme_futures_streamlined_sbe_v5_8.prefs.show_final_settlement_futures_price
    changed = true
  end
  if show.fixed_npv ~= cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_npv then
    show.fixed_npv = cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_npv
    changed = true
  end
  if show.fixed_payment ~= cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_payment then
    show.fixed_payment = cme_futures_streamlined_sbe_v5_8.prefs.show_fixed_payment
    changed = true
  end
  if show.float_npv ~= cme_futures_streamlined_sbe_v5_8.prefs.show_float_npv then
    show.float_npv = cme_futures_streamlined_sbe_v5_8.prefs.show_float_npv
    changed = true
  end
  if show.floating_payment ~= cme_futures_streamlined_sbe_v5_8.prefs.show_floating_payment then
    show.floating_payment = cme_futures_streamlined_sbe_v5_8.prefs.show_floating_payment
    changed = true
  end
  if show.group_size ~= cme_futures_streamlined_sbe_v5_8.prefs.show_group_size then
    show.group_size = cme_futures_streamlined_sbe_v5_8.prefs.show_group_size
    changed = true
  end
  if show.group_size_encoding ~= cme_futures_streamlined_sbe_v5_8.prefs.show_group_size_encoding then
    show.group_size_encoding = cme_futures_streamlined_sbe_v5_8.prefs.show_group_size_encoding
    changed = true
  end
  if show.inst_attrib_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_group then
    show.inst_attrib_group = cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_group
    changed = true
  end
  if show.inst_attrib_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_groups then
    show.inst_attrib_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_inst_attrib_groups
    changed = true
  end
  if show.interpolation_factor ~= cme_futures_streamlined_sbe_v5_8.prefs.show_interpolation_factor then
    show.interpolation_factor = cme_futures_streamlined_sbe_v5_8.prefs.show_interpolation_factor
    changed = true
  end
  if show.leg_contract_multiplier ~= cme_futures_streamlined_sbe_v5_8.prefs.show_leg_contract_multiplier then
    show.leg_contract_multiplier = cme_futures_streamlined_sbe_v5_8.prefs.show_leg_contract_multiplier
    changed = true
  end
  if show.leg_purchase_rate ~= cme_futures_streamlined_sbe_v5_8.prefs.show_leg_purchase_rate then
    show.leg_purchase_rate = cme_futures_streamlined_sbe_v5_8.prefs.show_leg_purchase_rate
    changed = true
  end
  if show.lines_of_text_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_group then
    show.lines_of_text_group = cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_group
    changed = true
  end
  if show.lines_of_text_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_groups then
    show.lines_of_text_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_lines_of_text_groups
    changed = true
  end
  if show.m_d_feed_types_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_group then
    show.m_d_feed_types_group = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_group
    changed = true
  end
  if show.m_d_feed_types_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_groups then
    show.m_d_feed_types_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_feed_types_groups
    changed = true
  end
  if show.m_d_incremental_refresh_eris_351_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_group then
    show.m_d_incremental_refresh_eris_351_group = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_group
    changed = true
  end
  if show.m_d_incremental_refresh_eris_351_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_groups then
    show.m_d_incremental_refresh_eris_351_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_351_groups
    changed = true
  end
  if show.m_d_incremental_refresh_eris_353_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_group then
    show.m_d_incremental_refresh_eris_353_group = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_group
    changed = true
  end
  if show.m_d_incremental_refresh_eris_353_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_groups then
    show.m_d_incremental_refresh_eris_353_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_353_groups
    changed = true
  end
  if show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group then
    show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group
    changed = true
  end
  if show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups then
    show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups
    changed = true
  end
  if show.m_d_incremental_refresh_indices_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_group then
    show.m_d_incremental_refresh_indices_group = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_group
    changed = true
  end
  if show.m_d_incremental_refresh_indices_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_groups then
    show.m_d_incremental_refresh_indices_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_indices_groups
    changed = true
  end
  if show.m_d_incremental_refresh_otc_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_group then
    show.m_d_incremental_refresh_otc_group = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_group
    changed = true
  end
  if show.m_d_incremental_refresh_otc_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_groups then
    show.m_d_incremental_refresh_otc_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_otc_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_blocks_340_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_group then
    show.m_d_incremental_refresh_trade_blocks_340_group = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_blocks_340_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_groups then
    show.m_d_incremental_refresh_trade_blocks_340_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_340_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_blocks_349_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_group then
    show.m_d_incremental_refresh_trade_blocks_349_group = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_blocks_349_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_groups then
    show.m_d_incremental_refresh_trade_blocks_349_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_incremental_refresh_trade_blocks_349_groups
    changed = true
  end
  if show.m_d_instrument_definition_eris_leg_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_group then
    show.m_d_instrument_definition_eris_leg_group = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_group
    changed = true
  end
  if show.m_d_instrument_definition_eris_leg_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_groups then
    show.m_d_instrument_definition_eris_leg_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_m_d_instrument_definition_eris_leg_groups
    changed = true
  end
  if show.match_event_indicator ~= cme_futures_streamlined_sbe_v5_8.prefs.show_match_event_indicator then
    show.match_event_indicator = cme_futures_streamlined_sbe_v5_8.prefs.show_match_event_indicator
    changed = true
  end
  if show.maturity_month_year ~= cme_futures_streamlined_sbe_v5_8.prefs.show_maturity_month_year then
    show.maturity_month_year = cme_futures_streamlined_sbe_v5_8.prefs.show_maturity_month_year
    changed = true
  end
  if show.md_entry_px_decimal ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal then
    show.md_entry_px_decimal = cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal
    changed = true
  end
  if show.md_entry_px_decimal_optional ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal_optional then
    show.md_entry_px_decimal_optional = cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_px_decimal_optional
    changed = true
  end
  if show.md_entry_size ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_size then
    show.md_entry_size = cme_futures_streamlined_sbe_v5_8.prefs.show_md_entry_size
    changed = true
  end
  if show.md_incremental_refresh_eris ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris then
    show.md_incremental_refresh_eris = cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris
    changed = true
  end
  if show.md_incremental_refresh_eris_no_quote ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_no_quote then
    show.md_incremental_refresh_eris_no_quote = cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_no_quote
    changed = true
  end
  if show.md_incremental_refresh_eris_reference_data_and_daily_statistics ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics then
    show.md_incremental_refresh_eris_reference_data_and_daily_statistics = cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics
    changed = true
  end
  if show.md_incremental_refresh_indices ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_indices then
    show.md_incremental_refresh_indices = cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_indices
    changed = true
  end
  if show.md_incremental_refresh_otc ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_otc then
    show.md_incremental_refresh_otc = cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_otc
    changed = true
  end
  if show.md_incremental_refresh_trade_blocks ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks then
    show.md_incremental_refresh_trade_blocks = cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks
    changed = true
  end
  if show.md_incremental_refresh_trade_blocks_no_date ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks_no_date then
    show.md_incremental_refresh_trade_blocks_no_date = cme_futures_streamlined_sbe_v5_8.prefs.show_md_incremental_refresh_trade_blocks_no_date
    changed = true
  end
  if show.md_instrument_definition_eris ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_eris then
    show.md_instrument_definition_eris = cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_eris
    changed = true
  end
  if show.md_instrument_definition_indices ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_indices then
    show.md_instrument_definition_indices = cme_futures_streamlined_sbe_v5_8.prefs.show_md_instrument_definition_indices
    changed = true
  end
  if show.md_news_indices ~= cme_futures_streamlined_sbe_v5_8.prefs.show_md_news_indices then
    show.md_news_indices = cme_futures_streamlined_sbe_v5_8.prefs.show_md_news_indices
    changed = true
  end
  if show.message ~= cme_futures_streamlined_sbe_v5_8.prefs.show_message then
    show.message = cme_futures_streamlined_sbe_v5_8.prefs.show_message
    changed = true
  end
  if show.message_header ~= cme_futures_streamlined_sbe_v5_8.prefs.show_message_header then
    show.message_header = cme_futures_streamlined_sbe_v5_8.prefs.show_message_header
    changed = true
  end
  if show.min_price_increment ~= cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment then
    show.min_price_increment = cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment
    changed = true
  end
  if show.min_price_increment_optional ~= cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment_optional then
    show.min_price_increment_optional = cme_futures_streamlined_sbe_v5_8.prefs.show_min_price_increment_optional
    changed = true
  end
  if show.net_chg_prev_day ~= cme_futures_streamlined_sbe_v5_8.prefs.show_net_chg_prev_day then
    show.net_chg_prev_day = cme_futures_streamlined_sbe_v5_8.prefs.show_net_chg_prev_day
    changed = true
  end
  if show.net_pct_chg ~= cme_futures_streamlined_sbe_v5_8.prefs.show_net_pct_chg then
    show.net_pct_chg = cme_futures_streamlined_sbe_v5_8.prefs.show_net_pct_chg
    changed = true
  end
  if show.next_fixed_payment_amount ~= cme_futures_streamlined_sbe_v5_8.prefs.show_next_fixed_payment_amount then
    show.next_fixed_payment_amount = cme_futures_streamlined_sbe_v5_8.prefs.show_next_fixed_payment_amount
    changed = true
  end
  if show.next_floating_payment_amount ~= cme_futures_streamlined_sbe_v5_8.prefs.show_next_floating_payment_amount then
    show.next_floating_payment_amount = cme_futures_streamlined_sbe_v5_8.prefs.show_next_floating_payment_amount
    changed = true
  end
  if show.npv ~= cme_futures_streamlined_sbe_v5_8.prefs.show_npv then
    show.npv = cme_futures_streamlined_sbe_v5_8.prefs.show_npv
    changed = true
  end
  if show.p_v_01 ~= cme_futures_streamlined_sbe_v5_8.prefs.show_p_v_01 then
    show.p_v_01 = cme_futures_streamlined_sbe_v5_8.prefs.show_p_v_01
    changed = true
  end
  if show.packet ~= cme_futures_streamlined_sbe_v5_8.prefs.show_packet then
    show.packet = cme_futures_streamlined_sbe_v5_8.prefs.show_packet
    changed = true
  end
  if show.percent_trading ~= cme_futures_streamlined_sbe_v5_8.prefs.show_percent_trading then
    show.percent_trading = cme_futures_streamlined_sbe_v5_8.prefs.show_percent_trading
    changed = true
  end
  if show.previous_eris_pai ~= cme_futures_streamlined_sbe_v5_8.prefs.show_previous_eris_pai then
    show.previous_eris_pai = cme_futures_streamlined_sbe_v5_8.prefs.show_previous_eris_pai
    changed = true
  end
  if show.previous_fixing_rate ~= cme_futures_streamlined_sbe_v5_8.prefs.show_previous_fixing_rate then
    show.previous_fixing_rate = cme_futures_streamlined_sbe_v5_8.prefs.show_previous_fixing_rate
    changed = true
  end
  if show.quote_request ~= cme_futures_streamlined_sbe_v5_8.prefs.show_quote_request then
    show.quote_request = cme_futures_streamlined_sbe_v5_8.prefs.show_quote_request
    changed = true
  end
  if show.related_sym_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_group then
    show.related_sym_group = cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_groups then
    show.related_sym_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_related_sym_groups
    changed = true
  end
  if show.security_alt_id_group ~= cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_group then
    show.security_alt_id_group = cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_group
    changed = true
  end
  if show.security_alt_id_groups ~= cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_groups then
    show.security_alt_id_groups = cme_futures_streamlined_sbe_v5_8.prefs.show_security_alt_id_groups
    changed = true
  end
  if show.settl_price_type ~= cme_futures_streamlined_sbe_v5_8.prefs.show_settl_price_type then
    show.settl_price_type = cme_futures_streamlined_sbe_v5_8.prefs.show_settl_price_type
    changed = true
  end
  if show.settlement_npv ~= cme_futures_streamlined_sbe_v5_8.prefs.show_settlement_npv then
    show.settlement_npv = cme_futures_streamlined_sbe_v5_8.prefs.show_settlement_npv
    changed = true
  end
  if show.strike_price_decimal ~= cme_futures_streamlined_sbe_v5_8.prefs.show_strike_price_decimal then
    show.strike_price_decimal = cme_futures_streamlined_sbe_v5_8.prefs.show_strike_price_decimal
    changed = true
  end
  if show.unit_of_measure_qty_decimal ~= cme_futures_streamlined_sbe_v5_8.prefs.show_unit_of_measure_qty_decimal then
    show.unit_of_measure_qty_decimal = cme_futures_streamlined_sbe_v5_8.prefs.show_unit_of_measure_qty_decimal
    changed = true
  end
  if show.yield ~= cme_futures_streamlined_sbe_v5_8.prefs.show_yield then
    show.yield = cme_futures_streamlined_sbe_v5_8.prefs.show_yield
    changed = true
  end
  if show.payload ~= cme_futures_streamlined_sbe_v5_8.prefs.show_payload then
    show.payload = cme_futures_streamlined_sbe_v5_8.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Futures Streamlined Sbe 5.8
-----------------------------------------------------------------------

-- Size: Exponent
cme_futures_streamlined_sbe_v5_8_size_of.exponent = 1

-- Display: Exponent
cme_futures_streamlined_sbe_v5_8_display.exponent = function(value)
  -- Check if field has value
  if value == 127 then
    return "Exponent: No Value"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
cme_futures_streamlined_sbe_v5_8_dissect.exponent = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.exponent
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.exponent(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.exponent, range, value, display)

  return offset + length, value
end

-- Size: Mantissa
cme_futures_streamlined_sbe_v5_8_size_of.mantissa = 8

-- Display: Mantissa
cme_futures_streamlined_sbe_v5_8_display.mantissa = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Mantissa: No Value"
  end

  return "Mantissa: "..value
end

-- Dissect: Mantissa
cme_futures_streamlined_sbe_v5_8_dissect.mantissa = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.mantissa
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cme_futures_streamlined_sbe_v5_8_display.mantissa(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.mantissa, range, value, display)

  return offset + length, value
end

-- Calculate size of: Interpolation Factor
cme_futures_streamlined_sbe_v5_8_size_of.interpolation_factor = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Interpolation Factor
cme_futures_streamlined_sbe_v5_8_display.interpolation_factor = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Interpolation Factor
cme_futures_streamlined_sbe_v5_8_dissect.interpolation_factor_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Interpolation Factor
cme_futures_streamlined_sbe_v5_8_dissect.interpolation_factor = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.interpolation_factor then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.interpolation_factor(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.interpolation_factor(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.interpolation_factor, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.interpolation_factor_fields(buffer, offset, packet, parent)
end

-- Size: Leg Date Offset
cme_futures_streamlined_sbe_v5_8_size_of.leg_date_offset = 1

-- Display: Leg Date Offset
cme_futures_streamlined_sbe_v5_8_display.leg_date_offset = function(value)
  -- Check if field has value
  if value == 127 then
    return "Leg Date Offset: No Value"
  end

  return "Leg Date Offset: "..value
end

-- Dissect: Leg Date Offset
cme_futures_streamlined_sbe_v5_8_dissect.leg_date_offset = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_date_offset
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.leg_date_offset(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_date_offset, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Group
cme_futures_streamlined_sbe_v5_8_size_of.leg_security_group = 12

-- Display: Leg Security Group
cme_futures_streamlined_sbe_v5_8_display.leg_security_group = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Security Group: No Value"
  end

  return "Leg Security Group: "..value
end

-- Dissect: Leg Security Group
cme_futures_streamlined_sbe_v5_8_dissect.leg_security_group = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_security_group
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

  local display = cme_futures_streamlined_sbe_v5_8_display.leg_security_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_security_group, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Type
cme_futures_streamlined_sbe_v5_8_size_of.leg_security_type = 8

-- Display: Leg Security Type
cme_futures_streamlined_sbe_v5_8_display.leg_security_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Security Type: No Value"
  end

  return "Leg Security Type: "..value
end

-- Dissect: Leg Security Type
cme_futures_streamlined_sbe_v5_8_dissect.leg_security_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_security_type
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

  local display = cme_futures_streamlined_sbe_v5_8_display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Size: Leg Currency
cme_futures_streamlined_sbe_v5_8_size_of.leg_currency = 3

-- Display: Leg Currency
cme_futures_streamlined_sbe_v5_8_display.leg_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Currency: No Value"
  end

  return "Leg Currency: "..value
end

-- Dissect: Leg Currency
cme_futures_streamlined_sbe_v5_8_dissect.leg_currency = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_currency
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

  local display = cme_futures_streamlined_sbe_v5_8_display.leg_currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_currency, range, value, display)

  return offset + length, value
end

-- Size: Leg Side
cme_futures_streamlined_sbe_v5_8_size_of.leg_side = 1

-- Display: Leg Side
cme_futures_streamlined_sbe_v5_8_display.leg_side = function(value)
  -- Check if field has value
  if value == 255 then
    return "Leg Side: No Value"
  end

  return "Leg Side: "..value
end

-- Dissect: Leg Side
cme_futures_streamlined_sbe_v5_8_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
cme_futures_streamlined_sbe_v5_8_size_of.leg_ratio_qty = 4

-- Display: Leg Ratio Qty
cme_futures_streamlined_sbe_v5_8_display.leg_ratio_qty = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cme_futures_streamlined_sbe_v5_8_dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol
cme_futures_streamlined_sbe_v5_8_size_of.leg_symbol = 50

-- Display: Leg Symbol
cme_futures_streamlined_sbe_v5_8_display.leg_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cme_futures_streamlined_sbe_v5_8_dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_symbol
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

  local display = cme_futures_streamlined_sbe_v5_8_display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Previous Fixing Rate
cme_futures_streamlined_sbe_v5_8_size_of.previous_fixing_rate = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Previous Fixing Rate
cme_futures_streamlined_sbe_v5_8_display.previous_fixing_rate = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Previous Fixing Rate
cme_futures_streamlined_sbe_v5_8_dissect.previous_fixing_rate_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Previous Fixing Rate
cme_futures_streamlined_sbe_v5_8_dissect.previous_fixing_rate = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.previous_fixing_rate then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.previous_fixing_rate(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.previous_fixing_rate(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.previous_fixing_rate, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.previous_fixing_rate_fields(buffer, offset, packet, parent)
end

-- Size: Leg Pay Frequencey
cme_futures_streamlined_sbe_v5_8_size_of.leg_pay_frequencey = 3

-- Display: Leg Pay Frequencey
cme_futures_streamlined_sbe_v5_8_display.leg_pay_frequencey = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Pay Frequencey: No Value"
  end

  return "Leg Pay Frequencey: "..value
end

-- Dissect: Leg Pay Frequencey
cme_futures_streamlined_sbe_v5_8_dissect.leg_pay_frequencey = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_pay_frequencey
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

  local display = cme_futures_streamlined_sbe_v5_8_display.leg_pay_frequencey(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_pay_frequencey, range, value, display)

  return offset + length, value
end

-- Size: Previous Fixing Date
cme_futures_streamlined_sbe_v5_8_size_of.previous_fixing_date = 2

-- Display: Previous Fixing Date
cme_futures_streamlined_sbe_v5_8_display.previous_fixing_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Previous Fixing Date: No Value"
  end

  return "Previous Fixing Date: "..value
end

-- Dissect: Previous Fixing Date
cme_futures_streamlined_sbe_v5_8_dissect.previous_fixing_date = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.previous_fixing_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.previous_fixing_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.previous_fixing_date, range, value, display)

  return offset + length, value
end

-- Size: Rate Descriptor
cme_futures_streamlined_sbe_v5_8_size_of.rate_descriptor = 8

-- Display: Rate Descriptor
cme_futures_streamlined_sbe_v5_8_display.rate_descriptor = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Rate Descriptor: No Value"
  end

  return "Rate Descriptor: "..value
end

-- Dissect: Rate Descriptor
cme_futures_streamlined_sbe_v5_8_dissect.rate_descriptor = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.rate_descriptor
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

  local display = cme_futures_streamlined_sbe_v5_8_display.rate_descriptor(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.rate_descriptor, range, value, display)

  return offset + length, value
end

-- Size: Leg Benchmark Curve Name
cme_futures_streamlined_sbe_v5_8_size_of.leg_benchmark_curve_name = 5

-- Display: Leg Benchmark Curve Name
cme_futures_streamlined_sbe_v5_8_display.leg_benchmark_curve_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Benchmark Curve Name: No Value"
  end

  return "Leg Benchmark Curve Name: "..value
end

-- Dissect: Leg Benchmark Curve Name
cme_futures_streamlined_sbe_v5_8_dissect.leg_benchmark_curve_name = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_benchmark_curve_name
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

  local display = cme_futures_streamlined_sbe_v5_8_display.leg_benchmark_curve_name(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_benchmark_curve_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Instrument Definition Eris Leg Group
cme_futures_streamlined_sbe_v5_8_size_of.m_d_instrument_definition_eris_leg_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_benchmark_curve_name

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.rate_descriptor

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.previous_fixing_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_pay_frequencey

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.previous_fixing_rate(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_symbol

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_ratio_qty

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_side

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_currency

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_security_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_security_group

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_date_offset

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.interpolation_factor(buffer, offset + index)

  return index
end

-- Display: M D Instrument Definition Eris Leg Group
cme_futures_streamlined_sbe_v5_8_display.m_d_instrument_definition_eris_leg_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Instrument Definition Eris Leg Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_instrument_definition_eris_leg_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Benchmark Curve Name: 5 Byte Ascii String Nullable
  index, leg_benchmark_curve_name = cme_futures_streamlined_sbe_v5_8_dissect.leg_benchmark_curve_name(buffer, index, packet, parent)

  -- Rate Descriptor: 8 Byte Ascii String Nullable
  index, rate_descriptor = cme_futures_streamlined_sbe_v5_8_dissect.rate_descriptor(buffer, index, packet, parent)

  -- Previous Fixing Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, previous_fixing_date = cme_futures_streamlined_sbe_v5_8_dissect.previous_fixing_date(buffer, index, packet, parent)

  -- Leg Pay Frequencey: 3 Byte Ascii String Nullable
  index, leg_pay_frequencey = cme_futures_streamlined_sbe_v5_8_dissect.leg_pay_frequencey(buffer, index, packet, parent)

  -- Previous Fixing Rate: Struct of 2 fields
  index, previous_fixing_rate = cme_futures_streamlined_sbe_v5_8_dissect.previous_fixing_rate(buffer, index, packet, parent)

  -- Leg Symbol: 50 Byte Ascii String Nullable
  index, leg_symbol = cme_futures_streamlined_sbe_v5_8_dissect.leg_symbol(buffer, index, packet, parent)

  -- Leg Ratio Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_ratio_qty = cme_futures_streamlined_sbe_v5_8_dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Nullable
  index, leg_side = cme_futures_streamlined_sbe_v5_8_dissect.leg_side(buffer, index, packet, parent)

  -- Leg Currency: 3 Byte Ascii String
  index, leg_currency = cme_futures_streamlined_sbe_v5_8_dissect.leg_currency(buffer, index, packet, parent)

  -- Leg Security Type: 8 Byte Ascii String Nullable
  index, leg_security_type = cme_futures_streamlined_sbe_v5_8_dissect.leg_security_type(buffer, index, packet, parent)

  -- Leg Security Group: 12 Byte Ascii String Nullable
  index, leg_security_group = cme_futures_streamlined_sbe_v5_8_dissect.leg_security_group(buffer, index, packet, parent)

  -- Leg Date Offset: 1 Byte Signed Fixed Width Integer Nullable
  index, leg_date_offset = cme_futures_streamlined_sbe_v5_8_dissect.leg_date_offset(buffer, index, packet, parent)

  -- Interpolation Factor: Struct of 2 fields
  index, interpolation_factor = cme_futures_streamlined_sbe_v5_8_dissect.interpolation_factor(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Instrument Definition Eris Leg Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_instrument_definition_eris_leg_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_instrument_definition_eris_leg_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_instrument_definition_eris_leg_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_instrument_definition_eris_leg_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_instrument_definition_eris_leg_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_instrument_definition_eris_leg_group_fields(buffer, offset, packet, parent)
end

-- Size: Num In Group uint 8
cme_futures_streamlined_sbe_v5_8_size_of.num_in_group_uint_8 = 1

-- Display: Num In Group uint 8
cme_futures_streamlined_sbe_v5_8_display.num_in_group_uint_8 = function(value)
  return "Num In Group uint 8: "..value
end

-- Dissect: Num In Group uint 8
cme_futures_streamlined_sbe_v5_8_dissect.num_in_group_uint_8 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.num_in_group_uint_8
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.num_in_group_uint_8(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.num_in_group_uint_8, range, value, display)

  return offset + length, value
end

-- Size: Block Length
cme_futures_streamlined_sbe_v5_8_size_of.block_length = 2

-- Display: Block Length
cme_futures_streamlined_sbe_v5_8_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_futures_streamlined_sbe_v5_8_dissect.block_length = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.block_length(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size
cme_futures_streamlined_sbe_v5_8_size_of.group_size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.block_length

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.num_in_group_uint_8

  return index
end

-- Display: Group Size
cme_futures_streamlined_sbe_v5_8_display.group_size = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size
cme_futures_streamlined_sbe_v5_8_dissect.group_size_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_streamlined_sbe_v5_8_dissect.block_length(buffer, index, packet, parent)

  -- Num In Group uint 8: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group_uint_8 = cme_futures_streamlined_sbe_v5_8_dissect.num_in_group_uint_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_futures_streamlined_sbe_v5_8_dissect.group_size = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.group_size(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.group_size, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.group_size_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Instrument Definition Eris Leg Groups
cme_futures_streamlined_sbe_v5_8_size_of.m_d_instrument_definition_eris_leg_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_instrument_definition_eris_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_instrument_definition_eris_leg_group_count * 115

  return index
end

-- Display: M D Instrument Definition Eris Leg Groups
cme_futures_streamlined_sbe_v5_8_display.m_d_instrument_definition_eris_leg_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Instrument Definition Eris Leg Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_instrument_definition_eris_leg_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Instrument Definition Eris Leg Group: Struct of 13 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.m_d_instrument_definition_eris_leg_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Instrument Definition Eris Leg Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_instrument_definition_eris_leg_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_instrument_definition_eris_leg_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_instrument_definition_eris_leg_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_instrument_definition_eris_leg_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_instrument_definition_eris_leg_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_instrument_definition_eris_leg_groups_fields(buffer, offset, packet, parent)
end

-- Size: Security Alt Id Source
cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id_source = 1

-- Display: Security Alt Id Source
cme_futures_streamlined_sbe_v5_8_display.security_alt_id_source = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id Source: No Value"
  end

  return "Security Alt Id Source: "..value
end

-- Dissect: Security Alt Id Source
cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id_source = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id_source
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8_display.security_alt_id_source(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Size: Security Alt Id
cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id = 26

-- Display: Security Alt Id
cme_futures_streamlined_sbe_v5_8_display.security_alt_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id: No Value"
  end

  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id
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

  local display = cme_futures_streamlined_sbe_v5_8_display.security_alt_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_alt_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Alt Id Group
cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id_source

  return index
end

-- Display: Security Alt Id Group
cme_futures_streamlined_sbe_v5_8_display.security_alt_id_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Alt Id Group
cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Alt Id: 26 Byte Ascii String Nullable
  index, security_alt_id = cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id(buffer, index, packet, parent)

  -- Security Alt Id Source: 1 Byte Ascii String
  index, security_alt_id_source = cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id_source(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Alt Id Group
cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_alt_id_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.security_alt_id_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Security Alt Id Groups
cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local security_alt_id_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_alt_id_group_count * 27

  return index
end

-- Display: Security Alt Id Groups
cme_futures_streamlined_sbe_v5_8_display.security_alt_id_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Alt Id Groups
cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Security Alt Id Group: Struct of 2 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Security Alt Id Groups
cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_alt_id_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.security_alt_id_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_alt_id_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id_groups_fields(buffer, offset, packet, parent)
end

-- Size: Event Time
cme_futures_streamlined_sbe_v5_8_size_of.event_time = 8

-- Display: Event Time
cme_futures_streamlined_sbe_v5_8_display.event_time = function(value)
  return "Event Time: "..value
end

-- Dissect: Event Time
cme_futures_streamlined_sbe_v5_8_dissect.event_time = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.event_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8_display.event_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.event_time, range, value, display)

  return offset + length, value
end

-- Size: Event Type Indices
cme_futures_streamlined_sbe_v5_8_size_of.event_type_indices = 1

-- Display: Event Type Indices
cme_futures_streamlined_sbe_v5_8_display.event_type_indices = function(value)
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
cme_futures_streamlined_sbe_v5_8_dissect.event_type_indices = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.event_type_indices
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.event_type_indices(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.event_type_indices, range, value, display)

  return offset + length, value
end

-- Calculate size of: Events Group
cme_futures_streamlined_sbe_v5_8_size_of.events_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.event_type_indices

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.event_time

  return index
end

-- Display: Events Group
cme_futures_streamlined_sbe_v5_8_display.events_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Events Group
cme_futures_streamlined_sbe_v5_8_dissect.events_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Type Indices: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, event_type_indices = cme_futures_streamlined_sbe_v5_8_dissect.event_type_indices(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = cme_futures_streamlined_sbe_v5_8_dissect.event_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Events Group
cme_futures_streamlined_sbe_v5_8_dissect.events_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.events_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.events_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.events_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.events_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.events_group_fields(buffer, offset, packet, parent)
end

-- Size: Num In Group 16
cme_futures_streamlined_sbe_v5_8_size_of.num_in_group_16 = 2

-- Display: Num In Group 16
cme_futures_streamlined_sbe_v5_8_display.num_in_group_16 = function(value)
  return "Num In Group 16: "..value
end

-- Dissect: Num In Group 16
cme_futures_streamlined_sbe_v5_8_dissect.num_in_group_16 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.num_in_group_16
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.num_in_group_16(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.num_in_group_16, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size Encoding
cme_futures_streamlined_sbe_v5_8_size_of.group_size_encoding = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.block_length

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.num_in_group_16

  return index
end

-- Display: Group Size Encoding
cme_futures_streamlined_sbe_v5_8_display.group_size_encoding = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size Encoding
cme_futures_streamlined_sbe_v5_8_dissect.group_size_encoding_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_streamlined_sbe_v5_8_dissect.block_length(buffer, index, packet, parent)

  -- Num In Group 16: 2 Byte Unsigned Fixed Width Integer
  index, num_in_group_16 = cme_futures_streamlined_sbe_v5_8_dissect.num_in_group_16(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
cme_futures_streamlined_sbe_v5_8_dissect.group_size_encoding = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size_encoding then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.group_size_encoding(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.group_size_encoding(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.group_size_encoding, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.group_size_encoding_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Events Groups
cme_futures_streamlined_sbe_v5_8_size_of.events_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local events_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + events_group_count * 9

  return index
end

-- Display: Events Groups
cme_futures_streamlined_sbe_v5_8_display.events_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Events Groups
cme_futures_streamlined_sbe_v5_8_dissect.events_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = cme_futures_streamlined_sbe_v5_8_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group 16
  local num_in_group_16 = buffer(index - 2, 2):le_uint()

  -- Events Group: Struct of 2 fields
  for i = 1, num_in_group_16 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.events_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Events Groups
cme_futures_streamlined_sbe_v5_8_dissect.events_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.events_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.events_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.events_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.events_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.events_groups_fields(buffer, offset, packet, parent)
end

-- Size: Market Depth
cme_futures_streamlined_sbe_v5_8_size_of.market_depth = 1

-- Display: Market Depth
cme_futures_streamlined_sbe_v5_8_display.market_depth = function(value)
  -- Check if field has value
  if value == 255 then
    return "Market Depth: No Value"
  end

  return "Market Depth: "..value
end

-- Dissect: Market Depth
cme_futures_streamlined_sbe_v5_8_dissect.market_depth = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.market_depth
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.market_depth(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.market_depth, range, value, display)

  return offset + length, value
end

-- Size: Md Feed Type 3
cme_futures_streamlined_sbe_v5_8_size_of.md_feed_type_3 = 3

-- Display: Md Feed Type 3
cme_futures_streamlined_sbe_v5_8_display.md_feed_type_3 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Feed Type 3: No Value"
  end

  return "Md Feed Type 3: "..value
end

-- Dissect: Md Feed Type 3
cme_futures_streamlined_sbe_v5_8_dissect.md_feed_type_3 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_feed_type_3
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

  local display = cme_futures_streamlined_sbe_v5_8_display.md_feed_type_3(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_feed_type_3, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Feed Types Group
cme_futures_streamlined_sbe_v5_8_size_of.m_d_feed_types_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_feed_type_3

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.market_depth

  return index
end

-- Display: M D Feed Types Group
cme_futures_streamlined_sbe_v5_8_display.m_d_feed_types_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Feed Types Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_feed_types_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Feed Type 3: 3 Byte Ascii String Nullable
  index, md_feed_type_3 = cme_futures_streamlined_sbe_v5_8_dissect.md_feed_type_3(buffer, index, packet, parent)

  -- Market Depth: 1 Byte Unsigned Fixed Width Integer Nullable
  index, market_depth = cme_futures_streamlined_sbe_v5_8_dissect.market_depth(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Feed Types Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_feed_types_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_feed_types_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_feed_types_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_feed_types_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_feed_types_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_feed_types_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Feed Types Groups
cme_futures_streamlined_sbe_v5_8_size_of.m_d_feed_types_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_feed_types_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_feed_types_group_count * 4

  return index
end

-- Display: M D Feed Types Groups
cme_futures_streamlined_sbe_v5_8_display.m_d_feed_types_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Feed Types Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_feed_types_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Feed Types Group: Struct of 2 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.m_d_feed_types_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Feed Types Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_feed_types_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_feed_types_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_feed_types_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_feed_types_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_feed_types_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_feed_types_groups_fields(buffer, offset, packet, parent)
end

-- Size: Appl Id
cme_futures_streamlined_sbe_v5_8_size_of.appl_id = 2

-- Display: Appl Id
cme_futures_streamlined_sbe_v5_8_display.appl_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Appl Id: No Value"
  end

  return "Appl Id: "..value
end

-- Dissect: Appl Id
cme_futures_streamlined_sbe_v5_8_dissect.appl_id = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.appl_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.appl_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Size: User Defined Instrument
cme_futures_streamlined_sbe_v5_8_size_of.user_defined_instrument = 1

-- Display: User Defined Instrument
cme_futures_streamlined_sbe_v5_8_display.user_defined_instrument = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Defined Instrument: No Value"
  end

  return "User Defined Instrument: "..value
end

-- Dissect: User Defined Instrument
cme_futures_streamlined_sbe_v5_8_dissect.user_defined_instrument = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.user_defined_instrument
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8_display.user_defined_instrument(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.user_defined_instrument, range, value, display)

  return offset + length, value
end

-- Size: Coupon Rate
cme_futures_streamlined_sbe_v5_8_size_of.coupon_rate = 4

-- Display: Coupon Rate
cme_futures_streamlined_sbe_v5_8_display.coupon_rate = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Coupon Rate: No Value"
  end

  return "Coupon Rate: "..value
end

-- Translate: Coupon Rate
translate.coupon_rate = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Coupon Rate
cme_futures_streamlined_sbe_v5_8_dissect.coupon_rate = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.coupon_rate
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = translate.coupon_rate(raw)
  local display = cme_futures_streamlined_sbe_v5_8_display.coupon_rate(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Size: Rate Type
cme_futures_streamlined_sbe_v5_8_size_of.rate_type = 2

-- Display: Rate Type
cme_futures_streamlined_sbe_v5_8_display.rate_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Rate Type: No Value"
  end

  return "Rate Type: "..value
end

-- Dissect: Rate Type
cme_futures_streamlined_sbe_v5_8_dissect.rate_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.rate_type
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

  local display = cme_futures_streamlined_sbe_v5_8_display.rate_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.rate_type, range, value, display)

  return offset + length, value
end

-- Size: Security Update Action
cme_futures_streamlined_sbe_v5_8_size_of.security_update_action = 1

-- Display: Security Update Action
cme_futures_streamlined_sbe_v5_8_display.security_update_action = function(value)
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
cme_futures_streamlined_sbe_v5_8_dissect.security_update_action = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_update_action
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8_display.security_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_update_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Min Price Increment
cme_futures_streamlined_sbe_v5_8_size_of.min_price_increment = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Min Price Increment
cme_futures_streamlined_sbe_v5_8_display.min_price_increment = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Min Price Increment
cme_futures_streamlined_sbe_v5_8_dissect.min_price_increment_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Min Price Increment
cme_futures_streamlined_sbe_v5_8_dissect.min_price_increment = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.min_price_increment then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.min_price_increment(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.min_price_increment(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.min_price_increment, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.min_price_increment_fields(buffer, offset, packet, parent)
end

-- Size: Currency
cme_futures_streamlined_sbe_v5_8_size_of.currency = 3

-- Display: Currency
cme_futures_streamlined_sbe_v5_8_display.currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
cme_futures_streamlined_sbe_v5_8_dissect.currency = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.currency
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

  local display = cme_futures_streamlined_sbe_v5_8_display.currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
cme_futures_streamlined_sbe_v5_8_size_of.maturity_date = 2

-- Display: Maturity Date
cme_futures_streamlined_sbe_v5_8_display.maturity_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cme_futures_streamlined_sbe_v5_8_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Security Exchange
cme_futures_streamlined_sbe_v5_8_size_of.security_exchange = 4

-- Display: Security Exchange
cme_futures_streamlined_sbe_v5_8_display.security_exchange = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
cme_futures_streamlined_sbe_v5_8_dissect.security_exchange = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_exchange
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

  local display = cme_futures_streamlined_sbe_v5_8_display.security_exchange(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Size: Product Optional
cme_futures_streamlined_sbe_v5_8_size_of.product_optional = 1

-- Display: Product Optional
cme_futures_streamlined_sbe_v5_8_display.product_optional = function(value)
  -- Check if field has value
  if value == 255 then
    return "Product Optional: No Value"
  end

  return "Product Optional: "..value
end

-- Dissect: Product Optional
cme_futures_streamlined_sbe_v5_8_dissect.product_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.product_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.product_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.product_optional, range, value, display)

  return offset + length, value
end

-- Size: Security Type 4
cme_futures_streamlined_sbe_v5_8_size_of.security_type_4 = 4

-- Display: Security Type 4
cme_futures_streamlined_sbe_v5_8_display.security_type_4 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type 4: No Value"
  end

  return "Security Type 4: "..value
end

-- Dissect: Security Type 4
cme_futures_streamlined_sbe_v5_8_dissect.security_type_4 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_type_4
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

  local display = cme_futures_streamlined_sbe_v5_8_display.security_type_4(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_type_4, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cme_futures_streamlined_sbe_v5_8_size_of.symbol = 50

-- Display: Symbol
cme_futures_streamlined_sbe_v5_8_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_futures_streamlined_sbe_v5_8_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.symbol
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

  local display = cme_futures_streamlined_sbe_v5_8_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Security Group 12
cme_futures_streamlined_sbe_v5_8_size_of.security_group_12 = 12

-- Display: Security Group 12
cme_futures_streamlined_sbe_v5_8_display.security_group_12 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group 12: No Value"
  end

  return "Security Group 12: "..value
end

-- Dissect: Security Group 12
cme_futures_streamlined_sbe_v5_8_dissect.security_group_12 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_group_12
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

  local display = cme_futures_streamlined_sbe_v5_8_display.security_group_12(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_group_12, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Eris
cme_futures_streamlined_sbe_v5_8_size_of.md_instrument_definition_eris = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_group_12

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.symbol

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_type_4

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.product_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_exchange

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.maturity_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.currency

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.min_price_increment(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_update_action

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.rate_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.coupon_rate

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.user_defined_instrument

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.appl_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.events_groups(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_alt_id_groups(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.m_d_instrument_definition_eris_leg_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Eris
cme_futures_streamlined_sbe_v5_8_display.md_instrument_definition_eris = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Definition Eris
cme_futures_streamlined_sbe_v5_8_dissect.md_instrument_definition_eris_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Group 12: 12 Byte Ascii String Nullable
  index, security_group_12 = cme_futures_streamlined_sbe_v5_8_dissect.security_group_12(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String Nullable
  index, symbol = cme_futures_streamlined_sbe_v5_8_dissect.symbol(buffer, index, packet, parent)

  -- Security Type 4: 4 Byte Ascii String Nullable
  index, security_type_4 = cme_futures_streamlined_sbe_v5_8_dissect.security_type_4(buffer, index, packet, parent)

  -- Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, product_optional = cme_futures_streamlined_sbe_v5_8_dissect.product_optional(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8_dissect.security_exchange(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8_dissect.maturity_date(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_streamlined_sbe_v5_8_dissect.currency(buffer, index, packet, parent)

  -- Min Price Increment: Struct of 2 fields
  index, min_price_increment = cme_futures_streamlined_sbe_v5_8_dissect.min_price_increment(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_streamlined_sbe_v5_8_dissect.security_update_action(buffer, index, packet, parent)

  -- Rate Type: 2 Byte Ascii String Nullable
  index, rate_type = cme_futures_streamlined_sbe_v5_8_dissect.rate_type(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer Nullable
  index, coupon_rate = cme_futures_streamlined_sbe_v5_8_dissect.coupon_rate(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String Nullable
  index, user_defined_instrument = cme_futures_streamlined_sbe_v5_8_dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, appl_id = cme_futures_streamlined_sbe_v5_8_dissect.appl_id(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_streamlined_sbe_v5_8_dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_streamlined_sbe_v5_8_dissect.events_groups(buffer, index, packet, parent)

  -- Security Alt Id Groups: Struct of 2 fields
  index, security_alt_id_groups = cme_futures_streamlined_sbe_v5_8_dissect.security_alt_id_groups(buffer, index, packet, parent)

  -- M D Instrument Definition Eris Leg Groups: Struct of 2 fields
  index, m_d_instrument_definition_eris_leg_groups = cme_futures_streamlined_sbe_v5_8_dissect.m_d_instrument_definition_eris_leg_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Eris
cme_futures_streamlined_sbe_v5_8_dissect.md_instrument_definition_eris = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_eris then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_instrument_definition_eris(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_instrument_definition_eris(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_instrument_definition_eris, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_instrument_definition_eris_fields(buffer, offset, packet, parent)
end

-- Size: Reference Id 100
cme_futures_streamlined_sbe_v5_8_size_of.reference_id_100 = 100

-- Display: Reference Id 100
cme_futures_streamlined_sbe_v5_8_display.reference_id_100 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reference Id 100: No Value"
  end

  return "Reference Id 100: "..value
end

-- Dissect: Reference Id 100
cme_futures_streamlined_sbe_v5_8_dissect.reference_id_100 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.reference_id_100
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

  local display = cme_futures_streamlined_sbe_v5_8_display.reference_id_100(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.reference_id_100, range, value, display)

  return offset + length, value
end

-- Size: Vol Type
cme_futures_streamlined_sbe_v5_8_size_of.vol_type = 2

-- Display: Vol Type
cme_futures_streamlined_sbe_v5_8_display.vol_type = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Vol Type: No Value"
  end

  return "Vol Type: "..value
end

-- Dissect: Vol Type
cme_futures_streamlined_sbe_v5_8_dissect.vol_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.vol_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.vol_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.vol_type, range, value, display)

  return offset + length, value
end

-- Size: Security Sub Type
cme_futures_streamlined_sbe_v5_8_size_of.security_sub_type = 2

-- Display: Security Sub Type
cme_futures_streamlined_sbe_v5_8_display.security_sub_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
cme_futures_streamlined_sbe_v5_8_dissect.security_sub_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_sub_type
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

  local display = cme_futures_streamlined_sbe_v5_8_display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Product Complex
cme_futures_streamlined_sbe_v5_8_size_of.product_complex = 26

-- Display: Product Complex
cme_futures_streamlined_sbe_v5_8_display.product_complex = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Complex: No Value"
  end

  return "Product Complex: "..value
end

-- Dissect: Product Complex
cme_futures_streamlined_sbe_v5_8_dissect.product_complex = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.product_complex
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

  local display = cme_futures_streamlined_sbe_v5_8_display.product_complex(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Size: Sector Sub Group
cme_futures_streamlined_sbe_v5_8_size_of.sector_sub_group = 26

-- Display: Sector Sub Group
cme_futures_streamlined_sbe_v5_8_display.sector_sub_group = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sector Sub Group: No Value"
  end

  return "Sector Sub Group: "..value
end

-- Dissect: Sector Sub Group
cme_futures_streamlined_sbe_v5_8_dissect.sector_sub_group = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.sector_sub_group
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

  local display = cme_futures_streamlined_sbe_v5_8_display.sector_sub_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.sector_sub_group, range, value, display)

  return offset + length, value
end

-- Size: Sector Group
cme_futures_streamlined_sbe_v5_8_size_of.sector_group = 2

-- Display: Sector Group
cme_futures_streamlined_sbe_v5_8_display.sector_group = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sector Group: No Value"
  end

  return "Sector Group: "..value
end

-- Dissect: Sector Group
cme_futures_streamlined_sbe_v5_8_dissect.sector_group = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.sector_group
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

  local display = cme_futures_streamlined_sbe_v5_8_display.sector_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.sector_group, range, value, display)

  return offset + length, value
end

-- Size: Market Sector
cme_futures_streamlined_sbe_v5_8_size_of.market_sector = 26

-- Display: Market Sector
cme_futures_streamlined_sbe_v5_8_display.market_sector = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Sector: No Value"
  end

  return "Market Sector: "..value
end

-- Dissect: Market Sector
cme_futures_streamlined_sbe_v5_8_dissect.market_sector = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.market_sector
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

  local display = cme_futures_streamlined_sbe_v5_8_display.market_sector(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.market_sector, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
cme_futures_streamlined_sbe_v5_8_size_of.quote_condition = 1

-- Display: Quote Condition
cme_futures_streamlined_sbe_v5_8_display.quote_condition = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Condition: No Value"
  end

  return "Quote Condition: "..value
end

-- Dissect: Quote Condition
cme_futures_streamlined_sbe_v5_8_dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.quote_condition
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8_display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Settl Date
cme_futures_streamlined_sbe_v5_8_size_of.settl_date = 2

-- Display: Settl Date
cme_futures_streamlined_sbe_v5_8_display.settl_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Settl Date: No Value"
  end

  return "Settl Date: "..value
end

-- Dissect: Settl Date
cme_futures_streamlined_sbe_v5_8_dissect.settl_date = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.settl_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.settl_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Size: Price Type
cme_futures_streamlined_sbe_v5_8_size_of.price_type = 2

-- Display: Price Type
cme_futures_streamlined_sbe_v5_8_display.price_type = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Price Type: No Value"
  end

  return "Price Type: "..value
end

-- Dissect: Price Type
cme_futures_streamlined_sbe_v5_8_dissect.price_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.price_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.price_type, range, value, display)

  return offset + length, value
end

-- Size: Open Close Settl Flag
cme_futures_streamlined_sbe_v5_8_size_of.open_close_settl_flag = 1

-- Display: Open Close Settl Flag
cme_futures_streamlined_sbe_v5_8_display.open_close_settl_flag = function(value)
  -- Check if field has value
  if value == 255 then
    return "Open Close Settl Flag: No Value"
  end

  return "Open Close Settl Flag: "..value
end

-- Dissect: Open Close Settl Flag
cme_futures_streamlined_sbe_v5_8_dissect.open_close_settl_flag = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.open_close_settl_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.open_close_settl_flag(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Date
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_date = 4

-- Display: Md Entry Date
cme_futures_streamlined_sbe_v5_8_display.md_entry_date = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Date: No Value"
  end

  return "Md Entry Date: "..value
end

-- Dissect: Md Entry Date
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_date = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_date
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unit Of Measure Qty Decimal
cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_qty_decimal = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Unit Of Measure Qty Decimal
cme_futures_streamlined_sbe_v5_8_display.unit_of_measure_qty_decimal = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Of Measure Qty Decimal
cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_qty_decimal_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Unit Of Measure Qty Decimal
cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_qty_decimal = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_of_measure_qty_decimal then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_qty_decimal(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.unit_of_measure_qty_decimal(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_qty_decimal, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_qty_decimal_fields(buffer, offset, packet, parent)
end

-- Size: Unit Of Measure Currency
cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_currency = 3

-- Display: Unit Of Measure Currency
cme_futures_streamlined_sbe_v5_8_display.unit_of_measure_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure Currency: No Value"
  end

  return "Unit Of Measure Currency: "..value
end

-- Dissect: Unit Of Measure Currency
cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_currency = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_currency
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

  local display = cme_futures_streamlined_sbe_v5_8_display.unit_of_measure_currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_currency, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Measure
cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure = 5

-- Display: Unit Of Measure
cme_futures_streamlined_sbe_v5_8_display.unit_of_measure = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure
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

  local display = cme_futures_streamlined_sbe_v5_8_display.unit_of_measure(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strike Price Decimal
cme_futures_streamlined_sbe_v5_8_size_of.strike_price_decimal = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Strike Price Decimal
cme_futures_streamlined_sbe_v5_8_display.strike_price_decimal = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strike Price Decimal
cme_futures_streamlined_sbe_v5_8_dissect.strike_price_decimal_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Strike Price Decimal
cme_futures_streamlined_sbe_v5_8_dissect.strike_price_decimal = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strike_price_decimal then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.strike_price_decimal(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.strike_price_decimal(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.strike_price_decimal, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.strike_price_decimal_fields(buffer, offset, packet, parent)
end

-- Size: Put Or Call
cme_futures_streamlined_sbe_v5_8_size_of.put_or_call = 1

-- Display: Put Or Call
cme_futures_streamlined_sbe_v5_8_display.put_or_call = function(value)
  -- Check if field has value
  if value == 255 then
    return "Put Or Call: No Value"
  end

  return "Put Or Call: "..value
end

-- Dissect: Put Or Call
cme_futures_streamlined_sbe_v5_8_dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Notional Percentage Outstanding
cme_futures_streamlined_sbe_v5_8_size_of.notional_percentage_outstanding = 4

-- Display: Notional Percentage Outstanding
cme_futures_streamlined_sbe_v5_8_display.notional_percentage_outstanding = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Notional Percentage Outstanding: No Value"
  end

  return "Notional Percentage Outstanding: "..value
end

-- Translate: Notional Percentage Outstanding
translate.notional_percentage_outstanding = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Notional Percentage Outstanding
cme_futures_streamlined_sbe_v5_8_dissect.notional_percentage_outstanding = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.notional_percentage_outstanding
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = translate.notional_percentage_outstanding(raw)
  local display = cme_futures_streamlined_sbe_v5_8_display.notional_percentage_outstanding(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.notional_percentage_outstanding, range, value, display)

  return offset + length, value
end

-- Size: Seniority
cme_futures_streamlined_sbe_v5_8_size_of.seniority = 2

-- Display: Seniority
cme_futures_streamlined_sbe_v5_8_display.seniority = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Seniority: No Value"
  end

  return "Seniority: "..value
end

-- Dissect: Seniority
cme_futures_streamlined_sbe_v5_8_dissect.seniority = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.seniority
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

  local display = cme_futures_streamlined_sbe_v5_8_display.seniority(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.seniority, range, value, display)

  return offset + length, value
end

-- Size: Restructuring Type
cme_futures_streamlined_sbe_v5_8_size_of.restructuring_type = 2

-- Display: Restructuring Type
cme_futures_streamlined_sbe_v5_8_display.restructuring_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Restructuring Type: No Value"
  end

  return "Restructuring Type: "..value
end

-- Dissect: Restructuring Type
cme_futures_streamlined_sbe_v5_8_dissect.restructuring_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.restructuring_type
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

  local display = cme_futures_streamlined_sbe_v5_8_display.restructuring_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.restructuring_type, range, value, display)

  return offset + length, value
end

-- Size: Week
cme_futures_streamlined_sbe_v5_8_size_of.week = 1

-- Display: Week
cme_futures_streamlined_sbe_v5_8_display.week = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
cme_futures_streamlined_sbe_v5_8_dissect.week = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.week
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.week(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.week, range, value, display)

  return offset + length, value
end

-- Size: Day
cme_futures_streamlined_sbe_v5_8_size_of.day = 1

-- Display: Day
cme_futures_streamlined_sbe_v5_8_display.day = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
cme_futures_streamlined_sbe_v5_8_dissect.day = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.day
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.day(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.day, range, value, display)

  return offset + length, value
end

-- Size: Month
cme_futures_streamlined_sbe_v5_8_size_of.month = 1

-- Display: Month
cme_futures_streamlined_sbe_v5_8_display.month = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
cme_futures_streamlined_sbe_v5_8_dissect.month = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.month
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.month(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.month, range, value, display)

  return offset + length, value
end

-- Size: Year
cme_futures_streamlined_sbe_v5_8_size_of.year = 2

-- Display: Year
cme_futures_streamlined_sbe_v5_8_display.year = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
cme_futures_streamlined_sbe_v5_8_dissect.year = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.year
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.year(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.year, range, value, display)

  return offset + length, value
end

-- Calculate size of: Maturity Month Year
cme_futures_streamlined_sbe_v5_8_size_of.maturity_month_year = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.year

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.month

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.day

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.week

  return index
end

-- Display: Maturity Month Year
cme_futures_streamlined_sbe_v5_8_display.maturity_month_year = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Maturity Month Year
cme_futures_streamlined_sbe_v5_8_dissect.maturity_month_year_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = cme_futures_streamlined_sbe_v5_8_dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = cme_futures_streamlined_sbe_v5_8_dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = cme_futures_streamlined_sbe_v5_8_dissect.day(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = cme_futures_streamlined_sbe_v5_8_dissect.week(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
cme_futures_streamlined_sbe_v5_8_dissect.maturity_month_year = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.maturity_month_year then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.maturity_month_year(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.maturity_month_year(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.maturity_month_year, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.maturity_month_year_fields(buffer, offset, packet, parent)
end

-- Size: Security Type
cme_futures_streamlined_sbe_v5_8_size_of.security_type = 9

-- Display: Security Type
cme_futures_streamlined_sbe_v5_8_display.security_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
cme_futures_streamlined_sbe_v5_8_dissect.security_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_type
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

  local display = cme_futures_streamlined_sbe_v5_8_display.security_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Entry Size
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Md Entry Size
cme_futures_streamlined_sbe_v5_8_display.md_entry_size = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Entry Size
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Md Entry Size
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_entry_size then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_size(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_size, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Px Optional
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_optional = 8

-- Display: Md Entry Px Optional
cme_futures_streamlined_sbe_v5_8_display.md_entry_px_optional = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Md Entry Px Optional: No Value"
  end

  return "Md Entry Px Optional: "..value
end

-- Translate: Md Entry Px Optional
translate.md_entry_px_optional = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Md Entry Px Optional
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_optional
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.md_entry_px_optional(raw)
  local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_px_optional(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_optional, range, value, display)

  return offset + length, value
end

-- Size: Rpt Seq
cme_futures_streamlined_sbe_v5_8_size_of.rpt_seq = 4

-- Display: Rpt Seq
cme_futures_streamlined_sbe_v5_8_display.rpt_seq = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
cme_futures_streamlined_sbe_v5_8_dissect.rpt_seq = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.rpt_seq
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.rpt_seq(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Type
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_type = 1

-- Display: Md Entry Type
cme_futures_streamlined_sbe_v5_8_display.md_entry_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Entry Type: No Value"
  end

  return "Md Entry Type: "..value
end

-- Dissect: Md Entry Type
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Otc Group
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_otc_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.rpt_seq

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.symbol

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_group_12

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.maturity_month_year(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_exchange

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.product_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.maturity_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.coupon_rate

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.restructuring_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.seniority

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.notional_percentage_outstanding

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.put_or_call

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.strike_price_decimal(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_currency

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_qty_decimal(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.open_close_settl_flag

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.price_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.settl_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.quote_condition

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.market_sector

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.sector_group

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.sector_sub_group

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.product_complex

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_sub_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.vol_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.reference_id_100

  return index
end

-- Display: M D Incremental Refresh Otc Group
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_otc_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Otc Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_otc_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Type: 1 Byte Ascii String
  index, md_entry_type = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_type(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size: Struct of 2 fields
  index, md_entry_size = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String Nullable
  index, symbol = cme_futures_streamlined_sbe_v5_8_dissect.symbol(buffer, index, packet, parent)

  -- Security Group 12: 12 Byte Ascii String Nullable
  index, security_group_12 = cme_futures_streamlined_sbe_v5_8_dissect.security_group_12(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String Nullable
  index, security_type = cme_futures_streamlined_sbe_v5_8_dissect.security_type(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_streamlined_sbe_v5_8_dissect.maturity_month_year(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8_dissect.security_exchange(buffer, index, packet, parent)

  -- Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, product_optional = cme_futures_streamlined_sbe_v5_8_dissect.product_optional(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8_dissect.maturity_date(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer Nullable
  index, coupon_rate = cme_futures_streamlined_sbe_v5_8_dissect.coupon_rate(buffer, index, packet, parent)

  -- Restructuring Type: 2 Byte Ascii String Nullable
  index, restructuring_type = cme_futures_streamlined_sbe_v5_8_dissect.restructuring_type(buffer, index, packet, parent)

  -- Seniority: 2 Byte Ascii String Nullable
  index, seniority = cme_futures_streamlined_sbe_v5_8_dissect.seniority(buffer, index, packet, parent)

  -- Notional Percentage Outstanding: 4 Byte Signed Fixed Width Integer Nullable
  index, notional_percentage_outstanding = cme_futures_streamlined_sbe_v5_8_dissect.notional_percentage_outstanding(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Nullable
  index, put_or_call = cme_futures_streamlined_sbe_v5_8_dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price Decimal: Struct of 2 fields
  index, strike_price_decimal = cme_futures_streamlined_sbe_v5_8_dissect.strike_price_decimal(buffer, index, packet, parent)

  -- Unit Of Measure: 5 Byte Ascii String Nullable
  index, unit_of_measure = cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Currency: 3 Byte Ascii String
  index, unit_of_measure_currency = cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_currency(buffer, index, packet, parent)

  -- Unit Of Measure Qty Decimal: Struct of 2 fields
  index, unit_of_measure_qty_decimal = cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_qty_decimal(buffer, index, packet, parent)

  -- Md Entry Date: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_date = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_date(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, open_close_settl_flag = cme_futures_streamlined_sbe_v5_8_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Price Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, price_type = cme_futures_streamlined_sbe_v5_8_dissect.price_type(buffer, index, packet, parent)

  -- Settl Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settl_date = cme_futures_streamlined_sbe_v5_8_dissect.settl_date(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String
  index, quote_condition = cme_futures_streamlined_sbe_v5_8_dissect.quote_condition(buffer, index, packet, parent)

  -- Market Sector: 26 Byte Ascii String Nullable
  index, market_sector = cme_futures_streamlined_sbe_v5_8_dissect.market_sector(buffer, index, packet, parent)

  -- Sector Group: 2 Byte Ascii String Nullable
  index, sector_group = cme_futures_streamlined_sbe_v5_8_dissect.sector_group(buffer, index, packet, parent)

  -- Sector Sub Group: 26 Byte Ascii String Nullable
  index, sector_sub_group = cme_futures_streamlined_sbe_v5_8_dissect.sector_sub_group(buffer, index, packet, parent)

  -- Product Complex: 26 Byte Ascii String Nullable
  index, product_complex = cme_futures_streamlined_sbe_v5_8_dissect.product_complex(buffer, index, packet, parent)

  -- Security Sub Type: 2 Byte Ascii String Nullable
  index, security_sub_type = cme_futures_streamlined_sbe_v5_8_dissect.security_sub_type(buffer, index, packet, parent)

  -- Vol Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, vol_type = cme_futures_streamlined_sbe_v5_8_dissect.vol_type(buffer, index, packet, parent)

  -- Reference Id 100: 100 Byte Ascii String Nullable
  index, reference_id_100 = cme_futures_streamlined_sbe_v5_8_dissect.reference_id_100(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Otc Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_otc_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_otc_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_otc_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_otc_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_otc_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_otc_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Otc Groups
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_otc_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_otc_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_otc_group_count * 338

  return index
end

-- Display: M D Incremental Refresh Otc Groups
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_otc_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Otc Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_otc_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Otc Group: Struct of 32 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_otc_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Otc Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_otc_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_otc_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_otc_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_otc_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_otc_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_otc_groups_fields(buffer, offset, packet, parent)
end

-- Size: Batch Total Messages Optional
cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages_optional = 2

-- Display: Batch Total Messages Optional
cme_futures_streamlined_sbe_v5_8_display.batch_total_messages_optional = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Batch Total Messages Optional: No Value"
  end

  return "Batch Total Messages Optional: "..value
end

-- Dissect: Batch Total Messages Optional
cme_futures_streamlined_sbe_v5_8_dissect.batch_total_messages_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.batch_total_messages_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.batch_total_messages_optional, range, value, display)

  return offset + length, value
end

-- Size: Match Event Indicator
cme_futures_streamlined_sbe_v5_8_size_of.match_event_indicator = 1

-- Display: Match Event Indicator
cme_futures_streamlined_sbe_v5_8_display.match_event_indicator = function(buffer, packet, parent)
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
cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator_bits = function(buffer, offset, packet, parent)

  -- End Of Event: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.end_of_event, buffer(offset, 1))

  -- Reserved: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.reserved, buffer(offset, 1))

  -- Recovery Msg: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.recovery_msg, buffer(offset, 1))

  -- Last Implied Msg: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.last_implied_msg, buffer(offset, 1))

  -- Last Stats Msg: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.last_stats_msg, buffer(offset, 1))

  -- Last Quote Msg: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.last_quote_msg, buffer(offset, 1))

  -- Last Volume Msg: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.last_volume_msg, buffer(offset, 1))

  -- Last Trade Msg: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.last_trade_msg, buffer(offset, 1))
end

-- Dissect: Match Event Indicator
cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_streamlined_sbe_v5_8_display.match_event_indicator(range, packet, parent)
  local element = parent:add(cme_futures_streamlined_sbe_v5_8.fields.match_event_indicator, range, display)

  if show.match_event_indicator then
    cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Trade Date
cme_futures_streamlined_sbe_v5_8_size_of.trade_date = 2

-- Display: Trade Date
cme_futures_streamlined_sbe_v5_8_display.trade_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_futures_streamlined_sbe_v5_8_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
cme_futures_streamlined_sbe_v5_8_size_of.transact_time = 8

-- Display: Transact Time
cme_futures_streamlined_sbe_v5_8_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
cme_futures_streamlined_sbe_v5_8_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Incremental Refresh Otc
cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_otc = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.transact_time

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.trade_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.match_event_indicator

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_otc_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Otc
cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_otc = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Otc
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_otc_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_streamlined_sbe_v5_8_dissect.trade_date(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, batch_total_messages_optional = cme_futures_streamlined_sbe_v5_8_dissect.batch_total_messages_optional(buffer, index, packet, parent)

  -- M D Incremental Refresh Otc Groups: Struct of 2 fields
  index, m_d_incremental_refresh_otc_groups = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_otc_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Otc
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_otc = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_otc then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_otc(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_otc(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_otc, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_otc_fields(buffer, offset, packet, parent)
end

-- Size: Md Quote Type
cme_futures_streamlined_sbe_v5_8_size_of.md_quote_type = 1

-- Display: Md Quote Type
cme_futures_streamlined_sbe_v5_8_display.md_quote_type = function(value)
  -- Check if field has value
  if value == 255 then
    return "Md Quote Type: No Value"
  end

  return "Md Quote Type: "..value
end

-- Dissect: Md Quote Type
cme_futures_streamlined_sbe_v5_8_dissect.md_quote_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_quote_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.md_quote_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_quote_type, range, value, display)

  return offset + length, value
end

-- Size: Reference Id 50
cme_futures_streamlined_sbe_v5_8_size_of.reference_id_50 = 50

-- Display: Reference Id 50
cme_futures_streamlined_sbe_v5_8_display.reference_id_50 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reference Id 50: No Value"
  end

  return "Reference Id 50: "..value
end

-- Dissect: Reference Id 50
cme_futures_streamlined_sbe_v5_8_dissect.reference_id_50 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.reference_id_50
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

  local display = cme_futures_streamlined_sbe_v5_8_display.reference_id_50(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.reference_id_50, range, value, display)

  return offset + length, value
end

-- Size: Security Group 26
cme_futures_streamlined_sbe_v5_8_size_of.security_group_26 = 26

-- Display: Security Group 26
cme_futures_streamlined_sbe_v5_8_display.security_group_26 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group 26: No Value"
  end

  return "Security Group 26: "..value
end

-- Dissect: Security Group 26
cme_futures_streamlined_sbe_v5_8_dissect.security_group_26 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_group_26
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

  local display = cme_futures_streamlined_sbe_v5_8_display.security_group_26(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_group_26, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Side
cme_futures_streamlined_sbe_v5_8_size_of.aggressor_side = 1

-- Display: Aggressor Side
cme_futures_streamlined_sbe_v5_8_display.aggressor_side = function(value)
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
cme_futures_streamlined_sbe_v5_8_dissect.aggressor_side = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.aggressor_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
cme_futures_streamlined_sbe_v5_8_size_of.trade_id = 4

-- Display: Trade Id
cme_futures_streamlined_sbe_v5_8_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cme_futures_streamlined_sbe_v5_8_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Number Of Orders
cme_futures_streamlined_sbe_v5_8_size_of.number_of_orders = 4

-- Display: Number Of Orders
cme_futures_streamlined_sbe_v5_8_display.number_of_orders = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Number Of Orders: No Value"
  end

  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
cme_futures_streamlined_sbe_v5_8_dissect.number_of_orders = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.number_of_orders
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.number_of_orders(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Position No
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_position_no = 4

-- Display: Md Entry Position No
cme_futures_streamlined_sbe_v5_8_display.md_entry_position_no = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Position No: No Value"
  end

  return "Md Entry Position No: "..value
end

-- Dissect: Md Entry Position No
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_position_no = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_position_no
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_position_no(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_position_no, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cal Fut Px
cme_futures_streamlined_sbe_v5_8_size_of.cal_fut_px = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Cal Fut Px
cme_futures_streamlined_sbe_v5_8_display.cal_fut_px = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cal Fut Px
cme_futures_streamlined_sbe_v5_8_dissect.cal_fut_px_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Cal Fut Px
cme_futures_streamlined_sbe_v5_8_dissect.cal_fut_px = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cal_fut_px then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.cal_fut_px(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.cal_fut_px(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.cal_fut_px, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.cal_fut_px_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Size Optional
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size_optional = 8

-- Display: Md Entry Size Optional
cme_futures_streamlined_sbe_v5_8_display.md_entry_size_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Entry Size Optional: No Value"
  end

  return "Md Entry Size Optional: "..value
end

-- Dissect: Md Entry Size Optional
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_size_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_size_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Entry Px Decimal
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_decimal = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Md Entry Px Decimal
cme_futures_streamlined_sbe_v5_8_display.md_entry_px_decimal = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Entry Px Decimal
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_decimal_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Md Entry Px Decimal
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_decimal = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_entry_px_decimal then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_decimal(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_px_decimal(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_decimal, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_decimal_fields(buffer, offset, packet, parent)
end

-- Size: Md Update Action Char
cme_futures_streamlined_sbe_v5_8_size_of.md_update_action_char = 1

-- Display: Md Update Action Char
cme_futures_streamlined_sbe_v5_8_display.md_update_action_char = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Update Action Char: No Value"
  end

  return "Md Update Action Char: "..value
end

-- Dissect: Md Update Action Char
cme_futures_streamlined_sbe_v5_8_dissect.md_update_action_char = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_update_action_char
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8_display.md_update_action_char(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_update_action_char, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Eris 353 Group
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_353_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_update_action_char

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.rpt_seq

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_decimal(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.cal_fut_px(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_position_no

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.number_of_orders

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.trade_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.aggressor_side

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.symbol

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_group_26

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_exchange

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.product_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.maturity_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.reference_id_50

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_quote_type

  return index
end

-- Display: M D Incremental Refresh Eris 353 Group
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_353_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris 353 Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_353_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Update Action Char: 1 Byte Ascii String
  index, md_update_action_char = cme_futures_streamlined_sbe_v5_8_dissect.md_update_action_char(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String
  index, md_entry_type = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_type(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px Decimal: Struct of 2 fields
  index, md_entry_px_decimal = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_decimal(buffer, index, packet, parent)

  -- Md Entry Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Cal Fut Px: Struct of 2 fields
  index, cal_fut_px = cme_futures_streamlined_sbe_v5_8_dissect.cal_fut_px(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_position_no = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_position_no(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders = cme_futures_streamlined_sbe_v5_8_dissect.number_of_orders(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Signed Fixed Width Integer
  index, trade_id = cme_futures_streamlined_sbe_v5_8_dissect.trade_id(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_streamlined_sbe_v5_8_dissect.aggressor_side(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String Nullable
  index, symbol = cme_futures_streamlined_sbe_v5_8_dissect.symbol(buffer, index, packet, parent)

  -- Security Group 26: 26 Byte Ascii String Nullable
  index, security_group_26 = cme_futures_streamlined_sbe_v5_8_dissect.security_group_26(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String Nullable
  index, security_type = cme_futures_streamlined_sbe_v5_8_dissect.security_type(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8_dissect.security_exchange(buffer, index, packet, parent)

  -- Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, product_optional = cme_futures_streamlined_sbe_v5_8_dissect.product_optional(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8_dissect.maturity_date(buffer, index, packet, parent)

  -- Reference Id 50: 50 Byte Ascii String Nullable
  index, reference_id_50 = cme_futures_streamlined_sbe_v5_8_dissect.reference_id_50(buffer, index, packet, parent)

  -- Md Quote Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, md_quote_type = cme_futures_streamlined_sbe_v5_8_dissect.md_quote_type(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Eris 353 Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_353_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_eris_353_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_353_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_353_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_353_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_353_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Eris 353 Groups
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_353_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_eris_353_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_eris_353_group_count * 188

  return index
end

-- Display: M D Incremental Refresh Eris 353 Groups
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_353_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris 353 Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_353_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Eris 353 Group: Struct of 18 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_353_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Eris 353 Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_353_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_eris_353_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_353_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_353_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_353_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_353_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Eris
cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_eris = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.transact_time

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.match_event_indicator

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_353_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Eris
cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_eris = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Eris
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, batch_total_messages_optional = cme_futures_streamlined_sbe_v5_8_dissect.batch_total_messages_optional(buffer, index, packet, parent)

  -- M D Incremental Refresh Eris 353 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_eris_353_groups = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_353_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Eris
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_eris(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_eris(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Eris 351 Group
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_351_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_update_action_char

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.rpt_seq

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_decimal(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.cal_fut_px(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_position_no

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.number_of_orders

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.trade_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.aggressor_side

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.symbol

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_group_26

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_exchange

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.product_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.maturity_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.reference_id_50

  return index
end

-- Display: M D Incremental Refresh Eris 351 Group
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_351_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris 351 Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_351_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Update Action Char: 1 Byte Ascii String
  index, md_update_action_char = cme_futures_streamlined_sbe_v5_8_dissect.md_update_action_char(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String
  index, md_entry_type = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_type(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px Decimal: Struct of 2 fields
  index, md_entry_px_decimal = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_decimal(buffer, index, packet, parent)

  -- Md Entry Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Cal Fut Px: Struct of 2 fields
  index, cal_fut_px = cme_futures_streamlined_sbe_v5_8_dissect.cal_fut_px(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_position_no = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_position_no(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders = cme_futures_streamlined_sbe_v5_8_dissect.number_of_orders(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Signed Fixed Width Integer
  index, trade_id = cme_futures_streamlined_sbe_v5_8_dissect.trade_id(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_streamlined_sbe_v5_8_dissect.aggressor_side(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String Nullable
  index, symbol = cme_futures_streamlined_sbe_v5_8_dissect.symbol(buffer, index, packet, parent)

  -- Security Group 26: 26 Byte Ascii String Nullable
  index, security_group_26 = cme_futures_streamlined_sbe_v5_8_dissect.security_group_26(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String Nullable
  index, security_type = cme_futures_streamlined_sbe_v5_8_dissect.security_type(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8_dissect.security_exchange(buffer, index, packet, parent)

  -- Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, product_optional = cme_futures_streamlined_sbe_v5_8_dissect.product_optional(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8_dissect.maturity_date(buffer, index, packet, parent)

  -- Reference Id 50: 50 Byte Ascii String Nullable
  index, reference_id_50 = cme_futures_streamlined_sbe_v5_8_dissect.reference_id_50(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Eris 351 Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_351_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_eris_351_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_351_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_351_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_351_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_351_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Eris 351 Groups
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_351_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_eris_351_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_eris_351_group_count * 187

  return index
end

-- Display: M D Incremental Refresh Eris 351 Groups
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_351_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris 351 Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_351_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Eris 351 Group: Struct of 17 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_351_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Eris 351 Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_351_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_eris_351_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_351_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_351_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_351_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_351_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Eris No Quote
cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_eris_no_quote = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.transact_time

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.match_event_indicator

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_351_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Eris No Quote
cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_eris_no_quote = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Eris No Quote
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris_no_quote_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, batch_total_messages_optional = cme_futures_streamlined_sbe_v5_8_dissect.batch_total_messages_optional(buffer, index, packet, parent)

  -- M D Incremental Refresh Eris 351 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_eris_351_groups = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_351_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Eris No Quote
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris_no_quote = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris_no_quote then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_eris_no_quote(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_eris_no_quote(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris_no_quote, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris_no_quote_fields(buffer, offset, packet, parent)
end

-- Size: Leg Ref Id
cme_futures_streamlined_sbe_v5_8_size_of.leg_ref_id = 17

-- Display: Leg Ref Id
cme_futures_streamlined_sbe_v5_8_display.leg_ref_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Ref Id: No Value"
  end

  return "Leg Ref Id: "..value
end

-- Dissect: Leg Ref Id
cme_futures_streamlined_sbe_v5_8_dissect.leg_ref_id = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_ref_id
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

  local display = cme_futures_streamlined_sbe_v5_8_display.leg_ref_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_ref_id, range, value, display)

  return offset + length, value
end

-- Size: Strategy Link Id
cme_futures_streamlined_sbe_v5_8_size_of.strategy_link_id = 26

-- Display: Strategy Link Id
cme_futures_streamlined_sbe_v5_8_display.strategy_link_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strategy Link Id: No Value"
  end

  return "Strategy Link Id: "..value
end

-- Dissect: Strategy Link Id
cme_futures_streamlined_sbe_v5_8_dissect.strategy_link_id = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.strategy_link_id
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

  local display = cme_futures_streamlined_sbe_v5_8_display.strategy_link_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.strategy_link_id, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
cme_futures_streamlined_sbe_v5_8_size_of.strike_price = 8

-- Display: Strike Price
cme_futures_streamlined_sbe_v5_8_display.strike_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Strike Price
cme_futures_streamlined_sbe_v5_8_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.strike_price(raw)
  local display = cme_futures_streamlined_sbe_v5_8_display.strike_price(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Id
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_id = 26

-- Display: Md Entry Id
cme_futures_streamlined_sbe_v5_8_display.md_entry_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Entry Id: No Value"
  end

  return "Md Entry Id: "..value
end

-- Dissect: Md Entry Id
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_id = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_id
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

  local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_id, range, value, display)

  return offset + length, value
end

-- Size: Trd Type
cme_futures_streamlined_sbe_v5_8_size_of.trd_type = 1

-- Display: Trd Type
cme_futures_streamlined_sbe_v5_8_display.trd_type = function(value)
  -- Check if field has value
  if value == 255 then
    return "Trd Type: No Value"
  end

  return "Trd Type: "..value
end

-- Dissect: Trd Type
cme_futures_streamlined_sbe_v5_8_dissect.trd_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.trd_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.trd_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.trd_type, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Measure Qty Optional
cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_qty_optional = 8

-- Display: Unit Of Measure Qty Optional
cme_futures_streamlined_sbe_v5_8_display.unit_of_measure_qty_optional = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Unit Of Measure Qty Optional: No Value"
  end

  return "Unit Of Measure Qty Optional: "..value
end

-- Translate: Unit Of Measure Qty Optional
translate.unit_of_measure_qty_optional = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Unit Of Measure Qty Optional
cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_qty_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_qty_optional
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.unit_of_measure_qty_optional(raw)
  local display = cme_futures_streamlined_sbe_v5_8_display.unit_of_measure_qty_optional(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_qty_optional, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Measure Currency 3
cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_currency_3 = 3

-- Display: Unit Of Measure Currency 3
cme_futures_streamlined_sbe_v5_8_display.unit_of_measure_currency_3 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure Currency 3: No Value"
  end

  return "Unit Of Measure Currency 3: "..value
end

-- Dissect: Unit Of Measure Currency 3
cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_currency_3 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_currency_3
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

  local display = cme_futures_streamlined_sbe_v5_8_display.unit_of_measure_currency_3(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.unit_of_measure_currency_3, range, value, display)

  return offset + length, value
end

-- Size: Security Exchange 4
cme_futures_streamlined_sbe_v5_8_size_of.security_exchange_4 = 4

-- Display: Security Exchange 4
cme_futures_streamlined_sbe_v5_8_display.security_exchange_4 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange 4: No Value"
  end

  return "Security Exchange 4: "..value
end

-- Dissect: Security Exchange 4
cme_futures_streamlined_sbe_v5_8_dissect.security_exchange_4 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_exchange_4
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

  local display = cme_futures_streamlined_sbe_v5_8_display.security_exchange_4(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_exchange_4, range, value, display)

  return offset + length, value
end

-- Size: Security Id
cme_futures_streamlined_sbe_v5_8_size_of.security_id = 8

-- Display: Security Id
cme_futures_streamlined_sbe_v5_8_display.security_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
cme_futures_streamlined_sbe_v5_8_dissect.security_id = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8_display.security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Md Update Action
cme_futures_streamlined_sbe_v5_8_size_of.md_update_action = 1

-- Display: Md Update Action
cme_futures_streamlined_sbe_v5_8_display.md_update_action = function(value)
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
cme_futures_streamlined_sbe_v5_8_dissect.md_update_action = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_update_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.md_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Trade Blocks 349 Group
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_trade_blocks_349_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_update_action

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.rpt_seq

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.number_of_orders

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.trade_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.aggressor_side

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.symbol

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_group_12

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_sub_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.maturity_month_year(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_exchange_4

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.maturity_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_currency_3

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_qty_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.coupon_rate

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.price_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.trd_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.put_or_call

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.strike_price

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.restructuring_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.seniority

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.reference_id_100

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.strategy_link_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_ref_id

  return index
end

-- Display: M D Incremental Refresh Trade Blocks 349 Group
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_trade_blocks_349_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Blocks 349 Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_349_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_streamlined_sbe_v5_8_dissect.md_update_action(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, security_id = cme_futures_streamlined_sbe_v5_8_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size: Struct of 2 fields
  index, md_entry_size = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders = cme_futures_streamlined_sbe_v5_8_dissect.number_of_orders(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Signed Fixed Width Integer
  index, trade_id = cme_futures_streamlined_sbe_v5_8_dissect.trade_id(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_streamlined_sbe_v5_8_dissect.aggressor_side(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String Nullable
  index, symbol = cme_futures_streamlined_sbe_v5_8_dissect.symbol(buffer, index, packet, parent)

  -- Security Group 12: 12 Byte Ascii String Nullable
  index, security_group_12 = cme_futures_streamlined_sbe_v5_8_dissect.security_group_12(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String Nullable
  index, security_type = cme_futures_streamlined_sbe_v5_8_dissect.security_type(buffer, index, packet, parent)

  -- Security Sub Type: 2 Byte Ascii String Nullable
  index, security_sub_type = cme_futures_streamlined_sbe_v5_8_dissect.security_sub_type(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_streamlined_sbe_v5_8_dissect.maturity_month_year(buffer, index, packet, parent)

  -- Security Exchange 4: 4 Byte Ascii String Nullable
  index, security_exchange_4 = cme_futures_streamlined_sbe_v5_8_dissect.security_exchange_4(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8_dissect.maturity_date(buffer, index, packet, parent)

  -- Unit Of Measure: 5 Byte Ascii String Nullable
  index, unit_of_measure = cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Currency 3: 3 Byte Ascii String Nullable
  index, unit_of_measure_currency_3 = cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_currency_3(buffer, index, packet, parent)

  -- Unit Of Measure Qty Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_optional = cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_qty_optional(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer Nullable
  index, coupon_rate = cme_futures_streamlined_sbe_v5_8_dissect.coupon_rate(buffer, index, packet, parent)

  -- Price Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, price_type = cme_futures_streamlined_sbe_v5_8_dissect.price_type(buffer, index, packet, parent)

  -- Trd Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trd_type = cme_futures_streamlined_sbe_v5_8_dissect.trd_type(buffer, index, packet, parent)

  -- Md Entry Id: 26 Byte Ascii String Nullable
  index, md_entry_id = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_id(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Nullable
  index, put_or_call = cme_futures_streamlined_sbe_v5_8_dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = cme_futures_streamlined_sbe_v5_8_dissect.strike_price(buffer, index, packet, parent)

  -- Restructuring Type: 2 Byte Ascii String Nullable
  index, restructuring_type = cme_futures_streamlined_sbe_v5_8_dissect.restructuring_type(buffer, index, packet, parent)

  -- Seniority: 2 Byte Ascii String Nullable
  index, seniority = cme_futures_streamlined_sbe_v5_8_dissect.seniority(buffer, index, packet, parent)

  -- Reference Id 100: 100 Byte Ascii String Nullable
  index, reference_id_100 = cme_futures_streamlined_sbe_v5_8_dissect.reference_id_100(buffer, index, packet, parent)

  -- Strategy Link Id: 26 Byte Ascii String Nullable
  index, strategy_link_id = cme_futures_streamlined_sbe_v5_8_dissect.strategy_link_id(buffer, index, packet, parent)

  -- Leg Ref Id: 17 Byte Ascii String Nullable
  index, leg_ref_id = cme_futures_streamlined_sbe_v5_8_dissect.leg_ref_id(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Blocks 349 Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_349_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_trade_blocks_349_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_trade_blocks_349_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_trade_blocks_349_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_349_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_349_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Trade Blocks 349 Groups
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_trade_blocks_349_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_blocks_349_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_blocks_349_group_count * 328

  return index
end

-- Display: M D Incremental Refresh Trade Blocks 349 Groups
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_trade_blocks_349_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Blocks 349 Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_349_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Trade Blocks 349 Group: Struct of 29 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_349_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Blocks 349 Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_349_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_blocks_349_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_trade_blocks_349_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_trade_blocks_349_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_349_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_349_groups_fields(buffer, offset, packet, parent)
end

-- Size: Batch Total Messages
cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages = 2

-- Display: Batch Total Messages
cme_futures_streamlined_sbe_v5_8_display.batch_total_messages = function(value)
  return "Batch Total Messages: "..value
end

-- Dissect: Batch Total Messages
cme_futures_streamlined_sbe_v5_8_dissect.batch_total_messages = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.batch_total_messages(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.batch_total_messages, range, value, display)

  return offset + length, value
end

-- Size: Transact Time Optional
cme_futures_streamlined_sbe_v5_8_size_of.transact_time_optional = 8

-- Display: Transact Time Optional
cme_futures_streamlined_sbe_v5_8_display.transact_time_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Transact Time Optional: No Value"
  end

  return "Transact Time Optional: "..value
end

-- Dissect: Transact Time Optional
cme_futures_streamlined_sbe_v5_8_dissect.transact_time_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.transact_time_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8_display.transact_time_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.transact_time_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Incremental Refresh Trade Blocks
cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_trade_blocks = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.transact_time_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.match_event_indicator

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.trade_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_trade_blocks_349_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Blocks
cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_trade_blocks = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Blocks
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_trade_blocks_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time_optional = cme_futures_streamlined_sbe_v5_8_dissect.transact_time_optional(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index, batch_total_messages = cme_futures_streamlined_sbe_v5_8_dissect.batch_total_messages(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_streamlined_sbe_v5_8_dissect.trade_date(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Blocks 349 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_blocks_349_groups = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_349_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Blocks
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_trade_blocks = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_blocks then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_trade_blocks(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_trade_blocks(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_trade_blocks, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_trade_blocks_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Time
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_time = 4

-- Display: Md Entry Time
cme_futures_streamlined_sbe_v5_8_display.md_entry_time = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Time: No Value"
  end

  return "Md Entry Time: "..value
end

-- Dissect: Md Entry Time
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_time = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_time
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_time, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Code
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_code = 1

-- Display: Md Entry Code
cme_futures_streamlined_sbe_v5_8_display.md_entry_code = function(value)
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
  if value == 255 then
    return "Md Entry Code: No Value"
  end

  return "Md Entry Code: Unknown("..value..")"
end

-- Dissect: Md Entry Code
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_code = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_code(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Percent Trading
cme_futures_streamlined_sbe_v5_8_size_of.percent_trading = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Percent Trading
cme_futures_streamlined_sbe_v5_8_display.percent_trading = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Percent Trading
cme_futures_streamlined_sbe_v5_8_dissect.percent_trading_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Percent Trading
cme_futures_streamlined_sbe_v5_8_dissect.percent_trading = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.percent_trading then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.percent_trading(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.percent_trading(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.percent_trading, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.percent_trading_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Net Pct Chg
cme_futures_streamlined_sbe_v5_8_size_of.net_pct_chg = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Net Pct Chg
cme_futures_streamlined_sbe_v5_8_display.net_pct_chg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Net Pct Chg
cme_futures_streamlined_sbe_v5_8_dissect.net_pct_chg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Net Pct Chg
cme_futures_streamlined_sbe_v5_8_dissect.net_pct_chg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.net_pct_chg then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.net_pct_chg(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.net_pct_chg(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.net_pct_chg, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.net_pct_chg_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Net Chg Prev Day
cme_futures_streamlined_sbe_v5_8_size_of.net_chg_prev_day = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Net Chg Prev Day
cme_futures_streamlined_sbe_v5_8_display.net_chg_prev_day = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Net Chg Prev Day
cme_futures_streamlined_sbe_v5_8_dissect.net_chg_prev_day_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Net Chg Prev Day
cme_futures_streamlined_sbe_v5_8_dissect.net_chg_prev_day = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.net_chg_prev_day then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.net_chg_prev_day(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.net_chg_prev_day(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.net_chg_prev_day, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.net_chg_prev_day_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Yield
cme_futures_streamlined_sbe_v5_8_size_of.yield = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Yield
cme_futures_streamlined_sbe_v5_8_display.yield = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Yield
cme_futures_streamlined_sbe_v5_8_dissect.yield_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Yield
cme_futures_streamlined_sbe_v5_8_dissect.yield = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.yield then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.yield(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.yield(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.yield, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.yield_fields(buffer, offset, packet, parent)
end

-- Size: Yield Type
cme_futures_streamlined_sbe_v5_8_size_of.yield_type = 8

-- Display: Yield Type
cme_futures_streamlined_sbe_v5_8_display.yield_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Yield Type: No Value"
  end

  return "Yield Type: "..value
end

-- Dissect: Yield Type
cme_futures_streamlined_sbe_v5_8_dissect.yield_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.yield_type
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

  local display = cme_futures_streamlined_sbe_v5_8_display.yield_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.yield_type, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Type Indices
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_type_indices = 1

-- Display: Md Entry Type Indices
cme_futures_streamlined_sbe_v5_8_display.md_entry_type_indices = function(value)
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
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_type_indices = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_type_indices
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_type_indices(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_type_indices, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Indices Group
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_indices_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_type_indices

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.rpt_seq

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_decimal(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.symbol

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.open_close_settl_flag

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.yield_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.yield(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.net_chg_prev_day(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.net_pct_chg(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.percent_trading(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_code

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_time

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.reference_id_50

  return index
end

-- Display: M D Incremental Refresh Indices Group
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_indices_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Indices Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_indices_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Type Indices: 1 Byte Ascii String Enum with 10 values
  index, md_entry_type_indices = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_type_indices(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px Decimal: Struct of 2 fields
  index, md_entry_px_decimal = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_decimal(buffer, index, packet, parent)

  -- Md Entry Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String Nullable
  index, symbol = cme_futures_streamlined_sbe_v5_8_dissect.symbol(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Signed Fixed Width Integer Nullable
  index, open_close_settl_flag = cme_futures_streamlined_sbe_v5_8_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Yield Type: 8 Byte Ascii String Nullable
  index, yield_type = cme_futures_streamlined_sbe_v5_8_dissect.yield_type(buffer, index, packet, parent)

  -- Yield: Struct of 2 fields
  index, yield = cme_futures_streamlined_sbe_v5_8_dissect.yield(buffer, index, packet, parent)

  -- Net Chg Prev Day: Struct of 2 fields
  index, net_chg_prev_day = cme_futures_streamlined_sbe_v5_8_dissect.net_chg_prev_day(buffer, index, packet, parent)

  -- Net Pct Chg: Struct of 2 fields
  index, net_pct_chg = cme_futures_streamlined_sbe_v5_8_dissect.net_pct_chg(buffer, index, packet, parent)

  -- Percent Trading: Struct of 2 fields
  index, percent_trading = cme_futures_streamlined_sbe_v5_8_dissect.percent_trading(buffer, index, packet, parent)

  -- Md Entry Code: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_entry_code = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_code(buffer, index, packet, parent)

  -- Md Entry Date: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_date = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_date(buffer, index, packet, parent)

  -- Md Entry Time: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_time = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_time(buffer, index, packet, parent)

  -- Reference Id 50: 50 Byte Ascii String Nullable
  index, reference_id_50 = cme_futures_streamlined_sbe_v5_8_dissect.reference_id_50(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Indices Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_indices_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_indices_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_indices_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_indices_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_indices_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_indices_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Indices Groups
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_indices_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_indices_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_indices_group_count * 176

  return index
end

-- Display: M D Incremental Refresh Indices Groups
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_indices_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Indices Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_indices_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Indices Group: Struct of 15 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_indices_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Indices Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_indices_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_indices_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_indices_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_indices_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_indices_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_indices_groups_fields(buffer, offset, packet, parent)
end

-- Size: Md Feed Type
cme_futures_streamlined_sbe_v5_8_size_of.md_feed_type = 2

-- Display: Md Feed Type
cme_futures_streamlined_sbe_v5_8_display.md_feed_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Feed Type: No Value"
  end

  return "Md Feed Type: "..value
end

-- Dissect: Md Feed Type
cme_futures_streamlined_sbe_v5_8_dissect.md_feed_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.md_feed_type
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

  local display = cme_futures_streamlined_sbe_v5_8_display.md_feed_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_feed_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Incremental Refresh Indices
cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_indices = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.transact_time

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_feed_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.match_event_indicator

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_indices_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Indices
cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_indices = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Indices
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_indices_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Md Feed Type: 2 Byte Ascii String Nullable
  index, md_feed_type = cme_futures_streamlined_sbe_v5_8_dissect.md_feed_type(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, batch_total_messages_optional = cme_futures_streamlined_sbe_v5_8_dissect.batch_total_messages_optional(buffer, index, packet, parent)

  -- M D Incremental Refresh Indices Groups: Struct of 2 fields
  index, m_d_incremental_refresh_indices_groups = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_indices_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Indices
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_indices = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_indices then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_indices(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_indices(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_indices, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_indices_fields(buffer, offset, packet, parent)
end

-- Size: Inst Attrib Value
cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_value = 100

-- Display: Inst Attrib Value
cme_futures_streamlined_sbe_v5_8_display.inst_attrib_value = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Inst Attrib Value: No Value"
  end

  return "Inst Attrib Value: "..value
end

-- Dissect: Inst Attrib Value
cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_value = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_value
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

  local display = cme_futures_streamlined_sbe_v5_8_display.inst_attrib_value(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_value, range, value, display)

  return offset + length, value
end

-- Size: Inst Attrib Type
cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_type = 1

-- Display: Inst Attrib Type
cme_futures_streamlined_sbe_v5_8_display.inst_attrib_type = function(value)
  return "Inst Attrib Type: "..value
end

-- Dissect: Inst Attrib Type
cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_type = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.inst_attrib_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inst Attrib Group
cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_value

  return index
end

-- Display: Inst Attrib Group
cme_futures_streamlined_sbe_v5_8_display.inst_attrib_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inst Attrib Group
cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Attrib Type: 1 Byte Unsigned Fixed Width Integer
  index, inst_attrib_type = cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_type(buffer, index, packet, parent)

  -- Inst Attrib Value: 100 Byte Ascii String Nullable
  index, inst_attrib_value = cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Inst Attrib Group
cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inst_attrib_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.inst_attrib_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Inst Attrib Groups
cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local inst_attrib_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + inst_attrib_group_count * 101

  return index
end

-- Display: Inst Attrib Groups
cme_futures_streamlined_sbe_v5_8_display.inst_attrib_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inst Attrib Groups
cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = cme_futures_streamlined_sbe_v5_8_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group 16
  local num_in_group_16 = buffer(index - 2, 2):le_uint()

  -- Inst Attrib Group: Struct of 2 fields
  for i = 1, num_in_group_16 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Inst Attrib Groups
cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.inst_attrib_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.inst_attrib_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.inst_attrib_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_groups_fields(buffer, offset, packet, parent)
end

-- Size: Product
cme_futures_streamlined_sbe_v5_8_size_of.product = 1

-- Display: Product
cme_futures_streamlined_sbe_v5_8_display.product = function(value)
  return "Product: "..value
end

-- Dissect: Product
cme_futures_streamlined_sbe_v5_8_dissect.product = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.product
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.product(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.product, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Indices
cme_futures_streamlined_sbe_v5_8_size_of.md_instrument_definition_indices = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.symbol

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.product

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_exchange

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.currency

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_update_action

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_feed_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.appl_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.inst_attrib_groups(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.events_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Indices
cme_futures_streamlined_sbe_v5_8_display.md_instrument_definition_indices = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Definition Indices
cme_futures_streamlined_sbe_v5_8_dissect.md_instrument_definition_indices_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 50 Byte Ascii String Nullable
  index, symbol = cme_futures_streamlined_sbe_v5_8_dissect.symbol(buffer, index, packet, parent)

  -- Product: 1 Byte Signed Fixed Width Integer
  index, product = cme_futures_streamlined_sbe_v5_8_dissect.product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8_dissect.security_exchange(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_streamlined_sbe_v5_8_dissect.currency(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_streamlined_sbe_v5_8_dissect.security_update_action(buffer, index, packet, parent)

  -- Md Feed Type: 2 Byte Ascii String Nullable
  index, md_feed_type = cme_futures_streamlined_sbe_v5_8_dissect.md_feed_type(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, appl_id = cme_futures_streamlined_sbe_v5_8_dissect.appl_id(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_streamlined_sbe_v5_8_dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_streamlined_sbe_v5_8_dissect.events_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Indices
cme_futures_streamlined_sbe_v5_8_dissect.md_instrument_definition_indices = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_indices then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_instrument_definition_indices(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_instrument_definition_indices(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_instrument_definition_indices, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_instrument_definition_indices_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Related Sym Group
cme_futures_streamlined_sbe_v5_8_size_of.related_sym_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.symbol

  return index
end

-- Display: Related Sym Group
cme_futures_streamlined_sbe_v5_8_display.related_sym_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Sym Group
cme_futures_streamlined_sbe_v5_8_dissect.related_sym_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 50 Byte Ascii String Nullable
  index, symbol = cme_futures_streamlined_sbe_v5_8_dissect.symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
cme_futures_streamlined_sbe_v5_8_dissect.related_sym_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.related_sym_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.related_sym_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.related_sym_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.related_sym_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.related_sym_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Related Sym Groups
cme_futures_streamlined_sbe_v5_8_size_of.related_sym_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_sym_group_count * 50

  return index
end

-- Display: Related Sym Groups
cme_futures_streamlined_sbe_v5_8_display.related_sym_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Sym Groups
cme_futures_streamlined_sbe_v5_8_dissect.related_sym_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Related Sym Group: Struct of 1 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.related_sym_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Related Sym Groups
cme_futures_streamlined_sbe_v5_8_dissect.related_sym_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_sym_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.related_sym_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.related_sym_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.related_sym_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.related_sym_groups_fields(buffer, offset, packet, parent)
end

-- Size: Quote Req Id
cme_futures_streamlined_sbe_v5_8_size_of.quote_req_id = 26

-- Display: Quote Req Id
cme_futures_streamlined_sbe_v5_8_display.quote_req_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Req Id: No Value"
  end

  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
cme_futures_streamlined_sbe_v5_8_dissect.quote_req_id = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.quote_req_id
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

  local display = cme_futures_streamlined_sbe_v5_8_display.quote_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Request
cme_futures_streamlined_sbe_v5_8_size_of.quote_request = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.transact_time

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.match_event_indicator

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.quote_req_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.related_sym_groups(buffer, offset + index)

  return index
end

-- Display: Quote Request
cme_futures_streamlined_sbe_v5_8_display.quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Request
cme_futures_streamlined_sbe_v5_8_dissect.quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Quote Req Id: 26 Byte Ascii String Nullable
  index, quote_req_id = cme_futures_streamlined_sbe_v5_8_dissect.quote_req_id(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = cme_futures_streamlined_sbe_v5_8_dissect.related_sym_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
cme_futures_streamlined_sbe_v5_8_dissect.quote_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.quote_request(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.quote_request, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.quote_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Trade Blocks 340 Group
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_trade_blocks_340_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_update_action

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.rpt_seq

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.number_of_orders

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.trade_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.aggressor_side

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.symbol

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_group_12

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_sub_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.maturity_month_year(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_exchange_4

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.maturity_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_currency_3

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.unit_of_measure_qty_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.coupon_rate

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.price_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.trd_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.put_or_call

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.strike_price

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.restructuring_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.seniority

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.reference_id_100

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.strategy_link_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_ref_id

  return index
end

-- Display: M D Incremental Refresh Trade Blocks 340 Group
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_trade_blocks_340_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Blocks 340 Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_340_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_streamlined_sbe_v5_8_dissect.md_update_action(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, security_id = cme_futures_streamlined_sbe_v5_8_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders = cme_futures_streamlined_sbe_v5_8_dissect.number_of_orders(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Signed Fixed Width Integer
  index, trade_id = cme_futures_streamlined_sbe_v5_8_dissect.trade_id(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_streamlined_sbe_v5_8_dissect.aggressor_side(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String Nullable
  index, symbol = cme_futures_streamlined_sbe_v5_8_dissect.symbol(buffer, index, packet, parent)

  -- Security Group 12: 12 Byte Ascii String Nullable
  index, security_group_12 = cme_futures_streamlined_sbe_v5_8_dissect.security_group_12(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String Nullable
  index, security_type = cme_futures_streamlined_sbe_v5_8_dissect.security_type(buffer, index, packet, parent)

  -- Security Sub Type: 2 Byte Ascii String Nullable
  index, security_sub_type = cme_futures_streamlined_sbe_v5_8_dissect.security_sub_type(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_streamlined_sbe_v5_8_dissect.maturity_month_year(buffer, index, packet, parent)

  -- Security Exchange 4: 4 Byte Ascii String Nullable
  index, security_exchange_4 = cme_futures_streamlined_sbe_v5_8_dissect.security_exchange_4(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8_dissect.maturity_date(buffer, index, packet, parent)

  -- Unit Of Measure: 5 Byte Ascii String Nullable
  index, unit_of_measure = cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Currency 3: 3 Byte Ascii String Nullable
  index, unit_of_measure_currency_3 = cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_currency_3(buffer, index, packet, parent)

  -- Unit Of Measure Qty Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty_optional = cme_futures_streamlined_sbe_v5_8_dissect.unit_of_measure_qty_optional(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer Nullable
  index, coupon_rate = cme_futures_streamlined_sbe_v5_8_dissect.coupon_rate(buffer, index, packet, parent)

  -- Price Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, price_type = cme_futures_streamlined_sbe_v5_8_dissect.price_type(buffer, index, packet, parent)

  -- Trd Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trd_type = cme_futures_streamlined_sbe_v5_8_dissect.trd_type(buffer, index, packet, parent)

  -- Md Entry Id: 26 Byte Ascii String Nullable
  index, md_entry_id = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_id(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Nullable
  index, put_or_call = cme_futures_streamlined_sbe_v5_8_dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = cme_futures_streamlined_sbe_v5_8_dissect.strike_price(buffer, index, packet, parent)

  -- Restructuring Type: 2 Byte Ascii String Nullable
  index, restructuring_type = cme_futures_streamlined_sbe_v5_8_dissect.restructuring_type(buffer, index, packet, parent)

  -- Seniority: 2 Byte Ascii String Nullable
  index, seniority = cme_futures_streamlined_sbe_v5_8_dissect.seniority(buffer, index, packet, parent)

  -- Reference Id 100: 100 Byte Ascii String Nullable
  index, reference_id_100 = cme_futures_streamlined_sbe_v5_8_dissect.reference_id_100(buffer, index, packet, parent)

  -- Strategy Link Id: 26 Byte Ascii String Nullable
  index, strategy_link_id = cme_futures_streamlined_sbe_v5_8_dissect.strategy_link_id(buffer, index, packet, parent)

  -- Leg Ref Id: 17 Byte Ascii String Nullable
  index, leg_ref_id = cme_futures_streamlined_sbe_v5_8_dissect.leg_ref_id(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Blocks 340 Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_340_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_trade_blocks_340_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_trade_blocks_340_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_trade_blocks_340_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_340_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_340_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Trade Blocks 340 Groups
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_trade_blocks_340_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_blocks_340_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_blocks_340_group_count * 327

  return index
end

-- Display: M D Incremental Refresh Trade Blocks 340 Groups
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_trade_blocks_340_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Blocks 340 Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_340_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Trade Blocks 340 Group: Struct of 29 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_340_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Blocks 340 Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_340_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_blocks_340_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_trade_blocks_340_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_trade_blocks_340_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_trade_blocks_340_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_340_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Trade Blocks No Date
cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_trade_blocks_no_date = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.transact_time

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.match_event_indicator

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_trade_blocks_340_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Blocks No Date
cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_trade_blocks_no_date = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Blocks No Date
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_trade_blocks_no_date_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index, batch_total_messages = cme_futures_streamlined_sbe_v5_8_dissect.batch_total_messages(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Blocks 340 Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_blocks_340_groups = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_trade_blocks_340_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Blocks No Date
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_trade_blocks_no_date = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_blocks_no_date then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_trade_blocks_no_date(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_trade_blocks_no_date(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_trade_blocks_no_date, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_trade_blocks_no_date_fields(buffer, offset, packet, parent)
end

-- Size: Text 500
cme_futures_streamlined_sbe_v5_8_size_of.text_500 = 500

-- Display: Text 500
cme_futures_streamlined_sbe_v5_8_display.text_500 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text 500: No Value"
  end

  return "Text 500: "..value
end

-- Dissect: Text 500
cme_futures_streamlined_sbe_v5_8_dissect.text_500 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.text_500
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

  local display = cme_futures_streamlined_sbe_v5_8_display.text_500(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.text_500, range, value, display)

  return offset + length, value
end

-- Calculate size of: Lines Of Text Group
cme_futures_streamlined_sbe_v5_8_size_of.lines_of_text_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.text_500

  return index
end

-- Display: Lines Of Text Group
cme_futures_streamlined_sbe_v5_8_display.lines_of_text_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Lines Of Text Group
cme_futures_streamlined_sbe_v5_8_dissect.lines_of_text_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text 500: 500 Byte Ascii String
  index, text_500 = cme_futures_streamlined_sbe_v5_8_dissect.text_500(buffer, index, packet, parent)

  return index
end

-- Dissect: Lines Of Text Group
cme_futures_streamlined_sbe_v5_8_dissect.lines_of_text_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.lines_of_text_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.lines_of_text_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.lines_of_text_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.lines_of_text_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.lines_of_text_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Lines Of Text Groups
cme_futures_streamlined_sbe_v5_8_size_of.lines_of_text_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local lines_of_text_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + lines_of_text_group_count * 500

  return index
end

-- Display: Lines Of Text Groups
cme_futures_streamlined_sbe_v5_8_display.lines_of_text_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Lines Of Text Groups
cme_futures_streamlined_sbe_v5_8_dissect.lines_of_text_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Lines Of Text Group: Struct of 1 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.lines_of_text_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Lines Of Text Groups
cme_futures_streamlined_sbe_v5_8_dissect.lines_of_text_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.lines_of_text_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.lines_of_text_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.lines_of_text_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.lines_of_text_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.lines_of_text_groups_fields(buffer, offset, packet, parent)
end

-- Size: Orig Time
cme_futures_streamlined_sbe_v5_8_size_of.orig_time = 8

-- Display: Orig Time
cme_futures_streamlined_sbe_v5_8_display.orig_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Orig Time: No Value"
  end

  return "Orig Time: "..value
end

-- Dissect: Orig Time
cme_futures_streamlined_sbe_v5_8_dissect.orig_time = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.orig_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8_display.orig_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Size: Headline
cme_futures_streamlined_sbe_v5_8_size_of.headline = 50

-- Display: Headline
cme_futures_streamlined_sbe_v5_8_display.headline = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Headline: No Value"
  end

  return "Headline: "..value
end

-- Dissect: Headline
cme_futures_streamlined_sbe_v5_8_dissect.headline = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.headline
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

  local display = cme_futures_streamlined_sbe_v5_8_display.headline(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.headline, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md News Indices
cme_futures_streamlined_sbe_v5_8_size_of.md_news_indices = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.headline

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.orig_time

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_feed_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.related_sym_groups(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.lines_of_text_groups(buffer, offset + index)

  return index
end

-- Display: Md News Indices
cme_futures_streamlined_sbe_v5_8_display.md_news_indices = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md News Indices
cme_futures_streamlined_sbe_v5_8_dissect.md_news_indices_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Headline: 50 Byte Ascii String Nullable
  index, headline = cme_futures_streamlined_sbe_v5_8_dissect.headline(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_time = cme_futures_streamlined_sbe_v5_8_dissect.orig_time(buffer, index, packet, parent)

  -- Md Feed Type: 2 Byte Ascii String Nullable
  index, md_feed_type = cme_futures_streamlined_sbe_v5_8_dissect.md_feed_type(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = cme_futures_streamlined_sbe_v5_8_dissect.related_sym_groups(buffer, index, packet, parent)

  -- Lines Of Text Groups: Struct of 2 fields
  index, lines_of_text_groups = cme_futures_streamlined_sbe_v5_8_dissect.lines_of_text_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md News Indices
cme_futures_streamlined_sbe_v5_8_dissect.md_news_indices = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_news_indices then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_news_indices(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_news_indices(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_news_indices, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_news_indices_fields(buffer, offset, packet, parent)
end

-- Size: Security Description
cme_futures_streamlined_sbe_v5_8_size_of.security_description = 30

-- Display: Security Description
cme_futures_streamlined_sbe_v5_8_display.security_description = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Description: No Value"
  end

  return "Security Description: "..value
end

-- Dissect: Security Description
cme_futures_streamlined_sbe_v5_8_dissect.security_description = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.security_description
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

  local display = cme_futures_streamlined_sbe_v5_8_display.security_description(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.security_description, range, value, display)

  return offset + length, value
end

-- Calculate size of: Final Settlement Futures Price
cme_futures_streamlined_sbe_v5_8_size_of.final_settlement_futures_price = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Final Settlement Futures Price
cme_futures_streamlined_sbe_v5_8_display.final_settlement_futures_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Final Settlement Futures Price
cme_futures_streamlined_sbe_v5_8_dissect.final_settlement_futures_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Final Settlement Futures Price
cme_futures_streamlined_sbe_v5_8_dissect.final_settlement_futures_price = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.final_settlement_futures_price then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.final_settlement_futures_price(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.final_settlement_futures_price(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.final_settlement_futures_price, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.final_settlement_futures_price_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Settlement Npv
cme_futures_streamlined_sbe_v5_8_size_of.settlement_npv = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Settlement Npv
cme_futures_streamlined_sbe_v5_8_display.settlement_npv = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Settlement Npv
cme_futures_streamlined_sbe_v5_8_dissect.settlement_npv_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Settlement Npv
cme_futures_streamlined_sbe_v5_8_dissect.settlement_npv = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.settlement_npv then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.settlement_npv(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.settlement_npv(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.settlement_npv, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.settlement_npv_fields(buffer, offset, packet, parent)
end

-- Calculate size of: D V 01
cme_futures_streamlined_sbe_v5_8_size_of.d_v_01 = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: D V 01
cme_futures_streamlined_sbe_v5_8_display.d_v_01 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: D V 01
cme_futures_streamlined_sbe_v5_8_dissect.d_v_01_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: D V 01
cme_futures_streamlined_sbe_v5_8_dissect.d_v_01 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.d_v_01 then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.d_v_01(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.d_v_01(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.d_v_01, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.d_v_01_fields(buffer, offset, packet, parent)
end

-- Calculate size of: P V 01
cme_futures_streamlined_sbe_v5_8_size_of.p_v_01 = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: P V 01
cme_futures_streamlined_sbe_v5_8_display.p_v_01 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: P V 01
cme_futures_streamlined_sbe_v5_8_dissect.p_v_01_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: P V 01
cme_futures_streamlined_sbe_v5_8_dissect.p_v_01 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.p_v_01 then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.p_v_01(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.p_v_01(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.p_v_01, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.p_v_01_fields(buffer, offset, packet, parent)
end

-- Size: Next Floating Payment Date
cme_futures_streamlined_sbe_v5_8_size_of.next_floating_payment_date = 2

-- Display: Next Floating Payment Date
cme_futures_streamlined_sbe_v5_8_display.next_floating_payment_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Next Floating Payment Date: No Value"
  end

  return "Next Floating Payment Date: "..value
end

-- Dissect: Next Floating Payment Date
cme_futures_streamlined_sbe_v5_8_dissect.next_floating_payment_date = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.next_floating_payment_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.next_floating_payment_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.next_floating_payment_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Leg Contract Multiplier
cme_futures_streamlined_sbe_v5_8_size_of.leg_contract_multiplier = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Leg Contract Multiplier
cme_futures_streamlined_sbe_v5_8_display.leg_contract_multiplier = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Leg Contract Multiplier
cme_futures_streamlined_sbe_v5_8_dissect.leg_contract_multiplier_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Leg Contract Multiplier
cme_futures_streamlined_sbe_v5_8_dissect.leg_contract_multiplier = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.leg_contract_multiplier then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_contract_multiplier(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.leg_contract_multiplier(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_contract_multiplier, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.leg_contract_multiplier_fields(buffer, offset, packet, parent)
end

-- Size: Leg Credit Rating
cme_futures_streamlined_sbe_v5_8_size_of.leg_credit_rating = 6

-- Display: Leg Credit Rating
cme_futures_streamlined_sbe_v5_8_display.leg_credit_rating = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Credit Rating: No Value"
  end

  return "Leg Credit Rating: "..value
end

-- Dissect: Leg Credit Rating
cme_futures_streamlined_sbe_v5_8_dissect.leg_credit_rating = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_credit_rating
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

  local display = cme_futures_streamlined_sbe_v5_8_display.leg_credit_rating(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_credit_rating, range, value, display)

  return offset + length, value
end

-- Size: Nominal
cme_futures_streamlined_sbe_v5_8_size_of.nominal = 8

-- Display: Nominal
cme_futures_streamlined_sbe_v5_8_display.nominal = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Nominal: No Value"
  end

  return "Nominal: "..value
end

-- Dissect: Nominal
cme_futures_streamlined_sbe_v5_8_dissect.nominal = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.nominal
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8_display.nominal(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.nominal, range, value, display)

  return offset + length, value
end

-- Size: Accrual Days
cme_futures_streamlined_sbe_v5_8_size_of.accrual_days = 4

-- Display: Accrual Days
cme_futures_streamlined_sbe_v5_8_display.accrual_days = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Accrual Days: No Value"
  end

  return "Accrual Days: "..value
end

-- Dissect: Accrual Days
cme_futures_streamlined_sbe_v5_8_dissect.accrual_days = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.accrual_days
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.accrual_days(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.accrual_days, range, value, display)

  return offset + length, value
end

-- Size: Fed Funds Date
cme_futures_streamlined_sbe_v5_8_size_of.fed_funds_date = 2

-- Display: Fed Funds Date
cme_futures_streamlined_sbe_v5_8_display.fed_funds_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Fed Funds Date: No Value"
  end

  return "Fed Funds Date: "..value
end

-- Dissect: Fed Funds Date
cme_futures_streamlined_sbe_v5_8_dissect.fed_funds_date = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.fed_funds_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.fed_funds_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.fed_funds_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Previous Eris Pai
cme_futures_streamlined_sbe_v5_8_size_of.previous_eris_pai = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Previous Eris Pai
cme_futures_streamlined_sbe_v5_8_display.previous_eris_pai = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Previous Eris Pai
cme_futures_streamlined_sbe_v5_8_dissect.previous_eris_pai_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Previous Eris Pai
cme_futures_streamlined_sbe_v5_8_dissect.previous_eris_pai = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.previous_eris_pai then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.previous_eris_pai(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.previous_eris_pai(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.previous_eris_pai, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.previous_eris_pai_fields(buffer, offset, packet, parent)
end

-- Size: Trading Reference Date
cme_futures_streamlined_sbe_v5_8_size_of.trading_reference_date = 2

-- Display: Trading Reference Date
cme_futures_streamlined_sbe_v5_8_display.trading_reference_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trading Reference Date: No Value"
  end

  return "Trading Reference Date: "..value
end

-- Dissect: Trading Reference Date
cme_futures_streamlined_sbe_v5_8_dissect.trading_reference_date = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.trading_reference_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.trading_reference_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.trading_reference_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Next Floating Payment Amount
cme_futures_streamlined_sbe_v5_8_size_of.next_floating_payment_amount = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Next Floating Payment Amount
cme_futures_streamlined_sbe_v5_8_display.next_floating_payment_amount = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Next Floating Payment Amount
cme_futures_streamlined_sbe_v5_8_dissect.next_floating_payment_amount_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Next Floating Payment Amount
cme_futures_streamlined_sbe_v5_8_dissect.next_floating_payment_amount = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.next_floating_payment_amount then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.next_floating_payment_amount(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.next_floating_payment_amount(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.next_floating_payment_amount, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.next_floating_payment_amount_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Next Fixed Payment Amount
cme_futures_streamlined_sbe_v5_8_size_of.next_fixed_payment_amount = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Next Fixed Payment Amount
cme_futures_streamlined_sbe_v5_8_display.next_fixed_payment_amount = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Next Fixed Payment Amount
cme_futures_streamlined_sbe_v5_8_dissect.next_fixed_payment_amount_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Next Fixed Payment Amount
cme_futures_streamlined_sbe_v5_8_dissect.next_fixed_payment_amount = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.next_fixed_payment_amount then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.next_fixed_payment_amount(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.next_fixed_payment_amount(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.next_fixed_payment_amount, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.next_fixed_payment_amount_fields(buffer, offset, packet, parent)
end

-- Size: Next Fixed Payment Date
cme_futures_streamlined_sbe_v5_8_size_of.next_fixed_payment_date = 2

-- Display: Next Fixed Payment Date
cme_futures_streamlined_sbe_v5_8_display.next_fixed_payment_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Next Fixed Payment Date: No Value"
  end

  return "Next Fixed Payment Date: "..value
end

-- Dissect: Next Fixed Payment Date
cme_futures_streamlined_sbe_v5_8_dissect.next_fixed_payment_date = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.next_fixed_payment_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.next_fixed_payment_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.next_fixed_payment_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Floating Payment
cme_futures_streamlined_sbe_v5_8_size_of.floating_payment = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Floating Payment
cme_futures_streamlined_sbe_v5_8_display.floating_payment = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Floating Payment
cme_futures_streamlined_sbe_v5_8_dissect.floating_payment_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Floating Payment
cme_futures_streamlined_sbe_v5_8_dissect.floating_payment = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.floating_payment then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.floating_payment(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.floating_payment(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.floating_payment, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.floating_payment_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Fixed Payment
cme_futures_streamlined_sbe_v5_8_size_of.fixed_payment = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Fixed Payment
cme_futures_streamlined_sbe_v5_8_display.fixed_payment = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fixed Payment
cme_futures_streamlined_sbe_v5_8_dissect.fixed_payment_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Fixed Payment
cme_futures_streamlined_sbe_v5_8_dissect.fixed_payment = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fixed_payment then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.fixed_payment(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.fixed_payment(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.fixed_payment, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.fixed_payment_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Min Price Increment Optional
cme_futures_streamlined_sbe_v5_8_size_of.min_price_increment_optional = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Min Price Increment Optional
cme_futures_streamlined_sbe_v5_8_display.min_price_increment_optional = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Min Price Increment Optional
cme_futures_streamlined_sbe_v5_8_dissect.min_price_increment_optional_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Min Price Increment Optional
cme_futures_streamlined_sbe_v5_8_dissect.min_price_increment_optional = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.min_price_increment_optional then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.min_price_increment_optional(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.min_price_increment_optional(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.min_price_increment_optional, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.min_price_increment_optional_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Fed Funds Rate
cme_futures_streamlined_sbe_v5_8_size_of.fed_funds_rate = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Fed Funds Rate
cme_futures_streamlined_sbe_v5_8_display.fed_funds_rate = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fed Funds Rate
cme_futures_streamlined_sbe_v5_8_dissect.fed_funds_rate_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Fed Funds Rate
cme_futures_streamlined_sbe_v5_8_dissect.fed_funds_rate = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fed_funds_rate then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.fed_funds_rate(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.fed_funds_rate(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.fed_funds_rate, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.fed_funds_rate_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Eris Pai
cme_futures_streamlined_sbe_v5_8_size_of.eris_pai = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Eris Pai
cme_futures_streamlined_sbe_v5_8_display.eris_pai = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Eris Pai
cme_futures_streamlined_sbe_v5_8_dissect.eris_pai_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Eris Pai
cme_futures_streamlined_sbe_v5_8_dissect.eris_pai = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.eris_pai then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.eris_pai(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.eris_pai(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.eris_pai, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.eris_pai_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Daily Incremental Eris Pai
cme_futures_streamlined_sbe_v5_8_size_of.daily_incremental_eris_pai = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Daily Incremental Eris Pai
cme_futures_streamlined_sbe_v5_8_display.daily_incremental_eris_pai = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Daily Incremental Eris Pai
cme_futures_streamlined_sbe_v5_8_dissect.daily_incremental_eris_pai_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Daily Incremental Eris Pai
cme_futures_streamlined_sbe_v5_8_dissect.daily_incremental_eris_pai = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.daily_incremental_eris_pai then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.daily_incremental_eris_pai(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.daily_incremental_eris_pai(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.daily_incremental_eris_pai, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.daily_incremental_eris_pai_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Accrued Coupons
cme_futures_streamlined_sbe_v5_8_size_of.accrued_coupons = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Accrued Coupons
cme_futures_streamlined_sbe_v5_8_display.accrued_coupons = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Accrued Coupons
cme_futures_streamlined_sbe_v5_8_dissect.accrued_coupons_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Accrued Coupons
cme_futures_streamlined_sbe_v5_8_dissect.accrued_coupons = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.accrued_coupons then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.accrued_coupons(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.accrued_coupons(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.accrued_coupons, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.accrued_coupons_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Npv
cme_futures_streamlined_sbe_v5_8_size_of.npv = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Npv
cme_futures_streamlined_sbe_v5_8_display.npv = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Npv
cme_futures_streamlined_sbe_v5_8_dissect.npv_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Npv
cme_futures_streamlined_sbe_v5_8_dissect.npv = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.npv then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.npv(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.npv(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.npv, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.npv_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Float Npv
cme_futures_streamlined_sbe_v5_8_size_of.float_npv = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Float Npv
cme_futures_streamlined_sbe_v5_8_display.float_npv = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Float Npv
cme_futures_streamlined_sbe_v5_8_dissect.float_npv_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Float Npv
cme_futures_streamlined_sbe_v5_8_dissect.float_npv = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.float_npv then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.float_npv(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.float_npv(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.float_npv, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.float_npv_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Fixed Npv
cme_futures_streamlined_sbe_v5_8_size_of.fixed_npv = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Fixed Npv
cme_futures_streamlined_sbe_v5_8_display.fixed_npv = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fixed Npv
cme_futures_streamlined_sbe_v5_8_dissect.fixed_npv_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Fixed Npv
cme_futures_streamlined_sbe_v5_8_dissect.fixed_npv = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fixed_npv then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.fixed_npv(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.fixed_npv(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.fixed_npv, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.fixed_npv_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Leg Purchase Rate
cme_futures_streamlined_sbe_v5_8_size_of.leg_purchase_rate = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Leg Purchase Rate
cme_futures_streamlined_sbe_v5_8_display.leg_purchase_rate = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Leg Purchase Rate
cme_futures_streamlined_sbe_v5_8_dissect.leg_purchase_rate_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Leg Purchase Rate
cme_futures_streamlined_sbe_v5_8_dissect.leg_purchase_rate = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.leg_purchase_rate then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.leg_purchase_rate(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.leg_purchase_rate(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.leg_purchase_rate, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.leg_purchase_rate_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Fair Coupon Pct
cme_futures_streamlined_sbe_v5_8_size_of.fair_coupon_pct = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Fair Coupon Pct
cme_futures_streamlined_sbe_v5_8_display.fair_coupon_pct = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fair Coupon Pct
cme_futures_streamlined_sbe_v5_8_dissect.fair_coupon_pct_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Fair Coupon Pct
cme_futures_streamlined_sbe_v5_8_dissect.fair_coupon_pct = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fair_coupon_pct then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.fair_coupon_pct(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.fair_coupon_pct(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.fair_coupon_pct, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.fair_coupon_pct_fields(buffer, offset, packet, parent)
end

-- Size: Mantissa 32
cme_futures_streamlined_sbe_v5_8_size_of.mantissa_32 = 4

-- Display: Mantissa 32
cme_futures_streamlined_sbe_v5_8_display.mantissa_32 = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Mantissa 32: No Value"
  end

  return "Mantissa 32: "..value
end

-- Dissect: Mantissa 32
cme_futures_streamlined_sbe_v5_8_dissect.mantissa_32 = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.mantissa_32
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.mantissa_32(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.mantissa_32, range, value, display)

  return offset + length, value
end

-- Calculate size of: Coupon Rate Optional
cme_futures_streamlined_sbe_v5_8_size_of.coupon_rate_optional = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa_32

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Coupon Rate Optional
cme_futures_streamlined_sbe_v5_8_display.coupon_rate_optional = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Coupon Rate Optional
cme_futures_streamlined_sbe_v5_8_dissect.coupon_rate_optional_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_32 = cme_futures_streamlined_sbe_v5_8_dissect.mantissa_32(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa_32, exponent
end

-- Dissect: Coupon Rate Optional
cme_futures_streamlined_sbe_v5_8_dissect.coupon_rate_optional = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.coupon_rate_optional then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.coupon_rate_optional(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.coupon_rate_optional(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.coupon_rate_optional, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.coupon_rate_optional_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cal Fut Px Optional
cme_futures_streamlined_sbe_v5_8_size_of.cal_fut_px_optional = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Cal Fut Px Optional
cme_futures_streamlined_sbe_v5_8_display.cal_fut_px_optional = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cal Fut Px Optional
cme_futures_streamlined_sbe_v5_8_dissect.cal_fut_px_optional_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Cal Fut Px Optional
cme_futures_streamlined_sbe_v5_8_dissect.cal_fut_px_optional = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cal_fut_px_optional then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.cal_fut_px_optional(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.cal_fut_px_optional(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.cal_fut_px_optional, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.cal_fut_px_optional_fields(buffer, offset, packet, parent)
end

-- Size: Settl Price Type
cme_futures_streamlined_sbe_v5_8_size_of.settl_price_type = 1

-- Display: Settl Price Type
cme_futures_streamlined_sbe_v5_8_display.settl_price_type = function(buffer, packet, parent)
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
cme_futures_streamlined_sbe_v5_8_dissect.settl_price_type_bits = function(buffer, offset, packet, parent)

  -- Null Value: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.null_value, buffer(offset, 1))

  -- Reserved Bits: 4 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.reserved_bits, buffer(offset, 1))

  -- Rounded: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.rounded, buffer(offset, 1))

  -- Actual: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.actual, buffer(offset, 1))

  -- Final: 1 Bit
  parent:add(cme_futures_streamlined_sbe_v5_8.fields.final, buffer(offset, 1))
end

-- Dissect: Settl Price Type
cme_futures_streamlined_sbe_v5_8_dissect.settl_price_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_streamlined_sbe_v5_8_display.settl_price_type(range, packet, parent)
  local element = parent:add(cme_futures_streamlined_sbe_v5_8.fields.settl_price_type, range, display)

  if show.settl_price_type then
    cme_futures_streamlined_sbe_v5_8_dissect.settl_price_type_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Md Entry Px Decimal Optional
cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_decimal_optional = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.mantissa

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.exponent

  return index
end

-- Display: Md Entry Px Decimal Optional
cme_futures_streamlined_sbe_v5_8_display.md_entry_px_decimal_optional = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Entry Px Decimal Optional
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_decimal_optional_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_streamlined_sbe_v5_8_dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_streamlined_sbe_v5_8_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Md Entry Px Decimal Optional
cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_decimal_optional = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_entry_px_decimal_optional then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_decimal_optional(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_entry_px_decimal_optional(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_entry_px_decimal_optional, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_decimal_optional_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Eris Reference Data And Daily Statistics Group
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_update_action_char

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.rpt_seq

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_px_decimal_optional(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.open_close_settl_flag

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.settl_price_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.cal_fut_px_optional(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.reference_id_50

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.md_entry_size_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.symbol

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_group_26

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.product_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_type

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_exchange

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.maturity_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.coupon_rate_optional(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.trade_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.fair_coupon_pct(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_purchase_rate(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.fixed_npv(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.float_npv(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.npv(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.accrued_coupons(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.daily_incremental_eris_pai(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.eris_pai(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.fed_funds_rate(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.min_price_increment_optional(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.fixed_payment(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.floating_payment(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.next_fixed_payment_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.next_fixed_payment_amount(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.next_floating_payment_amount(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.trading_reference_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.previous_eris_pai(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.fed_funds_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.accrual_days

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.nominal

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_credit_rating

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.leg_contract_multiplier(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.next_floating_payment_date

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.p_v_01(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.d_v_01(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.settlement_npv(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.final_settlement_futures_price(buffer, offset + index)

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.security_description

  return index
end

-- Display: M D Incremental Refresh Eris Reference Data And Daily Statistics Group
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris Reference Data And Daily Statistics Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Update Action Char: 1 Byte Ascii String
  index, md_update_action_char = cme_futures_streamlined_sbe_v5_8_dissect.md_update_action_char(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String
  index, md_entry_type = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_type(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_streamlined_sbe_v5_8_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px Decimal Optional: Struct of 2 fields
  index, md_entry_px_decimal_optional = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_px_decimal_optional(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, open_close_settl_flag = cme_futures_streamlined_sbe_v5_8_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 5 fields
  index, settl_price_type = cme_futures_streamlined_sbe_v5_8_dissect.settl_price_type(buffer, index, packet, parent)

  -- Cal Fut Px Optional: Struct of 2 fields
  index, cal_fut_px_optional = cme_futures_streamlined_sbe_v5_8_dissect.cal_fut_px_optional(buffer, index, packet, parent)

  -- Reference Id 50: 50 Byte Ascii String Nullable
  index, reference_id_50 = cme_futures_streamlined_sbe_v5_8_dissect.reference_id_50(buffer, index, packet, parent)

  -- Md Entry Size Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_streamlined_sbe_v5_8_dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String Nullable
  index, symbol = cme_futures_streamlined_sbe_v5_8_dissect.symbol(buffer, index, packet, parent)

  -- Security Group 26: 26 Byte Ascii String Nullable
  index, security_group_26 = cme_futures_streamlined_sbe_v5_8_dissect.security_group_26(buffer, index, packet, parent)

  -- Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, product_optional = cme_futures_streamlined_sbe_v5_8_dissect.product_optional(buffer, index, packet, parent)

  -- Security Type: 9 Byte Ascii String Nullable
  index, security_type = cme_futures_streamlined_sbe_v5_8_dissect.security_type(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_streamlined_sbe_v5_8_dissect.security_exchange(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_streamlined_sbe_v5_8_dissect.maturity_date(buffer, index, packet, parent)

  -- Coupon Rate Optional: Struct of 2 fields
  index, coupon_rate_optional = cme_futures_streamlined_sbe_v5_8_dissect.coupon_rate_optional(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_streamlined_sbe_v5_8_dissect.trade_date(buffer, index, packet, parent)

  -- Fair Coupon Pct: Struct of 2 fields
  index, fair_coupon_pct = cme_futures_streamlined_sbe_v5_8_dissect.fair_coupon_pct(buffer, index, packet, parent)

  -- Leg Purchase Rate: Struct of 2 fields
  index, leg_purchase_rate = cme_futures_streamlined_sbe_v5_8_dissect.leg_purchase_rate(buffer, index, packet, parent)

  -- Fixed Npv: Struct of 2 fields
  index, fixed_npv = cme_futures_streamlined_sbe_v5_8_dissect.fixed_npv(buffer, index, packet, parent)

  -- Float Npv: Struct of 2 fields
  index, float_npv = cme_futures_streamlined_sbe_v5_8_dissect.float_npv(buffer, index, packet, parent)

  -- Npv: Struct of 2 fields
  index, npv = cme_futures_streamlined_sbe_v5_8_dissect.npv(buffer, index, packet, parent)

  -- Accrued Coupons: Struct of 2 fields
  index, accrued_coupons = cme_futures_streamlined_sbe_v5_8_dissect.accrued_coupons(buffer, index, packet, parent)

  -- Daily Incremental Eris Pai: Struct of 2 fields
  index, daily_incremental_eris_pai = cme_futures_streamlined_sbe_v5_8_dissect.daily_incremental_eris_pai(buffer, index, packet, parent)

  -- Eris Pai: Struct of 2 fields
  index, eris_pai = cme_futures_streamlined_sbe_v5_8_dissect.eris_pai(buffer, index, packet, parent)

  -- Fed Funds Rate: Struct of 2 fields
  index, fed_funds_rate = cme_futures_streamlined_sbe_v5_8_dissect.fed_funds_rate(buffer, index, packet, parent)

  -- Min Price Increment Optional: Struct of 2 fields
  index, min_price_increment_optional = cme_futures_streamlined_sbe_v5_8_dissect.min_price_increment_optional(buffer, index, packet, parent)

  -- Fixed Payment: Struct of 2 fields
  index, fixed_payment = cme_futures_streamlined_sbe_v5_8_dissect.fixed_payment(buffer, index, packet, parent)

  -- Floating Payment: Struct of 2 fields
  index, floating_payment = cme_futures_streamlined_sbe_v5_8_dissect.floating_payment(buffer, index, packet, parent)

  -- Next Fixed Payment Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, next_fixed_payment_date = cme_futures_streamlined_sbe_v5_8_dissect.next_fixed_payment_date(buffer, index, packet, parent)

  -- Next Fixed Payment Amount: Struct of 2 fields
  index, next_fixed_payment_amount = cme_futures_streamlined_sbe_v5_8_dissect.next_fixed_payment_amount(buffer, index, packet, parent)

  -- Next Floating Payment Amount: Struct of 2 fields
  index, next_floating_payment_amount = cme_futures_streamlined_sbe_v5_8_dissect.next_floating_payment_amount(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_streamlined_sbe_v5_8_dissect.trading_reference_date(buffer, index, packet, parent)

  -- Previous Eris Pai: Struct of 2 fields
  index, previous_eris_pai = cme_futures_streamlined_sbe_v5_8_dissect.previous_eris_pai(buffer, index, packet, parent)

  -- Fed Funds Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, fed_funds_date = cme_futures_streamlined_sbe_v5_8_dissect.fed_funds_date(buffer, index, packet, parent)

  -- Accrual Days: 4 Byte Unsigned Fixed Width Integer Nullable
  index, accrual_days = cme_futures_streamlined_sbe_v5_8_dissect.accrual_days(buffer, index, packet, parent)

  -- Nominal: 8 Byte Unsigned Fixed Width Integer Nullable
  index, nominal = cme_futures_streamlined_sbe_v5_8_dissect.nominal(buffer, index, packet, parent)

  -- Leg Credit Rating: 6 Byte Ascii String Nullable
  index, leg_credit_rating = cme_futures_streamlined_sbe_v5_8_dissect.leg_credit_rating(buffer, index, packet, parent)

  -- Leg Contract Multiplier: Struct of 2 fields
  index, leg_contract_multiplier = cme_futures_streamlined_sbe_v5_8_dissect.leg_contract_multiplier(buffer, index, packet, parent)

  -- Next Floating Payment Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, next_floating_payment_date = cme_futures_streamlined_sbe_v5_8_dissect.next_floating_payment_date(buffer, index, packet, parent)

  -- P V 01: Struct of 2 fields
  index, p_v_01 = cme_futures_streamlined_sbe_v5_8_dissect.p_v_01(buffer, index, packet, parent)

  -- D V 01: Struct of 2 fields
  index, d_v_01 = cme_futures_streamlined_sbe_v5_8_dissect.d_v_01(buffer, index, packet, parent)

  -- Settlement Npv: Struct of 2 fields
  index, settlement_npv = cme_futures_streamlined_sbe_v5_8_dissect.settlement_npv(buffer, index, packet, parent)

  -- Final Settlement Futures Price: Struct of 2 fields
  index, final_settlement_futures_price = cme_futures_streamlined_sbe_v5_8_dissect.final_settlement_futures_price(buffer, index, packet, parent)

  -- Security Description: 30 Byte Ascii String Nullable
  index, security_description = cme_futures_streamlined_sbe_v5_8_dissect.security_description(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Eris Reference Data And Daily Statistics Group
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Eris Reference Data And Daily Statistics Groups
cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group_count * 419

  return index
end

-- Display: M D Incremental Refresh Eris Reference Data And Daily Statistics Groups
cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Eris Reference Data And Daily Statistics Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_streamlined_sbe_v5_8_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Eris Reference Data And Daily Statistics Group: Struct of 45 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Eris Reference Data And Daily Statistics Groups
cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Eris Reference Data And Daily Statistics
cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_eris_reference_data_and_daily_statistics = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.transact_time

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.match_event_indicator

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.batch_total_messages_optional

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Eris Reference Data And Daily Statistics
cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_eris_reference_data_and_daily_statistics = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Eris Reference Data And Daily Statistics
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_streamlined_sbe_v5_8_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_streamlined_sbe_v5_8_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, batch_total_messages_optional = cme_futures_streamlined_sbe_v5_8_dissect.batch_total_messages_optional(buffer, index, packet, parent)

  -- M D Incremental Refresh Eris Reference Data And Daily Statistics Groups: Struct of 2 fields
  index, m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups = cme_futures_streamlined_sbe_v5_8_dissect.m_d_incremental_refresh_eris_reference_data_and_daily_statistics_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Eris Reference Data And Daily Statistics
cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris_reference_data_and_daily_statistics then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_eris_reference_data_and_daily_statistics(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.md_incremental_refresh_eris_reference_data_and_daily_statistics(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.md_incremental_refresh_eris_reference_data_and_daily_statistics, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics_fields(buffer, offset, packet, parent)
end

-- Size: Text
cme_futures_streamlined_sbe_v5_8_size_of.text = 180

-- Display: Text
cme_futures_streamlined_sbe_v5_8_display.text = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cme_futures_streamlined_sbe_v5_8_dissect.text = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.text
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

  local display = cme_futures_streamlined_sbe_v5_8_display.text(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: Admin Logout
cme_futures_streamlined_sbe_v5_8_size_of.admin_logout = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.text

  return index
end

-- Display: Admin Logout
cme_futures_streamlined_sbe_v5_8_display.admin_logout = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Admin Logout
cme_futures_streamlined_sbe_v5_8_dissect.admin_logout_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 180 Byte Ascii String
  index, text = cme_futures_streamlined_sbe_v5_8_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Logout
cme_futures_streamlined_sbe_v5_8_dissect.admin_logout = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.admin_logout then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.admin_logout(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.admin_logout(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.admin_logout, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.admin_logout_fields(buffer, offset, packet, parent)
end

-- Size: Heart Bt Int
cme_futures_streamlined_sbe_v5_8_size_of.heart_bt_int = 1

-- Display: Heart Bt Int
cme_futures_streamlined_sbe_v5_8_display.heart_bt_int = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
cme_futures_streamlined_sbe_v5_8_dissect.heart_bt_int = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.heart_bt_int
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_streamlined_sbe_v5_8_display.heart_bt_int(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Calculate size of: Admin Login
cme_futures_streamlined_sbe_v5_8_size_of.admin_login = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.heart_bt_int

  return index
end

-- Display: Admin Login
cme_futures_streamlined_sbe_v5_8_display.admin_login = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Admin Login
cme_futures_streamlined_sbe_v5_8_dissect.admin_login_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heart Bt Int: 1 Byte Signed Fixed Width Integer
  index, heart_bt_int = cme_futures_streamlined_sbe_v5_8_dissect.heart_bt_int(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Login
cme_futures_streamlined_sbe_v5_8_dissect.admin_login = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.admin_login then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.admin_login(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.admin_login(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.admin_login, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.admin_login_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
cme_futures_streamlined_sbe_v5_8_size_of.payload = function(buffer, offset, template_id)
  -- Size of Admin Heartbeat
  if template_id == 312 then
    return 0
  end
  -- Size of Admin Login
  if template_id == 315 then
    return cme_futures_streamlined_sbe_v5_8_size_of.admin_login(buffer, offset)
  end
  -- Size of Admin Logout
  if template_id == 316 then
    return cme_futures_streamlined_sbe_v5_8_size_of.admin_logout(buffer, offset)
  end
  -- Size of Md Incremental Refresh Eris Reference Data And Daily Statistics
  if template_id == 333 then
    return cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_eris_reference_data_and_daily_statistics(buffer, offset)
  end
  -- Size of Md News Indices
  if template_id == 339 then
    return cme_futures_streamlined_sbe_v5_8_size_of.md_news_indices(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Blocks No Date
  if template_id == 340 then
    return cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_trade_blocks_no_date(buffer, offset)
  end
  -- Size of Quote Request
  if template_id == 345 then
    return cme_futures_streamlined_sbe_v5_8_size_of.quote_request(buffer, offset)
  end
  -- Size of Md Instrument Definition Indices
  if template_id == 347 then
    return cme_futures_streamlined_sbe_v5_8_size_of.md_instrument_definition_indices(buffer, offset)
  end
  -- Size of Md Incremental Refresh Indices
  if template_id == 348 then
    return cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_indices(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Blocks
  if template_id == 349 then
    return cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_trade_blocks(buffer, offset)
  end
  -- Size of Md Incremental Refresh Eris No Quote
  if template_id == 351 then
    return cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_eris_no_quote(buffer, offset)
  end
  -- Size of Md Incremental Refresh Eris
  if template_id == 353 then
    return cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_eris(buffer, offset)
  end
  -- Size of Md Incremental Refresh Otc
  if template_id == 356 then
    return cme_futures_streamlined_sbe_v5_8_size_of.md_incremental_refresh_otc(buffer, offset)
  end
  -- Size of Md Instrument Definition Eris
  if template_id == 363 then
    return cme_futures_streamlined_sbe_v5_8_size_of.md_instrument_definition_eris(buffer, offset)
  end

  return 0
end

-- Display: Payload
cme_futures_streamlined_sbe_v5_8_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_futures_streamlined_sbe_v5_8_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Admin Heartbeat
  if template_id == 312 then
  end
  -- Dissect Admin Login
  if template_id == 315 then
    return cme_futures_streamlined_sbe_v5_8_dissect.admin_login(buffer, offset, packet, parent)
  end
  -- Dissect Admin Logout
  if template_id == 316 then
    return cme_futures_streamlined_sbe_v5_8_dissect.admin_logout(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Eris Reference Data And Daily Statistics
  if template_id == 333 then
    return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics(buffer, offset, packet, parent)
  end
  -- Dissect Md News Indices
  if template_id == 339 then
    return cme_futures_streamlined_sbe_v5_8_dissect.md_news_indices(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Blocks No Date
  if template_id == 340 then
    return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_trade_blocks_no_date(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 345 then
    return cme_futures_streamlined_sbe_v5_8_dissect.quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Indices
  if template_id == 347 then
    return cme_futures_streamlined_sbe_v5_8_dissect.md_instrument_definition_indices(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Indices
  if template_id == 348 then
    return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_indices(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Blocks
  if template_id == 349 then
    return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_trade_blocks(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Eris No Quote
  if template_id == 351 then
    return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris_no_quote(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Eris
  if template_id == 353 then
    return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_eris(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Otc
  if template_id == 356 then
    return cme_futures_streamlined_sbe_v5_8_dissect.md_incremental_refresh_otc(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Eris
  if template_id == 363 then
    return cme_futures_streamlined_sbe_v5_8_dissect.md_instrument_definition_eris(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cme_futures_streamlined_sbe_v5_8_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_futures_streamlined_sbe_v5_8_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_futures_streamlined_sbe_v5_8_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_futures_streamlined_sbe_v5_8_display.payload(buffer, packet, parent)
  local element = parent:add(cme_futures_streamlined_sbe_v5_8.fields.payload, range, display)

  return cme_futures_streamlined_sbe_v5_8_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
cme_futures_streamlined_sbe_v5_8_size_of.version = 2

-- Display: Version
cme_futures_streamlined_sbe_v5_8_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_futures_streamlined_sbe_v5_8_dissect.version = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.version(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
cme_futures_streamlined_sbe_v5_8_size_of.schema_id = 2

-- Display: Schema Id
cme_futures_streamlined_sbe_v5_8_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_futures_streamlined_sbe_v5_8_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
cme_futures_streamlined_sbe_v5_8_size_of.template_id = 2

-- Display: Template Id
cme_futures_streamlined_sbe_v5_8_display.template_id = function(value)
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
cme_futures_streamlined_sbe_v5_8_dissect.template_id = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.template_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.template_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cme_futures_streamlined_sbe_v5_8_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.block_length

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.template_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.schema_id

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.version

  return index
end

-- Display: Message Header
cme_futures_streamlined_sbe_v5_8_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
cme_futures_streamlined_sbe_v5_8_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_streamlined_sbe_v5_8_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, template_id = cme_futures_streamlined_sbe_v5_8_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_futures_streamlined_sbe_v5_8_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_futures_streamlined_sbe_v5_8_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_futures_streamlined_sbe_v5_8_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.message_header(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.message_header, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size: Message Size
cme_futures_streamlined_sbe_v5_8_size_of.message_size = 2

-- Display: Message Size
cme_futures_streamlined_sbe_v5_8_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_futures_streamlined_sbe_v5_8_dissect.message_size = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.message_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
cme_futures_streamlined_sbe_v5_8_size_of.message = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.message_size

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + cme_futures_streamlined_sbe_v5_8_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cme_futures_streamlined_sbe_v5_8_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
cme_futures_streamlined_sbe_v5_8_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_futures_streamlined_sbe_v5_8_dissect.message_size(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_futures_streamlined_sbe_v5_8_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 14 branches
  index = cme_futures_streamlined_sbe_v5_8_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_futures_streamlined_sbe_v5_8_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.message(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.message, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sending Time
cme_futures_streamlined_sbe_v5_8_size_of.sending_time = 8

-- Display: Sending Time
cme_futures_streamlined_sbe_v5_8_display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
cme_futures_streamlined_sbe_v5_8_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_streamlined_sbe_v5_8_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Message Sequence Number
cme_futures_streamlined_sbe_v5_8_size_of.message_sequence_number = 4

-- Display: Message Sequence Number
cme_futures_streamlined_sbe_v5_8_display.message_sequence_number = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_futures_streamlined_sbe_v5_8_dissect.message_sequence_number = function(buffer, offset, packet, parent)
  local length = cme_futures_streamlined_sbe_v5_8_size_of.message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_streamlined_sbe_v5_8_display.message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cme_futures_streamlined_sbe_v5_8.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Binary Packet Header
cme_futures_streamlined_sbe_v5_8_size_of.binary_packet_header = function(buffer, offset)
  local index = 0

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.message_sequence_number

  index = index + cme_futures_streamlined_sbe_v5_8_size_of.sending_time

  return index
end

-- Display: Binary Packet Header
cme_futures_streamlined_sbe_v5_8_display.binary_packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_futures_streamlined_sbe_v5_8_dissect.binary_packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_futures_streamlined_sbe_v5_8_dissect.message_sequence_number(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_futures_streamlined_sbe_v5_8_dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_futures_streamlined_sbe_v5_8_dissect.binary_packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.binary_packet_header then
    local length = cme_futures_streamlined_sbe_v5_8_size_of.binary_packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_streamlined_sbe_v5_8_display.binary_packet_header(buffer, packet, parent)
    parent = parent:add(cme_futures_streamlined_sbe_v5_8.fields.binary_packet_header, range, display)
  end

  return cme_futures_streamlined_sbe_v5_8_dissect.binary_packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
cme_futures_streamlined_sbe_v5_8_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_futures_streamlined_sbe_v5_8_dissect.binary_packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index = cme_futures_streamlined_sbe_v5_8_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cme_futures_streamlined_sbe_v5_8.init()
end

-- Dissector for Cme Futures Streamlined Sbe 5.8
function cme_futures_streamlined_sbe_v5_8.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cme_futures_streamlined_sbe_v5_8.name

  -- Dissect protocol
  local protocol = parent:add(cme_futures_streamlined_sbe_v5_8, buffer(), cme_futures_streamlined_sbe_v5_8.description, "("..buffer:len().." Bytes)")
  return cme_futures_streamlined_sbe_v5_8_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cme_futures_streamlined_sbe_v5_8)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cme_futures_streamlined_sbe_v5_8_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 5 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 8 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures Streamlined Sbe 5.8
local function cme_futures_streamlined_sbe_v5_8_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cme_futures_streamlined_sbe_v5_8_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cme_futures_streamlined_sbe_v5_8
  cme_futures_streamlined_sbe_v5_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures Streamlined Sbe 5.8
cme_futures_streamlined_sbe_v5_8:register_heuristic("udp", cme_futures_streamlined_sbe_v5_8_heuristic)

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
