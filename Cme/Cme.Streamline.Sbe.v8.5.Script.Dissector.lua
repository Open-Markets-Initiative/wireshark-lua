-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Streamline Sbe 8.5 Protocol
local cme_streamline_sbe_v8_5 = Proto("Cme.Streamline.Sbe.v8.5.Lua", "Cme Streamline Sbe 8.5")

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

-- Cme Streamline Sbe 8.5 Fields
cme_streamline_sbe_v8_5.fields.accrual_days = ProtoField.new("Accrual Days", "cme.streamline.sbe.v8.5.accrualdays", ftypes.UINT32)
cme_streamline_sbe_v8_5.fields.accrued_coupons = ProtoField.new("Accrued Coupons", "cme.streamline.sbe.v8.5.accruedcoupons", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.actual = ProtoField.new("Actual", "cme.streamline.sbe.v8.5.actual", ftypes.UINT8, nil, base.DEC, "0x02")
cme_streamline_sbe_v8_5.fields.admin_login315 = ProtoField.new("Admin Login315", "cme.streamline.sbe.v8.5.adminlogin315", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.admin_logout316 = ProtoField.new("Admin Logout316", "cme.streamline.sbe.v8.5.adminlogout316", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.streamline.sbe.v8.5.aggressorside", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.appl_id = ProtoField.new("Appl Id", "cme.streamline.sbe.v8.5.applid", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.batch_total_messages = ProtoField.new("Batch Total Messages", "cme.streamline.sbe.v8.5.batchtotalmessages", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.block_length = ProtoField.new("Block Length", "cme.streamline.sbe.v8.5.blocklength", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.cal_fut_px = ProtoField.new("Cal Fut Px", "cme.streamline.sbe.v8.5.calfutpx", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.coupon_rate = ProtoField.new("Coupon Rate", "cme.streamline.sbe.v8.5.couponrate", ftypes.INT32)
cme_streamline_sbe_v8_5.fields.currency = ProtoField.new("Currency", "cme.streamline.sbe.v8.5.currency", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.daily_incremental_eris_pai = ProtoField.new("Daily Incremental Eris Pai", "cme.streamline.sbe.v8.5.dailyincrementalerispai", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.day = ProtoField.new("Day", "cme.streamline.sbe.v8.5.day", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.dv01 = ProtoField.new("Dv01", "cme.streamline.sbe.v8.5.dv01", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.end_of_event = ProtoField.new("End Of Event", "cme.streamline.sbe.v8.5.endofevent", ftypes.UINT8, nil, base.DEC, "0x80")
cme_streamline_sbe_v8_5.fields.eris_pai = ProtoField.new("Eris Pai", "cme.streamline.sbe.v8.5.erispai", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.event_time = ProtoField.new("Event Time", "cme.streamline.sbe.v8.5.eventtime", ftypes.UINT64)
cme_streamline_sbe_v8_5.fields.event_type = ProtoField.new("Event Type", "cme.streamline.sbe.v8.5.eventtype", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.events_group = ProtoField.new("Events Group", "cme.streamline.sbe.v8.5.eventsgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.events_groups = ProtoField.new("Events Groups", "cme.streamline.sbe.v8.5.eventsgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.fair_coupon_pct = ProtoField.new("Fair Coupon Pct", "cme.streamline.sbe.v8.5.faircouponpct", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.fed_funds_date = ProtoField.new("Fed Funds Date", "cme.streamline.sbe.v8.5.fedfundsdate", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.fed_funds_rate = ProtoField.new("Fed Funds Rate", "cme.streamline.sbe.v8.5.fedfundsrate", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.final = ProtoField.new("Final", "cme.streamline.sbe.v8.5.final", ftypes.UINT8, nil, base.DEC, "0x01")
cme_streamline_sbe_v8_5.fields.final_settlement_futures_price = ProtoField.new("Final Settlement Futures Price", "cme.streamline.sbe.v8.5.finalsettlementfuturesprice", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.fixed_npv = ProtoField.new("Fixed Npv", "cme.streamline.sbe.v8.5.fixednpv", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.fixed_payment = ProtoField.new("Fixed Payment", "cme.streamline.sbe.v8.5.fixedpayment", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.float_npv = ProtoField.new("Float Npv", "cme.streamline.sbe.v8.5.floatnpv", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.floating_payment = ProtoField.new("Floating Payment", "cme.streamline.sbe.v8.5.floatingpayment", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.group_size = ProtoField.new("Group Size", "cme.streamline.sbe.v8.5.groupsize", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "cme.streamline.sbe.v8.5.groupsizeencoding", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.headline = ProtoField.new("Headline", "cme.streamline.sbe.v8.5.headline", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "cme.streamline.sbe.v8.5.heartbtint", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_streamline_sbe_v8_5.fields.inst_attrib_group = ProtoField.new("Inst Attrib Group", "cme.streamline.sbe.v8.5.instattribgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.inst_attrib_groups = ProtoField.new("Inst Attrib Groups", "cme.streamline.sbe.v8.5.instattribgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.inst_attrib_type = ProtoField.new("Inst Attrib Type", "cme.streamline.sbe.v8.5.instattribtype", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "cme.streamline.sbe.v8.5.instattribvalue", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.interpolation_factor = ProtoField.new("Interpolation Factor", "cme.streamline.sbe.v8.5.interpolationfactor", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "cme.streamline.sbe.v8.5.lastimpliedmsg", ftypes.UINT8, nil, base.DEC, "0x10")
cme_streamline_sbe_v8_5.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "cme.streamline.sbe.v8.5.lastquotemsg", ftypes.UINT8, nil, base.DEC, "0x04")
cme_streamline_sbe_v8_5.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "cme.streamline.sbe.v8.5.laststatsmsg", ftypes.UINT8, nil, base.DEC, "0x08")
cme_streamline_sbe_v8_5.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "cme.streamline.sbe.v8.5.lasttrademsg", ftypes.UINT8, nil, base.DEC, "0x01")
cme_streamline_sbe_v8_5.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "cme.streamline.sbe.v8.5.lastvolumemsg", ftypes.UINT8, nil, base.DEC, "0x02")
cme_streamline_sbe_v8_5.fields.leg_benchmark_curve_name = ProtoField.new("Leg Benchmark Curve Name", "cme.streamline.sbe.v8.5.legbenchmarkcurvename", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.leg_contract_multiplier = ProtoField.new("Leg Contract Multiplier", "cme.streamline.sbe.v8.5.legcontractmultiplier", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.leg_credit_rating = ProtoField.new("Leg Credit Rating", "cme.streamline.sbe.v8.5.legcreditrating", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.leg_currency = ProtoField.new("Leg Currency", "cme.streamline.sbe.v8.5.legcurrency", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.leg_date_offset = ProtoField.new("Leg Date Offset", "cme.streamline.sbe.v8.5.legdateoffset", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_streamline_sbe_v8_5.fields.leg_pay_frequencey = ProtoField.new("Leg Pay Frequencey", "cme.streamline.sbe.v8.5.legpayfrequencey", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.leg_purchase_rate = ProtoField.new("Leg Purchase Rate", "cme.streamline.sbe.v8.5.legpurchaserate", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.streamline.sbe.v8.5.legratioqty", ftypes.INT32)
cme_streamline_sbe_v8_5.fields.leg_ref_id = ProtoField.new("Leg Ref Id", "cme.streamline.sbe.v8.5.legrefid", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.leg_security_group = ProtoField.new("Leg Security Group", "cme.streamline.sbe.v8.5.legsecuritygroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.leg_security_type = ProtoField.new("Leg Security Type", "cme.streamline.sbe.v8.5.legsecuritytype", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.leg_side = ProtoField.new("Leg Side", "cme.streamline.sbe.v8.5.legside", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.leg_symbol = ProtoField.new("Leg Symbol", "cme.streamline.sbe.v8.5.legsymbol", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.legs_group = ProtoField.new("Legs Group", "cme.streamline.sbe.v8.5.legsgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.legs_groups = ProtoField.new("Legs Groups", "cme.streamline.sbe.v8.5.legsgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.lines_of_text_group = ProtoField.new("Lines Of Text Group", "cme.streamline.sbe.v8.5.linesoftextgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.lines_of_text_groups = ProtoField.new("Lines Of Text Groups", "cme.streamline.sbe.v8.5.linesoftextgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.market_depth = ProtoField.new("Market Depth", "cme.streamline.sbe.v8.5.marketdepth", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.market_sector = ProtoField.new("Market Sector", "cme.streamline.sbe.v8.5.marketsector", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "cme.streamline.sbe.v8.5.matcheventindicator", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.maturity_date = ProtoField.new("Maturity Date", "cme.streamline.sbe.v8.5.maturitydate", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.streamline.sbe.v8.5.maturitymonthyear", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_entry_code = ProtoField.new("Md Entry Code", "cme.streamline.sbe.v8.5.mdentrycode", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.md_entry_date = ProtoField.new("Md Entry Date", "cme.streamline.sbe.v8.5.mdentrydate", ftypes.INT32)
cme_streamline_sbe_v8_5.fields.md_entry_id = ProtoField.new("Md Entry Id", "cme.streamline.sbe.v8.5.mdentryid", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_entry_position_no = ProtoField.new("Md Entry Position No", "cme.streamline.sbe.v8.5.mdentrypositionno", ftypes.INT32)
cme_streamline_sbe_v8_5.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.streamline.sbe.v8.5.mdentrypx", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.streamline.sbe.v8.5.mdentrysize", ftypes.UINT64)
cme_streamline_sbe_v8_5.fields.md_entry_time = ProtoField.new("Md Entry Time", "cme.streamline.sbe.v8.5.mdentrytime", ftypes.INT32)
cme_streamline_sbe_v8_5.fields.md_entry_type = ProtoField.new("Md Entry Type", "cme.streamline.sbe.v8.5.mdentrytype", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_feed_type = ProtoField.new("Md Feed Type", "cme.streamline.sbe.v8.5.mdfeedtype", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_feed_types_group = ProtoField.new("MD Feed Types Group", "cme.streamline.sbe.v8.5.mdfeedtypesgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_feed_types_groups = ProtoField.new("MD Feed Types Groups", "cme.streamline.sbe.v8.5.mdfeedtypesgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris_group = ProtoField.new("MD Incremental Refresh Eris Group", "cme.streamline.sbe.v8.5.mdincrementalrefresherisgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris_groups = ProtoField.new("MD Incremental Refresh Eris Groups", "cme.streamline.sbe.v8.5.mdincrementalrefresherisgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris_reference_data_and_daily_statistics_group = ProtoField.new("MD Incremental Refresh Eris Reference Data And Daily Statistics Group", "cme.streamline.sbe.v8.5.mdincrementalrefresherisreferencedataanddailystatisticsgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups = ProtoField.new("MD Incremental Refresh Eris Reference Data And Daily Statistics Groups", "cme.streamline.sbe.v8.5.mdincrementalrefresherisreferencedataanddailystatisticsgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris_reference_data_and_daily_statistics333 = ProtoField.new("Md Incremental Refresh Eris Reference Data And Daily Statistics333", "cme.streamline.sbe.v8.5.mdincrementalrefresherisreferencedataanddailystatistics333", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris351 = ProtoField.new("Md Incremental Refresh Eris351", "cme.streamline.sbe.v8.5.mdincrementalrefresheris351", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris353 = ProtoField.new("Md Incremental Refresh Eris353", "cme.streamline.sbe.v8.5.mdincrementalrefresheris353", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_indices_group = ProtoField.new("MD Incremental Refresh Indices Group", "cme.streamline.sbe.v8.5.mdincrementalrefreshindicesgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_indices_groups = ProtoField.new("MD Incremental Refresh Indices Groups", "cme.streamline.sbe.v8.5.mdincrementalrefreshindicesgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_indices348 = ProtoField.new("Md Incremental Refresh Indices348", "cme.streamline.sbe.v8.5.mdincrementalrefreshindices348", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_otc_group = ProtoField.new("MD Incremental Refresh Otc Group", "cme.streamline.sbe.v8.5.mdincrementalrefreshotcgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_otc_groups = ProtoField.new("MD Incremental Refresh Otc Groups", "cme.streamline.sbe.v8.5.mdincrementalrefreshotcgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_otc356 = ProtoField.new("Md Incremental Refresh Otc356", "cme.streamline.sbe.v8.5.mdincrementalrefreshotc356", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_trade_blocks_group = ProtoField.new("MD Incremental Refresh Trade Blocks Group", "cme.streamline.sbe.v8.5.mdincrementalrefreshtradeblocksgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_trade_blocks_groups = ProtoField.new("MD Incremental Refresh Trade Blocks Groups", "cme.streamline.sbe.v8.5.mdincrementalrefreshtradeblocksgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_trade_blocks340 = ProtoField.new("Md Incremental Refresh Trade Blocks340", "cme.streamline.sbe.v8.5.mdincrementalrefreshtradeblocks340", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_incremental_refresh_trade_blocks349 = ProtoField.new("Md Incremental Refresh Trade Blocks349", "cme.streamline.sbe.v8.5.mdincrementalrefreshtradeblocks349", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_instrument_definition_eris363 = ProtoField.new("Md Instrument Definition Eris363", "cme.streamline.sbe.v8.5.mdinstrumentdefinitioneris363", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_instrument_definition_indices347 = ProtoField.new("Md Instrument Definition Indices347", "cme.streamline.sbe.v8.5.mdinstrumentdefinitionindices347", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_news_indices339 = ProtoField.new("Md News Indices339", "cme.streamline.sbe.v8.5.mdnewsindices339", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.md_update_action = ProtoField.new("Md Update Action", "cme.streamline.sbe.v8.5.mdupdateaction", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.message = ProtoField.new("Message", "cme.streamline.sbe.v8.5.message", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.message_header = ProtoField.new("Message Header", "cme.streamline.sbe.v8.5.messageheader", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.streamline.sbe.v8.5.messagesequencenumber", ftypes.UINT32)
cme_streamline_sbe_v8_5.fields.message_size = ProtoField.new("Message Size", "cme.streamline.sbe.v8.5.messagesize", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.min_price_increment = ProtoField.new("Min Price Increment", "cme.streamline.sbe.v8.5.minpriceincrement", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.month = ProtoField.new("Month", "cme.streamline.sbe.v8.5.month", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "cme.streamline.sbe.v8.5.netchgprevday", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.net_pct_chg = ProtoField.new("Net Pct Chg", "cme.streamline.sbe.v8.5.netpctchg", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.next_fixed_payment_amount = ProtoField.new("Next Fixed Payment Amount", "cme.streamline.sbe.v8.5.nextfixedpaymentamount", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.next_fixed_payment_date = ProtoField.new("Next Fixed Payment Date", "cme.streamline.sbe.v8.5.nextfixedpaymentdate", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.next_floating_payment_amount = ProtoField.new("Next Floating Payment Amount", "cme.streamline.sbe.v8.5.nextfloatingpaymentamount", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.next_floating_payment_date = ProtoField.new("Next Floating Payment Date", "cme.streamline.sbe.v8.5.nextfloatingpaymentdate", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.nominal = ProtoField.new("Nominal", "cme.streamline.sbe.v8.5.nominal", ftypes.UINT64)
cme_streamline_sbe_v8_5.fields.notional_percentage_outstanding = ProtoField.new("Notional Percentage Outstanding", "cme.streamline.sbe.v8.5.notionalpercentageoutstanding", ftypes.INT32)
cme_streamline_sbe_v8_5.fields.npv = ProtoField.new("Npv", "cme.streamline.sbe.v8.5.npv", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.null_value = ProtoField.new("Null Value", "cme.streamline.sbe.v8.5.nullvalue", ftypes.UINT8, nil, base.DEC, "0x80")
cme_streamline_sbe_v8_5.fields.num_in_group = ProtoField.new("Num In Group", "cme.streamline.sbe.v8.5.numingroup", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.number_of_orders = ProtoField.new("Number Of Orders", "cme.streamline.sbe.v8.5.numberoforders", ftypes.INT32)
cme_streamline_sbe_v8_5.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.streamline.sbe.v8.5.openclosesettlflag", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.orig_time = ProtoField.new("Orig Time", "cme.streamline.sbe.v8.5.origtime", ftypes.UINT64)
cme_streamline_sbe_v8_5.fields.packet = ProtoField.new("Packet", "cme.streamline.sbe.v8.5.packet", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.packet_header = ProtoField.new("Packet Header", "cme.streamline.sbe.v8.5.packetheader", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.payload = ProtoField.new("Payload", "cme.streamline.sbe.v8.5.payload", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.percent_trading = ProtoField.new("Percent Trading", "cme.streamline.sbe.v8.5.percenttrading", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.previous_eris_pai = ProtoField.new("Previous Eris Pai", "cme.streamline.sbe.v8.5.previouserispai", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.previous_fixing_date = ProtoField.new("Previous Fixing Date", "cme.streamline.sbe.v8.5.previousfixingdate", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.previous_fixing_rate = ProtoField.new("Previous Fixing Rate", "cme.streamline.sbe.v8.5.previousfixingrate", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.price_type = ProtoField.new("Price Type", "cme.streamline.sbe.v8.5.pricetype", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.product = ProtoField.new("Product", "cme.streamline.sbe.v8.5.product", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_streamline_sbe_v8_5.fields.product_complex = ProtoField.new("Product Complex", "cme.streamline.sbe.v8.5.productcomplex", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.put_or_call = ProtoField.new("Put Or Call", "cme.streamline.sbe.v8.5.putorcall", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.pv01 = ProtoField.new("Pv01", "cme.streamline.sbe.v8.5.pv01", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.quote_condition = ProtoField.new("Quote Condition", "cme.streamline.sbe.v8.5.quotecondition", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.streamline.sbe.v8.5.quotereqid", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.quote_request345 = ProtoField.new("Quote Request345", "cme.streamline.sbe.v8.5.quoterequest345", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.rate_descriptor = ProtoField.new("Rate Descriptor", "cme.streamline.sbe.v8.5.ratedescriptor", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.rate_type = ProtoField.new("Rate Type", "cme.streamline.sbe.v8.5.ratetype", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.recovery_msg = ProtoField.new("Recovery Msg", "cme.streamline.sbe.v8.5.recoverymsg", ftypes.UINT8, nil, base.DEC, "0x20")
cme_streamline_sbe_v8_5.fields.reference_id = ProtoField.new("Reference Id", "cme.streamline.sbe.v8.5.referenceid", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.streamline.sbe.v8.5.relatedsymgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.streamline.sbe.v8.5.relatedsymgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.reserved = ProtoField.new("Reserved", "cme.streamline.sbe.v8.5.reserved", ftypes.UINT8, nil, base.DEC, "0x40")
cme_streamline_sbe_v8_5.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.streamline.sbe.v8.5.reservedbits", ftypes.UINT8, nil, base.DEC, "0x78")
cme_streamline_sbe_v8_5.fields.restructuring_type = ProtoField.new("Restructuring Type", "cme.streamline.sbe.v8.5.restructuringtype", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.rounded = ProtoField.new("Rounded", "cme.streamline.sbe.v8.5.rounded", ftypes.UINT8, nil, base.DEC, "0x04")
cme_streamline_sbe_v8_5.fields.rpt_seq = ProtoField.new("Rpt Seq", "cme.streamline.sbe.v8.5.rptseq", ftypes.UINT32)
cme_streamline_sbe_v8_5.fields.schema_id = ProtoField.new("Schema Id", "cme.streamline.sbe.v8.5.schemaid", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.sector_group = ProtoField.new("Sector Group", "cme.streamline.sbe.v8.5.sectorgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.sector_sub_group = ProtoField.new("Sector Sub Group", "cme.streamline.sbe.v8.5.sectorsubgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.security_alt_id = ProtoField.new("Security Alt Id", "cme.streamline.sbe.v8.5.securityaltid", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.security_alt_id_group = ProtoField.new("Security Alt Id Group", "cme.streamline.sbe.v8.5.securityaltidgroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.security_alt_id_groups = ProtoField.new("Security Alt Id Groups", "cme.streamline.sbe.v8.5.securityaltidgroups", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "cme.streamline.sbe.v8.5.securityaltidsource", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.security_description = ProtoField.new("Security Description", "cme.streamline.sbe.v8.5.securitydescription", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.security_exchange = ProtoField.new("Security Exchange", "cme.streamline.sbe.v8.5.securityexchange", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.security_group = ProtoField.new("Security Group", "cme.streamline.sbe.v8.5.securitygroup", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.security_id = ProtoField.new("Security Id", "cme.streamline.sbe.v8.5.securityid", ftypes.UINT64)
cme_streamline_sbe_v8_5.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.streamline.sbe.v8.5.securitysubtype", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.security_type = ProtoField.new("Security Type", "cme.streamline.sbe.v8.5.securitytype", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.security_update_action = ProtoField.new("Security Update Action", "cme.streamline.sbe.v8.5.securityupdateaction", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.sending_time = ProtoField.new("Sending Time", "cme.streamline.sbe.v8.5.sendingtime", ftypes.UINT64)
cme_streamline_sbe_v8_5.fields.seniority = ProtoField.new("Seniority", "cme.streamline.sbe.v8.5.seniority", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.settl_date = ProtoField.new("Settl Date", "cme.streamline.sbe.v8.5.settldate", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.streamline.sbe.v8.5.settlpricetype", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.settlement_npv = ProtoField.new("Settlement Npv", "cme.streamline.sbe.v8.5.settlementnpv", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.strategy_link_id = ProtoField.new("Strategy Link Id", "cme.streamline.sbe.v8.5.strategylinkid", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.strike_price = ProtoField.new("Strike Price", "cme.streamline.sbe.v8.5.strikeprice", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.symbol = ProtoField.new("Symbol", "cme.streamline.sbe.v8.5.symbol", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.template_id = ProtoField.new("Template Id", "cme.streamline.sbe.v8.5.templateid", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.text = ProtoField.new("Text", "cme.streamline.sbe.v8.5.text", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.trade_date = ProtoField.new("Trade Date", "cme.streamline.sbe.v8.5.tradedate", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.trade_id = ProtoField.new("Trade Id", "cme.streamline.sbe.v8.5.tradeid", ftypes.INT32)
cme_streamline_sbe_v8_5.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.streamline.sbe.v8.5.tradingreferencedate", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.transact_time = ProtoField.new("Transact Time", "cme.streamline.sbe.v8.5.transacttime", ftypes.UINT64)
cme_streamline_sbe_v8_5.fields.trd_type = ProtoField.new("Trd Type", "cme.streamline.sbe.v8.5.trdtype", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "cme.streamline.sbe.v8.5.unitofmeasure", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.unit_of_measure_currency = ProtoField.new("Unit Of Measure Currency", "cme.streamline.sbe.v8.5.unitofmeasurecurrency", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.unit_of_measure_qty = ProtoField.new("Unit Of Measure Qty", "cme.streamline.sbe.v8.5.unitofmeasureqty", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "cme.streamline.sbe.v8.5.userdefinedinstrument", ftypes.STRING)
cme_streamline_sbe_v8_5.fields.version = ProtoField.new("Version", "cme.streamline.sbe.v8.5.version", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.vol_type = ProtoField.new("Vol Type", "cme.streamline.sbe.v8.5.voltype", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.week = ProtoField.new("Week", "cme.streamline.sbe.v8.5.week", ftypes.UINT8)
cme_streamline_sbe_v8_5.fields.year = ProtoField.new("Year", "cme.streamline.sbe.v8.5.year", ftypes.UINT16)
cme_streamline_sbe_v8_5.fields.yield = ProtoField.new("Yield", "cme.streamline.sbe.v8.5.yield", ftypes.INT64)
cme_streamline_sbe_v8_5.fields.yield_type = ProtoField.new("Yield Type", "cme.streamline.sbe.v8.5.yieldtype", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cme Streamline Sbe 8.5 Element Dissection Options
show.admin_login315 = true
show.admin_logout316 = true
show.events_group = true
show.events_groups = true
show.group_size = true
show.group_size_encoding = true
show.inst_attrib_group = true
show.inst_attrib_groups = true
show.legs_group = true
show.legs_groups = true
show.lines_of_text_group = true
show.lines_of_text_groups = true
show.match_event_indicator = true
show.maturity_month_year = true
show.md_feed_types_group = true
show.md_feed_types_groups = true
show.md_incremental_refresh_eris_group = true
show.md_incremental_refresh_eris_groups = true
show.md_incremental_refresh_eris_reference_data_and_daily_statistics_group = true
show.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups = true
show.md_incremental_refresh_eris_reference_data_and_daily_statistics333 = true
show.md_incremental_refresh_eris351 = true
show.md_incremental_refresh_eris353 = true
show.md_incremental_refresh_indices_group = true
show.md_incremental_refresh_indices_groups = true
show.md_incremental_refresh_indices348 = true
show.md_incremental_refresh_otc_group = true
show.md_incremental_refresh_otc_groups = true
show.md_incremental_refresh_otc356 = true
show.md_incremental_refresh_trade_blocks_group = true
show.md_incremental_refresh_trade_blocks_groups = true
show.md_incremental_refresh_trade_blocks340 = true
show.md_incremental_refresh_trade_blocks349 = true
show.md_instrument_definition_eris363 = true
show.md_instrument_definition_indices347 = true
show.md_news_indices339 = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.quote_request345 = true
show.related_sym_group = true
show.related_sym_groups = true
show.security_alt_id_group = true
show.security_alt_id_groups = true
show.settl_price_type = true
show.payload = false

-- Register Cme Streamline Sbe 8.5 Show Options
cme_streamline_sbe_v8_5.prefs.show_admin_login315 = Pref.bool("Show Admin Login315", show.admin_login315, "Parse and add Admin Login315 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_admin_logout316 = Pref.bool("Show Admin Logout316", show.admin_logout316, "Parse and add Admin Logout316 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_events_group = Pref.bool("Show Events Group", show.events_group, "Parse and add Events Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_events_groups = Pref.bool("Show Events Groups", show.events_groups, "Parse and add Events Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_inst_attrib_group = Pref.bool("Show Inst Attrib Group", show.inst_attrib_group, "Parse and add Inst Attrib Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_inst_attrib_groups = Pref.bool("Show Inst Attrib Groups", show.inst_attrib_groups, "Parse and add Inst Attrib Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_legs_group = Pref.bool("Show Legs Group", show.legs_group, "Parse and add Legs Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_legs_groups = Pref.bool("Show Legs Groups", show.legs_groups, "Parse and add Legs Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_lines_of_text_group = Pref.bool("Show Lines Of Text Group", show.lines_of_text_group, "Parse and add Lines Of Text Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_lines_of_text_groups = Pref.bool("Show Lines Of Text Groups", show.lines_of_text_groups, "Parse and add Lines Of Text Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_match_event_indicator = Pref.bool("Show Match Event Indicator", show.match_event_indicator, "Parse and add Match Event Indicator to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_feed_types_group = Pref.bool("Show MD Feed Types Group", show.md_feed_types_group, "Parse and add MD Feed Types Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_feed_types_groups = Pref.bool("Show MD Feed Types Groups", show.md_feed_types_groups, "Parse and add MD Feed Types Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_group = Pref.bool("Show MD Incremental Refresh Eris Group", show.md_incremental_refresh_eris_group, "Parse and add MD Incremental Refresh Eris Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_groups = Pref.bool("Show MD Incremental Refresh Eris Groups", show.md_incremental_refresh_eris_groups, "Parse and add MD Incremental Refresh Eris Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics_group = Pref.bool("Show MD Incremental Refresh Eris Reference Data And Daily Statistics Group", show.md_incremental_refresh_eris_reference_data_and_daily_statistics_group, "Parse and add MD Incremental Refresh Eris Reference Data And Daily Statistics Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics_groups = Pref.bool("Show MD Incremental Refresh Eris Reference Data And Daily Statistics Groups", show.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups, "Parse and add MD Incremental Refresh Eris Reference Data And Daily Statistics Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics333 = Pref.bool("Show Md Incremental Refresh Eris Reference Data And Daily Statistics333", show.md_incremental_refresh_eris_reference_data_and_daily_statistics333, "Parse and add Md Incremental Refresh Eris Reference Data And Daily Statistics333 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris351 = Pref.bool("Show Md Incremental Refresh Eris351", show.md_incremental_refresh_eris351, "Parse and add Md Incremental Refresh Eris351 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris353 = Pref.bool("Show Md Incremental Refresh Eris353", show.md_incremental_refresh_eris353, "Parse and add Md Incremental Refresh Eris353 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_indices_group = Pref.bool("Show MD Incremental Refresh Indices Group", show.md_incremental_refresh_indices_group, "Parse and add MD Incremental Refresh Indices Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_indices_groups = Pref.bool("Show MD Incremental Refresh Indices Groups", show.md_incremental_refresh_indices_groups, "Parse and add MD Incremental Refresh Indices Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_indices348 = Pref.bool("Show Md Incremental Refresh Indices348", show.md_incremental_refresh_indices348, "Parse and add Md Incremental Refresh Indices348 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_otc_group = Pref.bool("Show MD Incremental Refresh Otc Group", show.md_incremental_refresh_otc_group, "Parse and add MD Incremental Refresh Otc Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_otc_groups = Pref.bool("Show MD Incremental Refresh Otc Groups", show.md_incremental_refresh_otc_groups, "Parse and add MD Incremental Refresh Otc Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_otc356 = Pref.bool("Show Md Incremental Refresh Otc356", show.md_incremental_refresh_otc356, "Parse and add Md Incremental Refresh Otc356 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks_group = Pref.bool("Show MD Incremental Refresh Trade Blocks Group", show.md_incremental_refresh_trade_blocks_group, "Parse and add MD Incremental Refresh Trade Blocks Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks_groups = Pref.bool("Show MD Incremental Refresh Trade Blocks Groups", show.md_incremental_refresh_trade_blocks_groups, "Parse and add MD Incremental Refresh Trade Blocks Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks340 = Pref.bool("Show Md Incremental Refresh Trade Blocks340", show.md_incremental_refresh_trade_blocks340, "Parse and add Md Incremental Refresh Trade Blocks340 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks349 = Pref.bool("Show Md Incremental Refresh Trade Blocks349", show.md_incremental_refresh_trade_blocks349, "Parse and add Md Incremental Refresh Trade Blocks349 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_instrument_definition_eris363 = Pref.bool("Show Md Instrument Definition Eris363", show.md_instrument_definition_eris363, "Parse and add Md Instrument Definition Eris363 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_instrument_definition_indices347 = Pref.bool("Show Md Instrument Definition Indices347", show.md_instrument_definition_indices347, "Parse and add Md Instrument Definition Indices347 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_md_news_indices339 = Pref.bool("Show Md News Indices339", show.md_news_indices339, "Parse and add Md News Indices339 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_quote_request345 = Pref.bool("Show Quote Request345", show.quote_request345, "Parse and add Quote Request345 to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_security_alt_id_group = Pref.bool("Show Security Alt Id Group", show.security_alt_id_group, "Parse and add Security Alt Id Group to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_security_alt_id_groups = Pref.bool("Show Security Alt Id Groups", show.security_alt_id_groups, "Parse and add Security Alt Id Groups to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_settl_price_type = Pref.bool("Show Settl Price Type", show.settl_price_type, "Parse and add Settl Price Type to protocol tree")
cme_streamline_sbe_v8_5.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cme_streamline_sbe_v8_5.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.admin_login315 ~= cme_streamline_sbe_v8_5.prefs.show_admin_login315 then
    show.admin_login315 = cme_streamline_sbe_v8_5.prefs.show_admin_login315
    changed = true
  end
  if show.admin_logout316 ~= cme_streamline_sbe_v8_5.prefs.show_admin_logout316 then
    show.admin_logout316 = cme_streamline_sbe_v8_5.prefs.show_admin_logout316
    changed = true
  end
  if show.events_group ~= cme_streamline_sbe_v8_5.prefs.show_events_group then
    show.events_group = cme_streamline_sbe_v8_5.prefs.show_events_group
    changed = true
  end
  if show.events_groups ~= cme_streamline_sbe_v8_5.prefs.show_events_groups then
    show.events_groups = cme_streamline_sbe_v8_5.prefs.show_events_groups
    changed = true
  end
  if show.group_size ~= cme_streamline_sbe_v8_5.prefs.show_group_size then
    show.group_size = cme_streamline_sbe_v8_5.prefs.show_group_size
    changed = true
  end
  if show.group_size_encoding ~= cme_streamline_sbe_v8_5.prefs.show_group_size_encoding then
    show.group_size_encoding = cme_streamline_sbe_v8_5.prefs.show_group_size_encoding
    changed = true
  end
  if show.inst_attrib_group ~= cme_streamline_sbe_v8_5.prefs.show_inst_attrib_group then
    show.inst_attrib_group = cme_streamline_sbe_v8_5.prefs.show_inst_attrib_group
    changed = true
  end
  if show.inst_attrib_groups ~= cme_streamline_sbe_v8_5.prefs.show_inst_attrib_groups then
    show.inst_attrib_groups = cme_streamline_sbe_v8_5.prefs.show_inst_attrib_groups
    changed = true
  end
  if show.legs_group ~= cme_streamline_sbe_v8_5.prefs.show_legs_group then
    show.legs_group = cme_streamline_sbe_v8_5.prefs.show_legs_group
    changed = true
  end
  if show.legs_groups ~= cme_streamline_sbe_v8_5.prefs.show_legs_groups then
    show.legs_groups = cme_streamline_sbe_v8_5.prefs.show_legs_groups
    changed = true
  end
  if show.lines_of_text_group ~= cme_streamline_sbe_v8_5.prefs.show_lines_of_text_group then
    show.lines_of_text_group = cme_streamline_sbe_v8_5.prefs.show_lines_of_text_group
    changed = true
  end
  if show.lines_of_text_groups ~= cme_streamline_sbe_v8_5.prefs.show_lines_of_text_groups then
    show.lines_of_text_groups = cme_streamline_sbe_v8_5.prefs.show_lines_of_text_groups
    changed = true
  end
  if show.match_event_indicator ~= cme_streamline_sbe_v8_5.prefs.show_match_event_indicator then
    show.match_event_indicator = cme_streamline_sbe_v8_5.prefs.show_match_event_indicator
    changed = true
  end
  if show.maturity_month_year ~= cme_streamline_sbe_v8_5.prefs.show_maturity_month_year then
    show.maturity_month_year = cme_streamline_sbe_v8_5.prefs.show_maturity_month_year
    changed = true
  end
  if show.md_feed_types_group ~= cme_streamline_sbe_v8_5.prefs.show_md_feed_types_group then
    show.md_feed_types_group = cme_streamline_sbe_v8_5.prefs.show_md_feed_types_group
    changed = true
  end
  if show.md_feed_types_groups ~= cme_streamline_sbe_v8_5.prefs.show_md_feed_types_groups then
    show.md_feed_types_groups = cme_streamline_sbe_v8_5.prefs.show_md_feed_types_groups
    changed = true
  end
  if show.md_incremental_refresh_eris_group ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_group then
    show.md_incremental_refresh_eris_group = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_group
    changed = true
  end
  if show.md_incremental_refresh_eris_groups ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_groups then
    show.md_incremental_refresh_eris_groups = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_groups
    changed = true
  end
  if show.md_incremental_refresh_eris_reference_data_and_daily_statistics_group ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics_group then
    show.md_incremental_refresh_eris_reference_data_and_daily_statistics_group = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics_group
    changed = true
  end
  if show.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics_groups then
    show.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics_groups
    changed = true
  end
  if show.md_incremental_refresh_eris_reference_data_and_daily_statistics333 ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics333 then
    show.md_incremental_refresh_eris_reference_data_and_daily_statistics333 = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris_reference_data_and_daily_statistics333
    changed = true
  end
  if show.md_incremental_refresh_eris351 ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris351 then
    show.md_incremental_refresh_eris351 = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris351
    changed = true
  end
  if show.md_incremental_refresh_eris353 ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris353 then
    show.md_incremental_refresh_eris353 = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_eris353
    changed = true
  end
  if show.md_incremental_refresh_indices_group ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_indices_group then
    show.md_incremental_refresh_indices_group = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_indices_group
    changed = true
  end
  if show.md_incremental_refresh_indices_groups ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_indices_groups then
    show.md_incremental_refresh_indices_groups = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_indices_groups
    changed = true
  end
  if show.md_incremental_refresh_indices348 ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_indices348 then
    show.md_incremental_refresh_indices348 = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_indices348
    changed = true
  end
  if show.md_incremental_refresh_otc_group ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_otc_group then
    show.md_incremental_refresh_otc_group = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_otc_group
    changed = true
  end
  if show.md_incremental_refresh_otc_groups ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_otc_groups then
    show.md_incremental_refresh_otc_groups = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_otc_groups
    changed = true
  end
  if show.md_incremental_refresh_otc356 ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_otc356 then
    show.md_incremental_refresh_otc356 = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_otc356
    changed = true
  end
  if show.md_incremental_refresh_trade_blocks_group ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks_group then
    show.md_incremental_refresh_trade_blocks_group = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks_group
    changed = true
  end
  if show.md_incremental_refresh_trade_blocks_groups ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks_groups then
    show.md_incremental_refresh_trade_blocks_groups = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks_groups
    changed = true
  end
  if show.md_incremental_refresh_trade_blocks340 ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks340 then
    show.md_incremental_refresh_trade_blocks340 = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks340
    changed = true
  end
  if show.md_incremental_refresh_trade_blocks349 ~= cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks349 then
    show.md_incremental_refresh_trade_blocks349 = cme_streamline_sbe_v8_5.prefs.show_md_incremental_refresh_trade_blocks349
    changed = true
  end
  if show.md_instrument_definition_eris363 ~= cme_streamline_sbe_v8_5.prefs.show_md_instrument_definition_eris363 then
    show.md_instrument_definition_eris363 = cme_streamline_sbe_v8_5.prefs.show_md_instrument_definition_eris363
    changed = true
  end
  if show.md_instrument_definition_indices347 ~= cme_streamline_sbe_v8_5.prefs.show_md_instrument_definition_indices347 then
    show.md_instrument_definition_indices347 = cme_streamline_sbe_v8_5.prefs.show_md_instrument_definition_indices347
    changed = true
  end
  if show.md_news_indices339 ~= cme_streamline_sbe_v8_5.prefs.show_md_news_indices339 then
    show.md_news_indices339 = cme_streamline_sbe_v8_5.prefs.show_md_news_indices339
    changed = true
  end
  if show.message ~= cme_streamline_sbe_v8_5.prefs.show_message then
    show.message = cme_streamline_sbe_v8_5.prefs.show_message
    changed = true
  end
  if show.message_header ~= cme_streamline_sbe_v8_5.prefs.show_message_header then
    show.message_header = cme_streamline_sbe_v8_5.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cme_streamline_sbe_v8_5.prefs.show_packet then
    show.packet = cme_streamline_sbe_v8_5.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cme_streamline_sbe_v8_5.prefs.show_packet_header then
    show.packet_header = cme_streamline_sbe_v8_5.prefs.show_packet_header
    changed = true
  end
  if show.quote_request345 ~= cme_streamline_sbe_v8_5.prefs.show_quote_request345 then
    show.quote_request345 = cme_streamline_sbe_v8_5.prefs.show_quote_request345
    changed = true
  end
  if show.related_sym_group ~= cme_streamline_sbe_v8_5.prefs.show_related_sym_group then
    show.related_sym_group = cme_streamline_sbe_v8_5.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= cme_streamline_sbe_v8_5.prefs.show_related_sym_groups then
    show.related_sym_groups = cme_streamline_sbe_v8_5.prefs.show_related_sym_groups
    changed = true
  end
  if show.security_alt_id_group ~= cme_streamline_sbe_v8_5.prefs.show_security_alt_id_group then
    show.security_alt_id_group = cme_streamline_sbe_v8_5.prefs.show_security_alt_id_group
    changed = true
  end
  if show.security_alt_id_groups ~= cme_streamline_sbe_v8_5.prefs.show_security_alt_id_groups then
    show.security_alt_id_groups = cme_streamline_sbe_v8_5.prefs.show_security_alt_id_groups
    changed = true
  end
  if show.settl_price_type ~= cme_streamline_sbe_v8_5.prefs.show_settl_price_type then
    show.settl_price_type = cme_streamline_sbe_v8_5.prefs.show_settl_price_type
    changed = true
  end
  if show.payload ~= cme_streamline_sbe_v8_5.prefs.show_payload then
    show.payload = cme_streamline_sbe_v8_5.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Streamline Sbe 8.5
-----------------------------------------------------------------------

-- Size: Interpolation Factor
size_of.interpolation_factor = 8

-- Display: Interpolation Factor
display.interpolation_factor = function(value)
  return "Interpolation Factor: "..value
end

-- Dissect: Interpolation Factor
dissect.interpolation_factor = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.interpolation_factor)
  local value = range:le_int64()
  local display = display.interpolation_factor(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.interpolation_factor, range, value, display)

  return offset + size_of.interpolation_factor
end

-- Size: Leg Date Offset
size_of.leg_date_offset = 1

-- Display: Leg Date Offset
display.leg_date_offset = function(value)
  return "Leg Date Offset: "..value
end

-- Dissect: Leg Date Offset
dissect.leg_date_offset = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_date_offset)
  local value = range:le_int()
  local display = display.leg_date_offset(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_date_offset, range, value, display)

  return offset + size_of.leg_date_offset
end

-- Size: Leg Security Group
size_of.leg_security_group = 12

-- Display: Leg Security Group
display.leg_security_group = function(value)
  return "Leg Security Group: "..value
end

-- Dissect: Leg Security Group
dissect.leg_security_group = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_security_group)
  local value = range:string()
  local display = display.leg_security_group(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_security_group, range, value, display)

  return offset + size_of.leg_security_group
end

-- Size: Leg Security Type
size_of.leg_security_type = 8

-- Display: Leg Security Type
display.leg_security_type = function(value)
  return "Leg Security Type: "..value
end

-- Dissect: Leg Security Type
dissect.leg_security_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_security_type)
  local value = range:string()
  local display = display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_security_type, range, value, display)

  return offset + size_of.leg_security_type
end

-- Size: Leg Currency
size_of.leg_currency = 3

-- Display: Leg Currency
display.leg_currency = function(value)
  return "Leg Currency: "..value
end

-- Dissect: Leg Currency
dissect.leg_currency = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_currency)
  local value = range:string()
  local display = display.leg_currency(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_currency, range, value, display)

  return offset + size_of.leg_currency
end

-- Size: Leg Side
size_of.leg_side = 1

-- Display: Leg Side
display.leg_side = function(value)
  return "Leg Side: "..value
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_side)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_side, range, value, display)

  return offset + size_of.leg_side
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 4

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_ratio_qty)
  local value = range:le_int()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_ratio_qty, range, value, display)

  return offset + size_of.leg_ratio_qty
end

-- Size: Leg Symbol
size_of.leg_symbol = 50

-- Display: Leg Symbol
display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
dissect.leg_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_symbol)
  local value = range:string()
  local display = display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_symbol, range, value, display)

  return offset + size_of.leg_symbol
end

-- Size: Previous Fixing Rate
size_of.previous_fixing_rate = 8

-- Display: Previous Fixing Rate
display.previous_fixing_rate = function(value)
  return "Previous Fixing Rate: "..value
end

-- Dissect: Previous Fixing Rate
dissect.previous_fixing_rate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.previous_fixing_rate)
  local value = range:le_int64()
  local display = display.previous_fixing_rate(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.previous_fixing_rate, range, value, display)

  return offset + size_of.previous_fixing_rate
end

-- Size: Leg Pay Frequencey
size_of.leg_pay_frequencey = 3

-- Display: Leg Pay Frequencey
display.leg_pay_frequencey = function(value)
  return "Leg Pay Frequencey: "..value
end

-- Dissect: Leg Pay Frequencey
dissect.leg_pay_frequencey = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_pay_frequencey)
  local value = range:string()
  local display = display.leg_pay_frequencey(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_pay_frequencey, range, value, display)

  return offset + size_of.leg_pay_frequencey
end

-- Size: Previous Fixing Date
size_of.previous_fixing_date = 2

-- Display: Previous Fixing Date
display.previous_fixing_date = function(value)
  return "Previous Fixing Date: "..value
end

-- Dissect: Previous Fixing Date
dissect.previous_fixing_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.previous_fixing_date)
  local value = range:le_uint()
  local display = display.previous_fixing_date(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.previous_fixing_date, range, value, display)

  return offset + size_of.previous_fixing_date
end

-- Size: Rate Descriptor
size_of.rate_descriptor = 8

-- Display: Rate Descriptor
display.rate_descriptor = function(value)
  return "Rate Descriptor: "..value
end

-- Dissect: Rate Descriptor
dissect.rate_descriptor = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.rate_descriptor)
  local value = range:string()
  local display = display.rate_descriptor(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.rate_descriptor, range, value, display)

  return offset + size_of.rate_descriptor
end

-- Size: Leg Benchmark Curve Name
size_of.leg_benchmark_curve_name = 5

-- Display: Leg Benchmark Curve Name
display.leg_benchmark_curve_name = function(value)
  return "Leg Benchmark Curve Name: "..value
end

-- Dissect: Leg Benchmark Curve Name
dissect.leg_benchmark_curve_name = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_benchmark_curve_name)
  local value = range:string()
  local display = display.leg_benchmark_curve_name(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_benchmark_curve_name, range, value, display)

  return offset + size_of.leg_benchmark_curve_name
end

-- Display: Legs Group
display.legs_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Legs Group
dissect.legs_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Benchmark Curve Name: 5 Byte Ascii String
  index = dissect.leg_benchmark_curve_name(buffer, index, packet, parent)

  -- Rate Descriptor: 8 Byte Ascii String
  index = dissect.rate_descriptor(buffer, index, packet, parent)

  -- Previous Fixing Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.previous_fixing_date(buffer, index, packet, parent)

  -- Leg Pay Frequencey: 3 Byte Ascii String
  index = dissect.leg_pay_frequencey(buffer, index, packet, parent)

  -- Previous Fixing Rate: 8 Byte Signed Fixed Width Integer
  index = dissect.previous_fixing_rate(buffer, index, packet, parent)

  -- Leg Symbol: 50 Byte Ascii String
  index = dissect.leg_symbol(buffer, index, packet, parent)

  -- Leg Ratio Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.leg_side(buffer, index, packet, parent)

  -- Leg Currency: 3 Byte Ascii String
  index = dissect.leg_currency(buffer, index, packet, parent)

  -- Leg Security Type: 8 Byte Ascii String
  index = dissect.leg_security_type(buffer, index, packet, parent)

  -- Leg Security Group: 12 Byte Ascii String
  index = dissect.leg_security_group(buffer, index, packet, parent)

  -- Leg Date Offset: 1 Byte Signed Fixed Width Integer
  index = dissect.leg_date_offset(buffer, index, packet, parent)

  -- Interpolation Factor: 8 Byte Signed Fixed Width Integer
  index = dissect.interpolation_factor(buffer, index, packet, parent)

  return index
end

-- Dissect: Legs Group
dissect.legs_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.legs_group then
    local range = buffer(offset, 113)
    local display = display.legs_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.legs_group, range, display)
  end

  return dissect.legs_group_fields(buffer, offset, packet, parent)
end

-- Size: Num In Group
size_of.num_in_group = 1

-- Display: Num In Group
display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.num_in_group, range, value, display)

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
  local range = buffer(offset, size_of.block_length)
  local value = range:le_uint()
  local display = display.block_length(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.block_length, range, value, display)

  return offset + size_of.block_length
end

-- Display: Group Size
display.group_size = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size
dissect.group_size_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.block_length(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index = dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
dissect.group_size = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size then
    local range = buffer(offset, 3)
    local display = display.group_size(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.group_size, range, display)
  end

  return dissect.group_size_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Legs Groups
size_of.legs_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + legs_group_count * 113

  return index
end

-- Display: Legs Groups
display.legs_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Legs Groups
dissect.legs_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Legs Group: Struct of 13 fields
  local legs_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, legs_group_count do
    index = dissect.legs_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Legs Groups
dissect.legs_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.legs_groups then
    local length = size_of.legs_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.legs_groups(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.legs_groups, range, display)
  end

  return dissect.legs_groups_fields(buffer, offset, packet, parent)
end

-- Size: Security Alt Id Source
size_of.security_alt_id_source = 1

-- Display: Security Alt Id Source
display.security_alt_id_source = function(value)
  return "Security Alt Id Source: "..value
end

-- Dissect: Security Alt Id Source
dissect.security_alt_id_source = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_alt_id_source)
  local value = range:string()
  local display = display.security_alt_id_source(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.security_alt_id_source, range, value, display)

  return offset + size_of.security_alt_id_source
end

-- Size: Security Alt Id
size_of.security_alt_id = 26

-- Display: Security Alt Id
display.security_alt_id = function(value)
  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
dissect.security_alt_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_alt_id)
  local value = range:string()
  local display = display.security_alt_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.security_alt_id, range, value, display)

  return offset + size_of.security_alt_id
end

-- Display: Security Alt Id Group
display.security_alt_id_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Alt Id Group
dissect.security_alt_id_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Alt Id: 26 Byte Ascii String
  index = dissect.security_alt_id(buffer, index, packet, parent)

  -- Security Alt Id Source: 1 Byte Ascii String
  index = dissect.security_alt_id_source(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Alt Id Group
dissect.security_alt_id_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_alt_id_group then
    local range = buffer(offset, 27)
    local display = display.security_alt_id_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.security_alt_id_group, range, display)
  end

  return dissect.security_alt_id_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Security Alt Id Groups
size_of.security_alt_id_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local security_alt_id_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_alt_id_group_count * 27

  return index
end

-- Display: Security Alt Id Groups
display.security_alt_id_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Alt Id Groups
dissect.security_alt_id_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Security Alt Id Group: Struct of 2 fields
  local security_alt_id_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, security_alt_id_group_count do
    index = dissect.security_alt_id_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Security Alt Id Groups
dissect.security_alt_id_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_alt_id_groups then
    local length = size_of.security_alt_id_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_alt_id_groups(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.security_alt_id_groups, range, display)
  end

  return dissect.security_alt_id_groups_fields(buffer, offset, packet, parent)
end

-- Size: Event Time
size_of.event_time = 8

-- Display: Event Time
display.event_time = function(value)
  return "Event Time: "..value
end

-- Dissect: Event Time
dissect.event_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.event_time)
  local value = range:le_uint64()
  local display = display.event_time(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.event_time, range, value, display)

  return offset + size_of.event_time
end

-- Size: Event Type
size_of.event_type = 1

-- Display: Event Type
display.event_type = function(value)
  return "Event Type: "..value
end

-- Dissect: Event Type
dissect.event_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.event_type)
  local value = range:le_uint()
  local display = display.event_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.event_type, range, value, display)

  return offset + size_of.event_type
end

-- Display: Events Group
display.events_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Events Group
dissect.events_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.event_type(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.event_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Events Group
dissect.events_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.events_group then
    local range = buffer(offset, 9)
    local display = display.events_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.events_group, range, display)
  end

  return dissect.events_group_fields(buffer, offset, packet, parent)
end

-- Display: Group Size Encoding
display.group_size_encoding = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size Encoding
dissect.group_size_encoding_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.block_length(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index = dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
dissect.group_size_encoding = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size_encoding then
    local range = buffer(offset, 3)
    local display = display.group_size_encoding(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.group_size_encoding, range, display)
  end

  return dissect.group_size_encoding_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Events Groups
size_of.events_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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

  -- Group Size Encoding: Struct of 2 fields
  index = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Events Group: Struct of 2 fields
  local events_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, events_group_count do
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
    parent = parent:add(cme_streamline_sbe_v8_5.fields.events_groups, range, display)
  end

  return dissect.events_groups_fields(buffer, offset, packet, parent)
end

-- Size: Market Depth
size_of.market_depth = 1

-- Display: Market Depth
display.market_depth = function(value)
  return "Market Depth: "..value
end

-- Dissect: Market Depth
dissect.market_depth = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_depth)
  local value = range:le_uint()
  local display = display.market_depth(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.market_depth, range, value, display)

  return offset + size_of.market_depth
end

-- Size: Md Feed Type
size_of.md_feed_type = 2

-- Display: Md Feed Type
display.md_feed_type = function(value)
  return "Md Feed Type: "..value
end

-- Dissect: Md Feed Type
dissect.md_feed_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_feed_type)
  local value = range:string()
  local display = display.md_feed_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.md_feed_type, range, value, display)

  return offset + size_of.md_feed_type
end

-- Display: MD Feed Types Group
display.md_feed_types_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Feed Types Group
dissect.md_feed_types_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Feed Type: 2 Byte Ascii String
  index = dissect.md_feed_type(buffer, index, packet, parent)

  -- Market Depth: 1 Byte Unsigned Fixed Width Integer
  index = dissect.market_depth(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Feed Types Group
dissect.md_feed_types_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_feed_types_group then
    local range = buffer(offset, 3)
    local display = display.md_feed_types_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_feed_types_group, range, display)
  end

  return dissect.md_feed_types_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Feed Types Groups
size_of.md_feed_types_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_feed_types_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_feed_types_group_count * 3

  return index
end

-- Display: MD Feed Types Groups
display.md_feed_types_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Feed Types Groups
dissect.md_feed_types_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Feed Types Group: Struct of 2 fields
  local md_feed_types_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_feed_types_group_count do
    index = dissect.md_feed_types_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Feed Types Groups
dissect.md_feed_types_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_feed_types_groups then
    local length = size_of.md_feed_types_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_feed_types_groups(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_feed_types_groups, range, display)
  end

  return dissect.md_feed_types_groups_fields(buffer, offset, packet, parent)
end

-- Size: Appl Id
size_of.appl_id = 2

-- Display: Appl Id
display.appl_id = function(value)
  return "Appl Id: "..value
end

-- Dissect: Appl Id
dissect.appl_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.appl_id)
  local value = range:le_uint()
  local display = display.appl_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.appl_id, range, value, display)

  return offset + size_of.appl_id
end

-- Size: User Defined Instrument
size_of.user_defined_instrument = 1

-- Display: User Defined Instrument
display.user_defined_instrument = function(value)
  return "User Defined Instrument: "..value
end

-- Dissect: User Defined Instrument
dissect.user_defined_instrument = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.user_defined_instrument)
  local value = range:string()
  local display = display.user_defined_instrument(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.user_defined_instrument, range, value, display)

  return offset + size_of.user_defined_instrument
end

-- Size: Coupon Rate
size_of.coupon_rate = 4

-- Display: Coupon Rate
display.coupon_rate = function(value)
  local factor = 10000
  return "Coupon Rate: "..value/factor
end

-- Dissect: Coupon Rate
dissect.coupon_rate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.coupon_rate)
  local value = range:le_int()
  local display = display.coupon_rate(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.coupon_rate, range, value, display)

  return offset + size_of.coupon_rate
end

-- Size: Rate Type
size_of.rate_type = 2

-- Display: Rate Type
display.rate_type = function(value)
  return "Rate Type: "..value
end

-- Dissect: Rate Type
dissect.rate_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.rate_type)
  local value = range:string()
  local display = display.rate_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.rate_type, range, value, display)

  return offset + size_of.rate_type
end

-- Size: Security Update Action
size_of.security_update_action = 1

-- Display: Security Update Action
display.security_update_action = function(value)
  if value == "A" then
    return "Security Update Action: Security Update Action (A)"
  end
  if value == "D" then
    return "Security Update Action: Security Update Action (D)"
  end
  if value == "M" then
    return "Security Update Action: Security Update Action (M)"
  end

  return "Security Update Action: Unknown("..value..")"
end

-- Dissect: Security Update Action
dissect.security_update_action = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_update_action)
  local value = range:string()
  local display = display.security_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.security_update_action, range, value, display)

  return offset + size_of.security_update_action
end

-- Size: Min Price Increment
size_of.min_price_increment = 8

-- Display: Min Price Increment
display.min_price_increment = function(value)
  return "Min Price Increment: "..value
end

-- Dissect: Min Price Increment
dissect.min_price_increment = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.min_price_increment)
  local value = range:le_int64()
  local display = display.min_price_increment(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.min_price_increment, range, value, display)

  return offset + size_of.min_price_increment
end

-- Size: Currency
size_of.currency = 3

-- Display: Currency
display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.currency)
  local value = range:string()
  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.currency, range, value, display)

  return offset + size_of.currency
end

-- Size: Maturity Date
size_of.maturity_date = 2

-- Display: Maturity Date
display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
dissect.maturity_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.maturity_date)
  local value = range:le_uint()
  local display = display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.maturity_date, range, value, display)

  return offset + size_of.maturity_date
end

-- Size: Security Exchange
size_of.security_exchange = 4

-- Display: Security Exchange
display.security_exchange = function(value)
  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
dissect.security_exchange = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_exchange)
  local value = range:string()
  local display = display.security_exchange(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.security_exchange, range, value, display)

  return offset + size_of.security_exchange
end

-- Size: Product
size_of.product = 1

-- Display: Product
display.product = function(value)
  return "Product: "..value
end

-- Dissect: Product
dissect.product = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.product)
  local value = range:le_int()
  local display = display.product(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.product, range, value, display)

  return offset + size_of.product
end

-- Size: Security Type
size_of.security_type = 4

-- Display: Security Type
display.security_type = function(value)
  return "Security Type: "..value
end

-- Dissect: Security Type
dissect.security_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_type)
  local value = range:string()
  local display = display.security_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.security_type, range, value, display)

  return offset + size_of.security_type
end

-- Size: Symbol
size_of.symbol = 50

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.symbol, range, value, display)

  return offset + size_of.symbol
end

-- Size: Security Group
size_of.security_group = 12

-- Display: Security Group
display.security_group = function(value)
  return "Security Group: "..value
end

-- Dissect: Security Group
dissect.security_group = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_group)
  local value = range:string()
  local display = display.security_group(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.security_group, range, value, display)

  return offset + size_of.security_group
end

-- Calculate runtime size: Md Instrument Definition Eris363
size_of.md_instrument_definition_eris363 = function(buffer, offset)
  local index = 0

  index = index + 94

  index = index + size_of.md_feed_types_groups(buffer, offset + index)

  index = index + size_of.events_groups(buffer, offset + index)

  index = index + size_of.security_alt_id_groups(buffer, offset + index)

  index = index + size_of.legs_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Eris363
display.md_instrument_definition_eris363 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Definition Eris363
dissect.md_instrument_definition_eris363_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Group: 12 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Security Type: 4 Byte Ascii String
  index = dissect.security_type(buffer, index, packet, parent)

  -- Product: 1 Byte Signed Fixed Width Integer
  index = dissect.product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index = dissect.security_exchange(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.maturity_date(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index = dissect.currency(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index = dissect.min_price_increment(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index = dissect.security_update_action(buffer, index, packet, parent)

  -- Rate Type: 2 Byte Ascii String
  index = dissect.rate_type(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer
  index = dissect.coupon_rate(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index = dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Unsigned Fixed Width Integer
  index = dissect.appl_id(buffer, index, packet, parent)

  -- MD Feed Types Groups: Struct of 2 fields
  index = dissect.md_feed_types_groups(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index = dissect.events_groups(buffer, index, packet, parent)

  -- Security Alt Id Groups: Struct of 2 fields
  index = dissect.security_alt_id_groups(buffer, index, packet, parent)

  -- Legs Groups: Struct of 2 fields
  index = dissect.legs_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Eris363
dissect.md_instrument_definition_eris363 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_eris363 then
    local length = size_of.md_instrument_definition_eris363(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_eris363(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_instrument_definition_eris363, range, display)
  end

  return dissect.md_instrument_definition_eris363_fields(buffer, offset, packet, parent)
end

-- Size: Reference Id
size_of.reference_id = 50

-- Display: Reference Id
display.reference_id = function(value)
  return "Reference Id: "..value
end

-- Dissect: Reference Id
dissect.reference_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_id)
  local value = range:string()
  local display = display.reference_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.reference_id, range, value, display)

  return offset + size_of.reference_id
end

-- Size: Vol Type
size_of.vol_type = 2

-- Display: Vol Type
display.vol_type = function(value)
  return "Vol Type: "..value
end

-- Dissect: Vol Type
dissect.vol_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.vol_type)
  local value = range:le_uint()
  local display = display.vol_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.vol_type, range, value, display)

  return offset + size_of.vol_type
end

-- Size: Security Sub Type
size_of.security_sub_type = 2

-- Display: Security Sub Type
display.security_sub_type = function(value)
  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_sub_type)
  local value = range:string()
  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.security_sub_type, range, value, display)

  return offset + size_of.security_sub_type
end

-- Size: Product Complex
size_of.product_complex = 26

-- Display: Product Complex
display.product_complex = function(value)
  return "Product Complex: "..value
end

-- Dissect: Product Complex
dissect.product_complex = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.product_complex)
  local value = range:string()
  local display = display.product_complex(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.product_complex, range, value, display)

  return offset + size_of.product_complex
end

-- Size: Sector Sub Group
size_of.sector_sub_group = 26

-- Display: Sector Sub Group
display.sector_sub_group = function(value)
  return "Sector Sub Group: "..value
end

-- Dissect: Sector Sub Group
dissect.sector_sub_group = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sector_sub_group)
  local value = range:string()
  local display = display.sector_sub_group(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.sector_sub_group, range, value, display)

  return offset + size_of.sector_sub_group
end

-- Size: Sector Group
size_of.sector_group = 2

-- Display: Sector Group
display.sector_group = function(value)
  return "Sector Group: "..value
end

-- Dissect: Sector Group
dissect.sector_group = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sector_group)
  local value = range:string()
  local display = display.sector_group(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.sector_group, range, value, display)

  return offset + size_of.sector_group
end

-- Size: Market Sector
size_of.market_sector = 26

-- Display: Market Sector
display.market_sector = function(value)
  return "Market Sector: "..value
end

-- Dissect: Market Sector
dissect.market_sector = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_sector)
  local value = range:string()
  local display = display.market_sector(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.market_sector, range, value, display)

  return offset + size_of.market_sector
end

-- Size: Quote Condition
size_of.quote_condition = 1

-- Display: Quote Condition
display.quote_condition = function(value)
  return "Quote Condition: "..value
end

-- Dissect: Quote Condition
dissect.quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_condition)
  local value = range:string()
  local display = display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.quote_condition, range, value, display)

  return offset + size_of.quote_condition
end

-- Size: Settl Date
size_of.settl_date = 2

-- Display: Settl Date
display.settl_date = function(value)
  return "Settl Date: "..value
end

-- Dissect: Settl Date
dissect.settl_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.settl_date)
  local value = range:le_uint()
  local display = display.settl_date(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.settl_date, range, value, display)

  return offset + size_of.settl_date
end

-- Size: Price Type
size_of.price_type = 2

-- Display: Price Type
display.price_type = function(value)
  return "Price Type: "..value
end

-- Dissect: Price Type
dissect.price_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_type)
  local value = range:le_uint()
  local display = display.price_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.price_type, range, value, display)

  return offset + size_of.price_type
end

-- Size: Open Close Settl Flag
size_of.open_close_settl_flag = 1

-- Display: Open Close Settl Flag
display.open_close_settl_flag = function(value)
  return "Open Close Settl Flag: "..value
end

-- Dissect: Open Close Settl Flag
dissect.open_close_settl_flag = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open_close_settl_flag)
  local value = range:le_uint()
  local display = display.open_close_settl_flag(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.open_close_settl_flag, range, value, display)

  return offset + size_of.open_close_settl_flag
end

-- Size: Md Entry Date
size_of.md_entry_date = 4

-- Display: Md Entry Date
display.md_entry_date = function(value)
  return "Md Entry Date: "..value
end

-- Dissect: Md Entry Date
dissect.md_entry_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_date)
  local value = range:le_int()
  local display = display.md_entry_date(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.md_entry_date, range, value, display)

  return offset + size_of.md_entry_date
end

-- Size: Unit Of Measure Qty
size_of.unit_of_measure_qty = 8

-- Display: Unit Of Measure Qty
display.unit_of_measure_qty = function(value)
  local factor = 10000000
  return "Unit Of Measure Qty: "..value:tonumber()/factor
end

-- Dissect: Unit Of Measure Qty
dissect.unit_of_measure_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unit_of_measure_qty)
  local value = range:le_int64()
  local display = display.unit_of_measure_qty(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.unit_of_measure_qty, range, value, display)

  return offset + size_of.unit_of_measure_qty
end

-- Size: Unit Of Measure Currency
size_of.unit_of_measure_currency = 3

-- Display: Unit Of Measure Currency
display.unit_of_measure_currency = function(value)
  return "Unit Of Measure Currency: "..value
end

-- Dissect: Unit Of Measure Currency
dissect.unit_of_measure_currency = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unit_of_measure_currency)
  local value = range:string()
  local display = display.unit_of_measure_currency(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.unit_of_measure_currency, range, value, display)

  return offset + size_of.unit_of_measure_currency
end

-- Size: Unit Of Measure
size_of.unit_of_measure = 5

-- Display: Unit Of Measure
display.unit_of_measure = function(value)
  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
dissect.unit_of_measure = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unit_of_measure)
  local value = range:string()
  local display = display.unit_of_measure(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.unit_of_measure, range, value, display)

  return offset + size_of.unit_of_measure
end

-- Size: Strike Price
size_of.strike_price = 8

-- Display: Strike Price
display.strike_price = function(value)
  local factor = 10000000
  return "Strike Price: "..value:tonumber()/factor
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price)
  local value = range:le_int64()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.strike_price, range, value, display)

  return offset + size_of.strike_price
end

-- Size: Put Or Call
size_of.put_or_call = 1

-- Display: Put Or Call
display.put_or_call = function(value)
  return "Put Or Call: "..value
end

-- Dissect: Put Or Call
dissect.put_or_call = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.put_or_call)
  local value = range:le_uint()
  local display = display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.put_or_call, range, value, display)

  return offset + size_of.put_or_call
end

-- Size: Notional Percentage Outstanding
size_of.notional_percentage_outstanding = 4

-- Display: Notional Percentage Outstanding
display.notional_percentage_outstanding = function(value)
  local factor = 10000
  return "Notional Percentage Outstanding: "..value/factor
end

-- Dissect: Notional Percentage Outstanding
dissect.notional_percentage_outstanding = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.notional_percentage_outstanding)
  local value = range:le_int()
  local display = display.notional_percentage_outstanding(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.notional_percentage_outstanding, range, value, display)

  return offset + size_of.notional_percentage_outstanding
end

-- Size: Seniority
size_of.seniority = 2

-- Display: Seniority
display.seniority = function(value)
  return "Seniority: "..value
end

-- Dissect: Seniority
dissect.seniority = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.seniority)
  local value = range:string()
  local display = display.seniority(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.seniority, range, value, display)

  return offset + size_of.seniority
end

-- Size: Restructuring Type
size_of.restructuring_type = 2

-- Display: Restructuring Type
display.restructuring_type = function(value)
  return "Restructuring Type: "..value
end

-- Dissect: Restructuring Type
dissect.restructuring_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.restructuring_type)
  local value = range:string()
  local display = display.restructuring_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.restructuring_type, range, value, display)

  return offset + size_of.restructuring_type
end

-- Size: Week
size_of.week = 1

-- Display: Week
display.week = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value ("..value..")"
  end

  return "Week: "..value
end

-- Dissect: Week
dissect.week = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.week)
  local value = range:le_uint()
  local display = display.week(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.week, range, value, display)

  return offset + size_of.week
end

-- Size: Day
size_of.day = 1

-- Display: Day
display.day = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value ("..value..")"
  end

  return "Day: "..value
end

-- Dissect: Day
dissect.day = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.day)
  local value = range:le_uint()
  local display = display.day(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.day, range, value, display)

  return offset + size_of.day
end

-- Size: Month
size_of.month = 1

-- Display: Month
display.month = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value ("..value..")"
  end

  return "Month: "..value
end

-- Dissect: Month
dissect.month = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.month)
  local value = range:le_uint()
  local display = display.month(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.month, range, value, display)

  return offset + size_of.month
end

-- Size: Year
size_of.year = 2

-- Display: Year
display.year = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value ("..value..")"
  end

  return "Year: "..value
end

-- Dissect: Year
dissect.year = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.year)
  local value = range:le_uint()
  local display = display.year(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.year, range, value, display)

  return offset + size_of.year
end

-- Display: Maturity Month Year
display.maturity_month_year = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Maturity Month Year
dissect.maturity_month_year_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index = dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index = dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index = dissect.day(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index = dissect.week(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
dissect.maturity_month_year = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.maturity_month_year then
    local range = buffer(offset, 5)
    local display = display.maturity_month_year(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.maturity_month_year, range, display)
  end

  return dissect.maturity_month_year_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Size
size_of.md_entry_size = 8

-- Display: Md Entry Size
display.md_entry_size = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
dissect.md_entry_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_size)
  local value = range:le_uint64()
  local display = display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.md_entry_size, range, value, display)

  return offset + size_of.md_entry_size
end

-- Size: Md Entry Px
size_of.md_entry_px = 8

-- Display: Md Entry Px
display.md_entry_px = function(value)
  local factor = 10000000
  return "Md Entry Px: "..value:tonumber()/factor
end

-- Dissect: Md Entry Px
dissect.md_entry_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_px)
  local value = range:le_int64()
  local display = display.md_entry_px(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.md_entry_px, range, value, display)

  return offset + size_of.md_entry_px
end

-- Size: Rpt Seq
size_of.rpt_seq = 4

-- Display: Rpt Seq
display.rpt_seq = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
dissect.rpt_seq = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.rpt_seq)
  local value = range:le_uint()
  local display = display.rpt_seq(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.rpt_seq, range, value, display)

  return offset + size_of.rpt_seq
end

-- Size: Md Entry Type
size_of.md_entry_type = 1

-- Display: Md Entry Type
display.md_entry_type = function(value)
  return "Md Entry Type: "..value
end

-- Dissect: Md Entry Type
dissect.md_entry_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_type)
  local value = range:string()
  local display = display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.md_entry_type, range, value, display)

  return offset + size_of.md_entry_type
end

-- Display: MD Incremental Refresh Otc Group
display.md_incremental_refresh_otc_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Otc Group
dissect.md_incremental_refresh_otc_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Type: 1 Byte Ascii String
  index = dissect.md_entry_type(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Security Group: 12 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Security Type: 4 Byte Ascii String
  index = dissect.security_type(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index = dissect.security_exchange(buffer, index, packet, parent)

  -- Product: 1 Byte Signed Fixed Width Integer
  index = dissect.product(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.maturity_date(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer
  index = dissect.coupon_rate(buffer, index, packet, parent)

  -- Restructuring Type: 2 Byte Ascii String
  index = dissect.restructuring_type(buffer, index, packet, parent)

  -- Seniority: 2 Byte Ascii String
  index = dissect.seniority(buffer, index, packet, parent)

  -- Notional Percentage Outstanding: 4 Byte Signed Fixed Width Integer
  index = dissect.notional_percentage_outstanding(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer
  index = dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index = dissect.strike_price(buffer, index, packet, parent)

  -- Unit Of Measure: 5 Byte Ascii String
  index = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Currency: 3 Byte Ascii String
  index = dissect.unit_of_measure_currency(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer
  index = dissect.unit_of_measure_qty(buffer, index, packet, parent)

  -- Md Entry Date: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_date(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Price Type: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price_type(buffer, index, packet, parent)

  -- Settl Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.settl_date(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Market Sector: 26 Byte Ascii String
  index = dissect.market_sector(buffer, index, packet, parent)

  -- Sector Group: 2 Byte Ascii String
  index = dissect.sector_group(buffer, index, packet, parent)

  -- Sector Sub Group: 26 Byte Ascii String
  index = dissect.sector_sub_group(buffer, index, packet, parent)

  -- Product Complex: 26 Byte Ascii String
  index = dissect.product_complex(buffer, index, packet, parent)

  -- Security Sub Type: 2 Byte Ascii String
  index = dissect.security_sub_type(buffer, index, packet, parent)

  -- Vol Type: 2 Byte Unsigned Fixed Width Integer
  index = dissect.vol_type(buffer, index, packet, parent)

  -- Reference Id: 50 Byte Ascii String
  index = dissect.reference_id(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Otc Group
dissect.md_incremental_refresh_otc_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_otc_group then
    local range = buffer(offset, 280)
    local display = display.md_incremental_refresh_otc_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_otc_group, range, display)
  end

  return dissect.md_incremental_refresh_otc_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Otc Groups
size_of.md_incremental_refresh_otc_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_otc_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_otc_group_count * 280

  return index
end

-- Display: MD Incremental Refresh Otc Groups
display.md_incremental_refresh_otc_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Otc Groups
dissect.md_incremental_refresh_otc_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Otc Group: Struct of 32 fields
  local md_incremental_refresh_otc_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_otc_group_count do
    index = dissect.md_incremental_refresh_otc_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Otc Groups
dissect.md_incremental_refresh_otc_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_otc_groups then
    local length = size_of.md_incremental_refresh_otc_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_otc_groups(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_otc_groups, range, display)
  end

  return dissect.md_incremental_refresh_otc_groups_fields(buffer, offset, packet, parent)
end

-- Size: Batch Total Messages
size_of.batch_total_messages = 2

-- Display: Batch Total Messages
display.batch_total_messages = function(value)
  return "Batch Total Messages: "..value
end

-- Dissect: Batch Total Messages
dissect.batch_total_messages = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.batch_total_messages)
  local value = range:le_uint()
  local display = display.batch_total_messages(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.batch_total_messages, range, value, display)

  return offset + size_of.batch_total_messages
end

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
  parent:add(cme_streamline_sbe_v8_5.fields.end_of_event, buffer(offset, 1))

  -- Reserved: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.reserved, buffer(offset, 1))

  -- Recovery Msg: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.recovery_msg, buffer(offset, 1))

  -- Last Implied Msg: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.last_implied_msg, buffer(offset, 1))

  -- Last Stats Msg: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.last_stats_msg, buffer(offset, 1))

  -- Last Quote Msg: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.last_quote_msg, buffer(offset, 1))

  -- Last Volume Msg: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.last_volume_msg, buffer(offset, 1))

  -- Last Trade Msg: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.last_trade_msg, buffer(offset, 1))
end

-- Dissect: Match Event Indicator
dissect.match_event_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.match_event_indicator(range, packet, parent)
  local element = parent:add(cme_streamline_sbe_v8_5.fields.match_event_indicator, range, display)

  if show.match_event_indicator then
    dissect.match_event_indicator_bits(buffer, offset, packet, element)
  end

  return offset + 1
end

-- Size: Trade Date
size_of.trade_date = 2

-- Display: Trade Date
display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
dissect.trade_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_date)
  local value = range:le_uint()
  local display = display.trade_date(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.trade_date, range, value, display)

  return offset + size_of.trade_date
end

-- Size: Transact Time
size_of.transact_time = 8

-- Display: Transact Time
display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
dissect.transact_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.transact_time)
  local value = range:le_uint64()
  local display = display.transact_time(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.transact_time, range, value, display)

  return offset + size_of.transact_time
end

-- Calculate runtime size: Md Incremental Refresh Otc356
size_of.md_incremental_refresh_otc356 = function(buffer, offset)
  local index = 0

  index = index + 13

  index = index + size_of.md_incremental_refresh_otc_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Otc356
display.md_incremental_refresh_otc356 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Otc356
dissect.md_incremental_refresh_otc356_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index = dissect.batch_total_messages(buffer, index, packet, parent)

  -- MD Incremental Refresh Otc Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_otc_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Otc356
dissect.md_incremental_refresh_otc356 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_otc356 then
    local length = size_of.md_incremental_refresh_otc356(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_otc356(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_otc356, range, display)
  end

  return dissect.md_incremental_refresh_otc356_fields(buffer, offset, packet, parent)
end

-- Size: Aggressor Side
size_of.aggressor_side = 1

-- Display: Aggressor Side
display.aggressor_side = function(value)
  if value == 0 then
    return "Aggressor Side: Aggressor Side (0)"
  end
  if value == 1 then
    return "Aggressor Side: Aggressor Side (1)"
  end
  if value == 2 then
    return "Aggressor Side: Aggressor Side (2)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
dissect.aggressor_side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.aggressor_side)
  local value = range:le_uint()
  local display = display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.aggressor_side, range, value, display)

  return offset + size_of.aggressor_side
end

-- Size: Trade Id
size_of.trade_id = 4

-- Display: Trade Id
display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
dissect.trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_id)
  local value = range:le_int()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.trade_id, range, value, display)

  return offset + size_of.trade_id
end

-- Size: Number Of Orders
size_of.number_of_orders = 4

-- Display: Number Of Orders
display.number_of_orders = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
dissect.number_of_orders = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.number_of_orders)
  local value = range:le_int()
  local display = display.number_of_orders(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.number_of_orders, range, value, display)

  return offset + size_of.number_of_orders
end

-- Size: Md Entry Position No
size_of.md_entry_position_no = 4

-- Display: Md Entry Position No
display.md_entry_position_no = function(value)
  return "Md Entry Position No: "..value
end

-- Dissect: Md Entry Position No
dissect.md_entry_position_no = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_position_no)
  local value = range:le_int()
  local display = display.md_entry_position_no(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.md_entry_position_no, range, value, display)

  return offset + size_of.md_entry_position_no
end

-- Size: Cal Fut Px
size_of.cal_fut_px = 8

-- Display: Cal Fut Px
display.cal_fut_px = function(value)
  return "Cal Fut Px: "..value
end

-- Dissect: Cal Fut Px
dissect.cal_fut_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cal_fut_px)
  local value = range:le_int64()
  local display = display.cal_fut_px(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.cal_fut_px, range, value, display)

  return offset + size_of.cal_fut_px
end

-- Size: Md Update Action
size_of.md_update_action = 1

-- Display: Md Update Action
display.md_update_action = function(value)
  if value == 0 then
    return "Md Update Action: Md Update Action (0)"
  end
  if value == 1 then
    return "Md Update Action: Md Update Action (1)"
  end
  if value == 2 then
    return "Md Update Action: Md Update Action (2)"
  end
  if value == 3 then
    return "Md Update Action: Md Update Action (3)"
  end
  if value == 4 then
    return "Md Update Action: Md Update Action (4)"
  end
  if value == 5 then
    return "Md Update Action: Md Update Action (5)"
  end

  return "Md Update Action: Unknown("..value..")"
end

-- Dissect: Md Update Action
dissect.md_update_action = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_update_action)
  local value = range:le_uint()
  local display = display.md_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.md_update_action, range, value, display)

  return offset + size_of.md_update_action
end

-- Display: MD Incremental Refresh Eris Group
display.md_incremental_refresh_eris_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Eris Group
dissect.md_incremental_refresh_eris_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String
  index = dissect.md_entry_type(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Cal Fut Px: 8 Byte Signed Fixed Width Integer
  index = dissect.cal_fut_px(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_position_no(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index = dissect.number_of_orders(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Signed Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.aggressor_side(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Security Group: 12 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Security Type: 4 Byte Ascii String
  index = dissect.security_type(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index = dissect.security_exchange(buffer, index, packet, parent)

  -- Product: 1 Byte Signed Fixed Width Integer
  index = dissect.product(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.maturity_date(buffer, index, packet, parent)

  -- Reference Id: 50 Byte Ascii String
  index = dissect.reference_id(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Eris Group
dissect.md_incremental_refresh_eris_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_eris_group then
    local range = buffer(offset, 166)
    local display = display.md_incremental_refresh_eris_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris_group, range, display)
  end

  return dissect.md_incremental_refresh_eris_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Eris Groups
size_of.md_incremental_refresh_eris_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_eris_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_eris_group_count * 166

  return index
end

-- Display: MD Incremental Refresh Eris Groups
display.md_incremental_refresh_eris_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Eris Groups
dissect.md_incremental_refresh_eris_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Eris Group: Struct of 17 fields
  local md_incremental_refresh_eris_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_eris_group_count do
    index = dissect.md_incremental_refresh_eris_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Eris Groups
dissect.md_incremental_refresh_eris_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris_groups then
    local length = size_of.md_incremental_refresh_eris_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_eris_groups(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris_groups, range, display)
  end

  return dissect.md_incremental_refresh_eris_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Md Incremental Refresh Eris353
size_of.md_incremental_refresh_eris353 = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_eris_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Eris353
display.md_incremental_refresh_eris353 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Eris353
dissect.md_incremental_refresh_eris353_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index = dissect.batch_total_messages(buffer, index, packet, parent)

  -- MD Incremental Refresh Eris Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_eris_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Eris353
dissect.md_incremental_refresh_eris353 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris353 then
    local length = size_of.md_incremental_refresh_eris353(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_eris353(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris353, range, display)
  end

  return dissect.md_incremental_refresh_eris353_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Md Incremental Refresh Eris351
size_of.md_incremental_refresh_eris351 = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_eris_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Eris351
display.md_incremental_refresh_eris351 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Eris351
dissect.md_incremental_refresh_eris351_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index = dissect.batch_total_messages(buffer, index, packet, parent)

  -- MD Incremental Refresh Eris Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_eris_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Eris351
dissect.md_incremental_refresh_eris351 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris351 then
    local length = size_of.md_incremental_refresh_eris351(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_eris351(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris351, range, display)
  end

  return dissect.md_incremental_refresh_eris351_fields(buffer, offset, packet, parent)
end

-- Size: Leg Ref Id
size_of.leg_ref_id = 17

-- Display: Leg Ref Id
display.leg_ref_id = function(value)
  return "Leg Ref Id: "..value
end

-- Dissect: Leg Ref Id
dissect.leg_ref_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_ref_id)
  local value = range:string()
  local display = display.leg_ref_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_ref_id, range, value, display)

  return offset + size_of.leg_ref_id
end

-- Size: Strategy Link Id
size_of.strategy_link_id = 26

-- Display: Strategy Link Id
display.strategy_link_id = function(value)
  return "Strategy Link Id: "..value
end

-- Dissect: Strategy Link Id
dissect.strategy_link_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strategy_link_id)
  local value = range:string()
  local display = display.strategy_link_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.strategy_link_id, range, value, display)

  return offset + size_of.strategy_link_id
end

-- Size: Md Entry Id
size_of.md_entry_id = 26

-- Display: Md Entry Id
display.md_entry_id = function(value)
  return "Md Entry Id: "..value
end

-- Dissect: Md Entry Id
dissect.md_entry_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_id)
  local value = range:string()
  local display = display.md_entry_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.md_entry_id, range, value, display)

  return offset + size_of.md_entry_id
end

-- Size: Trd Type
size_of.trd_type = 1

-- Display: Trd Type
display.trd_type = function(value)
  return "Trd Type: "..value
end

-- Dissect: Trd Type
dissect.trd_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trd_type)
  local value = range:le_uint()
  local display = display.trd_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.trd_type, range, value, display)

  return offset + size_of.trd_type
end

-- Size: Security Id
size_of.security_id = 8

-- Display: Security Id
display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
dissect.security_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_id)
  local value = range:le_uint64()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.security_id, range, value, display)

  return offset + size_of.security_id
end

-- Display: MD Incremental Refresh Trade Blocks Group
display.md_incremental_refresh_trade_blocks_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Trade Blocks Group
dissect.md_incremental_refresh_trade_blocks_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index = dissect.md_update_action(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index = dissect.number_of_orders(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Signed Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.aggressor_side(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Security Group: 12 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Security Type: 4 Byte Ascii String
  index = dissect.security_type(buffer, index, packet, parent)

  -- Security Sub Type: 2 Byte Ascii String
  index = dissect.security_sub_type(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index = dissect.security_exchange(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.maturity_date(buffer, index, packet, parent)

  -- Unit Of Measure: 5 Byte Ascii String
  index = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Currency: 3 Byte Ascii String
  index = dissect.unit_of_measure_currency(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer
  index = dissect.unit_of_measure_qty(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer
  index = dissect.coupon_rate(buffer, index, packet, parent)

  -- Price Type: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price_type(buffer, index, packet, parent)

  -- Trd Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.trd_type(buffer, index, packet, parent)

  -- Md Entry Id: 26 Byte Ascii String
  index = dissect.md_entry_id(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer
  index = dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index = dissect.strike_price(buffer, index, packet, parent)

  -- Restructuring Type: 2 Byte Ascii String
  index = dissect.restructuring_type(buffer, index, packet, parent)

  -- Seniority: 2 Byte Ascii String
  index = dissect.seniority(buffer, index, packet, parent)

  -- Reference Id: 50 Byte Ascii String
  index = dissect.reference_id(buffer, index, packet, parent)

  -- Strategy Link Id: 26 Byte Ascii String
  index = dissect.strategy_link_id(buffer, index, packet, parent)

  -- Leg Ref Id: 17 Byte Ascii String
  index = dissect.leg_ref_id(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Trade Blocks Group
dissect.md_incremental_refresh_trade_blocks_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_trade_blocks_group then
    local range = buffer(offset, 272)
    local display = display.md_incremental_refresh_trade_blocks_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_trade_blocks_group, range, display)
  end

  return dissect.md_incremental_refresh_trade_blocks_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Trade Blocks Groups
size_of.md_incremental_refresh_trade_blocks_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_trade_blocks_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_trade_blocks_group_count * 272

  return index
end

-- Display: MD Incremental Refresh Trade Blocks Groups
display.md_incremental_refresh_trade_blocks_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Trade Blocks Groups
dissect.md_incremental_refresh_trade_blocks_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Trade Blocks Group: Struct of 29 fields
  local md_incremental_refresh_trade_blocks_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_trade_blocks_group_count do
    index = dissect.md_incremental_refresh_trade_blocks_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Trade Blocks Groups
dissect.md_incremental_refresh_trade_blocks_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_blocks_groups then
    local length = size_of.md_incremental_refresh_trade_blocks_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_trade_blocks_groups(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_trade_blocks_groups, range, display)
  end

  return dissect.md_incremental_refresh_trade_blocks_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Md Incremental Refresh Trade Blocks349
size_of.md_incremental_refresh_trade_blocks349 = function(buffer, offset)
  local index = 0

  index = index + 13

  index = index + size_of.md_incremental_refresh_trade_blocks_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Blocks349
display.md_incremental_refresh_trade_blocks349 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Blocks349
dissect.md_incremental_refresh_trade_blocks349_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index = dissect.batch_total_messages(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- MD Incremental Refresh Trade Blocks Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_trade_blocks_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Blocks349
dissect.md_incremental_refresh_trade_blocks349 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_blocks349 then
    local length = size_of.md_incremental_refresh_trade_blocks349(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_trade_blocks349(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_trade_blocks349, range, display)
  end

  return dissect.md_incremental_refresh_trade_blocks349_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Time
size_of.md_entry_time = 4

-- Display: Md Entry Time
display.md_entry_time = function(value)
  return "Md Entry Time: "..value
end

-- Dissect: Md Entry Time
dissect.md_entry_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_time)
  local value = range:le_int()
  local display = display.md_entry_time(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.md_entry_time, range, value, display)

  return offset + size_of.md_entry_time
end

-- Size: Md Entry Code
size_of.md_entry_code = 1

-- Display: Md Entry Code
display.md_entry_code = function(value)
  if value == 1 then
    return "Md Entry Code: Md Entry Code (1)"
  end
  if value == 2 then
    return "Md Entry Code: Md Entry Code (2)"
  end
  if value == 3 then
    return "Md Entry Code: Md Entry Code (3)"
  end
  if value == 4 then
    return "Md Entry Code: Md Entry Code (4)"
  end
  if value == 5 then
    return "Md Entry Code: Md Entry Code (5)"
  end

  return "Md Entry Code: Unknown("..value..")"
end

-- Dissect: Md Entry Code
dissect.md_entry_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_code)
  local value = range:le_uint()
  local display = display.md_entry_code(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.md_entry_code, range, value, display)

  return offset + size_of.md_entry_code
end

-- Size: Percent Trading
size_of.percent_trading = 8

-- Display: Percent Trading
display.percent_trading = function(value)
  return "Percent Trading: "..value
end

-- Dissect: Percent Trading
dissect.percent_trading = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.percent_trading)
  local value = range:le_int64()
  local display = display.percent_trading(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.percent_trading, range, value, display)

  return offset + size_of.percent_trading
end

-- Size: Net Pct Chg
size_of.net_pct_chg = 8

-- Display: Net Pct Chg
display.net_pct_chg = function(value)
  return "Net Pct Chg: "..value
end

-- Dissect: Net Pct Chg
dissect.net_pct_chg = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.net_pct_chg)
  local value = range:le_int64()
  local display = display.net_pct_chg(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.net_pct_chg, range, value, display)

  return offset + size_of.net_pct_chg
end

-- Size: Net Chg Prev Day
size_of.net_chg_prev_day = 8

-- Display: Net Chg Prev Day
display.net_chg_prev_day = function(value)
  return "Net Chg Prev Day: "..value
end

-- Dissect: Net Chg Prev Day
dissect.net_chg_prev_day = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.net_chg_prev_day)
  local value = range:le_int64()
  local display = display.net_chg_prev_day(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.net_chg_prev_day, range, value, display)

  return offset + size_of.net_chg_prev_day
end

-- Size: Yield
size_of.yield = 8

-- Display: Yield
display.yield = function(value)
  return "Yield: "..value
end

-- Dissect: Yield
dissect.yield = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.yield)
  local value = range:le_int64()
  local display = display.yield(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.yield, range, value, display)

  return offset + size_of.yield
end

-- Size: Yield Type
size_of.yield_type = 8

-- Display: Yield Type
display.yield_type = function(value)
  return "Yield Type: "..value
end

-- Dissect: Yield Type
dissect.yield_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.yield_type)
  local value = range:string()
  local display = display.yield_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.yield_type, range, value, display)

  return offset + size_of.yield_type
end

-- Display: MD Incremental Refresh Indices Group
display.md_incremental_refresh_indices_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Indices Group
dissect.md_incremental_refresh_indices_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Type: 1 Byte Ascii String
  index = dissect.md_entry_type(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Yield Type: 8 Byte Ascii String
  index = dissect.yield_type(buffer, index, packet, parent)

  -- Yield: 8 Byte Signed Fixed Width Integer
  index = dissect.yield(buffer, index, packet, parent)

  -- Net Chg Prev Day: 8 Byte Signed Fixed Width Integer
  index = dissect.net_chg_prev_day(buffer, index, packet, parent)

  -- Net Pct Chg: 8 Byte Signed Fixed Width Integer
  index = dissect.net_pct_chg(buffer, index, packet, parent)

  -- Percent Trading: 8 Byte Signed Fixed Width Integer
  index = dissect.percent_trading(buffer, index, packet, parent)

  -- Md Entry Code: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.md_entry_code(buffer, index, packet, parent)

  -- Md Entry Date: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_date(buffer, index, packet, parent)

  -- Md Entry Time: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_time(buffer, index, packet, parent)

  -- Reference Id: 50 Byte Ascii String
  index = dissect.reference_id(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Indices Group
dissect.md_incremental_refresh_indices_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_indices_group then
    local range = buffer(offset, 171)
    local display = display.md_incremental_refresh_indices_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_indices_group, range, display)
  end

  return dissect.md_incremental_refresh_indices_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Indices Groups
size_of.md_incremental_refresh_indices_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_indices_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_indices_group_count * 171

  return index
end

-- Display: MD Incremental Refresh Indices Groups
display.md_incremental_refresh_indices_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Indices Groups
dissect.md_incremental_refresh_indices_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Indices Group: Struct of 15 fields
  local md_incremental_refresh_indices_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_indices_group_count do
    index = dissect.md_incremental_refresh_indices_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Indices Groups
dissect.md_incremental_refresh_indices_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_indices_groups then
    local length = size_of.md_incremental_refresh_indices_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_indices_groups(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_indices_groups, range, display)
  end

  return dissect.md_incremental_refresh_indices_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Md Incremental Refresh Indices348
size_of.md_incremental_refresh_indices348 = function(buffer, offset)
  local index = 0

  index = index + 13

  index = index + size_of.md_incremental_refresh_indices_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Indices348
display.md_incremental_refresh_indices348 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Indices348
dissect.md_incremental_refresh_indices348_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Md Feed Type: 2 Byte Ascii String
  index = dissect.md_feed_type(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index = dissect.batch_total_messages(buffer, index, packet, parent)

  -- MD Incremental Refresh Indices Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_indices_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Indices348
dissect.md_incremental_refresh_indices348 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_indices348 then
    local length = size_of.md_incremental_refresh_indices348(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_indices348(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_indices348, range, display)
  end

  return dissect.md_incremental_refresh_indices348_fields(buffer, offset, packet, parent)
end

-- Size: Inst Attrib Value
size_of.inst_attrib_value = 100

-- Display: Inst Attrib Value
display.inst_attrib_value = function(value)
  return "Inst Attrib Value: "..value
end

-- Dissect: Inst Attrib Value
dissect.inst_attrib_value = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.inst_attrib_value)
  local value = range:string()
  local display = display.inst_attrib_value(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.inst_attrib_value, range, value, display)

  return offset + size_of.inst_attrib_value
end

-- Size: Inst Attrib Type
size_of.inst_attrib_type = 1

-- Display: Inst Attrib Type
display.inst_attrib_type = function(value)
  return "Inst Attrib Type: "..value
end

-- Dissect: Inst Attrib Type
dissect.inst_attrib_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.inst_attrib_type)
  local value = range:le_uint()
  local display = display.inst_attrib_type(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.inst_attrib_type, range, value, display)

  return offset + size_of.inst_attrib_type
end

-- Display: Inst Attrib Group
display.inst_attrib_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inst Attrib Group
dissect.inst_attrib_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Attrib Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.inst_attrib_type(buffer, index, packet, parent)

  -- Inst Attrib Value: 100 Byte Ascii String
  index = dissect.inst_attrib_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Inst Attrib Group
dissect.inst_attrib_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inst_attrib_group then
    local range = buffer(offset, 101)
    local display = display.inst_attrib_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.inst_attrib_group, range, display)
  end

  return dissect.inst_attrib_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Inst Attrib Groups
size_of.inst_attrib_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local inst_attrib_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + inst_attrib_group_count * 101

  return index
end

-- Display: Inst Attrib Groups
display.inst_attrib_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inst Attrib Groups
dissect.inst_attrib_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Inst Attrib Group: Struct of 2 fields
  local inst_attrib_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, inst_attrib_group_count do
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
    parent = parent:add(cme_streamline_sbe_v8_5.fields.inst_attrib_groups, range, display)
  end

  return dissect.inst_attrib_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Md Instrument Definition Indices347
size_of.md_instrument_definition_indices347 = function(buffer, offset)
  local index = 0

  index = index + 63

  index = index + size_of.inst_attrib_groups(buffer, offset + index)

  index = index + size_of.events_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Indices347
display.md_instrument_definition_indices347 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Definition Indices347
dissect.md_instrument_definition_indices347_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 50 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Product: 1 Byte Signed Fixed Width Integer
  index = dissect.product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index = dissect.security_exchange(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index = dissect.currency(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index = dissect.security_update_action(buffer, index, packet, parent)

  -- Md Feed Type: 2 Byte Ascii String
  index = dissect.md_feed_type(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Unsigned Fixed Width Integer
  index = dissect.appl_id(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index = dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index = dissect.events_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Indices347
dissect.md_instrument_definition_indices347 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_indices347 then
    local length = size_of.md_instrument_definition_indices347(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_indices347(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_instrument_definition_indices347, range, display)
  end

  return dissect.md_instrument_definition_indices347_fields(buffer, offset, packet, parent)
end

-- Display: Related Sym Group
display.related_sym_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Sym Group
dissect.related_sym_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 50 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
dissect.related_sym_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.related_sym_group then
    local range = buffer(offset, 50)
    local display = display.related_sym_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.related_sym_group, range, display)
  end

  return dissect.related_sym_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Related Sym Groups
size_of.related_sym_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_sym_group_count * 50

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
  index = dissect.group_size(buffer, index, packet, parent)

  -- Related Sym Group: Struct of 1 fields
  local related_sym_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, related_sym_group_count do
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
    parent = parent:add(cme_streamline_sbe_v8_5.fields.related_sym_groups, range, display)
  end

  return dissect.related_sym_groups_fields(buffer, offset, packet, parent)
end

-- Size: Quote Req Id
size_of.quote_req_id = 26

-- Display: Quote Req Id
display.quote_req_id = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
dissect.quote_req_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_req_id)
  local value = range:string()
  local display = display.quote_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.quote_req_id, range, value, display)

  return offset + size_of.quote_req_id
end

-- Calculate runtime size: Quote Request345
size_of.quote_request345 = function(buffer, offset)
  local index = 0

  index = index + 35

  index = index + size_of.related_sym_groups(buffer, offset + index)

  return index
end

-- Display: Quote Request345
display.quote_request345 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Request345
dissect.quote_request345_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Quote Req Id: 26 Byte Ascii String
  index = dissect.quote_req_id(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index = dissect.related_sym_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request345
dissect.quote_request345 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request345 then
    local length = size_of.quote_request345(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_request345(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.quote_request345, range, display)
  end

  return dissect.quote_request345_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Md Incremental Refresh Trade Blocks340
size_of.md_incremental_refresh_trade_blocks340 = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_trade_blocks_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Blocks340
display.md_incremental_refresh_trade_blocks340 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Blocks340
dissect.md_incremental_refresh_trade_blocks340_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index = dissect.batch_total_messages(buffer, index, packet, parent)

  -- MD Incremental Refresh Trade Blocks Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_trade_blocks_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Blocks340
dissect.md_incremental_refresh_trade_blocks340 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_blocks340 then
    local length = size_of.md_incremental_refresh_trade_blocks340(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_trade_blocks340(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_trade_blocks340, range, display)
  end

  return dissect.md_incremental_refresh_trade_blocks340_fields(buffer, offset, packet, parent)
end

-- Size: Text
size_of.text = 180

-- Display: Text
display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
dissect.text = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.text)
  local value = range:string()
  local display = display.text(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.text, range, value, display)

  return offset + size_of.text
end

-- Display: Lines Of Text Group
display.lines_of_text_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Lines Of Text Group
dissect.lines_of_text_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 180 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Lines Of Text Group
dissect.lines_of_text_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.lines_of_text_group then
    local range = buffer(offset, 180)
    local display = display.lines_of_text_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.lines_of_text_group, range, display)
  end

  return dissect.lines_of_text_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Lines Of Text Groups
size_of.lines_of_text_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local lines_of_text_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + lines_of_text_group_count * 180

  return index
end

-- Display: Lines Of Text Groups
display.lines_of_text_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Lines Of Text Groups
dissect.lines_of_text_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Lines Of Text Group: Struct of 1 fields
  local lines_of_text_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, lines_of_text_group_count do
    index = dissect.lines_of_text_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Lines Of Text Groups
dissect.lines_of_text_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.lines_of_text_groups then
    local length = size_of.lines_of_text_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.lines_of_text_groups(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.lines_of_text_groups, range, display)
  end

  return dissect.lines_of_text_groups_fields(buffer, offset, packet, parent)
end

-- Size: Orig Time
size_of.orig_time = 8

-- Display: Orig Time
display.orig_time = function(value)
  return "Orig Time: "..value
end

-- Dissect: Orig Time
dissect.orig_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.orig_time)
  local value = range:le_uint64()
  local display = display.orig_time(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.orig_time, range, value, display)

  return offset + size_of.orig_time
end

-- Size: Headline
size_of.headline = 50

-- Display: Headline
display.headline = function(value)
  return "Headline: "..value
end

-- Dissect: Headline
dissect.headline = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.headline)
  local value = range:string()
  local display = display.headline(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.headline, range, value, display)

  return offset + size_of.headline
end

-- Calculate runtime size: Md News Indices339
size_of.md_news_indices339 = function(buffer, offset)
  local index = 0

  index = index + 60

  index = index + size_of.related_sym_groups(buffer, offset + index)

  index = index + size_of.lines_of_text_groups(buffer, offset + index)

  return index
end

-- Display: Md News Indices339
display.md_news_indices339 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md News Indices339
dissect.md_news_indices339_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Headline: 50 Byte Ascii String
  index = dissect.headline(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.orig_time(buffer, index, packet, parent)

  -- Md Feed Type: 2 Byte Ascii String
  index = dissect.md_feed_type(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index = dissect.related_sym_groups(buffer, index, packet, parent)

  -- Lines Of Text Groups: Struct of 2 fields
  index = dissect.lines_of_text_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md News Indices339
dissect.md_news_indices339 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_news_indices339 then
    local length = size_of.md_news_indices339(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_news_indices339(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_news_indices339, range, display)
  end

  return dissect.md_news_indices339_fields(buffer, offset, packet, parent)
end

-- Size: Security Description
size_of.security_description = 30

-- Display: Security Description
display.security_description = function(value)
  return "Security Description: "..value
end

-- Dissect: Security Description
dissect.security_description = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_description)
  local value = range:string()
  local display = display.security_description(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.security_description, range, value, display)

  return offset + size_of.security_description
end

-- Size: Final Settlement Futures Price
size_of.final_settlement_futures_price = 8

-- Display: Final Settlement Futures Price
display.final_settlement_futures_price = function(value)
  return "Final Settlement Futures Price: "..value
end

-- Dissect: Final Settlement Futures Price
dissect.final_settlement_futures_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.final_settlement_futures_price)
  local value = range:le_int64()
  local display = display.final_settlement_futures_price(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.final_settlement_futures_price, range, value, display)

  return offset + size_of.final_settlement_futures_price
end

-- Size: Settlement Npv
size_of.settlement_npv = 8

-- Display: Settlement Npv
display.settlement_npv = function(value)
  return "Settlement Npv: "..value
end

-- Dissect: Settlement Npv
dissect.settlement_npv = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.settlement_npv)
  local value = range:le_int64()
  local display = display.settlement_npv(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.settlement_npv, range, value, display)

  return offset + size_of.settlement_npv
end

-- Size: Dv01
size_of.dv01 = 8

-- Display: Dv01
display.dv01 = function(value)
  return "Dv01: "..value
end

-- Dissect: Dv01
dissect.dv01 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.dv01)
  local value = range:le_int64()
  local display = display.dv01(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.dv01, range, value, display)

  return offset + size_of.dv01
end

-- Size: Pv01
size_of.pv01 = 8

-- Display: Pv01
display.pv01 = function(value)
  return "Pv01: "..value
end

-- Dissect: Pv01
dissect.pv01 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.pv01)
  local value = range:le_int64()
  local display = display.pv01(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.pv01, range, value, display)

  return offset + size_of.pv01
end

-- Size: Next Floating Payment Date
size_of.next_floating_payment_date = 2

-- Display: Next Floating Payment Date
display.next_floating_payment_date = function(value)
  return "Next Floating Payment Date: "..value
end

-- Dissect: Next Floating Payment Date
dissect.next_floating_payment_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.next_floating_payment_date)
  local value = range:le_uint()
  local display = display.next_floating_payment_date(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.next_floating_payment_date, range, value, display)

  return offset + size_of.next_floating_payment_date
end

-- Size: Leg Contract Multiplier
size_of.leg_contract_multiplier = 8

-- Display: Leg Contract Multiplier
display.leg_contract_multiplier = function(value)
  return "Leg Contract Multiplier: "..value
end

-- Dissect: Leg Contract Multiplier
dissect.leg_contract_multiplier = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_contract_multiplier)
  local value = range:le_int64()
  local display = display.leg_contract_multiplier(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_contract_multiplier, range, value, display)

  return offset + size_of.leg_contract_multiplier
end

-- Size: Leg Credit Rating
size_of.leg_credit_rating = 6

-- Display: Leg Credit Rating
display.leg_credit_rating = function(value)
  return "Leg Credit Rating: "..value
end

-- Dissect: Leg Credit Rating
dissect.leg_credit_rating = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_credit_rating)
  local value = range:string()
  local display = display.leg_credit_rating(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_credit_rating, range, value, display)

  return offset + size_of.leg_credit_rating
end

-- Size: Nominal
size_of.nominal = 8

-- Display: Nominal
display.nominal = function(value)
  return "Nominal: "..value
end

-- Dissect: Nominal
dissect.nominal = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.nominal)
  local value = range:le_uint64()
  local display = display.nominal(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.nominal, range, value, display)

  return offset + size_of.nominal
end

-- Size: Accrual Days
size_of.accrual_days = 4

-- Display: Accrual Days
display.accrual_days = function(value)
  return "Accrual Days: "..value
end

-- Dissect: Accrual Days
dissect.accrual_days = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.accrual_days)
  local value = range:le_uint()
  local display = display.accrual_days(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.accrual_days, range, value, display)

  return offset + size_of.accrual_days
end

-- Size: Fed Funds Date
size_of.fed_funds_date = 2

-- Display: Fed Funds Date
display.fed_funds_date = function(value)
  return "Fed Funds Date: "..value
end

-- Dissect: Fed Funds Date
dissect.fed_funds_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.fed_funds_date)
  local value = range:le_uint()
  local display = display.fed_funds_date(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.fed_funds_date, range, value, display)

  return offset + size_of.fed_funds_date
end

-- Size: Previous Eris Pai
size_of.previous_eris_pai = 8

-- Display: Previous Eris Pai
display.previous_eris_pai = function(value)
  return "Previous Eris Pai: "..value
end

-- Dissect: Previous Eris Pai
dissect.previous_eris_pai = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.previous_eris_pai)
  local value = range:le_int64()
  local display = display.previous_eris_pai(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.previous_eris_pai, range, value, display)

  return offset + size_of.previous_eris_pai
end

-- Size: Trading Reference Date
size_of.trading_reference_date = 2

-- Display: Trading Reference Date
display.trading_reference_date = function(value)
  return "Trading Reference Date: "..value
end

-- Dissect: Trading Reference Date
dissect.trading_reference_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_reference_date)
  local value = range:le_uint()
  local display = display.trading_reference_date(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.trading_reference_date, range, value, display)

  return offset + size_of.trading_reference_date
end

-- Size: Next Floating Payment Amount
size_of.next_floating_payment_amount = 8

-- Display: Next Floating Payment Amount
display.next_floating_payment_amount = function(value)
  return "Next Floating Payment Amount: "..value
end

-- Dissect: Next Floating Payment Amount
dissect.next_floating_payment_amount = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.next_floating_payment_amount)
  local value = range:le_int64()
  local display = display.next_floating_payment_amount(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.next_floating_payment_amount, range, value, display)

  return offset + size_of.next_floating_payment_amount
end

-- Size: Next Fixed Payment Amount
size_of.next_fixed_payment_amount = 8

-- Display: Next Fixed Payment Amount
display.next_fixed_payment_amount = function(value)
  return "Next Fixed Payment Amount: "..value
end

-- Dissect: Next Fixed Payment Amount
dissect.next_fixed_payment_amount = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.next_fixed_payment_amount)
  local value = range:le_int64()
  local display = display.next_fixed_payment_amount(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.next_fixed_payment_amount, range, value, display)

  return offset + size_of.next_fixed_payment_amount
end

-- Size: Next Fixed Payment Date
size_of.next_fixed_payment_date = 2

-- Display: Next Fixed Payment Date
display.next_fixed_payment_date = function(value)
  return "Next Fixed Payment Date: "..value
end

-- Dissect: Next Fixed Payment Date
dissect.next_fixed_payment_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.next_fixed_payment_date)
  local value = range:le_uint()
  local display = display.next_fixed_payment_date(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.next_fixed_payment_date, range, value, display)

  return offset + size_of.next_fixed_payment_date
end

-- Size: Floating Payment
size_of.floating_payment = 8

-- Display: Floating Payment
display.floating_payment = function(value)
  return "Floating Payment: "..value
end

-- Dissect: Floating Payment
dissect.floating_payment = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.floating_payment)
  local value = range:le_int64()
  local display = display.floating_payment(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.floating_payment, range, value, display)

  return offset + size_of.floating_payment
end

-- Size: Fixed Payment
size_of.fixed_payment = 8

-- Display: Fixed Payment
display.fixed_payment = function(value)
  return "Fixed Payment: "..value
end

-- Dissect: Fixed Payment
dissect.fixed_payment = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.fixed_payment)
  local value = range:le_int64()
  local display = display.fixed_payment(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.fixed_payment, range, value, display)

  return offset + size_of.fixed_payment
end

-- Size: Fed Funds Rate
size_of.fed_funds_rate = 8

-- Display: Fed Funds Rate
display.fed_funds_rate = function(value)
  return "Fed Funds Rate: "..value
end

-- Dissect: Fed Funds Rate
dissect.fed_funds_rate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.fed_funds_rate)
  local value = range:le_int64()
  local display = display.fed_funds_rate(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.fed_funds_rate, range, value, display)

  return offset + size_of.fed_funds_rate
end

-- Size: Eris Pai
size_of.eris_pai = 8

-- Display: Eris Pai
display.eris_pai = function(value)
  return "Eris Pai: "..value
end

-- Dissect: Eris Pai
dissect.eris_pai = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.eris_pai)
  local value = range:le_int64()
  local display = display.eris_pai(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.eris_pai, range, value, display)

  return offset + size_of.eris_pai
end

-- Size: Daily Incremental Eris Pai
size_of.daily_incremental_eris_pai = 8

-- Display: Daily Incremental Eris Pai
display.daily_incremental_eris_pai = function(value)
  return "Daily Incremental Eris Pai: "..value
end

-- Dissect: Daily Incremental Eris Pai
dissect.daily_incremental_eris_pai = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.daily_incremental_eris_pai)
  local value = range:le_int64()
  local display = display.daily_incremental_eris_pai(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.daily_incremental_eris_pai, range, value, display)

  return offset + size_of.daily_incremental_eris_pai
end

-- Size: Accrued Coupons
size_of.accrued_coupons = 8

-- Display: Accrued Coupons
display.accrued_coupons = function(value)
  return "Accrued Coupons: "..value
end

-- Dissect: Accrued Coupons
dissect.accrued_coupons = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.accrued_coupons)
  local value = range:le_int64()
  local display = display.accrued_coupons(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.accrued_coupons, range, value, display)

  return offset + size_of.accrued_coupons
end

-- Size: Npv
size_of.npv = 8

-- Display: Npv
display.npv = function(value)
  return "Npv: "..value
end

-- Dissect: Npv
dissect.npv = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.npv)
  local value = range:le_int64()
  local display = display.npv(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.npv, range, value, display)

  return offset + size_of.npv
end

-- Size: Float Npv
size_of.float_npv = 8

-- Display: Float Npv
display.float_npv = function(value)
  return "Float Npv: "..value
end

-- Dissect: Float Npv
dissect.float_npv = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.float_npv)
  local value = range:le_int64()
  local display = display.float_npv(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.float_npv, range, value, display)

  return offset + size_of.float_npv
end

-- Size: Fixed Npv
size_of.fixed_npv = 8

-- Display: Fixed Npv
display.fixed_npv = function(value)
  return "Fixed Npv: "..value
end

-- Dissect: Fixed Npv
dissect.fixed_npv = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.fixed_npv)
  local value = range:le_int64()
  local display = display.fixed_npv(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.fixed_npv, range, value, display)

  return offset + size_of.fixed_npv
end

-- Size: Leg Purchase Rate
size_of.leg_purchase_rate = 8

-- Display: Leg Purchase Rate
display.leg_purchase_rate = function(value)
  return "Leg Purchase Rate: "..value
end

-- Dissect: Leg Purchase Rate
dissect.leg_purchase_rate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_purchase_rate)
  local value = range:le_int64()
  local display = display.leg_purchase_rate(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.leg_purchase_rate, range, value, display)

  return offset + size_of.leg_purchase_rate
end

-- Size: Fair Coupon Pct
size_of.fair_coupon_pct = 8

-- Display: Fair Coupon Pct
display.fair_coupon_pct = function(value)
  return "Fair Coupon Pct: "..value
end

-- Dissect: Fair Coupon Pct
dissect.fair_coupon_pct = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.fair_coupon_pct)
  local value = range:le_int64()
  local display = display.fair_coupon_pct(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.fair_coupon_pct, range, value, display)

  return offset + size_of.fair_coupon_pct
end

-- Display: Settl Price Type
display.settl_price_type = function(buffer, packet, parent)
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
dissect.settl_price_type_bits = function(buffer, offset, packet, parent)

  -- Null Value: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.null_value, buffer(offset, 1))

  -- Reserved Bits: 4 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.reserved_bits, buffer(offset, 1))

  -- Rounded: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.rounded, buffer(offset, 1))

  -- Actual: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.actual, buffer(offset, 1))

  -- Final: 1 Bit
  parent:add(cme_streamline_sbe_v8_5.fields.final, buffer(offset, 1))
end

-- Dissect: Settl Price Type
dissect.settl_price_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.settl_price_type(range, packet, parent)
  local element = parent:add(cme_streamline_sbe_v8_5.fields.settl_price_type, range, display)

  if show.settl_price_type then
    dissect.settl_price_type_bits(buffer, offset, packet, element)
  end

  return offset + 1
end

-- Display: MD Incremental Refresh Eris Reference Data And Daily Statistics Group
display.md_incremental_refresh_eris_reference_data_and_daily_statistics_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Eris Reference Data And Daily Statistics Group
dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String
  index = dissect.md_entry_type(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 5 fields
  index = dissect.settl_price_type(buffer, index, packet, parent)

  -- Cal Fut Px: 8 Byte Signed Fixed Width Integer
  index = dissect.cal_fut_px(buffer, index, packet, parent)

  -- Reference Id: 50 Byte Ascii String
  index = dissect.reference_id(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Symbol: 50 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Security Group: 12 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Product: 1 Byte Signed Fixed Width Integer
  index = dissect.product(buffer, index, packet, parent)

  -- Security Type: 4 Byte Ascii String
  index = dissect.security_type(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index = dissect.security_exchange(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.maturity_date(buffer, index, packet, parent)

  -- Coupon Rate: 4 Byte Signed Fixed Width Integer
  index = dissect.coupon_rate(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Fair Coupon Pct: 8 Byte Signed Fixed Width Integer
  index = dissect.fair_coupon_pct(buffer, index, packet, parent)

  -- Leg Purchase Rate: 8 Byte Signed Fixed Width Integer
  index = dissect.leg_purchase_rate(buffer, index, packet, parent)

  -- Fixed Npv: 8 Byte Signed Fixed Width Integer
  index = dissect.fixed_npv(buffer, index, packet, parent)

  -- Float Npv: 8 Byte Signed Fixed Width Integer
  index = dissect.float_npv(buffer, index, packet, parent)

  -- Npv: 8 Byte Signed Fixed Width Integer
  index = dissect.npv(buffer, index, packet, parent)

  -- Accrued Coupons: 8 Byte Signed Fixed Width Integer
  index = dissect.accrued_coupons(buffer, index, packet, parent)

  -- Daily Incremental Eris Pai: 8 Byte Signed Fixed Width Integer
  index = dissect.daily_incremental_eris_pai(buffer, index, packet, parent)

  -- Eris Pai: 8 Byte Signed Fixed Width Integer
  index = dissect.eris_pai(buffer, index, packet, parent)

  -- Fed Funds Rate: 8 Byte Signed Fixed Width Integer
  index = dissect.fed_funds_rate(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index = dissect.min_price_increment(buffer, index, packet, parent)

  -- Fixed Payment: 8 Byte Signed Fixed Width Integer
  index = dissect.fixed_payment(buffer, index, packet, parent)

  -- Floating Payment: 8 Byte Signed Fixed Width Integer
  index = dissect.floating_payment(buffer, index, packet, parent)

  -- Next Fixed Payment Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.next_fixed_payment_date(buffer, index, packet, parent)

  -- Next Fixed Payment Amount: 8 Byte Signed Fixed Width Integer
  index = dissect.next_fixed_payment_amount(buffer, index, packet, parent)

  -- Next Floating Payment Amount: 8 Byte Signed Fixed Width Integer
  index = dissect.next_floating_payment_amount(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Previous Eris Pai: 8 Byte Signed Fixed Width Integer
  index = dissect.previous_eris_pai(buffer, index, packet, parent)

  -- Fed Funds Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.fed_funds_date(buffer, index, packet, parent)

  -- Accrual Days: 4 Byte Unsigned Fixed Width Integer
  index = dissect.accrual_days(buffer, index, packet, parent)

  -- Nominal: 8 Byte Unsigned Fixed Width Integer
  index = dissect.nominal(buffer, index, packet, parent)

  -- Leg Credit Rating: 6 Byte Ascii String
  index = dissect.leg_credit_rating(buffer, index, packet, parent)

  -- Leg Contract Multiplier: 8 Byte Signed Fixed Width Integer
  index = dissect.leg_contract_multiplier(buffer, index, packet, parent)

  -- Next Floating Payment Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.next_floating_payment_date(buffer, index, packet, parent)

  -- Pv01: 8 Byte Signed Fixed Width Integer
  index = dissect.pv01(buffer, index, packet, parent)

  -- Dv01: 8 Byte Signed Fixed Width Integer
  index = dissect.dv01(buffer, index, packet, parent)

  -- Settlement Npv: 8 Byte Signed Fixed Width Integer
  index = dissect.settlement_npv(buffer, index, packet, parent)

  -- Final Settlement Futures Price: 8 Byte Signed Fixed Width Integer
  index = dissect.final_settlement_futures_price(buffer, index, packet, parent)

  -- Security Description: 30 Byte Ascii String
  index = dissect.security_description(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Eris Reference Data And Daily Statistics Group
dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_eris_reference_data_and_daily_statistics_group then
    local range = buffer(offset, 377)
    local display = display.md_incremental_refresh_eris_reference_data_and_daily_statistics_group(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris_reference_data_and_daily_statistics_group, range, display)
  end

  return dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Eris Reference Data And Daily Statistics Groups
size_of.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_eris_reference_data_and_daily_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_eris_reference_data_and_daily_statistics_group_count * 377

  return index
end

-- Display: MD Incremental Refresh Eris Reference Data And Daily Statistics Groups
display.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Eris Reference Data And Daily Statistics Groups
dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Eris Reference Data And Daily Statistics Group: Struct of 45 fields
  local md_incremental_refresh_eris_reference_data_and_daily_statistics_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_eris_reference_data_and_daily_statistics_group_count do
    index = dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Eris Reference Data And Daily Statistics Groups
dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups then
    local length = size_of.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups, range, display)
  end

  return dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Md Incremental Refresh Eris Reference Data And Daily Statistics333
size_of.md_incremental_refresh_eris_reference_data_and_daily_statistics333 = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Eris Reference Data And Daily Statistics333
display.md_incremental_refresh_eris_reference_data_and_daily_statistics333 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Eris Reference Data And Daily Statistics333
dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics333_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Batch Total Messages: 2 Byte Unsigned Fixed Width Integer
  index = dissect.batch_total_messages(buffer, index, packet, parent)

  -- MD Incremental Refresh Eris Reference Data And Daily Statistics Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Eris Reference Data And Daily Statistics333
dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics333 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_eris_reference_data_and_daily_statistics333 then
    local length = size_of.md_incremental_refresh_eris_reference_data_and_daily_statistics333(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_eris_reference_data_and_daily_statistics333(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.md_incremental_refresh_eris_reference_data_and_daily_statistics333, range, display)
  end

  return dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics333_fields(buffer, offset, packet, parent)
end

-- Display: Admin Logout316
display.admin_logout316 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Admin Logout316
dissect.admin_logout316_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 180 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Logout316
dissect.admin_logout316 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.admin_logout316 then
    local range = buffer(offset, 180)
    local display = display.admin_logout316(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.admin_logout316, range, display)
  end

  return dissect.admin_logout316_fields(buffer, offset, packet, parent)
end

-- Size: Heart Bt Int
size_of.heart_bt_int = 1

-- Display: Heart Bt Int
display.heart_bt_int = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
dissect.heart_bt_int = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.heart_bt_int)
  local value = range:le_int()
  local display = display.heart_bt_int(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.heart_bt_int, range, value, display)

  return offset + size_of.heart_bt_int
end

-- Display: Admin Login315
display.admin_login315 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Admin Login315
dissect.admin_login315_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heart Bt Int: 1 Byte Signed Fixed Width Integer
  index = dissect.heart_bt_int(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Login315
dissect.admin_login315 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.admin_login315 then
    local range = buffer(offset, 1)
    local display = display.admin_login315(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.admin_login315, range, display)
  end

  return dissect.admin_login315_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Admin Heartbeat312
  if code == 312 then
    return 0
  end
  -- Size of Admin Login315
  if code == 315 then
    return 1
  end
  -- Size of Admin Logout316
  if code == 316 then
    return 180
  end
  -- Size of Md Incremental Refresh Eris Reference Data And Daily Statistics333
  if code == 333 then
    return size_of.md_incremental_refresh_eris_reference_data_and_daily_statistics333(buffer, offset)
  end
  -- Size of Md News Indices339
  if code == 339 then
    return size_of.md_news_indices339(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Blocks340
  if code == 340 then
    return size_of.md_incremental_refresh_trade_blocks340(buffer, offset)
  end
  -- Size of Quote Request345
  if code == 345 then
    return size_of.quote_request345(buffer, offset)
  end
  -- Size of Md Instrument Definition Indices347
  if code == 347 then
    return size_of.md_instrument_definition_indices347(buffer, offset)
  end
  -- Size of Md Incremental Refresh Indices348
  if code == 348 then
    return size_of.md_incremental_refresh_indices348(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Blocks349
  if code == 349 then
    return size_of.md_incremental_refresh_trade_blocks349(buffer, offset)
  end
  -- Size of Md Incremental Refresh Eris351
  if code == 351 then
    return size_of.md_incremental_refresh_eris351(buffer, offset)
  end
  -- Size of Md Incremental Refresh Eris353
  if code == 353 then
    return size_of.md_incremental_refresh_eris353(buffer, offset)
  end
  -- Size of Md Incremental Refresh Otc356
  if code == 356 then
    return size_of.md_incremental_refresh_otc356(buffer, offset)
  end
  -- Size of Md Instrument Definition Eris363
  if code == 363 then
    return size_of.md_instrument_definition_eris363(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(buffer, offset, packet, parent, code)
  -- Dissect Admin Heartbeat312
  if code == 312 then
  end
  -- Dissect Admin Login315
  if code == 315 then
    return dissect.admin_login315(buffer, offset, packet, parent)
  end
  -- Dissect Admin Logout316
  if code == 316 then
    return dissect.admin_logout316(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Eris Reference Data And Daily Statistics333
  if code == 333 then
    return dissect.md_incremental_refresh_eris_reference_data_and_daily_statistics333(buffer, offset, packet, parent)
  end
  -- Dissect Md News Indices339
  if code == 339 then
    return dissect.md_news_indices339(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Blocks340
  if code == 340 then
    return dissect.md_incremental_refresh_trade_blocks340(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request345
  if code == 345 then
    return dissect.quote_request345(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Indices347
  if code == 347 then
    return dissect.md_instrument_definition_indices347(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Indices348
  if code == 348 then
    return dissect.md_incremental_refresh_indices348(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Blocks349
  if code == 349 then
    return dissect.md_incremental_refresh_trade_blocks349(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Eris351
  if code == 351 then
    return dissect.md_incremental_refresh_eris351(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Eris353
  if code == 353 then
    return dissect.md_incremental_refresh_eris353(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Otc356
  if code == 356 then
    return dissect.md_incremental_refresh_otc356(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Eris363
  if code == 363 then
    return dissect.md_instrument_definition_eris363(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, code)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(cme_streamline_sbe_v8_5.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Version
size_of.version = 2

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.version)
  local value = range:le_uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.version, range, value, display)

  return offset + size_of.version
end

-- Size: Schema Id
size_of.schema_id = 2

-- Display: Schema Id
display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
dissect.schema_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.schema_id)
  local value = range:le_uint()
  local display = display.schema_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.schema_id, range, value, display)

  return offset + size_of.schema_id
end

-- Size: Template Id
size_of.template_id = 2

-- Display: Template Id
display.template_id = function(value)
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
    return "Template Id: Md Incremental Refresh Trade Blocks (340)"
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
    return "Template Id: Md Incremental Refresh Trade Blocks (349)"
  end
  if value == 351 then
    return "Template Id: Md Incremental Refresh Eris (351)"
  end
  if value == 353 then
    return "Template Id: Md Incremental Refresh Eris (353)"
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
dissect.template_id = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Message Size
size_of.message_size = 2

-- Display: Message Size
display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
dissect.message_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_size)
  local value = range:le_uint()
  local display = display.message_size(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.message_size, range, value, display)

  return offset + size_of.message_size
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.message_size(buffer, index, packet, parent)

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index = dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index = dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index = dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 10)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 10

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

  -- Message Header: Struct of 5 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 14 branches
  local code = buffer(index - 6, 2):le_uint()
  index = dissect.payload(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.message, range, display)
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
  local range = buffer(offset, size_of.sending_time)
  local value = range:le_uint64()
  local display = display.sending_time(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.sending_time, range, value, display)

  return offset + size_of.sending_time
end

-- Size: Message Sequence Number
size_of.message_sequence_number = 4

-- Display: Message Sequence Number
display.message_sequence_number = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
dissect.message_sequence_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_sequence_number)
  local value = range:le_uint()
  local display = display.message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cme_streamline_sbe_v8_5.fields.message_sequence_number, range, value, display)

  return offset + size_of.message_sequence_number
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.message_sequence_number(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 12)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(cme_streamline_sbe_v8_5.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 2 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end


  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cme_streamline_sbe_v8_5.init()
end

-- Dissector for Cme Streamline Sbe 8.5
function cme_streamline_sbe_v8_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cme_streamline_sbe_v8_5.name

  -- Dissect protocol
  local protocol = parent:add(cme_streamline_sbe_v8_5, buffer(), cme_streamline_sbe_v8_5.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cme_streamline_sbe_v8_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cme_streamline_sbe_v8_5_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  if 5 == buffer(18, 2):le_uint() then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  if 8 == buffer(20, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Streamline Sbe 8.5
local function cme_streamline_sbe_v8_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cme_streamline_sbe_v8_5_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cme_streamline_sbe_v8_5
  cme_streamline_sbe_v8_5.dissector(buffer, packet, parent)

  return true
end

-- Register Cme Streamline Sbe 8.5 Heuristic
cme_streamline_sbe_v8_5:register_heuristic("udp", cme_streamline_sbe_v8_5_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 8.5
-- Date: Friday, June 2, 2017
-- Script:
-- Source Version: 1.5.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
